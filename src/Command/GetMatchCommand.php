<?php
namespace App\Command;

use Symfony\Component\Console\Attribute\AsCommand;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use App\Entity\Game;
use Doctrine\ORM\EntityManagerInterface;

// the "name" and "description" arguments of AsCommand replace the
// static $defaultName and $defaultDescription properties
#[AsCommand(
    name: 'app:get-matches',
    description: 'Get all match list of league 1.',
    hidden: false,
    aliases: ['app:get-matches']
)]

class GetMatchCommand extends Command
{
	public function __construct(EntityManagerInterface $entityManager)
    {
        // best practices recommend to call the parent constructor first and
        // then set your own properties. That wouldn't work in this case
        // because configure() needs the properties set in this constructor
        $this->entityManager = $entityManager;

        parent::__construct();
    }

	protected function execute(InputInterface $input, OutputInterface $output): int
	{
       // outputs multiple lines to the console (adding "\n" at the end of each line)
		$output->writeln([
			'run robot to get matches',
			'============',
			'',
		]);

		$curl = curl_init();

        curl_setopt_array($curl, [
            CURLOPT_URL => "https://api-football-v1.p.rapidapi.com/v3/fixtures?league=61&season=2023",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "GET",
            CURLOPT_HTTPHEADER => [
                "X-RapidAPI-Host: api-football-v1.p.rapidapi.com",
                "X-RapidAPI-Key: ada4321ce3msh1376782974e768ep17431fjsn5f5ae7e8ef50"
            ],
        ]);

        $response = curl_exec($curl);
        $err = curl_error($curl);

        curl_close($curl);

        if ($err) {
            dump("cURL Error #:" . $err);die;
        } else {
           
			$res = json_decode($response, true);
			if(isset($res['response']) && count($res['response']) > 0){
				foreach($res['response'] as $row){

					$homeGoals = ($row['goals']['home']!=null)?$row['goals']['home']:0;
					$awayGoals = ($row['goals']['away']!=null)?$row['goals']['away']:0;
					if($row['teams']['away']['winner'] == true){
						$winner = 'away';
					}else if($row['teams']['home']['winner'] == true){
						$winner = 'home';
					}else{
						$winner = '-';
					}
					
					$game = new Game();
					$game->setFixtureId($row['fixture']['id']);
					$game->setFixtureDate(new \DateTime($row['fixture']['date']));
					$game->setVenueId($row['fixture']['venue']['id']);
					$game->setVenueName($row['fixture']['venue']['name']);
					$game->setVenueCity($row['fixture']['venue']['city']);
					$game->setStatusLong($row['fixture']['status']['long']);
					$game->setStatusShort($row['fixture']['status']['short']);
					$game->setLeagueId($row['league']['id']);
					$game->setLeagueName($row['league']['name']);
					$game->setLeagueCountry($row['league']['country']);
					$game->setLeagueSeason($row['league']['season']);
					$game->setLeagueRound($row['league']['round']);
					$game->setTeamHomeId($row['teams']['home']['id']);
					$game->setTeamHomeName($row['teams']['home']['name']);
					$game->setTeamHomeGoals($homeGoals);
					$game->setTeamAwayId($row['teams']['away']['id']);
					$game->setTeamAwayName($row['teams']['away']['name']);
					$game->setTeamAwayGoals($awayGoals);
					$game->setWinner($winner);

					// tell Doctrine you want to (eventually) save the Product (no queries yet)
					$this->entityManager->persist($game);

					// actually executes the queries (i.e. the INSERT query)
					$this->entityManager->flush();
					
				}
			}
			
        }

		// outputs a message followed by a "\n"
		$output->writeln('Whoa!');

		// outputs a message without adding a "\n" at the end of the line
		$output->write('Finito.');

		return Command::SUCCESS;
    }
}
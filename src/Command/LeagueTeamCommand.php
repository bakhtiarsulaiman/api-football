<?php
namespace App\Command;

use Symfony\Component\Console\Attribute\AsCommand;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use App\Entity\Team;
use App\Repository\TeamRepository;
use Doctrine\ORM\EntityManagerInterface;

// the "name" and "description" arguments of AsCommand replace the
// static $defaultName and $defaultDescription properties
#[AsCommand(
    name: 'app:get-league-team',
    description: 'Get team of the league',
    hidden: false,
    aliases: ['app:get-league-team']
)]

class LeagueTeamCommand extends Command
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
			'get team of the league',
			'============',
			'',
		]);
		
		$league = 61;
		$season = 2022;

		$curl = curl_init();

		curl_setopt_array($curl, [
			CURLOPT_URL => "https://pitchdeckco.net/bot",
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
					
					$output->writeln([
						'Team id: '.$row['team']['id']
					]);
					
					$game = new Team();
					$game->setTeamId($row['team']['id']);
					$game->setName($row['team']['name']);
					$game->setCode($row['team']['code']);
					$game->setCountry($row['team']['country']);
					$game->setLogo($row['team']['logo']);
					$game->setVenueId($row['venue']['id']);
					$game->setVenueName($row['venue']['name']);
					$game->setVenueAddress($row['venue']['address']);
					$game->setVenueCity($row['venue']['city']);
					$game->setVenueCapacity($row['venue']['capacity']);
					$game->setVenueSurface($row['venue']['surface']);
					$game->setVenueImage($row['venue']['image']);
					$game->setSeason($season);
					$game->setLeague($league);
					$game->setFounded($row['team']['founded']);
					
					// tell Doctrine you want to (eventually) save the Product (no queries yet)
					$this->entityManager->persist($game);

					// actually executes the queries (i.e. the INSERT query)
					$this->entityManager->flush();
					
				}
				
			}
		}

		// outputs a message followed by a "\n"
		$output->writeln('Whoa!');

		return Command::SUCCESS;
    }
}
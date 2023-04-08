<?php
namespace App\Command;

use Symfony\Component\Console\Attribute\AsCommand;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use App\Entity\Game;
use App\Repository\GameRepository;
use Doctrine\ORM\EntityManagerInterface;

// the "name" and "description" arguments of AsCommand replace the
// static $defaultName and $defaultDescription properties
#[AsCommand(
    name: 'app:get-matches-result',
    description: 'Get result of match each day',
    hidden: false,
    aliases: ['app:get-matches-result']
)]

class MatchResultCommand extends Command
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
			'get result of all today matches',
			'============',
			'',
		]);

		$games = $this->entityManager->getRepository(Game::class)->findByExampleField(date('Y-m-d').'%');
		foreach($games as $game){
			
			$id = $game->getId();
			$fixtureId = $game->getFixtureId();
			$curl = curl_init();

			curl_setopt_array($curl, [
				CURLOPT_URL => "https://api-football-v1.p.rapidapi.com/v3/fixtures?id=".$fixtureId,
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
				$param = [];
				if(isset($res['response']) && count($res['response']) > 0){
					
					$homeGoals = ($res['response'][0]['goals']['home']!=null)?$res['response'][0]['goals']['home']:0;
					$awayGoals = ($res['response'][0]['goals']['away']!=null)?$res['response'][0]['goals']['away']:0;
					
					$winner = '';
					if($res['response'][0]['teams']['away']['winner'] == true){
						$winner = 'away';
					}else if($res['response'][0]['teams']['home']['winner'] == true){
						$winner = 'home';
					}else{
						$winner = '-';
					}
										
					$updateGame = $this->entityManager->getRepository(Game::class)->find($id);
				
					$updateGame->setStatusLong($res['response'][0]['fixture']['status']['long']);
					$updateGame->setStatusShort($res['response'][0]['fixture']['status']['short']);
					$updateGame->setTeamHomeGoals($homeGoals);
					$updateGame->setTeamAwayGoals($awayGoals);
					$updateGame->setWinner($winner);
					$this->entityManager->flush();
					
					$output->writeln([
						'update '.$id
					]);
					
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
<?php

namespace App\Service\Api;

use Symfony\Contracts\HttpClient\HttpClientInterface;

class ApiFootballService
{

    public function __construct(
        private HttpClientInterface $client,
    ) {

        $this->client = $client->withOptions([
            'base_uri' => 'https://api-football-v1.p.rapidapi.com/v3/',
            'headers' => [
                'X-RapidAPI-Key' => 'ada4321ce3msh1376782974e768ep17431fjsn5f5ae7e8ef50',
                'X-RapidAPI-Host' => 'api-football-v1.p.rapidapi.com'
            ],
        ]);


    }

    public function getLeagues(){


     /* $curl = curl_init();

        curl_setopt_array($curl, [
            CURLOPT_URL => "https://api-football-v1.p.rapidapi.com/v3/leagues?season=2023",
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
            echo "cURL Error #:" . $err;
        } else {
            dump($response);
        }

        die();*/

        $response = $this->client->request(
            'GET',
            'leagues',
            [
                'query' => [
                    'season' => '2023'
                ]
            ]
        );


        $content = $response->toArray();

        dump($response);

        die();

    }


}

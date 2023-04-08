<?php

namespace App\Controller\Api;

use App\Service\Api\ApiFootballService;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class FootbalApiController extends AbstractController
{

    /**
     * @Route("/api/football")
     * @return void
     */
    public function action(ApiFootballService $apiFootballService){

        $apiFootballService->getLeagues();

        die('ok');
    }


}

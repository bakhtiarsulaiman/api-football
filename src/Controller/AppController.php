<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Service\Api\ApiFootballService;
use App\Entity\Game;
use Doctrine\ORM\EntityManagerInterface;

class AppController extends AbstractController
{

    /**
     * @Route ("/")
     */
    public function indexAction(ApiFootballService $apiFootballService, EntityManagerInterface $entityManager){

        return $this->render('base.html.twig');

    }

}

<?php

namespace App\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\TextType;

class GameAdmin extends SitaSitaAdmin
{

    protected function configureFormFields(FormMapper $form): void
    {

        $form
            ->add('fixture_id', IntegerType::class)
            ->add('fixture_date', DateTimeType::class)
            ->add('venue_id', IntegerType::class)
            ->add('venue_name', TextType::class)
            ->add('venue_city', TextType::class)
            ->add('status_long', TextType::class)
            ->add('status_short', TextType::class)
            ->add('league_id', IntegerType::class)
            ->add('league_name', TextType::class)
            ->add('league_country', TextType::class)
            ->add('league_season', TextType::class)
            ->add('league_round', TextType::class)
            ->add('team_home_id', IntegerType::class)
            ->add('team_home_name', TextType::class)
            ->add('team_home_goals', IntegerType::class)
            ->add('team_away_id', IntegerType::class)
            ->add('team_away_name', TextType::class)
            ->add('team_away_goals', IntegerType::class)
            ->add('winner', TextType::class, ['required' => false])
        ;
    }


    protected function configureDatagridFilters(DatagridMapper $filter): void
    {

        $filter
            ->add('id')
            ->add('venue_name',null,[
                'show_filter'=>true,
            ])
            ->add('venue_city',null,[
                'show_filter'=>true,
            ])
            ->add('status_long')
            ->add('status_short')
            ->add('league_name',null,[
                'show_filter'=>true,
            ])
            ->add('league_country',null,[
                'show_filter'=>true,
            ])
            ->add('league_season')
            ->add('league_round',null,[
                'show_filter'=>true,
            ])
            ->add('team_home_name')
            ->add('team_away_name')
            ->add('winner')
        ;
    }

    protected function configureListFields(ListMapper $list): void
    {

        $list
            ->add('_action', 'actions', [
                'actions' => [
//                    'show' => [],
                    'edit' =>    [],
//                    'delete' => [],
                ]
            ])
            ->addIdentifier('id')
//            ->add('date')
            ->add('venue_name')
            ->add('venue_city')
            ->add('status_long')
            ->add('status_short')
            ->add('league_name')
            ->add('league_country')
            ->add('league_season')
            ->add('league_round')
            ->add('team_home_name')
            ->add('team_away_name')
            ->add('winner')

        ;
    }

}

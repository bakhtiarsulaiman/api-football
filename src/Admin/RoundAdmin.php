<?php

declare(strict_types=1);

namespace App\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Form\Type\ModelType;
use Sonata\AdminBundle\Show\ShowMapper;
use Sonata\Form\Type\CollectionType;
use Sonata\Form\Type\DatePickerType;
use Sonata\Form\Type\DateTimePickerType;
use Symfony\Component\Form\Extension\Core\Type\DateType;

final class RoundAdmin extends SitaSitaAdmin
{

    protected function configureDatagridFilters(DatagridMapper $filter): void
    {
        $filter
            ->add('id')
            ->add('active')
            ->add('dateEnd')
            ;
    }

    protected function configureListFields(ListMapper $list): void
    {
        $list
//            ->add('id')
            ->add('active')
            ->add('dateEnd')
            ->add('dateStart')
            ->add(ListMapper::NAME_ACTIONS, null, [
                'actions' => [
                    'show' => [],
                    'edit' => [],
                    'delete' => [],
                ],
            ]);
    }

    protected function configureFormFields(FormMapper $form): void
    {
        $form
//            ->add('id')
            ->add('active')
            ->add('dateEnd',DateType::class,[
                'html5'=>true,
                'widget'=>'single_text',
            ])
            ->add('dateStart',DateType::class,[
                'html5'=>true,
                'widget'=>'single_text',
            ])
            ->add('teamSets',CollectionType::class,[

            ])
            ;
    }

    protected function configureShowFields(ShowMapper $show): void
    {
        $show
            ->add('id')
            ->add('active')
            ->add('dateEnd')
            ;
    }
}

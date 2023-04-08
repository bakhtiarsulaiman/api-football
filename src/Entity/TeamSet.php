<?php

namespace App\Entity;

use App\Repository\TeamSetRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: TeamSetRepository::class)]
class TeamSet
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\ManyToOne(inversedBy: 'teamSets1')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Team $team1 = null;

    #[ORM\ManyToOne(inversedBy: 'teamSets2')]
    private ?Team $team2 = null;

    #[ORM\ManyToOne(inversedBy: 'teamSets')]
    private ?Round $round = null;

    #[ORM\Column(type: "datetime")]
    private ?\DateTime $dateEvent = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTeam1(): ?Team
    {
        return $this->team1;
    }

    public function setTeam1(?Team $team1): self
    {
        $this->team1 = $team1;

        return $this;
    }

    public function getTeam2(): ?Team
    {
        return $this->team2;
    }

    public function setTeam2(?Team $team2): self
    {
        $this->team2 = $team2;

        return $this;
    }

    public function getRound(): ?Round
    {
        return $this->round;
    }

    public function setRound(?Round $round): self
    {
        $this->round = $round;

        return $this;
    }

    /**
     * @return \DateTime|null
     */
    public function getDateEvent(): ?\DateTime
    {
        return $this->dateEvent;
    }

    /**
     * @param \DateTime|null $dateEvent
     */
    public function setDateEvent(?\DateTime $dateEvent): void
    {
        $this->dateEvent = $dateEvent;
    }
}

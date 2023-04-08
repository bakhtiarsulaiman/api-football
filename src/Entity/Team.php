<?php

namespace App\Entity;

use App\Repository\TeamRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;
use Itb\CoreBundle\Model\ItbEntityTrait;

#[ORM\Entity(repositoryClass: TeamRepository::class)]
class Team
{
    use ItbEntityTrait;

    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column]
    private ?int $team_id = null;

    #[ORM\Column(length: 256)]
    private ?string $name = null;

    #[ORM\Column(length: 64)]
    private ?string $code = null;

    #[ORM\Column(length: 128)]
    private ?string $country = null;

    #[ORM\Column(length: 256)]
    private ?string $logo = null;

    #[ORM\Column]
    private ?int $venue_id = null;

    #[ORM\Column(length: 256, nullable: true)]
    private ?string $venue_name = null;

    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string $venue_address = null;

    #[ORM\Column(length: 256, nullable: true)]
    private ?string $venue_city = null;

    #[ORM\Column(nullable: true)]
    private ?int $venue_capacity = null;

    #[ORM\Column(length: 64, nullable: true)]
    private ?string $venue_surface = null;

    #[ORM\Column(length: 512, nullable: true)]
    private ?string $venue_image = null;

    #[ORM\Column]
    private ?int $season = null;

    #[ORM\Column]
    private ?int $league = null;

    #[ORM\Column]
    private ?int $founded = null;

    public function __toString(){
        return (string) $this->name;
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTeamId(): ?int
    {
        return $this->team_id;
    }

    public function setTeamId(int $team_id): self
    {
        $this->team_id = $team_id;

        return $this;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getCode(): ?string
    {
        return $this->code;
    }

    public function setCode(string $code): self
    {
        $this->code = $code;

        return $this;
    }

    public function getCountry(): ?string
    {
        return $this->country;
    }

    public function setCountry(string $country): self
    {
        $this->country = $country;

        return $this;
    }

    public function getLogo(): ?string
    {
        return $this->logo;
    }

    public function setLogo(string $logo): self
    {
        $this->logo = $logo;

        return $this;
    }

    public function getVenueId(): ?int
    {
        return $this->venue_id;
    }

    public function setVenueId(int $venue_id): self
    {
        $this->venue_id = $venue_id;

        return $this;
    }

    public function getVenueName(): ?string
    {
        return $this->venue_name;
    }

    public function setVenueName(?string $venue_name): self
    {
        $this->venue_name = $venue_name;

        return $this;
    }

    public function getVenueAddress(): ?string
    {
        return $this->venue_address;
    }

    public function setVenueAddress(?string $venue_address): self
    {
        $this->venue_address = $venue_address;

        return $this;
    }

    public function getVenueCity(): ?string
    {
        return $this->venue_city;
    }

    public function setVenueCity(?string $venue_city): self
    {
        $this->venue_city = $venue_city;

        return $this;
    }

    public function getVenueCapacity(): ?int
    {
        return $this->venue_capacity;
    }

    public function setVenueCapacity(?int $venue_capacity): self
    {
        $this->venue_capacity = $venue_capacity;

        return $this;
    }

    public function getVenueSurface(): ?string
    {
        return $this->venue_surface;
    }

    public function setVenueSurface(?string $venue_surface): self
    {
        $this->venue_surface = $venue_surface;

        return $this;
    }

    public function getVenueImage(): ?string
    {
        return $this->venue_image;
    }

    public function setVenueImage(?string $venue_image): self
    {
        $this->venue_image = $venue_image;

        return $this;
    }

    public function getSeason(): ?int
    {
        return $this->season;
    }

    public function setSeason(int $season): self
    {
        $this->season = $season;

        return $this;
    }

    public function getLeague(): ?int
    {
        return $this->league;
    }

    public function setLeague(int $league): self
    {
        $this->league = $league;

        return $this;
    }

    public function getFounded(): ?int
    {
        return $this->founded;
    }

    public function setFounded(int $founded): self
    {
        $this->founded = $founded;

        return $this;
    }
}

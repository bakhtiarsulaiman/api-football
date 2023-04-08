<?php

namespace App\Entity;

use App\Repository\GameRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: GameRepository::class)]
class Game
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column]
    private ?int $fixture_id = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE)]
    private ?\DateTimeInterface $fixture_date = null;

    #[ORM\Column]
    private ?int $venue_id = null;

    #[ORM\Column(length: 128)]
    private ?string $venue_name = null;

    #[ORM\Column(length: 128)]
    private ?string $venue_city = null;

    #[ORM\Column(length: 128)]
    private ?string $status_long = null;

    #[ORM\Column(length: 16)]
    private ?string $status_short = null;

    #[ORM\Column]
    private ?int $league_id = null;

    #[ORM\Column(length: 256)]
    private ?string $league_name = null;

    #[ORM\Column(length: 128)]
    private ?string $league_country = null;

    #[ORM\Column(length: 32)]
    private ?string $league_season = null;

    #[ORM\Column(length: 128)]
    private ?string $league_round = null;

    #[ORM\Column]
    private ?int $team_home_id = null;

    #[ORM\Column(length: 256)]
    private ?string $team_home_name = null;

    #[ORM\Column]
    private ?int $team_home_goals = null;

    #[ORM\Column]
    private ?int $team_away_id = null;

    #[ORM\Column(length: 256)]
    private ?string $team_away_name = null;

    #[ORM\Column]
    private ?int $team_away_goals = null;

    #[ORM\Column(length: 64, nullable: true)]
    private ?string $winner = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getFixtureId(): ?int
    {
        return $this->fixture_id;
    }

    public function setFixtureId(int $fixture_id): self
    {
        $this->fixture_id = $fixture_id;

        return $this;
    }

    public function getFixtureDate(): ?\DateTimeInterface
    {
        return $this->fixture_date;
    }

    public function setFixtureDate(\DateTimeInterface $fixture_date): self
    {
        $this->fixture_date = $fixture_date;

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

    public function setVenueName(string $venue_name): self
    {
        $this->venue_name = $venue_name;

        return $this;
    }

    public function getVenueCity(): ?string
    {
        return $this->venue_city;
    }

    public function setVenueCity(string $venue_city): self
    {
        $this->venue_city = $venue_city;

        return $this;
    }

    public function getStatusLong(): ?string
    {
        return $this->status_long;
    }

    public function setStatusLong(string $status_long): self
    {
        $this->status_long = $status_long;

        return $this;
    }

    public function getStatusShort(): ?string
    {
        return $this->status_short;
    }

    public function setStatusShort(string $status_short): self
    {
        $this->status_short = $status_short;

        return $this;
    }

    public function getLeagueId(): ?int
    {
        return $this->league_id;
    }

    public function setLeagueId(int $league_id): self
    {
        $this->league_id = $league_id;

        return $this;
    }

    public function getLeagueName(): ?string
    {
        return $this->league_name;
    }

    public function setLeagueName(string $league_name): self
    {
        $this->league_name = $league_name;

        return $this;
    }

    public function getLeagueCountry(): ?string
    {
        return $this->league_country;
    }

    public function setLeagueCountry(string $league_country): self
    {
        $this->league_country = $league_country;

        return $this;
    }

    public function getLeagueSeason(): ?string
    {
        return $this->league_season;
    }

    public function setLeagueSeason(string $league_season): self
    {
        $this->league_season = $league_season;

        return $this;
    }

    public function getLeagueRound(): ?string
    {
        return $this->league_round;
    }

    public function setLeagueRound(string $league_round): self
    {
        $this->league_round = $league_round;

        return $this;
    }

    public function getTeamHomeId(): ?int
    {
        return $this->team_home_id;
    }

    public function setTeamHomeId(int $team_home_id): self
    {
        $this->team_home_id = $team_home_id;

        return $this;
    }

    public function getTeamHomeName(): ?string
    {
        return $this->team_home_name;
    }

    public function setTeamHomeName(string $team_home_name): self
    {
        $this->team_home_name = $team_home_name;

        return $this;
    }

    public function getTeamHomeGoals(): ?int
    {
        return $this->team_home_goals;
    }

    public function setTeamHomeGoals(int $team_home_goals): self
    {
        $this->team_home_goals = $team_home_goals;

        return $this;
    }

    public function getTeamAwayId(): ?int
    {
        return $this->team_away_id;
    }

    public function setTeamAwayId(int $team_away_id): self
    {
        $this->team_away_id = $team_away_id;

        return $this;
    }

    public function getTeamAwayName(): ?string
    {
        return $this->team_away_name;
    }

    public function setTeamAwayName(string $team_away_name): self
    {
        $this->team_away_name = $team_away_name;

        return $this;
    }

    public function getTeamAwayGoals(): ?int
    {
        return $this->team_away_goals;
    }

    public function setTeamAwayGoals(int $team_away_goals): self
    {
        $this->team_away_goals = $team_away_goals;

        return $this;
    }

    public function getWinner(): ?string
    {
        return $this->winner;
    }

    public function setWinner(?string $winner): self
    {
        $this->winner = $winner;

        return $this;
    }
}

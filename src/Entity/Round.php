<?php

namespace App\Entity;

use App\Repository\RoundRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: RoundRepository::class)]
class Round
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\OneToMany(mappedBy: 'round', targetEntity: TeamSet::class, cascade: ["all"])]
    private Collection $teamSets;

    #[ORM\Column]
    private ?bool $active = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE)]
    private ?\DateTimeInterface $dateStart = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE)]
    private ?\DateTimeInterface $dateEnd = null;

    public function __construct()
    {
        $this->teamSets = new ArrayCollection();
    }

    public function __toString(): string
    {
        return (string) $this->id;
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    /**
     * @return Collection<int, TeamSet>
     */
    public function getTeamSets(): Collection
    {
        return $this->teamSets;
    }

    public function addTeamSet(TeamSet $teamSet): self
    {
        if (!$this->teamSets->contains($teamSet)) {
            $this->teamSets->add($teamSet);
            $teamSet->setRound($this);
        }

        return $this;
    }

    public function removeTeamSet(TeamSet $teamSet): self
    {
        if ($this->teamSets->removeElement($teamSet)) {
            // set the owning side to null (unless already changed)
            if ($teamSet->getRound() === $this) {
                $teamSet->setRound(null);
            }
        }

        return $this;
    }

    public function isActive(): ?bool
    {
        return $this->active;
    }

    public function setActive(bool $active): self
    {
        $this->active = $active;

        return $this;
    }

    public function getDateEnd(): ?\DateTimeInterface
    {
        return $this->dateEnd;
    }

    public function setDateEnd(\DateTimeInterface $dateEnd): self
    {
        $this->dateEnd = $dateEnd;

        return $this;
    }

    /**
     * @return \DateTimeInterface|null
     */
    public function getDateStart(): ?\DateTimeInterface
    {
        return $this->dateStart;
    }

    /**
     * @param \DateTimeInterface|null $dateStart
     */
    public function setDateStart(?\DateTimeInterface $dateStart): void
    {
        $this->dateStart = $dateStart;
    }
}

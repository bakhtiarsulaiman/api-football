<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230328104150 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE game (id INT AUTO_INCREMENT NOT NULL, fixture_id INT NOT NULL, fixture_date DATETIME NOT NULL, venue_id INT NOT NULL, venue_name VARCHAR(128) NOT NULL, venue_city VARCHAR(128) NOT NULL, status_long VARCHAR(128) NOT NULL, status_short VARCHAR(16) NOT NULL, league_id INT NOT NULL, league_name VARCHAR(256) NOT NULL, league_country VARCHAR(128) NOT NULL, league_season VARCHAR(32) NOT NULL, league_round VARCHAR(128) NOT NULL, team_home_id INT NOT NULL, team_home_name VARCHAR(256) NOT NULL, team_home_goals INT NOT NULL, team_away_id INT NOT NULL, team_away_name VARCHAR(256) NOT NULL, team_away_goals INT NOT NULL, winner VARCHAR(64) DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE messenger_messages (id BIGINT AUTO_INCREMENT NOT NULL, body LONGTEXT NOT NULL, headers LONGTEXT NOT NULL, queue_name VARCHAR(190) NOT NULL, created_at DATETIME NOT NULL, available_at DATETIME NOT NULL, delivered_at DATETIME DEFAULT NULL, INDEX IDX_75EA56E0FB7336F0 (queue_name), INDEX IDX_75EA56E0E3BD61CE (available_at), INDEX IDX_75EA56E016BA31DB (delivered_at), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE game');
        $this->addSql('DROP TABLE messenger_messages');
    }
}

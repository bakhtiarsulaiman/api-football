<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230404062634 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE team (id INT AUTO_INCREMENT NOT NULL, team_id INT NOT NULL, name VARCHAR(256) NOT NULL, code VARCHAR(64) NOT NULL, country VARCHAR(128) NOT NULL, logo VARCHAR(256) NOT NULL, venue_id INT NOT NULL, venue_name VARCHAR(256) DEFAULT NULL, venue_address LONGTEXT DEFAULT NULL, venue_city VARCHAR(256) DEFAULT NULL, venue_capacity INT DEFAULT NULL, venue_surface VARCHAR(64) DEFAULT NULL, venue_image VARCHAR(512) DEFAULT NULL, season INT NOT NULL, league INT NOT NULL, founded INT NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE team');
    }
}

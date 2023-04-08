-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2023 at 09:56 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230328104150', '2023-03-28 12:41:59', 22),
('DoctrineMigrations\\Version20230404062634', '2023-04-04 08:26:49', 18);

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id` int(11) NOT NULL,
  `fixture_id` int(11) NOT NULL,
  `fixture_date` datetime NOT NULL,
  `venue_id` int(11) NOT NULL,
  `venue_name` varchar(128) NOT NULL,
  `venue_city` varchar(128) NOT NULL,
  `status_long` varchar(128) NOT NULL,
  `status_short` varchar(16) NOT NULL,
  `league_id` int(11) NOT NULL,
  `league_name` varchar(256) NOT NULL,
  `league_country` varchar(128) NOT NULL,
  `league_season` varchar(32) NOT NULL,
  `league_round` varchar(128) NOT NULL,
  `team_home_id` int(11) NOT NULL,
  `team_home_name` varchar(256) NOT NULL,
  `team_home_goals` int(11) NOT NULL,
  `team_away_id` int(11) NOT NULL,
  `team_away_name` varchar(256) NOT NULL,
  `team_away_goals` int(11) NOT NULL,
  `winner` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id`, `fixture_id`, `fixture_date`, `venue_id`, `venue_name`, `venue_city`, `status_long`, `status_short`, `league_id`, `league_name`, `league_country`, `league_season`, `league_round`, `team_home_id`, `team_home_name`, `team_home_goals`, `team_away_id`, `team_away_name`, `team_away_goals`, `winner`) VALUES
(3, 871470, '2022-08-06 16:00:00', 681, 'Stade de la Meinau', 'Strasbourg', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 1', 95, 'Strasbourg', 1, 91, 'Monaco', 2, 'away'),
(4, 871471, '2022-08-07 16:05:00', 680, 'Roazhon Park', 'Rennes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 1', 94, 'Rennes', 0, 97, 'Lorient', 1, 'away'),
(5, 871472, '2022-08-06 20:00:00', 644, 'Stade Gabriel Montpied', 'Clermont-Ferrand', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 1', 99, 'Clermont Foot', 0, 85, 'Paris Saint Germain', 5, 'away'),
(6, 871473, '2022-08-07 12:00:00', 682, 'Stadium de Toulouse', 'Toulouse', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 1', 96, 'Toulouse', 1, 84, 'Nice', 1, '-'),
(7, 871474, '2022-08-05 20:00:00', 666, 'Groupama Stadium', 'Décines-Charpieu', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 1', 80, 'Lyon', 2, 98, 'Ajaccio', 1, 'home'),
(8, 871475, '2022-08-07 14:00:00', 655, 'Stade Pierre-Mauroy', 'Villeneuve d\'Ascq', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 1', 79, 'Lille', 4, 108, 'Auxerre', 1, 'home'),
(9, 871476, '2022-08-07 14:00:00', 634, 'Stade Raymond-Kopa', 'Angers', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 1', 77, 'Angers', 0, 83, 'Nantes', 0, '-'),
(10, 871477, '2022-08-07 14:00:00', 660, 'Stade de la Mosson', 'Montpellier', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 1', 82, 'Montpellier', 3, 110, 'Estac Troyes', 2, 'home'),
(11, 871478, '2022-08-07 19:45:00', 12678, 'Stade Orange Vélodrome', 'Marseille', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 1', 81, 'Marseille', 4, 93, 'Reims', 1, 'home'),
(12, 871479, '2022-08-07 14:00:00', 654, 'Stade Bollaert-Delelis', 'Lens', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 1', 116, 'Lens', 3, 106, 'Stade Brestois 29', 2, 'home'),
(13, 871480, '2022-08-14 14:00:00', 632, 'Stade François Coty', 'Ajaccio', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 2', 98, 'Ajaccio', 0, 116, 'Lens', 0, '-'),
(14, 871481, '2022-08-14 14:00:00', 636, 'Stade de l\'Abbé Deschamps', 'Auxerre', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 2', 108, 'Auxerre', 2, 77, 'Angers', 2, '-'),
(15, 871482, '2022-08-13 16:00:00', 659, 'Stade Louis II', 'Monaco', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 2', 91, 'Monaco', 1, 94, 'Rennes', 1, '-'),
(16, 871483, '2022-09-07 18:00:00', 656, 'Stade Yves Allainmat - Le Moustoir', 'Lorient', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 2', 97, 'Lorient', 3, 80, 'Lyon', 1, 'home'),
(17, 871484, '2022-08-12 20:00:00', 662, 'Stade de la Beaujoire - Louis Fonteneau', 'Nantes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 2', 83, 'Nantes', 1, 79, 'Lille', 1, '-'),
(18, 871485, '2022-08-14 16:05:00', 663, 'Allianz Riviera', 'Nice', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 2', 84, 'Nice', 1, 95, 'Strasbourg', 1, '-'),
(19, 871486, '2022-08-13 20:00:00', 671, 'Parc des Princes', 'Paris', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 2', 85, 'Paris Saint Germain', 5, 82, 'Montpellier', 2, 'home'),
(20, 871487, '2022-08-14 19:45:00', 641, 'Stade Francis-Le Blé', 'Brest', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 2', 106, 'Stade Brestois 29', 1, 81, 'Marseille', 1, '-'),
(21, 871488, '2022-08-14 14:00:00', 674, 'Stade Auguste-Delaune II', 'Reims', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 2', 93, 'Reims', 2, 99, 'Clermont Foot', 4, 'away'),
(22, 871489, '2022-08-14 14:00:00', 684, 'Stade de l\'Aube', 'Troyes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 2', 110, 'Estac Troyes', 0, 96, 'Toulouse', 3, 'away'),
(23, 871490, '2022-08-20 16:00:00', 659, 'Stade Louis II', 'Monaco', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 3', 91, 'Monaco', 1, 116, 'Lens', 4, 'away'),
(24, 871491, '2022-08-21 14:00:00', 634, 'Stade Raymond-Kopa', 'Angers', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 3', 77, 'Angers', 1, 106, 'Stade Brestois 29', 3, 'away'),
(25, 871492, '2022-08-21 14:00:00', 644, 'Stade Gabriel Montpied', 'Clermont-Ferrand', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 3', 99, 'Clermont Foot', 1, 84, 'Nice', 0, 'home'),
(26, 871493, '2022-08-21 19:45:00', 655, 'Stade Pierre-Mauroy', 'Villeneuve d\'Ascq', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 3', 79, 'Lille', 1, 85, 'Paris Saint Germain', 7, 'away'),
(27, 871494, '2022-08-21 14:00:00', 660, 'Stade de la Mosson', 'Montpellier', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 3', 82, 'Montpellier', 1, 108, 'Auxerre', 2, 'away'),
(28, 871495, '2022-08-19 20:00:00', 666, 'Groupama Stadium', 'Décines-Charpieu', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 3', 80, 'Lyon', 4, 110, 'Estac Troyes', 1, 'home'),
(29, 871496, '2022-08-20 20:00:00', 12678, 'Stade Orange Vélodrome', 'Marseille', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 3', 81, 'Marseille', 2, 83, 'Nantes', 1, 'home'),
(30, 871497, '2022-08-21 12:00:00', 681, 'Stade de la Meinau', 'Strasbourg', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 3', 95, 'Strasbourg', 1, 93, 'Reims', 1, '-'),
(31, 871498, '2022-08-21 16:05:00', 680, 'Roazhon Park', 'Rennes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 3', 94, 'Rennes', 2, 98, 'Ajaccio', 1, 'home'),
(32, 871499, '2022-08-21 14:00:00', 682, 'Stadium de Toulouse', 'Toulouse', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 3', 96, 'Toulouse', 2, 97, 'Lorient', 2, '-'),
(33, 871500, '2022-08-26 20:00:00', 632, 'Stade François Coty', 'Ajaccio', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 4', 98, 'Ajaccio', 1, 79, 'Lille', 3, 'away'),
(34, 871501, '2022-08-27 16:00:00', 636, 'Stade de l\'Abbé Deschamps', 'Auxerre', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 4', 108, 'Auxerre', 1, 95, 'Strasbourg', 0, 'home'),
(35, 871502, '2022-08-28 14:00:00', 656, 'Stade Yves Allainmat - Le Moustoir', 'Lorient', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 4', 97, 'Lorient', 2, 99, 'Clermont Foot', 1, 'home'),
(36, 871503, '2022-08-28 12:00:00', 662, 'Stade de la Beaujoire - Louis Fonteneau', 'Nantes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 4', 83, 'Nantes', 3, 96, 'Toulouse', 1, 'home'),
(37, 871504, '2022-08-28 14:00:00', 663, 'Allianz Riviera', 'Nice', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 4', 84, 'Nice', 0, 81, 'Marseille', 3, 'away'),
(38, 871505, '2022-08-28 19:45:00', 671, 'Parc des Princes', 'Paris', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 4', 85, 'Paris Saint Germain', 1, 91, 'Monaco', 1, '-'),
(39, 871506, '2022-08-27 20:00:00', 654, 'Stade Bollaert-Delelis', 'Lens', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 4', 116, 'Lens', 2, 94, 'Rennes', 1, 'home'),
(40, 871507, '2022-08-28 14:00:00', 641, 'Stade Francis-Le Blé', 'Brest', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 4', 106, 'Stade Brestois 29', 0, 82, 'Montpellier', 7, 'away'),
(41, 871508, '2022-08-28 16:05:00', 674, 'Stade Auguste-Delaune II', 'Reims', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 4', 93, 'Reims', 1, 80, 'Lyon', 1, '-'),
(42, 871509, '2022-08-28 14:00:00', 684, 'Stade de l\'Aube', 'Troyes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 4', 110, 'Estac Troyes', 3, 77, 'Angers', 1, 'home'),
(43, 871510, '2022-08-31 18:00:00', 659, 'Stade Louis II', 'Monaco', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 5', 91, 'Monaco', 2, 110, 'Estac Troyes', 4, 'away'),
(44, 871511, '2022-08-31 18:00:00', 634, 'Stade Raymond-Kopa', 'Angers', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 5', 77, 'Angers', 2, 93, 'Reims', 4, 'away'),
(45, 871512, '2022-08-31 20:00:00', 19207, 'Decathlon Arena – Stade Pierre-Mauroy', 'Villeneuve d\'Ascq', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 5', 79, 'Lille', 1, 84, 'Nice', 2, 'away'),
(46, 871513, '2022-08-31 18:00:00', 660, 'Stade de la Mosson', 'Montpellier', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 5', 82, 'Montpellier', 2, 98, 'Ajaccio', 0, 'home'),
(47, 871514, '2022-08-31 18:00:00', 666, 'Groupama Stadium', 'Décines-Charpieu', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 5', 80, 'Lyon', 2, 108, 'Auxerre', 1, 'home'),
(48, 871515, '2022-08-31 20:00:00', 12678, 'Stade Orange Vélodrome', 'Marseille', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 5', 81, 'Marseille', 1, 99, 'Clermont Foot', 0, 'home'),
(49, 871516, '2022-08-31 20:00:00', 654, 'Stade Bollaert-Delelis', 'Lens', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 5', 116, 'Lens', 5, 97, 'Lorient', 2, 'home'),
(50, 871517, '2022-08-31 18:00:00', 681, 'Stade de la Meinau', 'Strasbourg', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 5', 95, 'Strasbourg', 1, 83, 'Nantes', 1, '-'),
(51, 871518, '2022-08-31 20:00:00', 680, 'Roazhon Park', 'Rennes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 5', 94, 'Rennes', 3, 106, 'Stade Brestois 29', 1, 'home'),
(52, 871519, '2022-08-31 20:00:00', 682, 'Stadium de Toulouse', 'Toulouse', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 5', 96, 'Toulouse', 0, 85, 'Paris Saint Germain', 3, 'away'),
(53, 871520, '2022-09-04 14:00:00', 632, 'Stade François Coty', 'Ajaccio', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 6', 98, 'Ajaccio', 0, 97, 'Lorient', 1, 'away'),
(54, 871521, '2022-09-03 16:00:00', 636, 'Stade de l\'Abbé Deschamps', 'Auxerre', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 6', 108, 'Auxerre', 0, 81, 'Marseille', 2, 'away'),
(55, 871522, '2022-09-04 14:00:00', 644, 'Stade Gabriel Montpied', 'Clermont-Ferrand', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 6', 99, 'Clermont Foot', 2, 96, 'Toulouse', 0, 'home'),
(56, 871523, '2022-09-03 20:00:00', 662, 'Stade de la Beaujoire - Louis Fonteneau', 'Nantes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 6', 83, 'Nantes', 0, 85, 'Paris Saint Germain', 3, 'away'),
(57, 871524, '2022-09-04 12:00:00', 660, 'Stade de la Mosson', 'Montpellier', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 6', 82, 'Montpellier', 1, 79, 'Lille', 3, 'away'),
(58, 871525, '2022-09-04 19:45:00', 663, 'Allianz Riviera', 'Nice', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 6', 84, 'Nice', 0, 91, 'Monaco', 1, 'away'),
(59, 871526, '2022-09-03 18:00:00', 666, 'Groupama Stadium', 'Décines-Charpieu', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 6', 80, 'Lyon', 5, 77, 'Angers', 0, 'home'),
(60, 871527, '2022-09-04 14:00:00', 641, 'Stade Francis-Le Blé', 'Brest', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 6', 106, 'Stade Brestois 29', 1, 95, 'Strasbourg', 1, '-'),
(61, 871528, '2022-09-04 14:00:00', 674, 'Stade Auguste-Delaune II', 'Reims', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 6', 93, 'Reims', 1, 116, 'Lens', 1, '-'),
(62, 871529, '2022-09-04 16:05:00', 684, 'Stade de l\'Aube', 'Troyes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 6', 110, 'Estac Troyes', 1, 94, 'Rennes', 1, '-'),
(63, 871530, '2022-09-11 14:00:00', 632, 'Stade François Coty', 'Ajaccio', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 7', 98, 'Ajaccio', 0, 84, 'Nice', 1, 'away'),
(64, 871531, '2022-09-11 19:45:00', 659, 'Stade Louis II', 'Monaco', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 7', 91, 'Monaco', 2, 80, 'Lyon', 1, 'home'),
(65, 871532, '2022-09-11 14:00:00', 634, 'Stade Raymond-Kopa', 'Angers', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 7', 77, 'Angers', 2, 82, 'Montpellier', 1, 'home'),
(66, 871533, '2022-09-11 14:00:00', 656, 'Stade Yves Allainmat - Le Moustoir', 'Lorient', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 7', 97, 'Lorient', 3, 83, 'Nantes', 2, 'home'),
(67, 871534, '2022-09-10 20:00:00', 12678, 'Stade Orange Vélodrome', 'Marseille', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 7', 81, 'Marseille', 2, 79, 'Lille', 1, 'home'),
(68, 871535, '2022-09-10 16:00:00', 671, 'Parc des Princes', 'Paris', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 7', 85, 'Paris Saint Germain', 1, 106, 'Stade Brestois 29', 0, 'home'),
(69, 871536, '2022-09-09 20:00:00', 654, 'Stade Bollaert-Delelis', 'Lens', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 7', 116, 'Lens', 1, 110, 'Estac Troyes', 0, 'home'),
(70, 871537, '2022-09-11 12:00:00', 681, 'Stade de la Meinau', 'Strasbourg', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 7', 95, 'Strasbourg', 0, 99, 'Clermont Foot', 0, '-'),
(71, 871538, '2022-09-11 16:05:00', 680, 'Roazhon Park', 'Rennes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 7', 94, 'Rennes', 5, 108, 'Auxerre', 0, 'home'),
(72, 871539, '2022-09-11 14:00:00', 682, 'Stadium de Toulouse', 'Toulouse', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 7', 96, 'Toulouse', 1, 93, 'Reims', 0, 'home'),
(73, 871540, '2022-09-16 20:00:00', 636, 'Stade de l\'Abbé Deschamps', 'Auxerre', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 8', 108, 'Auxerre', 1, 97, 'Lorient', 3, 'away'),
(74, 871541, '2022-09-18 14:00:00', 644, 'Stade Gabriel Montpied', 'Clermont-Ferrand', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 8', 99, 'Clermont Foot', 1, 110, 'Estac Troyes', 3, 'away'),
(75, 871542, '2022-09-18 16:05:00', 662, 'Stade de la Beaujoire - Louis Fonteneau', 'Nantes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 8', 83, 'Nantes', 0, 116, 'Lens', 0, '-'),
(76, 871543, '2022-09-17 20:00:00', 19207, 'Decathlon Arena – Stade Pierre-Mauroy', 'Villeneuve d\'Ascq', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 8', 79, 'Lille', 2, 96, 'Toulouse', 1, 'home'),
(77, 871544, '2022-09-17 16:00:00', 660, 'Stade de la Mosson', 'Montpellier', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 8', 82, 'Montpellier', 2, 95, 'Strasbourg', 1, 'home'),
(78, 871545, '2022-09-18 14:00:00', 663, 'Allianz Riviera', 'Nice', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 8', 84, 'Nice', 0, 77, 'Angers', 1, 'away'),
(79, 871546, '2022-09-18 19:45:00', 666, 'Groupama Stadium', 'Décines-Charpieu', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 8', 80, 'Lyon', 0, 85, 'Paris Saint Germain', 1, 'away'),
(80, 871547, '2022-09-18 14:00:00', 12678, 'Stade Orange Vélodrome', 'Marseille', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 8', 81, 'Marseille', 1, 94, 'Rennes', 1, '-'),
(81, 871548, '2022-09-18 14:00:00', 641, 'Stade Francis-Le Blé', 'Brest', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 8', 106, 'Stade Brestois 29', 0, 98, 'Ajaccio', 1, 'away'),
(82, 871549, '2022-09-18 12:00:00', 674, 'Stade Auguste-Delaune II', 'Reims', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 8', 93, 'Reims', 0, 91, 'Monaco', 3, 'away'),
(83, 871550, '2022-10-02 14:00:00', 632, 'Stade François Coty', 'Ajaccio', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 9', 98, 'Ajaccio', 1, 99, 'Clermont Foot', 3, 'away'),
(84, 871551, '2022-10-02 14:00:00', 636, 'Stade de l\'Abbé Deschamps', 'Auxerre', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 9', 108, 'Auxerre', 1, 106, 'Stade Brestois 29', 1, '-'),
(85, 871552, '2022-10-02 16:05:00', 659, 'Stade Louis II', 'Monaco', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 9', 91, 'Monaco', 4, 83, 'Nantes', 1, 'home'),
(86, 871553, '2022-09-30 20:00:00', 634, 'Stade Raymond-Kopa', 'Angers', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 9', 77, 'Angers', 0, 81, 'Marseille', 3, 'away'),
(87, 871554, '2022-10-02 12:00:00', 656, 'Stade Yves Allainmat - Le Moustoir', 'Lorient', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 9', 97, 'Lorient', 2, 79, 'Lille', 1, 'home'),
(88, 871555, '2022-10-01 20:00:00', 671, 'Parc des Princes', 'Paris', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 9', 85, 'Paris Saint Germain', 2, 84, 'Nice', 1, 'home'),
(89, 871556, '2022-10-02 19:45:00', 654, 'Stade Bollaert-Delelis', 'Lens', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 9', 116, 'Lens', 1, 80, 'Lyon', 0, 'home'),
(90, 871557, '2022-10-01 16:00:00', 681, 'Stade de la Meinau', 'Strasbourg', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 9', 95, 'Strasbourg', 1, 94, 'Rennes', 3, 'away'),
(91, 871558, '2022-10-02 14:00:00', 682, 'Stadium de Toulouse', 'Toulouse', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 9', 96, 'Toulouse', 4, 82, 'Montpellier', 2, 'home'),
(92, 871559, '2022-10-02 14:00:00', 684, 'Stade de l\'Aube', 'Troyes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 9', 110, 'Estac Troyes', 2, 93, 'Reims', 2, '-'),
(93, 871560, '2022-10-09 14:00:00', 634, 'Stade Raymond-Kopa', 'Angers', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 10', 77, 'Angers', 2, 95, 'Strasbourg', 3, 'away'),
(94, 871561, '2022-10-09 14:00:00', 644, 'Stade Gabriel Montpied', 'Clermont-Ferrand', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 10', 99, 'Clermont Foot', 2, 108, 'Auxerre', 1, 'home'),
(95, 871562, '2022-10-09 19:45:00', 19207, 'Decathlon Arena – Stade Pierre-Mauroy', 'Villeneuve d\'Ascq', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 10', 79, 'Lille', 1, 116, 'Lens', 0, 'home'),
(96, 871563, '2022-10-09 12:00:00', 660, 'Stade de la Mosson', 'Montpellier', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 10', 82, 'Montpellier', 0, 91, 'Monaco', 2, 'away'),
(97, 871564, '2022-10-09 14:00:00', 663, 'Allianz Riviera', 'Nice', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 10', 84, 'Nice', 3, 110, 'Estac Troyes', 2, 'home'),
(98, 871565, '2022-10-07 20:00:00', 666, 'Groupama Stadium', 'Décines-Charpieu', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 10', 80, 'Lyon', 1, 96, 'Toulouse', 1, '-'),
(99, 871566, '2022-10-08 16:00:00', 12678, 'Stade Orange Vélodrome', 'Marseille', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 10', 81, 'Marseille', 1, 98, 'Ajaccio', 2, 'away'),
(100, 871567, '2022-10-09 14:00:00', 641, 'Stade Francis-Le Blé', 'Brest', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 10', 106, 'Stade Brestois 29', 1, 97, 'Lorient', 2, 'away'),
(101, 871568, '2022-10-09 16:05:00', 680, 'Roazhon Park', 'Rennes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 10', 94, 'Rennes', 3, 83, 'Nantes', 0, 'home'),
(102, 871569, '2022-10-08 20:00:00', 674, 'Stade Auguste-Delaune II', 'Reims', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 10', 93, 'Reims', 0, 85, 'Paris Saint Germain', 0, '-'),
(103, 871570, '2022-10-16 14:00:00', 636, 'Stade de l\'Abbé Deschamps', 'Auxerre', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 11', 108, 'Auxerre', 1, 84, 'Nice', 1, '-'),
(104, 871571, '2022-10-16 16:05:00', 659, 'Stade Louis II', 'Monaco', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 11', 91, 'Monaco', 1, 99, 'Clermont Foot', 1, '-'),
(105, 871572, '2022-10-15 16:00:00', 656, 'Stade Yves Allainmat - Le Moustoir', 'Lorient', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 11', 97, 'Lorient', 0, 93, 'Reims', 0, '-'),
(106, 871573, '2022-10-16 14:00:00', 662, 'Stade de la Beaujoire - Louis Fonteneau', 'Nantes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 11', 83, 'Nantes', 4, 106, 'Stade Brestois 29', 1, 'home'),
(107, 871574, '2022-10-16 19:45:00', 671, 'Parc des Princes', 'Paris', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 11', 85, 'Paris Saint Germain', 1, 81, 'Marseille', 0, 'home'),
(108, 871575, '2022-10-15 20:00:00', 654, 'Stade Bollaert-Delelis', 'Lens', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 11', 116, 'Lens', 1, 82, 'Montpellier', 0, 'home'),
(109, 871576, '2022-10-14 20:00:00', 681, 'Stade de la Meinau', 'Strasbourg', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 11', 95, 'Strasbourg', 0, 79, 'Lille', 3, 'away'),
(110, 871577, '2022-10-16 14:00:00', 680, 'Roazhon Park', 'Rennes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 11', 94, 'Rennes', 3, 80, 'Lyon', 2, 'home'),
(111, 871578, '2022-10-16 12:00:00', 682, 'Stadium de Toulouse', 'Toulouse', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 11', 96, 'Toulouse', 3, 77, 'Angers', 2, 'home'),
(112, 871579, '2022-10-16 14:00:00', 684, 'Stade de l\'Aube', 'Troyes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 11', 110, 'Estac Troyes', 1, 98, 'Ajaccio', 1, '-'),
(113, 871580, '2022-10-21 20:00:00', 632, 'Stade François Coty', 'Ajaccio', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 12', 98, 'Ajaccio', 0, 85, 'Paris Saint Germain', 3, 'away'),
(114, 871581, '2022-10-23 12:00:00', 634, 'Stade Raymond-Kopa', 'Angers', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 12', 77, 'Angers', 1, 94, 'Rennes', 2, 'away'),
(115, 871582, '2022-10-23 14:00:00', 644, 'Stade Gabriel Montpied', 'Clermont-Ferrand', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 12', 99, 'Clermont Foot', 1, 106, 'Stade Brestois 29', 3, 'away'),
(116, 871583, '2022-10-23 19:45:00', 19207, 'Decathlon Arena – Stade Pierre-Mauroy', 'Villeneuve d\'Ascq', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 12', 79, 'Lille', 4, 91, 'Monaco', 3, 'home'),
(117, 871584, '2022-10-22 16:00:00', 660, 'Stade de la Mosson', 'Montpellier', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 12', 82, 'Montpellier', 1, 80, 'Lyon', 2, 'away'),
(118, 871585, '2022-10-23 16:05:00', 663, 'Allianz Riviera', 'Nice', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 12', 84, 'Nice', 1, 83, 'Nantes', 1, '-'),
(119, 871586, '2022-10-22 20:00:00', 12678, 'Stade Orange Vélodrome', 'Marseille', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 12', 81, 'Marseille', 0, 116, 'Lens', 1, 'away'),
(120, 871587, '2022-10-23 14:00:00', 674, 'Stade Auguste-Delaune II', 'Reims', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 12', 93, 'Reims', 2, 108, 'Auxerre', 1, 'home'),
(121, 871588, '2022-10-23 14:00:00', 682, 'Stadium de Toulouse', 'Toulouse', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 12', 96, 'Toulouse', 2, 95, 'Strasbourg', 2, '-'),
(122, 871589, '2022-10-23 14:00:00', 684, 'Stade de l\'Aube', 'Troyes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 12', 110, 'Estac Troyes', 2, 97, 'Lorient', 2, '-'),
(123, 871590, '2022-10-30 12:00:00', 636, 'Stade de l\'Abbé Deschamps', 'Auxerre', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 13', 108, 'Auxerre', 1, 98, 'Ajaccio', 0, 'home'),
(124, 871591, '2022-10-30 14:00:00', 659, 'Stade Louis II', 'Monaco', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 13', 91, 'Monaco', 2, 77, 'Angers', 0, 'home'),
(125, 871592, '2022-10-30 16:05:00', 656, 'Stade Yves Allainmat - Le Moustoir', 'Lorient', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 13', 97, 'Lorient', 1, 84, 'Nice', 2, 'away'),
(126, 871593, '2022-10-30 14:00:00', 662, 'Stade de la Beaujoire - Louis Fonteneau', 'Nantes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 13', 83, 'Nantes', 1, 99, 'Clermont Foot', 1, '-'),
(127, 871594, '2022-10-30 19:45:00', 666, 'Groupama Stadium', 'Décines-Charpieu', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 13', 80, 'Lyon', 1, 79, 'Lille', 0, 'home'),
(128, 871595, '2022-10-29 16:00:00', 671, 'Parc des Princes', 'Paris', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 13', 85, 'Paris Saint Germain', 4, 110, 'Estac Troyes', 3, 'home'),
(129, 871596, '2022-10-28 20:00:00', 654, 'Stade Bollaert-Delelis', 'Lens', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 13', 116, 'Lens', 3, 96, 'Toulouse', 0, 'home'),
(130, 871597, '2022-10-29 20:00:00', 681, 'Stade de la Meinau', 'Strasbourg', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 13', 95, 'Strasbourg', 2, 81, 'Marseille', 2, '-'),
(131, 871598, '2022-10-30 14:00:00', 641, 'Stade Francis-Le Blé', 'Brest', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 13', 106, 'Stade Brestois 29', 0, 93, 'Reims', 0, '-'),
(132, 871599, '2022-10-30 14:00:00', 680, 'Roazhon Park', 'Rennes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 13', 94, 'Rennes', 3, 82, 'Montpellier', 0, 'home'),
(133, 871600, '2022-11-05 16:00:00', 632, 'Stade François Coty', 'Ajaccio', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 14', 98, 'Ajaccio', 4, 95, 'Strasbourg', 2, 'home'),
(134, 871601, '2022-11-05 20:00:00', 634, 'Stade Raymond-Kopa', 'Angers', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 14', 77, 'Angers', 1, 116, 'Lens', 2, 'away'),
(135, 871602, '2022-11-06 14:00:00', 644, 'Stade Gabriel Montpied', 'Clermont-Ferrand', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 14', 99, 'Clermont Foot', 1, 82, 'Montpellier', 1, '-'),
(136, 871603, '2022-11-06 12:00:00', 656, 'Stade Yves Allainmat - Le Moustoir', 'Lorient', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 14', 97, 'Lorient', 1, 85, 'Paris Saint Germain', 2, 'away'),
(137, 871604, '2022-11-06 16:05:00', 19207, 'Decathlon Arena – Stade Pierre-Mauroy', 'Villeneuve d\'Ascq', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 14', 79, 'Lille', 1, 94, 'Rennes', 1, '-'),
(138, 871605, '2022-11-06 14:00:00', 663, 'Allianz Riviera', 'Nice', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 14', 84, 'Nice', 1, 106, 'Stade Brestois 29', 0, 'home'),
(139, 871606, '2022-11-06 19:45:00', 12678, 'Stade Orange Vélodrome', 'Marseille', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 14', 81, 'Marseille', 1, 80, 'Lyon', 0, 'home'),
(140, 871607, '2022-11-06 14:00:00', 674, 'Stade Auguste-Delaune II', 'Reims', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 14', 93, 'Reims', 1, 83, 'Nantes', 0, 'home'),
(141, 871608, '2022-11-06 14:00:00', 682, 'Stadium de Toulouse', 'Toulouse', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 14', 96, 'Toulouse', 0, 91, 'Monaco', 2, 'away'),
(142, 871609, '2022-11-04 20:00:00', 684, 'Stade de l\'Aube', 'Troyes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 14', 110, 'Estac Troyes', 1, 108, 'Auxerre', 1, '-'),
(143, 871610, '2022-11-13 19:45:00', 659, 'Stade Louis II', 'Monaco', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 15', 91, 'Monaco', 2, 81, 'Marseille', 3, 'away'),
(144, 871611, '2022-11-13 14:00:00', 662, 'Stade de la Beaujoire - Louis Fonteneau', 'Nantes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 15', 83, 'Nantes', 2, 98, 'Ajaccio', 2, '-'),
(145, 871612, '2022-11-13 14:00:00', 19207, 'Decathlon Arena – Stade Pierre-Mauroy', 'Villeneuve d\'Ascq', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 15', 79, 'Lille', 1, 77, 'Angers', 0, 'home'),
(146, 871613, '2022-11-13 14:00:00', 660, 'Stade de la Mosson', 'Montpellier', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 15', 82, 'Montpellier', 1, 93, 'Reims', 1, '-'),
(147, 871614, '2022-11-11 20:00:00', 666, 'Groupama Stadium', 'Décines-Charpieu', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 15', 80, 'Lyon', 1, 84, 'Nice', 1, '-'),
(148, 871615, '2022-11-13 12:00:00', 671, 'Parc des Princes', 'Paris', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 15', 85, 'Paris Saint Germain', 5, 108, 'Auxerre', 0, 'home'),
(149, 871616, '2022-11-12 16:00:00', 654, 'Stade Bollaert-Delelis', 'Lens', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 15', 116, 'Lens', 2, 99, 'Clermont Foot', 1, 'home'),
(150, 871617, '2022-11-13 16:05:00', 681, 'Stade de la Meinau', 'Strasbourg', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 15', 95, 'Strasbourg', 1, 97, 'Lorient', 1, '-'),
(151, 871618, '2022-11-13 14:00:00', 641, 'Stade Francis-Le Blé', 'Brest', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 15', 106, 'Stade Brestois 29', 2, 110, 'Estac Troyes', 1, 'home'),
(152, 871619, '2022-11-12 20:00:00', 680, 'Roazhon Park', 'Rennes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 15', 94, 'Rennes', 2, 96, 'Toulouse', 1, 'home'),
(153, 871620, '2022-12-28 14:00:00', 632, 'Stade François Coty', 'Ajaccio', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 16', 98, 'Ajaccio', 1, 77, 'Angers', 0, 'home'),
(154, 871621, '2022-12-28 16:00:00', 636, 'Stade de l\'Abbé Deschamps', 'Auxerre', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 16', 108, 'Auxerre', 2, 91, 'Monaco', 3, 'away'),
(155, 871622, '2022-12-28 18:00:00', 644, 'Stade Gabriel Montpied', 'Clermont-Ferrand', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 16', 99, 'Clermont Foot', 0, 79, 'Lille', 2, 'away'),
(156, 871623, '2022-12-29 16:00:00', 656, 'Stade Yves Allainmat - Le Moustoir', 'Lorient', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 16', 97, 'Lorient', 0, 82, 'Montpellier', 2, 'away'),
(157, 871624, '2022-12-29 20:00:00', 663, 'Allianz Riviera', 'Nice', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 16', 84, 'Nice', 0, 116, 'Lens', 0, '-'),
(158, 871625, '2022-12-29 20:00:00', 12678, 'Stade Orange Vélodrome', 'Marseille', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 16', 81, 'Marseille', 6, 96, 'Toulouse', 1, 'home'),
(159, 871626, '2022-12-28 20:00:00', 671, 'Parc des Princes', 'Paris', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 16', 85, 'Paris Saint Germain', 2, 95, 'Strasbourg', 1, 'home'),
(160, 871627, '2022-12-28 20:00:00', 641, 'Stade Francis-Le Blé', 'Brest', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 16', 106, 'Stade Brestois 29', 2, 80, 'Lyon', 4, 'away'),
(161, 871628, '2022-12-29 18:00:00', 674, 'Stade Auguste-Delaune II', 'Reims', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 16', 93, 'Reims', 3, 94, 'Rennes', 1, 'home'),
(162, 871629, '2022-12-28 14:00:00', 684, 'Stade de l\'Aube', 'Troyes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 16', 110, 'Estac Troyes', 0, 83, 'Nantes', 0, '-'),
(163, 871630, '2023-01-01 14:00:00', 659, 'Stade Louis II', 'Monaco', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 17', 91, 'Monaco', 1, 106, 'Stade Brestois 29', 0, 'home'),
(164, 871631, '2023-01-01 14:00:00', 662, 'Stade de la Beaujoire - Louis Fonteneau', 'Nantes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 17', 83, 'Nantes', 1, 108, 'Auxerre', 0, 'home'),
(165, 871632, '2023-01-02 16:00:00', 19207, 'Decathlon Arena – Stade Pierre-Mauroy', 'Villeneuve d\'Ascq', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 17', 79, 'Lille', 1, 93, 'Reims', 1, '-'),
(166, 871633, '2023-01-01 16:00:00', 666, 'Groupama Stadium', 'Décines-Charpieu', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 17', 80, 'Lyon', 0, 99, 'Clermont Foot', 1, 'away'),
(167, 871634, '2023-01-01 19:45:00', 654, 'Stade Bollaert-Delelis', 'Lens', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 17', 116, 'Lens', 3, 85, 'Paris Saint Germain', 1, 'home'),
(168, 871635, '2023-01-02 20:00:00', 680, 'Roazhon Park', 'Rennes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 17', 94, 'Rennes', 2, 84, 'Nice', 1, 'home'),
(169, 871636, '2023-01-01 14:00:00', 682, 'Stadium de Toulouse', 'Toulouse', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 17', 96, 'Toulouse', 2, 98, 'Ajaccio', 0, 'home'),
(170, 871637, '2023-01-01 14:00:00', 634, 'Stade Raymond-Kopa', 'Angers', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 17', 77, 'Angers', 1, 97, 'Lorient', 2, 'away'),
(171, 871638, '2023-01-02 18:00:00', 660, 'Stade de la Mosson', 'Montpellier', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 17', 82, 'Montpellier', 1, 81, 'Marseille', 2, 'away'),
(172, 871639, '2023-01-02 14:00:00', 681, 'Stade de la Meinau', 'Strasbourg', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 17', 95, 'Strasbourg', 2, 110, 'Estac Troyes', 3, 'away'),
(173, 871640, '2023-01-11 18:00:00', 632, 'Stade François Coty', 'Ajaccio', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 18', 98, 'Ajaccio', 0, 93, 'Reims', 1, 'away'),
(174, 871641, '2023-01-11 18:00:00', 636, 'Stade de l\'Abbé Deschamps', 'Auxerre', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 18', 108, 'Auxerre', 0, 96, 'Toulouse', 5, 'away'),
(175, 871642, '2023-01-11 18:00:00', 644, 'Stade Gabriel Montpied', 'Clermont-Ferrand', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 18', 99, 'Clermont Foot', 2, 94, 'Rennes', 1, 'home'),
(176, 871643, '2023-01-11 20:00:00', 656, 'Stade Yves Allainmat - Le Moustoir', 'Lorient', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 18', 97, 'Lorient', 2, 91, 'Monaco', 2, '-'),
(177, 871644, '2023-01-11 18:00:00', 662, 'Stade de la Beaujoire - Louis Fonteneau', 'Nantes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 18', 83, 'Nantes', 0, 80, 'Lyon', 0, '-'),
(178, 871645, '2023-01-11 20:00:00', 663, 'Allianz Riviera', 'Nice', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 18', 84, 'Nice', 6, 82, 'Montpellier', 1, 'home'),
(179, 871646, '2023-01-11 20:00:00', 671, 'Parc des Princes', 'Paris', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 18', 85, 'Paris Saint Germain', 2, 77, 'Angers', 0, 'home'),
(180, 871647, '2023-01-11 20:00:00', 681, 'Stade de la Meinau', 'Strasbourg', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 18', 95, 'Strasbourg', 2, 116, 'Lens', 2, '-'),
(181, 871648, '2023-01-11 18:00:00', 641, 'Stade Francis-Le Blé', 'Brest', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 18', 106, 'Stade Brestois 29', 0, 79, 'Lille', 0, '-'),
(182, 871649, '2023-01-11 20:00:00', 684, 'Stade de l\'Aube', 'Troyes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 18', 110, 'Estac Troyes', 0, 81, 'Marseille', 2, 'away'),
(183, 871650, '2023-01-15 16:05:00', 659, 'Stade Louis II', 'Monaco', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 19', 91, 'Monaco', 7, 98, 'Ajaccio', 1, 'home'),
(184, 871651, '2023-01-15 14:00:00', 634, 'Stade Raymond-Kopa', 'Angers', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 19', 77, 'Angers', 1, 99, 'Clermont Foot', 2, 'away'),
(185, 871652, '2023-01-15 12:00:00', 19207, 'Decathlon Arena – Stade Pierre-Mauroy', 'Villeneuve d\'Ascq', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 19', 79, 'Lille', 5, 110, 'Estac Troyes', 1, 'home'),
(186, 871653, '2023-01-15 14:00:00', 660, 'Stade de la Mosson', 'Montpellier', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 19', 82, 'Montpellier', 0, 83, 'Nantes', 3, 'away'),
(187, 871654, '2023-01-14 20:00:00', 666, 'Groupama Stadium', 'Décines-Charpieu', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 19', 80, 'Lyon', 1, 95, 'Strasbourg', 2, 'away'),
(188, 871655, '2023-01-14 18:00:00', 12678, 'Stade Orange Vélodrome', 'Marseille', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 19', 81, 'Marseille', 3, 97, 'Lorient', 1, 'home'),
(189, 871656, '2023-01-14 16:00:00', 654, 'Stade Bollaert-Delelis', 'Lens', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 19', 116, 'Lens', 1, 108, 'Auxerre', 0, 'home'),
(190, 871657, '2023-01-15 19:45:00', 680, 'Roazhon Park', 'Rennes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 19', 94, 'Rennes', 1, 85, 'Paris Saint Germain', 0, 'home'),
(191, 871658, '2023-01-15 14:00:00', 674, 'Stade Auguste-Delaune II', 'Reims', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 19', 93, 'Reims', 0, 84, 'Nice', 0, '-'),
(192, 871659, '2023-01-15 14:00:00', 682, 'Stadium de Toulouse', 'Toulouse', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 19', 96, 'Toulouse', 1, 106, 'Stade Brestois 29', 1, '-'),
(193, 871660, '2023-01-29 16:05:00', 632, 'Stade François Coty', 'Ajaccio', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 20', 98, 'Ajaccio', 0, 80, 'Lyon', 2, 'away'),
(194, 871661, '2023-01-29 14:00:00', 636, 'Stade de l\'Abbé Deschamps', 'Auxerre', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 20', 108, 'Auxerre', 0, 82, 'Montpellier', 2, 'away'),
(195, 871662, '2023-01-29 14:00:00', 644, 'Stade Gabriel Montpied', 'Clermont-Ferrand', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 20', 99, 'Clermont Foot', 0, 83, 'Nantes', 0, '-'),
(196, 871663, '2023-01-27 20:00:00', 656, 'Stade Yves Allainmat - Le Moustoir', 'Lorient', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 20', 97, 'Lorient', 2, 94, 'Rennes', 1, 'home'),
(197, 871664, '2023-01-29 12:00:00', 663, 'Allianz Riviera', 'Nice', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 20', 84, 'Nice', 1, 79, 'Lille', 0, 'home'),
(198, 871665, '2023-01-28 20:00:00', 12678, 'Stade Orange Vélodrome', 'Marseille', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 20', 81, 'Marseille', 1, 91, 'Monaco', 1, '-'),
(199, 871666, '2023-01-29 19:45:00', 671, 'Parc des Princes', 'Paris', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 20', 85, 'Paris Saint Germain', 1, 93, 'Reims', 1, '-'),
(200, 871667, '2023-01-29 14:00:00', 681, 'Stade de la Meinau', 'Strasbourg', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 20', 95, 'Strasbourg', 1, 96, 'Toulouse', 2, 'away'),
(201, 871668, '2023-01-29 14:00:00', 641, 'Stade Francis-Le Blé', 'Brest', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 20', 106, 'Stade Brestois 29', 4, 77, 'Angers', 0, 'home'),
(202, 871669, '2023-01-28 16:00:00', 684, 'Stade de l\'Aube', 'Troyes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 20', 110, 'Estac Troyes', 1, 116, 'Lens', 1, '-'),
(203, 871670, '2023-02-01 18:00:00', 662, 'Stade de la Beaujoire - Louis Fonteneau', 'Nantes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 21', 83, 'Nantes', 0, 81, 'Marseille', 2, 'away'),
(204, 871671, '2023-02-01 20:00:00', 666, 'Groupama Stadium', 'Décines-Charpieu', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 21', 80, 'Lyon', 0, 106, 'Stade Brestois 29', 0, '-'),
(205, 871672, '2023-02-01 18:00:00', 674, 'Stade Auguste-Delaune II', 'Reims', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 21', 93, 'Reims', 4, 97, 'Lorient', 2, 'home'),
(206, 871673, '2023-02-01 20:00:00', 659, 'Stade Louis II', 'Monaco', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 21', 91, 'Monaco', 3, 108, 'Auxerre', 2, 'home'),
(207, 871674, '2023-02-01 18:00:00', 634, 'Stade Raymond-Kopa', 'Angers', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 21', 77, 'Angers', 1, 98, 'Ajaccio', 2, 'away'),
(208, 871675, '2023-02-01 18:00:00', 19207, 'Decathlon Arena – Stade Pierre-Mauroy', 'Villeneuve d\'Ascq', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 21', 79, 'Lille', 0, 99, 'Clermont Foot', 0, '-'),
(209, 871676, '2023-02-01 20:00:00', 660, 'Stade de la Mosson', 'Montpellier', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 21', 82, 'Montpellier', 1, 85, 'Paris Saint Germain', 3, 'away'),
(210, 871677, '2023-02-01 20:00:00', 654, 'Stade Bollaert-Delelis', 'Lens', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 21', 116, 'Lens', 0, 84, 'Nice', 1, 'away'),
(211, 871678, '2023-02-01 20:00:00', 680, 'Roazhon Park', 'Rennes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 21', 94, 'Rennes', 3, 95, 'Strasbourg', 0, 'home'),
(212, 871679, '2023-02-01 18:00:00', 682, 'Stadium de Toulouse', 'Toulouse', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 21', 96, 'Toulouse', 4, 110, 'Estac Troyes', 1, 'home'),
(213, 871680, '2023-02-05 14:00:00', 632, 'Stade François Coty', 'Ajaccio', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 22', 98, 'Ajaccio', 0, 83, 'Nantes', 2, 'away'),
(214, 871681, '2023-02-05 14:00:00', 636, 'Stade de l\'Abbé Deschamps', 'Auxerre', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 22', 108, 'Auxerre', 0, 93, 'Reims', 0, '-'),
(215, 871682, '2023-02-05 12:00:00', 644, 'Stade Gabriel Montpied', 'Clermont-Ferrand', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 22', 99, 'Clermont Foot', 0, 91, 'Monaco', 2, 'away'),
(216, 871683, '2023-02-05 14:00:00', 656, 'Stade Yves Allainmat - Le Moustoir', 'Lorient', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 22', 97, 'Lorient', 0, 77, 'Angers', 0, '-'),
(217, 871684, '2023-02-05 19:45:00', 12678, 'Stade Orange Vélodrome', 'Marseille', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 22', 81, 'Marseille', 1, 84, 'Nice', 3, 'away'),
(218, 871685, '2023-02-04 16:00:00', 671, 'Parc des Princes', 'Paris', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 22', 85, 'Paris Saint Germain', 2, 96, 'Toulouse', 1, 'home'),
(219, 871686, '2023-02-05 14:00:00', 681, 'Stade de la Meinau', 'Strasbourg', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 22', 95, 'Strasbourg', 2, 82, 'Montpellier', 0, 'home'),
(220, 871687, '2023-02-05 16:05:00', 641, 'Stade Francis-Le Blé', 'Brest', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 22', 106, 'Stade Brestois 29', 1, 116, 'Lens', 1, '-'),
(221, 871688, '2023-02-04 20:00:00', 680, 'Roazhon Park', 'Rennes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 22', 94, 'Rennes', 1, 79, 'Lille', 3, 'away'),
(222, 871689, '2023-02-04 18:00:00', 684, 'Stade de l\'Aube', 'Troyes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 22', 110, 'Estac Troyes', 1, 80, 'Lyon', 3, 'away'),
(223, 871690, '2023-02-11 16:00:00', 659, 'Stade Louis II', 'Monaco', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 23', 91, 'Monaco', 3, 85, 'Paris Saint Germain', 1, 'home'),
(224, 871691, '2023-02-12 14:00:00', 634, 'Stade Raymond-Kopa', 'Angers', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 23', 77, 'Angers', 1, 108, 'Auxerre', 1, '-'),
(225, 871692, '2023-02-11 20:00:00', 644, 'Stade Gabriel Montpied', 'Clermont-Ferrand', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 23', 99, 'Clermont Foot', 0, 81, 'Marseille', 2, 'away'),
(226, 871693, '2023-02-12 16:05:00', 662, 'Stade de la Beaujoire - Louis Fonteneau', 'Nantes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 23', 83, 'Nantes', 1, 97, 'Lorient', 0, 'home'),
(227, 871694, '2023-02-12 14:00:00', 19207, 'Decathlon Arena – Stade Pierre-Mauroy', 'Villeneuve d\'Ascq', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 23', 79, 'Lille', 2, 95, 'Strasbourg', 0, 'home'),
(228, 871695, '2023-02-12 14:00:00', 660, 'Stade de la Mosson', 'Montpellier', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 23', 82, 'Montpellier', 3, 106, 'Stade Brestois 29', 0, 'home'),
(229, 871696, '2023-02-10 20:00:00', 663, 'Allianz Riviera', 'Nice', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 23', 84, 'Nice', 3, 98, 'Ajaccio', 0, 'home'),
(230, 871697, '2023-02-12 19:45:00', 666, 'Groupama Stadium', 'Décines-Charpieu', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 23', 80, 'Lyon', 2, 116, 'Lens', 1, 'home'),
(231, 871698, '2023-02-12 14:00:00', 674, 'Stade Auguste-Delaune II', 'Reims', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 23', 93, 'Reims', 4, 110, 'Estac Troyes', 0, 'home'),
(232, 871699, '2023-02-12 12:00:00', 682, 'Stadium de Toulouse', 'Toulouse', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 23', 96, 'Toulouse', 3, 94, 'Rennes', 1, 'home'),
(233, 871700, '2023-02-17 20:00:00', 636, 'Stade de l\'Abbé Deschamps', 'Auxerre', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 24', 108, 'Auxerre', 2, 80, 'Lyon', 1, 'home'),
(234, 871701, '2023-02-19 14:00:00', 656, 'Stade Yves Allainmat - Le Moustoir', 'Lorient', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 24', 97, 'Lorient', 3, 98, 'Ajaccio', 0, 'home'),
(235, 871702, '2023-02-18 16:00:00', 663, 'Allianz Riviera', 'Nice', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 24', 84, 'Nice', 0, 93, 'Reims', 0, '-'),
(236, 871703, '2023-02-19 12:00:00', 671, 'Parc des Princes', 'Paris', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 24', 85, 'Paris Saint Germain', 4, 79, 'Lille', 3, 'home'),
(237, 871704, '2023-02-19 16:05:00', 654, 'Stade Bollaert-Delelis', 'Lens', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 24', 116, 'Lens', 3, 83, 'Nantes', 1, 'home'),
(238, 871705, '2023-02-18 20:00:00', 681, 'Stade de la Meinau', 'Strasbourg', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 24', 95, 'Strasbourg', 2, 77, 'Angers', 1, 'home'),
(239, 871706, '2023-02-19 14:00:00', 641, 'Stade Francis-Le Blé', 'Brest', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 24', 106, 'Stade Brestois 29', 1, 91, 'Monaco', 2, 'away'),
(240, 871707, '2023-02-19 14:00:00', 680, 'Roazhon Park', 'Rennes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 24', 94, 'Rennes', 2, 99, 'Clermont Foot', 0, 'home'),
(241, 871708, '2023-02-19 19:45:00', 682, 'Stadium de Toulouse', 'Toulouse', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 24', 96, 'Toulouse', 2, 81, 'Marseille', 3, 'away'),
(242, 871709, '2023-02-19 14:00:00', 684, 'Stade de l\'Aube', 'Troyes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 24', 110, 'Estac Troyes', 0, 82, 'Montpellier', 1, 'away'),
(243, 871710, '2023-02-26 14:00:00', 632, 'Stade François Coty', 'Ajaccio', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 25', 98, 'Ajaccio', 2, 110, 'Estac Troyes', 1, 'home'),
(244, 871711, '2023-02-26 16:05:00', 659, 'Stade Louis II', 'Monaco', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 25', 91, 'Monaco', 0, 84, 'Nice', 3, 'away'),
(245, 871712, '2023-02-25 16:00:00', 634, 'Stade Raymond-Kopa', 'Angers', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 25', 77, 'Angers', 1, 80, 'Lyon', 3, 'away');
INSERT INTO `game` (`id`, `fixture_id`, `fixture_date`, `venue_id`, `venue_name`, `venue_city`, `status_long`, `status_short`, `league_id`, `league_name`, `league_country`, `league_season`, `league_round`, `team_home_id`, `team_home_name`, `team_home_goals`, `team_away_id`, `team_away_name`, `team_away_goals`, `winner`) VALUES
(246, 871713, '2023-02-26 14:00:00', 644, 'Stade Gabriel Montpied', 'Clermont-Ferrand', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 25', 99, 'Clermont Foot', 1, 95, 'Strasbourg', 1, '-'),
(247, 871714, '2023-02-26 12:00:00', 656, 'Stade Yves Allainmat - Le Moustoir', 'Lorient', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 25', 97, 'Lorient', 0, 108, 'Auxerre', 1, 'away'),
(248, 871715, '2023-02-26 14:00:00', 662, 'Stade de la Beaujoire - Louis Fonteneau', 'Nantes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 25', 83, 'Nantes', 0, 94, 'Rennes', 1, 'away'),
(249, 871716, '2023-02-24 20:00:00', 19207, 'Decathlon Arena – Stade Pierre-Mauroy', 'Villeneuve d\'Ascq', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 25', 79, 'Lille', 2, 106, 'Stade Brestois 29', 1, 'home'),
(250, 871717, '2023-02-25 20:00:00', 660, 'Stade de la Mosson', 'Montpellier', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 25', 82, 'Montpellier', 1, 116, 'Lens', 1, '-'),
(251, 871718, '2023-02-26 19:45:00', 12678, 'Stade Orange Vélodrome', 'Marseille', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 25', 81, 'Marseille', 0, 85, 'Paris Saint Germain', 3, 'away'),
(252, 871719, '2023-02-26 14:00:00', 674, 'Stade Auguste-Delaune II', 'Reims', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 25', 93, 'Reims', 3, 96, 'Toulouse', 0, 'home'),
(253, 871720, '2023-03-05 14:00:00', 660, 'Stade de la Mosson', 'Montpellier', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 26', 82, 'Montpellier', 5, 77, 'Angers', 0, 'home'),
(254, 871721, '2023-03-03 20:00:00', 663, 'Allianz Riviera', 'Nice', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 26', 84, 'Nice', 1, 108, 'Auxerre', 1, '-'),
(255, 871722, '2023-03-05 16:05:00', 666, 'Groupama Stadium', 'Décines-Charpieu', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 26', 80, 'Lyon', 0, 97, 'Lorient', 0, '-'),
(256, 871723, '2023-03-04 20:00:00', 671, 'Parc des Princes', 'Paris', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 26', 85, 'Paris Saint Germain', 4, 83, 'Nantes', 2, 'home'),
(257, 871724, '2023-03-04 16:00:00', 654, 'Stade Bollaert-Delelis', 'Lens', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 26', 116, 'Lens', 1, 79, 'Lille', 1, '-'),
(258, 871725, '2023-03-05 14:00:00', 681, 'Stade de la Meinau', 'Strasbourg', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 26', 95, 'Strasbourg', 0, 106, 'Stade Brestois 29', 1, 'away'),
(259, 871726, '2023-03-05 19:45:00', 680, 'Roazhon Park', 'Rennes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 26', 94, 'Rennes', 0, 81, 'Marseille', 1, 'away'),
(260, 871727, '2023-03-05 14:00:00', 674, 'Stade Auguste-Delaune II', 'Reims', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 26', 93, 'Reims', 1, 98, 'Ajaccio', 0, 'home'),
(261, 871728, '2023-03-05 14:00:00', 682, 'Stadium de Toulouse', 'Toulouse', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 26', 96, 'Toulouse', 0, 99, 'Clermont Foot', 1, 'away'),
(262, 871729, '2023-03-05 12:00:00', 684, 'Stade de l\'Aube', 'Troyes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 26', 110, 'Estac Troyes', 2, 91, 'Monaco', 2, '-'),
(263, 871730, '2023-03-12 14:00:00', 632, 'Stade François Coty', 'Ajaccio', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 27', 98, 'Ajaccio', 0, 82, 'Montpellier', 1, 'away'),
(264, 871731, '2023-03-11 16:00:00', 636, 'Stade de l\'Abbé Deschamps', 'Auxerre', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 27', 108, 'Auxerre', 0, 94, 'Rennes', 0, '-'),
(265, 871732, '2023-03-12 16:05:00', 659, 'Stade Louis II', 'Monaco', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 27', 91, 'Monaco', 0, 93, 'Reims', 1, 'away'),
(266, 871733, '2023-03-12 14:00:00', 634, 'Stade Raymond-Kopa', 'Angers', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 27', 77, 'Angers', 0, 96, 'Toulouse', 2, 'away'),
(267, 871734, '2023-03-12 12:00:00', 644, 'Stade Gabriel Montpied', 'Clermont-Ferrand', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 27', 99, 'Clermont Foot', 0, 116, 'Lens', 4, 'away'),
(268, 871735, '2023-03-12 14:00:00', 656, 'Stade Yves Allainmat - Le Moustoir', 'Lorient', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 27', 97, 'Lorient', 2, 110, 'Estac Troyes', 0, 'home'),
(269, 871736, '2023-03-12 14:00:00', 662, 'Stade de la Beaujoire - Louis Fonteneau', 'Nantes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 27', 83, 'Nantes', 2, 84, 'Nice', 2, '-'),
(270, 871737, '2023-03-10 20:00:00', 19207, 'Decathlon Arena – Stade Pierre-Mauroy', 'Villeneuve d\'Ascq', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 27', 79, 'Lille', 3, 80, 'Lyon', 3, '-'),
(271, 871738, '2023-03-12 19:45:00', 12678, 'Stade Orange Vélodrome', 'Marseille', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 27', 81, 'Marseille', 2, 95, 'Strasbourg', 2, '-'),
(272, 871739, '2023-03-11 20:00:00', 641, 'Stade Francis-Le Blé', 'Brest', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 27', 106, 'Stade Brestois 29', 1, 85, 'Paris Saint Germain', 2, 'away'),
(273, 871740, '2023-03-19 12:00:00', 632, 'Stade François Coty', 'Ajaccio', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 28', 98, 'Ajaccio', 0, 91, 'Monaco', 2, 'away'),
(274, 871741, '2023-03-19 14:00:00', 660, 'Stade de la Mosson', 'Montpellier', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 28', 82, 'Montpellier', 2, 99, 'Clermont Foot', 1, 'home'),
(275, 871742, '2023-03-19 14:00:00', 663, 'Allianz Riviera', 'Nice', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 28', 84, 'Nice', 1, 97, 'Lorient', 1, '-'),
(276, 871743, '2023-03-17 20:00:00', 666, 'Groupama Stadium', 'Décines-Charpieu', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 28', 80, 'Lyon', 1, 83, 'Nantes', 1, '-'),
(277, 871744, '2023-03-19 16:05:00', 671, 'Parc des Princes', 'Paris', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 28', 85, 'Paris Saint Germain', 0, 94, 'Rennes', 2, 'away'),
(278, 871745, '2023-03-18 20:00:00', 654, 'Stade Bollaert-Delelis', 'Lens', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 28', 116, 'Lens', 3, 77, 'Angers', 0, 'home'),
(279, 871746, '2023-03-19 14:00:00', 681, 'Stade de la Meinau', 'Strasbourg', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 28', 95, 'Strasbourg', 2, 108, 'Auxerre', 0, 'home'),
(280, 871747, '2023-03-19 19:45:00', 674, 'Stade Auguste-Delaune II', 'Reims', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 28', 93, 'Reims', 1, 81, 'Marseille', 2, 'away'),
(281, 871748, '2023-03-18 16:00:00', 682, 'Stadium de Toulouse', 'Toulouse', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 28', 96, 'Toulouse', 0, 79, 'Lille', 2, 'away'),
(282, 871749, '2023-03-19 14:00:00', 684, 'Stade de l\'Aube', 'Troyes', 'Match Finished', 'FT', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 28', 110, 'Estac Troyes', 2, 106, 'Stade Brestois 29', 2, '-'),
(283, 871750, '2023-04-01 16:00:00', 636, 'Stade de l\'Abbé Deschamps', 'Auxerre', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 29', 108, 'Auxerre', 0, 110, 'Estac Troyes', 0, '-'),
(284, 871751, '2023-04-02 16:05:00', 659, 'Stade Louis II', 'Monaco', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 29', 91, 'Monaco', 0, 95, 'Strasbourg', 0, '-'),
(285, 871752, '2023-04-02 14:00:00', 634, 'Stade Raymond-Kopa', 'Angers', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 29', 77, 'Angers', 0, 84, 'Nice', 0, '-'),
(286, 871753, '2023-04-02 14:00:00', 644, 'Stade Gabriel Montpied', 'Clermont-Ferrand', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 29', 99, 'Clermont Foot', 0, 98, 'Ajaccio', 0, '-'),
(287, 871754, '2023-04-02 14:00:00', 662, 'Stade de la Beaujoire - Louis Fonteneau', 'Nantes', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 29', 83, 'Nantes', 0, 93, 'Reims', 0, '-'),
(288, 871755, '2023-04-02 12:00:00', 19207, 'Decathlon Arena – Stade Pierre-Mauroy', 'Villeneuve d\'Ascq', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 29', 79, 'Lille', 0, 97, 'Lorient', 0, '-'),
(289, 871756, '2023-03-31 20:00:00', 12678, 'Stade Orange Vélodrome', 'Marseille', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 29', 81, 'Marseille', 0, 82, 'Montpellier', 0, '-'),
(290, 871757, '2023-04-02 19:45:00', 671, 'Parc des Princes', 'Paris', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 29', 85, 'Paris Saint Germain', 0, 80, 'Lyon', 0, '-'),
(291, 871758, '2023-04-02 14:00:00', 641, 'Stade Francis-Le Blé', 'Brest', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 29', 106, 'Stade Brestois 29', 0, 96, 'Toulouse', 0, '-'),
(292, 871759, '2023-04-01 20:00:00', 680, 'Roazhon Park', 'Rennes', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 29', 94, 'Rennes', 0, 116, 'Lens', 0, '-'),
(293, 871760, '2023-04-09 14:00:00', 632, 'Stade François Coty', 'Ajaccio', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 30', 98, 'Ajaccio', 0, 108, 'Auxerre', 0, '-'),
(294, 871761, '2023-04-08 16:00:00', 634, 'Stade Raymond-Kopa', 'Angers', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 30', 77, 'Angers', 0, 79, 'Lille', 0, '-'),
(295, 871762, '2023-04-09 19:45:00', 656, 'Stade Yves Allainmat - Le Moustoir', 'Lorient', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 30', 97, 'Lorient', 0, 81, 'Marseille', 0, '-'),
(296, 871763, '2023-04-09 16:05:00', 662, 'Stade de la Beaujoire - Louis Fonteneau', 'Nantes', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 30', 83, 'Nantes', 0, 91, 'Monaco', 0, '-'),
(297, 871764, '2023-04-09 14:00:00', 660, 'Stade de la Mosson', 'Montpellier', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 30', 82, 'Montpellier', 0, 96, 'Toulouse', 0, '-'),
(298, 871765, '2023-04-08 20:00:00', 663, 'Allianz Riviera', 'Nice', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 30', 84, 'Nice', 0, 85, 'Paris Saint Germain', 0, '-'),
(299, 871766, '2023-04-09 12:00:00', 666, 'Groupama Stadium', 'Décines-Charpieu', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 30', 80, 'Lyon', 0, 94, 'Rennes', 0, '-'),
(300, 871767, '2023-04-07 20:00:00', 654, 'Stade Bollaert-Delelis', 'Lens', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 30', 116, 'Lens', 0, 95, 'Strasbourg', 0, '-'),
(301, 871768, '2023-04-09 14:00:00', 674, 'Stade Auguste-Delaune II', 'Reims', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 30', 93, 'Reims', 0, 106, 'Stade Brestois 29', 0, '-'),
(302, 871769, '2023-04-09 14:00:00', 684, 'Stade de l\'Aube', 'Troyes', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 30', 110, 'Estac Troyes', 0, 99, 'Clermont Foot', 0, '-'),
(303, 871770, '2023-04-16 14:00:00', 636, 'Stade de l\'Abbé Deschamps', 'Auxerre', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 31', 108, 'Auxerre', 0, 83, 'Nantes', 0, '-'),
(304, 871771, '2023-04-16 16:05:00', 659, 'Stade Louis II', 'Monaco', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 31', 91, 'Monaco', 0, 97, 'Lorient', 0, '-'),
(305, 871772, '2023-04-16 14:00:00', 644, 'Stade Gabriel Montpied', 'Clermont-Ferrand', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 31', 99, 'Clermont Foot', 0, 77, 'Angers', 0, '-'),
(306, 871773, '2023-04-16 12:00:00', 19207, 'Decathlon Arena – Stade Pierre-Mauroy', 'Villeneuve d\'Ascq', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 31', 79, 'Lille', 0, 82, 'Montpellier', 0, '-'),
(307, 871774, '2023-04-16 19:45:00', 12678, 'Stade Orange Vélodrome', 'Marseille', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 31', 81, 'Marseille', 0, 110, 'Estac Troyes', 0, '-'),
(308, 871775, '2023-04-15 20:00:00', 671, 'Parc des Princes', 'Paris', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 31', 85, 'Paris Saint Germain', 0, 116, 'Lens', 0, '-'),
(309, 871776, '2023-04-16 14:00:00', 681, 'Stade de la Meinau', 'Strasbourg', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 31', 95, 'Strasbourg', 0, 98, 'Ajaccio', 0, '-'),
(310, 871777, '2023-04-16 14:00:00', 641, 'Stade Francis-Le Blé', 'Brest', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 31', 106, 'Stade Brestois 29', 0, 84, 'Nice', 0, '-'),
(311, 871778, '2023-04-15 16:00:00', 680, 'Roazhon Park', 'Rennes', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 31', 94, 'Rennes', 0, 93, 'Reims', 0, '-'),
(312, 871779, '2023-04-14 20:00:00', 682, 'Stadium de Toulouse', 'Toulouse', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 31', 96, 'Toulouse', 0, 80, 'Lyon', 0, '-'),
(313, 871780, '2023-04-23 14:00:00', 632, 'Stade François Coty', 'Ajaccio', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 32', 98, 'Ajaccio', 0, 106, 'Stade Brestois 29', 0, '-'),
(314, 871781, '2023-04-22 16:00:00', 636, 'Stade de l\'Abbé Deschamps', 'Auxerre', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 32', 108, 'Auxerre', 0, 79, 'Lille', 0, '-'),
(315, 871782, '2023-04-21 20:00:00', 634, 'Stade Raymond-Kopa', 'Angers', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 32', 77, 'Angers', 0, 85, 'Paris Saint Germain', 0, '-'),
(316, 871783, '2023-04-23 14:00:00', 656, 'Stade Yves Allainmat - Le Moustoir', 'Lorient', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 32', 97, 'Lorient', 0, 96, 'Toulouse', 0, '-'),
(317, 871784, '2023-04-23 14:00:00', 662, 'Stade de la Beaujoire - Louis Fonteneau', 'Nantes', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 32', 83, 'Nantes', 0, 110, 'Estac Troyes', 0, '-'),
(318, 871785, '2023-04-23 16:00:00', 660, 'Stade de la Mosson', 'Montpellier', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 32', 82, 'Montpellier', 0, 94, 'Rennes', 0, '-'),
(319, 871786, '2023-04-23 14:00:00', 663, 'Allianz Riviera', 'Nice', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 32', 84, 'Nice', 0, 99, 'Clermont Foot', 0, '-'),
(320, 871787, '2023-04-23 19:45:00', 666, 'Groupama Stadium', 'Décines-Charpieu', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 32', 80, 'Lyon', 0, 81, 'Marseille', 0, '-'),
(321, 871788, '2023-04-23 01:00:00', 654, 'Stade Bollaert-Delelis', 'Lens', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 32', 116, 'Lens', 0, 91, 'Monaco', 0, '-'),
(322, 871789, '2023-04-23 12:00:00', 674, 'Stade Auguste-Delaune II', 'Reims', 'Not Started', 'NS', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 32', 93, 'Reims', 0, 95, 'Strasbourg', 0, '-'),
(323, 871790, '2023-04-30 01:00:00', 659, 'Stade Louis II', 'Monaco', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 33', 91, 'Monaco', 0, 82, 'Montpellier', 0, '-'),
(324, 871791, '2023-04-30 01:00:00', 644, 'Stade Gabriel Montpied', 'Clermont-Ferrand', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 33', 99, 'Clermont Foot', 0, 93, 'Reims', 0, '-'),
(325, 871792, '2023-04-30 01:00:00', 19207, 'Decathlon Arena – Stade Pierre-Mauroy', 'Villeneuve d\'Ascq', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 33', 79, 'Lille', 0, 98, 'Ajaccio', 0, '-'),
(326, 871793, '2023-04-30 01:00:00', 12678, 'Stade Orange Vélodrome', 'Marseille', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 33', 81, 'Marseille', 0, 108, 'Auxerre', 0, '-'),
(327, 871794, '2023-04-30 01:00:00', 671, 'Parc des Princes', 'Paris', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 33', 85, 'Paris Saint Germain', 0, 97, 'Lorient', 0, '-'),
(328, 871795, '2023-04-30 01:00:00', 681, 'Stade de la Meinau', 'Strasbourg', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 33', 95, 'Strasbourg', 0, 80, 'Lyon', 0, '-'),
(329, 871796, '2023-04-30 01:00:00', 641, 'Stade Francis-Le Blé', 'Brest', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 33', 106, 'Stade Brestois 29', 0, 83, 'Nantes', 0, '-'),
(330, 871797, '2023-04-30 01:00:00', 680, 'Roazhon Park', 'Rennes', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 33', 94, 'Rennes', 0, 77, 'Angers', 0, '-'),
(331, 871798, '2023-04-30 01:00:00', 682, 'Stadium de Toulouse', 'Toulouse', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 33', 96, 'Toulouse', 0, 116, 'Lens', 0, '-'),
(332, 871799, '2023-04-30 01:00:00', 684, 'Stade de l\'Aube', 'Troyes', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 33', 110, 'Estac Troyes', 0, 84, 'Nice', 0, '-'),
(333, 871800, '2023-05-07 01:00:00', 632, 'Stade François Coty', 'Ajaccio', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 34', 98, 'Ajaccio', 0, 96, 'Toulouse', 0, '-'),
(334, 871801, '2023-05-07 01:00:00', 636, 'Stade de l\'Abbé Deschamps', 'Auxerre', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 34', 108, 'Auxerre', 0, 99, 'Clermont Foot', 0, '-'),
(335, 871802, '2023-05-07 01:00:00', 634, 'Stade Raymond-Kopa', 'Angers', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 34', 77, 'Angers', 0, 91, 'Monaco', 0, '-'),
(336, 871803, '2023-05-07 01:00:00', 656, 'Stade Yves Allainmat - Le Moustoir', 'Lorient', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 34', 97, 'Lorient', 0, 106, 'Stade Brestois 29', 0, '-'),
(337, 871804, '2023-05-07 01:00:00', 662, 'Stade de la Beaujoire - Louis Fonteneau', 'Nantes', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 34', 83, 'Nantes', 0, 95, 'Strasbourg', 0, '-'),
(338, 871805, '2023-05-07 01:00:00', 663, 'Allianz Riviera', 'Nice', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 34', 84, 'Nice', 0, 94, 'Rennes', 0, '-'),
(339, 871806, '2023-05-07 01:00:00', 666, 'Groupama Stadium', 'Décines-Charpieu', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 34', 80, 'Lyon', 0, 82, 'Montpellier', 0, '-'),
(340, 871807, '2023-05-07 01:00:00', 654, 'Stade Bollaert-Delelis', 'Lens', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 34', 116, 'Lens', 0, 81, 'Marseille', 0, '-'),
(341, 871808, '2023-05-07 01:00:00', 674, 'Stade Auguste-Delaune II', 'Reims', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 34', 93, 'Reims', 0, 79, 'Lille', 0, '-'),
(342, 871809, '2023-05-07 01:00:00', 684, 'Stade de l\'Aube', 'Troyes', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 34', 110, 'Estac Troyes', 0, 85, 'Paris Saint Germain', 0, '-'),
(343, 871810, '2023-05-14 01:00:00', 659, 'Stade Louis II', 'Monaco', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 35', 91, 'Monaco', 0, 79, 'Lille', 0, '-'),
(344, 871811, '2023-05-14 01:00:00', 644, 'Stade Gabriel Montpied', 'Clermont-Ferrand', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 35', 99, 'Clermont Foot', 0, 80, 'Lyon', 0, '-'),
(345, 871812, '2023-05-14 01:00:00', 660, 'Stade de la Mosson', 'Montpellier', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 35', 82, 'Montpellier', 0, 97, 'Lorient', 0, '-'),
(346, 871813, '2023-05-14 01:00:00', 12678, 'Stade Orange Vélodrome', 'Marseille', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 35', 81, 'Marseille', 0, 77, 'Angers', 0, '-'),
(347, 871814, '2023-05-14 01:00:00', 671, 'Parc des Princes', 'Paris', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 35', 85, 'Paris Saint Germain', 0, 98, 'Ajaccio', 0, '-'),
(348, 871815, '2023-05-14 01:00:00', 654, 'Stade Bollaert-Delelis', 'Lens', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 35', 116, 'Lens', 0, 93, 'Reims', 0, '-'),
(349, 871816, '2023-05-14 01:00:00', 681, 'Stade de la Meinau', 'Strasbourg', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 35', 95, 'Strasbourg', 0, 84, 'Nice', 0, '-'),
(350, 871817, '2023-05-14 01:00:00', 641, 'Stade Francis-Le Blé', 'Brest', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 35', 106, 'Stade Brestois 29', 0, 108, 'Auxerre', 0, '-'),
(351, 871818, '2023-05-14 01:00:00', 680, 'Roazhon Park', 'Rennes', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 35', 94, 'Rennes', 0, 110, 'Estac Troyes', 0, '-'),
(352, 871819, '2023-05-14 01:00:00', 682, 'Stadium de Toulouse', 'Toulouse', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 35', 96, 'Toulouse', 0, 83, 'Nantes', 0, '-'),
(353, 871820, '2023-05-21 01:00:00', 632, 'Stade François Coty', 'Ajaccio', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 36', 98, 'Ajaccio', 0, 94, 'Rennes', 0, '-'),
(354, 871821, '2023-05-21 01:00:00', 636, 'Stade de l\'Abbé Deschamps', 'Auxerre', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 36', 108, 'Auxerre', 0, 85, 'Paris Saint Germain', 0, '-'),
(355, 871822, '2023-05-21 01:00:00', 656, 'Stade Yves Allainmat - Le Moustoir', 'Lorient', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 36', 97, 'Lorient', 0, 116, 'Lens', 0, '-'),
(356, 871823, '2023-05-21 01:00:00', 662, 'Stade de la Beaujoire - Louis Fonteneau', 'Nantes', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 36', 83, 'Nantes', 0, 82, 'Montpellier', 0, '-'),
(357, 871824, '2023-05-21 01:00:00', 19207, 'Decathlon Arena – Stade Pierre-Mauroy', 'Villeneuve d\'Ascq', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 36', 79, 'Lille', 0, 81, 'Marseille', 0, '-'),
(358, 871825, '2023-05-21 01:00:00', 663, 'Allianz Riviera', 'Nice', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 36', 84, 'Nice', 0, 96, 'Toulouse', 0, '-'),
(359, 871826, '2023-05-21 01:00:00', 666, 'Groupama Stadium', 'Décines-Charpieu', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 36', 80, 'Lyon', 0, 91, 'Monaco', 0, '-'),
(360, 871827, '2023-05-21 01:00:00', 641, 'Stade Francis-Le Blé', 'Brest', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 36', 106, 'Stade Brestois 29', 0, 99, 'Clermont Foot', 0, '-'),
(361, 871828, '2023-05-21 01:00:00', 674, 'Stade Auguste-Delaune II', 'Reims', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 36', 93, 'Reims', 0, 77, 'Angers', 0, '-'),
(362, 871829, '2023-05-21 01:00:00', 684, 'Stade de l\'Aube', 'Troyes', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 36', 110, 'Estac Troyes', 0, 95, 'Strasbourg', 0, '-'),
(363, 871830, '2023-05-27 01:00:00', 634, 'Stade Raymond-Kopa', 'Angers', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 37', 77, 'Angers', 0, 110, 'Estac Troyes', 0, '-'),
(364, 871831, '2023-05-27 01:00:00', 644, 'Stade Gabriel Montpied', 'Clermont-Ferrand', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 37', 99, 'Clermont Foot', 0, 97, 'Lorient', 0, '-'),
(365, 871832, '2023-05-27 01:00:00', 19207, 'Decathlon Arena – Stade Pierre-Mauroy', 'Villeneuve d\'Ascq', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 37', 79, 'Lille', 0, 83, 'Nantes', 0, '-'),
(366, 871833, '2023-05-27 01:00:00', 660, 'Stade de la Mosson', 'Montpellier', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 37', 82, 'Montpellier', 0, 84, 'Nice', 0, '-'),
(367, 871834, '2023-05-27 01:00:00', 666, 'Groupama Stadium', 'Décines-Charpieu', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 37', 80, 'Lyon', 0, 93, 'Reims', 0, '-'),
(368, 871835, '2023-05-27 01:00:00', 12678, 'Stade Orange Vélodrome', 'Marseille', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 37', 81, 'Marseille', 0, 106, 'Stade Brestois 29', 0, '-'),
(369, 871836, '2023-05-27 01:00:00', 654, 'Stade Bollaert-Delelis', 'Lens', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 37', 116, 'Lens', 0, 98, 'Ajaccio', 0, '-'),
(370, 871837, '2023-05-27 01:00:00', 681, 'Stade de la Meinau', 'Strasbourg', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 37', 95, 'Strasbourg', 0, 85, 'Paris Saint Germain', 0, '-'),
(371, 871838, '2023-05-27 01:00:00', 680, 'Roazhon Park', 'Rennes', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 37', 94, 'Rennes', 0, 91, 'Monaco', 0, '-'),
(372, 871839, '2023-05-27 01:00:00', 682, 'Stadium de Toulouse', 'Toulouse', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 37', 96, 'Toulouse', 0, 108, 'Auxerre', 0, '-'),
(373, 871840, '2023-06-03 01:00:00', 632, 'Stade François Coty', 'Ajaccio', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 38', 98, 'Ajaccio', 0, 81, 'Marseille', 0, '-'),
(374, 871841, '2023-06-03 01:00:00', 636, 'Stade de l\'Abbé Deschamps', 'Auxerre', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 38', 108, 'Auxerre', 0, 116, 'Lens', 0, '-'),
(375, 871842, '2023-06-03 01:00:00', 659, 'Stade Louis II', 'Monaco', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 38', 91, 'Monaco', 0, 96, 'Toulouse', 0, '-'),
(376, 871843, '2023-06-03 01:00:00', 656, 'Stade Yves Allainmat - Le Moustoir', 'Lorient', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 38', 97, 'Lorient', 0, 95, 'Strasbourg', 0, '-'),
(377, 871844, '2023-06-03 01:00:00', 662, 'Stade de la Beaujoire - Louis Fonteneau', 'Nantes', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 38', 83, 'Nantes', 0, 77, 'Angers', 0, '-'),
(378, 871845, '2023-06-03 01:00:00', 663, 'Allianz Riviera', 'Nice', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 38', 84, 'Nice', 0, 80, 'Lyon', 0, '-'),
(379, 871846, '2023-06-03 01:00:00', 671, 'Parc des Princes', 'Paris', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 38', 85, 'Paris Saint Germain', 0, 99, 'Clermont Foot', 0, '-'),
(380, 871847, '2023-06-03 01:00:00', 641, 'Stade Francis-Le Blé', 'Brest', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 38', 106, 'Stade Brestois 29', 0, 94, 'Rennes', 0, '-'),
(381, 871848, '2023-06-03 01:00:00', 674, 'Stade Auguste-Delaune II', 'Reims', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 38', 93, 'Reims', 0, 82, 'Montpellier', 0, '-'),
(382, 871849, '2023-06-03 01:00:00', 684, 'Stade de l\'Aube', 'Troyes', 'Time to be defined', 'TBD', 61, 'Ligue 1', 'France', '2022', 'Regular Season - 38', 110, 'Estac Troyes', 0, 79, 'Lille', 0, '-');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `code` varchar(64) NOT NULL,
  `country` varchar(128) NOT NULL,
  `logo` varchar(256) NOT NULL,
  `venue_id` int(11) NOT NULL,
  `venue_name` varchar(256) DEFAULT NULL,
  `venue_address` longtext DEFAULT NULL,
  `venue_city` varchar(256) DEFAULT NULL,
  `venue_capacity` int(11) DEFAULT NULL,
  `venue_surface` varchar(64) DEFAULT NULL,
  `venue_image` varchar(512) DEFAULT NULL,
  `season` int(11) NOT NULL,
  `league` int(11) NOT NULL,
  `founded` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `team_id`, `name`, `code`, `country`, `logo`, `venue_id`, `venue_name`, `venue_address`, `venue_city`, `venue_capacity`, `venue_surface`, `venue_image`, `season`, `league`, `founded`) VALUES
(1, 77, 'Angers', 'ANG', 'France', 'https://media-3.api-sports.io/football/teams/77.png', 634, 'Stade Raymond-Kopa', '73, boulevard Pierre de Coubertin', 'Angers', 17835, 'grass', 'https://media-1.api-sports.io/football/venues/634.png', 2022, 61, 1919),
(2, 79, 'Lille', 'LIL', 'France', 'https://media-3.api-sports.io/football/teams/79.png', 19207, 'Decathlon Arena – Stade Pierre-Mauroy', '261, Boulevard de Tournai, l&apos;Hôtel de Ville', 'Villeneuve d&apos;Ascq', 50083, 'grass', 'https://media-2.api-sports.io/football/venues/19207.png', 2022, 61, 1944),
(3, 80, 'Lyon', 'LYO', 'France', 'https://media-2.api-sports.io/football/teams/80.png', 666, 'Groupama Stadium', 'Chemin du Montout', 'Décines-Charpieu', 61556, 'grass', 'https://media-3.api-sports.io/football/venues/666.png', 2022, 61, 1950),
(4, 81, 'Marseille', 'MAR', 'France', 'https://media-1.api-sports.io/football/teams/81.png', 12678, 'Stade Orange Vélodrome', '3, boulevard Michelet', 'Marseille', 67394, 'grass', 'https://media-2.api-sports.io/football/venues/12678.png', 2022, 61, 1899),
(5, 82, 'Montpellier', 'MON', 'France', 'https://media-2.api-sports.io/football/teams/82.png', 660, 'Stade de la Mosson', 'Avenue de Heidelberg', 'Montpellier', 32939, 'grass', 'https://media-3.api-sports.io/football/venues/660.png', 2022, 61, 1974),
(6, 83, 'Nantes', 'NAN', 'France', 'https://media-2.api-sports.io/football/teams/83.png', 662, 'Stade de la Beaujoire - Louis Fonteneau', '5, boulevard de la Beaujoire', 'Nantes', 38285, 'grass', 'https://media-3.api-sports.io/football/venues/662.png', 2022, 61, 1943),
(7, 84, 'Nice', 'NIC', 'France', 'https://media-2.api-sports.io/football/teams/84.png', 663, 'Allianz Riviera', 'Boulevard des Jardiniers', 'Nice', 35624, 'grass', 'https://media-2.api-sports.io/football/venues/663.png', 2022, 61, 1904),
(8, 85, 'Paris Saint Germain', 'PAR', 'France', 'https://media-3.api-sports.io/football/teams/85.png', 671, 'Parc des Princes', '24, rue du Commandant Guilbaud', 'Paris', 47929, 'grass', 'https://media-2.api-sports.io/football/venues/671.png', 2022, 61, 1970),
(9, 91, 'Monaco', 'MON', 'France', 'https://media-1.api-sports.io/football/teams/91.png', 659, 'Stade Louis II', '7, avenue des Castelans', 'Monaco', 18523, 'grass', 'https://media-2.api-sports.io/football/venues/659.png', 2022, 61, 1919),
(10, 93, 'Reims', 'REI', 'France', 'https://media-2.api-sports.io/football/teams/93.png', 674, 'Stade Auguste-Delaune II', '33, Chaussée Bocquaine', 'Reims', 21684, 'grass', 'https://media-3.api-sports.io/football/venues/674.png', 2022, 61, 1909),
(11, 94, 'Rennes', 'REN', 'France', 'https://media-2.api-sports.io/football/teams/94.png', 680, 'Roazhon Park', '111, route de Lorient', 'Rennes', 31127, 'grass', 'https://media-3.api-sports.io/football/venues/680.png', 2022, 61, 1901),
(12, 95, 'Strasbourg', 'STR', 'France', 'https://media-3.api-sports.io/football/teams/95.png', 681, 'Stade de la Meinau', '12, rue de l&apos;Extenwoerth', 'Strasbourg', 26109, 'grass', 'https://media-1.api-sports.io/football/venues/681.png', 2022, 61, 1906),
(13, 96, 'Toulouse', 'TOU', 'France', 'https://media-3.api-sports.io/football/teams/96.png', 682, 'Stadium de Toulouse', '1, allée Gabriel Biènés', 'Toulouse', 33150, 'grass', 'https://media-3.api-sports.io/football/venues/682.png', 2022, 61, 1937),
(14, 97, 'Lorient', 'LOR', 'France', 'https://media-3.api-sports.io/football/teams/97.png', 656, 'Stade Yves Allainmat - Le Moustoir', '11, rue Jean Le Coutaller', 'Lorient', 18970, 'artificial turf', 'https://media-2.api-sports.io/football/venues/656.png', 2022, 61, 1926),
(15, 98, 'Ajaccio', 'AJA', 'France', 'https://media-2.api-sports.io/football/teams/98.png', 632, 'Stade François Coty', 'Ancienne route de Sartène, Zone Industrielle du Vazzio', 'Ajaccio', 10660, 'grass', 'https://media-2.api-sports.io/football/venues/632.png', 2022, 61, 1910),
(16, 99, 'Clermont Foot', 'CLE', 'France', 'https://media-3.api-sports.io/football/teams/99.png', 644, 'Stade Gabriel Montpied', 'Rue Adrien-Mabut', 'Clermont-Ferrand', 12306, 'grass', 'https://media-3.api-sports.io/football/venues/644.png', 2022, 61, 1990),
(17, 106, 'Stade Brestois 29', 'BRE', 'France', 'https://media-1.api-sports.io/football/teams/106.png', 641, 'Stade Francis-Le Blé', '26, rue de Quimper', 'Brest', 15931, 'grass', 'https://media-1.api-sports.io/football/venues/641.png', 2022, 61, 1950),
(18, 108, 'Auxerre', 'AUX', 'France', 'https://media-1.api-sports.io/football/teams/108.png', 636, 'Stade de l\'Abbé Deschamps', 'Route de Vaux', 'Auxerre', 23467, 'grass', 'https://media-3.api-sports.io/football/venues/636.png', 2022, 61, 1905),
(19, 110, 'Estac Troyes', 'TRO', 'France', 'https://media-1.api-sports.io/football/teams/110.png', 684, 'Stade de l\'Aube', '42, avenue Robert Schuman', 'Troyes', 21877, 'grass', 'https://media-2.api-sports.io/football/venues/684.png', 2022, 61, 1986),
(20, 116, 'Lens', 'LEN', 'France', 'https://media-2.api-sports.io/football/teams/116.png', 654, 'Stade Bollaert-Delelis', '83, rue Maurice-Carton', 'Lens', 41233, 'grass', 'https://media-2.api-sports.io/football/venues/654.png', 2022, 61, 1906);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=383;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

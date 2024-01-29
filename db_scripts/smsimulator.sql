-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2024 at 05:01 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smsimulator`
--
CREATE DATABASE IF NOT EXISTS `smsimulator` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `smsimulator`;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
CREATE TABLE IF NOT EXISTS `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`) VALUES(1, 'Microsoft Corporation');
INSERT INTO `companies` (`id`, `name`) VALUES(2, 'EcoWare');
INSERT INTO `companies` (`id`, `name`) VALUES(3, 'Apple Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(4, 'Amazon.com Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(5, 'Facebook Inc. Class A');
INSERT INTO `companies` (`id`, `name`) VALUES(6, 'Berkshire Hathaway Inc. Class B');
INSERT INTO `companies` (`id`, `name`) VALUES(7, 'Cekata LTD');
INSERT INTO `companies` (`id`, `name`) VALUES(8, 'SMG ltd');
INSERT INTO `companies` (`id`, `name`) VALUES(9, 'Arab & Funny corp.');
INSERT INTO `companies` (`id`, `name`) VALUES(10, 'Pashaliev i sinove');
INSERT INTO `companies` (`id`, `name`) VALUES(11, 'JPMorgan Chase & Co.');
INSERT INTO `companies` (`id`, `name`) VALUES(12, 'Visa Inc. Class A');
INSERT INTO `companies` (`id`, `name`) VALUES(13, 'Albanian Government');
INSERT INTO `companies` (`id`, `name`) VALUES(14, 'Intel Corporation');
INSERT INTO `companies` (`id`, `name`) VALUES(15, 'Verizon Communications Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(16, 'Cisco Systems Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(17, 'UnitedHealth Group Incorporated');
INSERT INTO `companies` (`id`, `name`) VALUES(18, 'Pfizer Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(19, 'Chevron Corporation');
INSERT INTO `companies` (`id`, `name`) VALUES(20, 'AT&T Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(21, 'Home Depot Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(22, 'Mastercard Incorporated Class A');
INSERT INTO `companies` (`id`, `name`) VALUES(23, 'Merck & Co. Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(24, 'Boeing Company');
INSERT INTO `companies` (`id`, `name`) VALUES(25, 'Walt Disney Company');
INSERT INTO `companies` (`id`, `name`) VALUES(26, 'Wells Fargo & Company');
INSERT INTO `companies` (`id`, `name`) VALUES(27, 'Comcast Corporation Class A');
INSERT INTO `companies` (`id`, `name`) VALUES(28, 'Coca-Cola Company');
INSERT INTO `companies` (`id`, `name`) VALUES(29, 'PepsiCo Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(30, 'Netflix Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(31, 'Citigroup Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(32, 'McDonald\'s Corporation');
INSERT INTO `companies` (`id`, `name`) VALUES(33, 'Walmart Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(34, 'Abbott Laboratories');
INSERT INTO `companies` (`id`, `name`) VALUES(35, 'Oracle Corporation');
INSERT INTO `companies` (`id`, `name`) VALUES(36, 'Philip Morris International Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(37, 'Adobe Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(38, 'International Business Machines Corporation');
INSERT INTO `companies` (`id`, `name`) VALUES(39, '3M Company');
INSERT INTO `companies` (`id`, `name`) VALUES(40, 'PayPal Holdings Inc');
INSERT INTO `companies` (`id`, `name`) VALUES(41, 'AbbVie Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(42, 'Union Pacific Corporation');
INSERT INTO `companies` (`id`, `name`) VALUES(43, 'salesforce.com inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(44, 'Medtronic plc');
INSERT INTO `companies` (`id`, `name`) VALUES(45, 'Amgen Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(46, 'Broadcom Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(47, 'Honeywell International Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(48, 'NVIDIA Corporation');
INSERT INTO `companies` (`id`, `name`) VALUES(49, 'Accenture Plc Class A');
INSERT INTO `companies` (`id`, `name`) VALUES(50, 'Thermo Fisher Scientific Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(51, 'Eli Lilly and Company');
INSERT INTO `companies` (`id`, `name`) VALUES(52, 'Costco Wholesale Corporation');
INSERT INTO `companies` (`id`, `name`) VALUES(53, 'United Technologies Corporation');
INSERT INTO `companies` (`id`, `name`) VALUES(54, 'NIKE Inc. Class B');
INSERT INTO `companies` (`id`, `name`) VALUES(55, 'Texas Instruments Incorporated');
INSERT INTO `companies` (`id`, `name`) VALUES(56, 'Altria Group Inc');
INSERT INTO `companies` (`id`, `name`) VALUES(57, 'Linde plc');
INSERT INTO `companies` (`id`, `name`) VALUES(58, 'Starbucks Corporation');
INSERT INTO `companies` (`id`, `name`) VALUES(59, 'Lowe\'s Companies Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(60, 'NextEra Energy Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(61, 'General Electric Company');
INSERT INTO `companies` (`id`, `name`) VALUES(62, 'Gilead Sciences Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(63, 'DowDuPont Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(64, 'American Tower Corporation');
INSERT INTO `companies` (`id`, `name`) VALUES(65, 'Danaher Corporation');
INSERT INTO `companies` (`id`, `name`) VALUES(66, 'Caterpillar Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(67, 'Booking Holdings Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(68, 'United Parcel Service Inc. Class B');
INSERT INTO `companies` (`id`, `name`) VALUES(69, 'Bristol-Myers Squibb Company');
INSERT INTO `companies` (`id`, `name`) VALUES(70, 'American Express Company');
INSERT INTO `companies` (`id`, `name`) VALUES(71, 'U.S. Bancorp');
INSERT INTO `companies` (`id`, `name`) VALUES(72, 'Anthem Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(73, 'ConocoPhillips');
INSERT INTO `companies` (`id`, `name`) VALUES(74, 'Lockheed Martin Corporation');
INSERT INTO `companies` (`id`, `name`) VALUES(75, 'Mondelez International Inc. Class A');
INSERT INTO `companies` (`id`, `name`) VALUES(76, 'QUALCOMM Incorporated');
INSERT INTO `companies` (`id`, `name`) VALUES(77, 'Goldman Sachs Group Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(78, 'Automatic Data Processing Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(79, 'CVS Health Corporation');
INSERT INTO `companies` (`id`, `name`) VALUES(80, 'Intuit Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(81, 'Becton Dickinson and Company');
INSERT INTO `companies` (`id`, `name`) VALUES(82, 'TJX Companies Inc');
INSERT INTO `companies` (`id`, `name`) VALUES(83, 'Celgene Corporation');
INSERT INTO `companies` (`id`, `name`) VALUES(84, 'Intuitive Surgical Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(85, 'Duke Energy Corporation');
INSERT INTO `companies` (`id`, `name`) VALUES(86, 'Chubb Limited');
INSERT INTO `companies` (`id`, `name`) VALUES(87, 'Dominion Energy Inc');
INSERT INTO `companies` (`id`, `name`) VALUES(88, 'Cigna Corporation');
INSERT INTO `companies` (`id`, `name`) VALUES(89, 'Schlumberger NV');
INSERT INTO `companies` (`id`, `name`) VALUES(90, 'CME Group Inc. Class A');
INSERT INTO `companies` (`id`, `name`) VALUES(91, 'Charter Communications Inc. Class A');
INSERT INTO `companies` (`id`, `name`) VALUES(92, 'Stryker Corporation');
INSERT INTO `companies` (`id`, `name`) VALUES(93, 'Morgan Stanley');
INSERT INTO `companies` (`id`, `name`) VALUES(94, 'NPC Financial Services Group Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(95, 'Colgate-Palmolive Company');
INSERT INTO `companies` (`id`, `name`) VALUES(96, 'CSX Corporation');
INSERT INTO `companies` (`id`, `name`) VALUES(97, 'Simon Property Group Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(98, 'EOG Resources Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(99, 'BlackRock Inc.');
INSERT INTO `companies` (`id`, `name`) VALUES(100, 'Charles Schwab Corporation');

-- --------------------------------------------------------

--
-- Table structure for table `investors`
--

DROP TABLE IF EXISTS `investors`;
CREATE TABLE IF NOT EXISTS `investors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `investors`
--

INSERT INTO `investors` (`id`, `name`) VALUES(1, 'Bocheto');
INSERT INTO `investors` (`id`, `name`) VALUES(2, 'The All-Mighty Bull');
INSERT INTO `investors` (`id`, `name`) VALUES(3, 'Luis Miguel');
INSERT INTO `investors` (`id`, `name`) VALUES(4, 'Rumyana Laskina');
INSERT INTO `investors` (`id`, `name`) VALUES(5, 'Zosia Okiniehchshczcshhczcs');
INSERT INTO `investors` (`id`, `name`) VALUES(6, 'The lil Savani');
INSERT INTO `investors` (`id`, `name`) VALUES(7, 'Sacheto');
INSERT INTO `investors` (`id`, `name`) VALUES(8, 'Gjorcheto Pashalijski');
INSERT INTO `investors` (`id`, `name`) VALUES(9, 'Hajde be Deyan');
INSERT INTO `investors` (`id`, `name`) VALUES(10, 'Divanchester');
INSERT INTO `investors` (`id`, `name`) VALUES(11, 'Yoto Vpishe');
INSERT INTO `investors` (`id`, `name`) VALUES(12, 'Susama bin Laden');
INSERT INTO `investors` (`id`, `name`) VALUES(13, 'Hojlund');
INSERT INTO `investors` (`id`, `name`) VALUES(14, 'Jewish Dwarf');
INSERT INTO `investors` (`id`, `name`) VALUES(15, 'Roberto Carlos');
INSERT INTO `investors` (`id`, `name`) VALUES(16, 'Caroline Queen');
INSERT INTO `investors` (`id`, `name`) VALUES(17, 'Leo Pessi');
INSERT INTO `investors` (`id`, `name`) VALUES(18, 'Nina Nana Nona');
INSERT INTO `investors` (`id`, `name`) VALUES(19, 'Herr Getschev');
INSERT INTO `investors` (`id`, `name`) VALUES(20, 'Darwizzy');
INSERT INTO `investors` (`id`, `name`) VALUES(21, 'Gocheto');
INSERT INTO `investors` (`id`, `name`) VALUES(22, 'TE55');
INSERT INTO `investors` (`id`, `name`) VALUES(23, 'Nacheto');
INSERT INTO `investors` (`id`, `name`) VALUES(24, 'Mani Banani');
INSERT INTO `investors` (`id`, `name`) VALUES(25, 'Gosho ot Pochivka');
INSERT INTO `investors` (`id`, `name`) VALUES(26, 'Ana Paula Neves Ferreira los Marta de la Fuenta por Aguero Ronaldo Messi von Gruethenbuerg');
INSERT INTO `investors` (`id`, `name`) VALUES(27, 'Mimeto ot Varna');
INSERT INTO `investors` (`id`, `name`) VALUES(28, 'Ivo Nikolov');
INSERT INTO `investors` (`id`, `name`) VALUES(29, 'Kopeikata');
INSERT INTO `investors` (`id`, `name`) VALUES(30, 'Muhammad Iqbal');
INSERT INTO `investors` (`id`, `name`) VALUES(31, 'Kiro');
INSERT INTO `investors` (`id`, `name`) VALUES(32, 'Golqmata Savani');
INSERT INTO `investors` (`id`, `name`) VALUES(33, 'Sachko Vezenkov');
INSERT INTO `investors` (`id`, `name`) VALUES(34, 'Maicheto');
INSERT INTO `investors` (`id`, `name`) VALUES(35, 'Golqqqqqm');
INSERT INTO `investors` (`id`, `name`) VALUES(36, 'Nikotina');
INSERT INTO `investors` (`id`, `name`) VALUES(37, 'Noel Cosgrave');
INSERT INTO `investors` (`id`, `name`) VALUES(38, 'Adolf Hitler');
INSERT INTO `investors` (`id`, `name`) VALUES(39, 'Shaquille O Neill');
INSERT INTO `investors` (`id`, `name`) VALUES(40, 'Benito Mussolini');
INSERT INTO `investors` (`id`, `name`) VALUES(41, 'Franco');
INSERT INTO `investors` (`id`, `name`) VALUES(42, 'Bilal Bari');
INSERT INTO `investors` (`id`, `name`) VALUES(43, 'Turicov');
INSERT INTO `investors` (`id`, `name`) VALUES(44, 'Kiril Despodov');
INSERT INTO `investors` (`id`, `name`) VALUES(45, 'Bobi Atoma');
INSERT INTO `investors` (`id`, `name`) VALUES(46, 'Nestor el Maestro');
INSERT INTO `investors` (`id`, `name`) VALUES(47, 'Muhammad Ali');
INSERT INTO `investors` (`id`, `name`) VALUES(48, 'Prepi');
INSERT INTO `investors` (`id`, `name`) VALUES(49, 'Cristo Penaldo');
INSERT INTO `investors` (`id`, `name`) VALUES(50, 'Oscar D Leon');
INSERT INTO `investors` (`id`, `name`) VALUES(51, 'Héctor Lavoe');
INSERT INTO `investors` (`id`, `name`) VALUES(52, 'Frankie Ruiz');
INSERT INTO `investors` (`id`, `name`) VALUES(53, 'Willie Colón');
INSERT INTO `investors` (`id`, `name`) VALUES(54, 'Gilberto Santa Rosa');
INSERT INTO `investors` (`id`, `name`) VALUES(55, 'Eddie Santiago');
INSERT INTO `investors` (`id`, `name`) VALUES(56, 'Grupo Niche');
INSERT INTO `investors` (`id`, `name`) VALUES(57, 'Celia Cruz');
INSERT INTO `investors` (`id`, `name`) VALUES(58, 'Simón Díaz');
INSERT INTO `investors` (`id`, `name`) VALUES(59, 'Servando Primara');
INSERT INTO `investors` (`id`, `name`) VALUES(60, 'Chino y Nacho');
INSERT INTO `investors` (`id`, `name`) VALUES(61, 'Franco De Vita');
INSERT INTO `investors` (`id`, `name`) VALUES(62, 'Yordano');
INSERT INTO `investors` (`id`, `name`) VALUES(63, 'Yoni Pacheco');
INSERT INTO `investors` (`id`, `name`) VALUES(64, 'Pablo Milanés');
INSERT INTO `investors` (`id`, `name`) VALUES(65, 'Camarón de la Isla');
INSERT INTO `investors` (`id`, `name`) VALUES(66, 'Julio Iglesias');
INSERT INTO `investors` (`id`, `name`) VALUES(67, 'Julian Alvarez');
INSERT INTO `investors` (`id`, `name`) VALUES(68, 'Édith Piaf');
INSERT INTO `investors` (`id`, `name`) VALUES(69, 'Juanito Alimaña');
INSERT INTO `investors` (`id`, `name`) VALUES(70, 'Ricardo Montaner');
INSERT INTO `investors` (`id`, `name`) VALUES(71, 'Antonio Lauro');
INSERT INTO `investors` (`id`, `name`) VALUES(72, 'José Luis Rodríguez');
INSERT INTO `investors` (`id`, `name`) VALUES(73, 'Reynaldo Armas');
INSERT INTO `investors` (`id`, `name`) VALUES(74, 'Frank Quintero');
INSERT INTO `investors` (`id`, `name`) VALUES(75, 'Reina Lucero');
INSERT INTO `investors` (`id`, `name`) VALUES(76, 'Armando Molero');
INSERT INTO `investors` (`id`, `name`) VALUES(77, 'Osvaldo Torres');
INSERT INTO `investors` (`id`, `name`) VALUES(78, 'Jerry Rivera');
INSERT INTO `investors` (`id`, `name`) VALUES(79, 'José Alberto El Canario');
INSERT INTO `investors` (`id`, `name`) VALUES(80, 'El Gran Combo');
INSERT INTO `investors` (`id`, `name`) VALUES(81, 'Los Adolescentes');
INSERT INTO `investors` (`id`, `name`) VALUES(82, 'Maelo Ruiz');
INSERT INTO `investors` (`id`, `name`) VALUES(83, 'Joaquin Sabina');
INSERT INTO `investors` (`id`, `name`) VALUES(84, 'Victor Jara');
INSERT INTO `investors` (`id`, `name`) VALUES(85, 'Facundo Cabral');
INSERT INTO `investors` (`id`, `name`) VALUES(86, 'Violeta Parra');
INSERT INTO `investors` (`id`, `name`) VALUES(87, 'Mercedes Sosa');
INSERT INTO `investors` (`id`, `name`) VALUES(88, 'Caetano Veloso');
INSERT INTO `investors` (`id`, `name`) VALUES(89, 'Victor Heredia');
INSERT INTO `investors` (`id`, `name`) VALUES(90, 'Alfredo Zitarrosa');
INSERT INTO `investors` (`id`, `name`) VALUES(91, 'Manu Chao');
INSERT INTO `investors` (`id`, `name`) VALUES(92, 'Vicentico');
INSERT INTO `investors` (`id`, `name`) VALUES(93, 'El León Santillán');
INSERT INTO `investors` (`id`, `name`) VALUES(94, 'Diomedes Díaz');
INSERT INTO `investors` (`id`, `name`) VALUES(95, 'Rafael Orozco');
INSERT INTO `investors` (`id`, `name`) VALUES(96, 'El Binomio de Oro');
INSERT INTO `investors` (`id`, `name`) VALUES(97, 'Los Diablitos');
INSERT INTO `investors` (`id`, `name`) VALUES(98, 'Daniel Celedón');
INSERT INTO `investors` (`id`, `name`) VALUES(99, 'Shakira');
INSERT INTO `investors` (`id`, `name`) VALUES(100, 'Sofiq');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`) VALUES(1, 'admin', 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2025 at 09:05 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jersey_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`id`, `title`, `image`) VALUES
(1, 'Tampa Bay Buccaneers TOM BRADY Road Jersey', 'BuccaneersRoadBrady.jpg'),
(2, 'Los Angeles Rams COOPER KUPP Home Jersey', 'RamsHomeKupp.jpg'),
(3, 'Miami Dolphins TYREEK HILL Alternate Home Jersey', 'DolphinsAlternateHomeHill.jpg'),
(4, 'New York Jets AARON RODGERS Home Jersey', 'JetsHomeRodgers.jpg'),
(5, 'Kansas City Chiefs PATRICK MAHOMES Home Jersey', 'ChiefsHomeMahomes.jpg'),
(6, 'Detroit Lions AMONRA ST BROWN Home Jersey', 'LionsHomeSTBrown.jpg'),
(7, 'Colorado Buffaloes TRAVIS HUNTER Road Jersey', 'BuffaloesHunterRoad.jpg'),
(8, 'Boston Celtics JAYLEN BROWN Statement Jersey', 'CelticsAlternateBrown.jpg'),
(9, 'Charlotte Hornets LAMELO BALL City Jersey', 'HornetsCityBall.jpg'),
(10, 'Minnesota Timberwolves Jersey', 'minnesota_timberwolves_2023_24_city_jersey.jpg'),
(11, 'Cleveland Cavaliers DONOVAN MITCHELL Icon Jersey', 'CavsRoadMitchell.jpg'),
(12, 'Dallas Mavericks LUKA DONCIC CIty Jersey', 'MavsCityDoncic.jpg'),
(13, 'Denver Nuggets NIKOLA JOKIC Icon Jersey', 'NuggetsRoadJokic.jpg'),
(14, 'Barcelona 24/25 Home Kit', 'Barca2425H.jpg'),
(15, 'Real Madrid 24/25 Away Kit', 'RealMadrid2425V.jpg'),
(16, 'Barcelona 24/25 Away Kit', 'Barca2425V.jpg'),
(17, 'Golden State Warriors STEPHEN CURRY Classic Jersey', 'WarriorsClassicCurry.jpg'),
(18, 'Los Angeles Lakers LEBRON JAMES Association Jersey', 'LakersHomeJames.jpg'),
(19, 'Memphis Grizzlies JA MORANT Classic Jersey', 'GrizzliesClassicMorant.jpg'),
(20, 'Miami Heat DWYANE WADE Miami Vice Jersey', 'HeatCityWade.jpg'),
(21, 'Miami Heat TYLER HERRO Miami Vice Jersey', 'HeatCityHerro.jpg'),
(22, 'Miami Heat JIMMY BUTLER Miami Vice Jersey', 'HeatCityButler.jpg'),
(23, 'Milwaukee Bucks GIANNIS ANTETOKOUNMPO Statement Jersey', 'BucksAlternateGiannis.jpg'),
(24, 'New York Knicks JALEN BRUNSON Association Jersey', 'KnicksHomeBrunson.jpg'),
(25, 'Oklahoma City Thunder SHAI GILGEOUS-ALEXANDER City Jersey', 'OKCCitySGA.jpg'),
(26, 'Phoenix Suns KEVIN DURANT Icon Jersey', 'SunsAlternateDuarant.jpg'),
(27, 'San Antonio Spurs VICTOR WEMBANYAMA Icon Jersey', 'SpursRoadWemby.jpg'),
(28, 'Toronto Raptors RJ BARRETT City Jersey', 'RaptorsCityBarrett.jpg'),
(29, 'Arizona Diamondbacks CORBIN CARROLL City Connect Jersey', 'DBacksCityCarroll.jpg'),
(30, 'Atlanta Braves RONALD ACUNA JR Home Jersey', 'BravesHomeAcuna.jpg'),
(31, 'Boston Red Sox Home Jersey', 'RSoxHome.jpg'),
(32, 'Cincinnati Reds ELLY DE LA CRUZ Jersey', 'RedsCityCruz.jpg'),
(33, 'Houston Astros JOSE ALTUVE Alternate Jersey', 'AstrosAltAltuve.jpg'),
(34, 'Houston Astros JEREMY PENA City Connect Jersey', 'AstrosCityPena.jpg'),
(35, 'Los Angeles Dodgers SHOHEI OHTANI Home Jersey', 'DodgersHomeOhtani.jpg'),
(36, 'New York Yankees AARON JUDGE Home Jersey', 'YanksHomeJudge.jpg'),
(37, 'New York Yankees JUAN SOTO Alt Jersey', 'YanksAltSoto.jpg'),
(38, 'New York Yankees ANTONY VOLPE  Jersey', 'YanksRoadVolpe.jpg'),
(39, 'New York Mets JUAN SOTO Alternate Jersey', 'MetsAltSoto.jpg'),
(40, 'New York Mets FRANCISCO LINDOR Alternate Jersey', 'MetsAltLindor.jpg'),
(41, 'Philadelphia Phillies BRYCE HARPER Jersey', 'PhilliesAltHarper.jpg'),
(42, 'Pittsburgh Pirates PAUL SKENES Alternate Jersey', 'PiratesAltSkenes.jpg'),
(43, 'San Diego Padres FERNANDO TATIS JR Alternate Jersey', 'PadresAltTatis.jpg'),
(44, 'San Diego Padres FERNANDO TATIS JR City Jersey', 'PadresCityTatis.jpg'),
(45, 'Seattle Mariners JULIO RODRIGUEZ Alternate Jersey', 'MarinersAltRod.jpg'),
(46, 'Tampa Bay Rays JOSE SIRI City Connect Jersey', 'RaysCitySiri.jpg'),
(47, 'Texas Rangers COREY SEAGER Alternate Jersey', 'RangersAltSeager.jpg'),
(48, 'Texas Rangers JACOB DEGROM Alternate Jersey', 'RangersAltdegrom.jpg'),
(49, 'Toronto Blue Jays VLADIMIR GUERRERO JR City Connect Jersey ', 'JaysCityVlad.jpg'),
(50, 'Barcelona MESSI 15/16 Home Kit', 'Barca1516H.jpg'),
(51, 'Barcelona MESSI 15/16 Away Kit', 'Barca1516V.jpg'),
(52, 'Barcelona MESSI 16/17 Home Kit', 'Barca1617H.jpg'),
(53, 'Barcelona NEYMAR JR 16/17 Away Kit', 'Barca1617A.jpg'),
(54, 'Manchester City KUN AGUERO 16/17 Home Kit', 'ManCity1617H.jpg'),
(55, 'Barcelona MESSI 17/18 Home Kit', 'Barca1718H.jpg'),
(56, 'Barcelona MESSI 17/18 Away Kit', 'Barca1718A.jpg'),
(57, 'Manchester City 24/25 Home Kit', 'ManCity2425H.jpg'),
(58, 'Barcelona COUTINHO 17/18 Third Kit', 'Barca1718T.jpg'),
(59, 'Juventus DYBALA 17/18 Home Kit', 'Juventus1718H.jpg'),
(60, 'PSG NEYMAR JR 17/18 Home Kit', 'PSG1718H.jpg'),
(61, 'Real Madrid RONALDO 17/18 Away Kit', 'RealMadrid1718A.jpg'),
(62, 'Manchester City KUN AGUERO 17/18 Away Kit', 'ManCity1718V.jpg'),
(63, 'Brazil NEYMAR JR 2017 Third Kit', 'Brazil17Third.jpg'),
(64, 'Barcelona MESSI 18/19 Home Kit', 'Barca1819H.jpg'),
(65, 'Barcelona MESSI 18/19 Away Kit', 'Barca1819A.jpg'),
(66, 'Real Madrid MARCELO 18/19 Home Kit', 'RealMadrid1819H.jpg'),
(67, 'Manchester City KUN AGUERO 18/19 Home Kit', 'ManCity1819H.jpg'),
(68, 'Juventus RONALDO 18/19 Third Kit', 'Juventus1819T.jpg'),
(69, 'PSG NEYMAR JR 18/19 Third KIt', 'PSG1819T.jpg'),
(70, 'Liverpool MO SALAH 24/25 Home Kit', 'Liverpool2425H.jpg'),
(71, 'Manchester United BRUNO FERNANDES 24/25 Away Kit', 'ManU2425A.jpg'),
(72, 'Bayern Munich JAMAL MUSIALA 24/25 Away Kit', 'Munich2425A.jpg'),
(73, 'PSG 24/25 Third Kit', 'PSG2425T.jpg'),
(74, 'AC Milan PULISIC 24/25 Away Kit', 'ACM2425A.jpg'),
(75, 'Roma 23/24 DYBALA Third Kit', 'Roma2425T.jpg'),
(76, 'Atletico Madrid ALVAREZ 24/25 Away Kit', 'ATM2425A.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `image`, `category`, `stock`) VALUES
(1, 'Real Madrid 24/25 Home Kit', 49.99, 'RealMadrid2425H.jpg', 'Soccer', 5),
(2, 'Barcelona 24/25 Home Kit', 49.99, 'Barca2425H.jpg', 'Soccer', 5),
(3, 'Manchester City 24/25 Home Kit', 49.99, 'ManCity2425H.jpg', 'Soccer', 5),
(5, 'Real Madrid 24/25 Away Kit', 49.99, 'RealMadrid2425V.jpg', 'Soccer', 5),
(6, 'Barcelona 24/25 Away Kit', 49.99, 'Barca2425V.jpg', 'Soccer', 5),
(7, 'Manchester City 24/25 Away Kit', 49.99, 'ManCity2425V.jpg', 'Soccer', 5),
(8, 'Minnesota Timberwolves Jersey', 60.00, 'minnesota_timberwolves_2023_24_city_jersey.jpg', 'Basketball', 5),
(9, 'Barca 24/25 Home Kit', 0.01, 'Barca2425H.jpg', 'Add To My Collection', 5),
(10, 'BARCA 24/25 HOME KIT', 0.01, 'Barca2425H.jpg', 'Add To My Collection', 5),
(11, 'Tampa Bay Buccaneers TOM BRADY Road Jersey', 65.00, 'BuccaneersRoadBrady.jpg', 'Football', 5),
(12, 'Los Angeles Rams COOPER KUPP Home Jersey', 65.00, 'RamsHomeKupp.jpg', 'Football', 5),
(13, 'Miami Dolphins TYREEK HILL Alternate Home Jersey', 65.00, 'DolphinsAlternateHomeHill.jpg', 'Football', 5),
(14, 'New York Jets AARON RODGERS Home Jersey', 65.00, 'JetsHomeRodgers.jpg', 'Football', 5),
(15, 'Kansas City Chiefs PATRICK MAHOMES Home Jersey', 65.00, 'ChiefsHomeMahomes.jpg', 'Football', 5),
(16, 'Detroit Lions AMONRA ST BROWN Home Jersey', 65.00, 'LionsHomeSTBrown.jpg', 'Football', 5),
(17, 'Colorado Buffaloes TRAVIS HUNTER Road Jersey', 65.00, 'BuffaloesHunterRoad.jpg', 'Football', 5),
(18, 'Buffalo Bills JOSH ALLEN Home Jersey', 65.00, 'BillsHomeAllen.jpg', 'Football', 5),
(19, 'Buffalo Bills JOSH ALLEN Road Jersey', 65.00, 'BillsRoadAllen.jpg', 'Football', 5),
(20, 'Miami Dolphins TUA TAGOVAILOA Road Jersey', 65.00, 'DolphinsRoadHill.jpg', 'Football', 5),
(21, 'PSG 24/25 Home Kit', 49.99, 'PSG2425H.jpg', 'Soccer', 5),
(22, 'New England Patriots DRAKE MAYE Home Jersey', 65.00, 'PatriotsHomeMaye.jpg', 'Football', 5),
(23, 'New England Patriots RHAMONDRE STEVENSON Road Jersey', 65.00, 'PatriotsHomeStevenson.jpg', 'Football', 5),
(24, 'New York Jets SAUCE GARDNER Road Jersey', 65.00, 'JetsRoadGardner.jpg', 'Football', 5),
(25, 'Baltimore Ravens LAMAR JACKSON Home Jersey', 65.00, 'RavensHomeJackson.jpg', 'Football', 5),
(26, 'Baltimore Ravens ZAY FLOWERS Road Jersey', 65.00, 'RavensRoadJackson.jpg', 'Football', 5),
(27, 'Cincinnati Bengals JA\'MARR CHASE Home Jersey', 65.00, 'BengalsHomeChase.jpg', 'Football', 5),
(28, 'Cincinnati Bengals JOE BURROW Road Jerseys', 65.00, 'BengalsRoadBurrow.jpg', 'Football', 5),
(29, 'Cleveland Browns NICK CHUBB Home Jersey', 65.00, 'BrownsHomeChubb.jpg', 'Football', 5),
(30, 'Cleveland Browns MYLES GARRETT Road Jersey', 65.00, 'BrownsRoadGarrett.jpg', 'Football', 5),
(31, 'Pittsburgh Steelers TJ WATT Home Jersey ', 65.00, 'SteelersHomeWatt.jpg', 'Football', 5),
(32, 'Pittsburgh Steelers GEORGE PICKENS Road Jersey ', 65.00, 'SteelersRoadPickens.jpg', 'Football', 5),
(33, 'Houston Texans CJ STROUD Home Jersey ', 65.00, 'TexansHomeStroud.jpg', 'Football', 5),
(34, 'Houston Texans STEFON DIGGS Road Jersey ', 65.00, 'TexansRoadDiggs.jpg', 'Football', 5),
(35, 'Indianapolis Colts ANTONY RICHARDSON Home Jersey', 65.00, 'ColtsHomeRichardson.jpg', 'Football', 5),
(36, 'Indianapolis Colts JONATHAN TAYLOR Road Jersey', 65.00, 'ColtsRoadTaylor.jpg', 'Football', 5),
(37, 'Jacksonville Jaguars TREVOR LAWRENCE Alternate Home Jersey', 65.00, 'JaguarsAlternateHomeLawrence.jpg', 'Football', 5),
(38, 'Jacksonville Jaguars TRAVIS HUNTER Road Jersey', 65.00, 'JaguarsRoadHunter.jpg', 'Football', 5),
(39, 'Tennessee Titans CAM WARD Home Jersey', 65.00, 'TitansHomeWard.jpg', 'Football', 5),
(40, 'Tennessee Titans CAM WARD Road Jersey', 65.00, 'TitansRoadWard.jpg', 'Football', 5),
(41, 'Denver Broncos BO NIX Home Jersey', 65.00, 'BroncosHomeNix.jpg', 'Football', 5),
(42, 'Denver Broncos PATRICK SURTAIN II Road Jersey', 65.00, 'BroncosRoadSurtainII.jpg', 'Football', 5),
(43, 'Kansas City Chiefs TRAVIS KELCE Road Jersey', 65.00, 'ChiefsRoadKelce.jpg', 'Football', 5),
(44, 'Las Vegas Raiders GENO SMITH Home Jersey', 65.00, 'RaidersHomeSmith.jpg', 'Football', 5),
(45, 'Los Angeles Chargers JUSTIN HERBERT Home Jersey', 65.00, 'ChargersHomeHerbert.jpg', 'Football', 5),
(46, 'Los Angeles Chargers JUSTIN HERBERT Road Jersey', 65.00, 'ChargersRoadHerbert.jpg', 'Football', 5),
(47, 'Dallas Cowboys DAK PRESCOTT Home Jersey', 65.00, 'CowboysHomePrescott.jpg', 'Football', 5),
(48, 'Dallas Cowboys MICAH PARSONS Road Jersey', 65.00, 'CowboysRoadParsons.jpg', 'Football', 5),
(49, 'New York Giants MALIK NABERS Home Jersey', 65.00, 'GiantsHomeNabers.jpg', 'Football', 5),
(50, 'New York Giants KEYVON THIBODEAUX Road Jersey', 65.00, 'GiantsRoadThibodeaux.jpg', 'Football', 5),
(51, 'Philadelphia Eagles JALEN HURTS Home Jersey', 65.00, 'EaglesHomeHurts.jpg', 'Football', 5),
(52, 'Philadelphia Eagles SAQUON BARKLEY Alternate Home Jersey', 65.00, 'EaglesAlternateHomeBarkley.jpg', 'Football', 5),
(53, 'Washington Commanders JAYDEN DANIELS Home Jersey', 65.00, 'CommandersHomeDaniels.jpg', 'Football', 5),
(54, 'Washington Commanders DEEBO SAMUEL SR Road Jersey', 65.00, 'CommandersRoadSamueljpg.jpg', 'Football', 5),
(55, 'Chicago Bears CALEB WILLIAMS Home Jersey', 65.00, 'BearsHomeWilliams.jpg', 'Football', 5),
(56, 'Chicago Bears CALEB WILLIAMS Road Jerseys', 65.00, 'BearsRoadWilliams.jpg', 'Football', 5),
(57, 'Detroit Lions JARED GOFF Alternate Jersey', 65.00, 'LionsAlternateGoff.jpg', 'Football', 5),
(58, 'Green Bay Packers JORDAN LOVE Home Jersey', 65.00, 'PackersHomeLove.jpg', 'Football', 5),
(59, 'Green Bay Packers JORDAN LOVE Road Jersey', 65.00, 'PackersRoadLove.jpg', 'Football', 5),
(60, 'Minnesota Vikings JUSTIN JEFFERSON Home Jersey', 65.00, 'VikingsHomeJefferson.jpg', 'Football', 5),
(61, 'Minnesota Vikings JUSTIN JEFFERSON Road Jersey', 65.00, 'VikingsRoadJefferson.jpg', 'Football', 5),
(62, 'Atlanta Falcons BIJAN ROBINSON Home Jersey', 65.00, 'FalconsHomeRobinson.jpg', 'Football', 5),
(63, 'Atlanta Falcons KYLE PITTS Road Jersey', 65.00, 'FalconsRoadPitts.jpg', 'Football', 5),
(64, 'Carolina Panthers BRYCE YOUNG Home Jersey', 65.00, 'PanthersHomeYoung.jpg', 'Football', 5),
(65, 'Carolina Panthers BRYCE YOUNG Road Jersey', 65.00, 'PanthersRoadYoung.jpg', 'Football', 5),
(66, 'New Orleans Saints DEREK CARR Home Jersey', 65.00, 'SaintsHomeCarr.jpg', 'Football', 5),
(67, 'New Orleans Saints ALVIN KAMARA Road Jersey', 65.00, 'SaintsRoadKamara.jpg', 'Football', 5),
(68, 'Tampa Bay Buccaneers BAKER MAYFIELD Home Jersey', 65.00, 'BuccaneersHomeMayfield.jpg', 'Football', 5),
(69, 'Arizona Cardinals KYLER MURRAY Home Jersey ', 65.00, 'CardinalsHomeMurray.jpg', 'Football', 5),
(70, 'Arizona Cardinals MARVIN HARRISON JR Road Jersey', 65.00, 'CardinalsRoadHarrison.jpg', 'Football', 5),
(71, 'Los Angeles Rams PUKA NACUA Road Jersey', 65.00, 'RamsRoadNacua.jpg', 'Football', 5),
(72, 'San Francisco 49ers BROCK PURDY Home Jersey', 65.00, '49ersHomePurdy.jpg', 'Football', 5),
(73, 'San Francisco 49ers CHRISTIAN MCCAFFREY Road Jersey', 65.00, '49ersRoadMcCaffrey.jpg', 'Football', 5),
(74, 'Seattle Seahawks JAXON SMITH-NJIGBA Home Jersey', 65.00, 'SeahawksHomeSmith-Njigba.jpg', 'Football', 5),
(75, 'Seattle Seahawks KENNETH WALKER III Alternate Jersey', 65.00, 'SeahawksAlternateWalkerIII.jpg', 'Football', 5),
(76, 'Atlanta Hawks TRAE YOUNG Association Jersey', 60.00, 'HawksHomeYoung.jpg', 'Basketball', 5),
(77, 'Atlanta Hawks TRAE YOUNG Icon Jersey', 60.00, 'HawksRoadYoung.jpg', 'Basketball', 5),
(78, 'Atlanta Hawks TRAE YOUNG Statement Jersey', 60.00, 'HawksAlternateYoung.jpg', 'Basketball', 5),
(79, 'Boston Celtics JAYSON TATUM Association Jersey', 60.00, 'CelticsHomeTatum.jpg', 'Basketball', 5),
(80, 'Boston Celtics JAYLEN BROWN Statement Jersey', 60.00, 'CelticsAlternateBrown.jpg', 'Basketball', 5),
(81, 'Boston Celtics AL HORFORD Icon Jersey', 60.00, 'CelticsRoadBrown.jpg', 'Basketball', 5),
(82, 'Boston Celtics KRISTAPS PORZINGIS City Jersey', 60.00, 'CelticsCityPorzingis.jpg', 'Basketball', 5),
(83, 'Brooklyn Nets CAM THOMAS Icon Jersey', 60.00, 'NetsRoadThomas.jpg', 'Basketball', 5),
(84, 'Brooklyn Nets CAM THOMAS Association Jersey', 60.00, 'NetsHomeThomas.jpg', 'Basketball', 5),
(85, 'Brooklyn Nets BEN SIMMONS Statement Jersey', 60.00, 'NetsAlternateSimmons.jpg', 'Basketball', 5),
(86, 'Brooklyn Nets D\'ANGELO RUSSELL City Jersey', 60.00, 'NetsCityRussell.jpg', 'Basketball', 5),
(87, 'Charlotte Hornets LAMELO BALL Association Jersey', 60.00, 'HornetsHomeBall.jpg', 'Basketball', 5),
(88, 'Charlotte Hornets LAMELO BALL Icon Jersey', 60.00, 'HornetsRoadBall.jpg', 'Basketball', 5),
(89, 'Charlotte Hornets LAMELO BALL Statement Jersey', 60.00, 'HornetsAlternateBall.jpg', 'Basketball', 5),
(90, 'Charlotte Hornets LAMELO BALL City Jersey', 60.00, 'HornetsCityBall.jpg', 'Basketball', 5),
(91, 'Chicago Bulls LONZO BALL Association Jersey', 60.00, 'BullsHomeBall.jpg', 'Basketball', 5),
(92, 'Chicago Bulls LONZO BALL Icon Jersey', 60.00, 'BullsRoadBall.jpg', 'Basketball', 5),
(93, 'Chicago Bulls NIKOLA VUCEVIC Statement Jersey', 60.00, 'BullsAlternateVucevic.jpg', 'Basketball', 5),
(94, 'Chicago Bulls COBY WHITE City Jersey', 60.00, 'BullsCityWhite.jpg', 'Basketball', 5),
(95, 'Cleveland Cavaliers EVAN MOBLEY Association Jersey', 60.00, 'CavsHomeMobley.jpg', 'Basketball', 5),
(96, 'Cleveland Cavaliers DONOVAN MITCHELL Icon Jersey', 60.00, 'CavsRoadMitchell.jpg', 'Basketball', 5),
(97, 'Cleveland Cavaliers DONOVAN MITCHELL Statement Jersey', 60.00, 'CavsAlternateMitchell.jpg', 'Basketball', 5),
(98, 'Cleveland Cavaliers DARIUS GARLAND City Jersey', 60.00, 'CavsCityGarland.jpg', 'Basketball', 5),
(99, 'Dallas Mavericks ANTHONY DAVIS Association Jersey', 60.00, 'MavsHomeDavis.jpg', 'Basketball', 5),
(100, 'Dallas Mavericks ANTHONY DAVIS Icon Jersey', 60.00, 'MavsRoadDavis.jpg', 'Basketball', 5),
(101, 'Dallas Mavericks KYRIE IRVING Statement Jersey', 60.00, 'MavsAlternateIrving.jpg', 'Basketball', 5),
(102, 'Dallas Mavericks LUKA DONCIC CIty Jersey', 60.00, 'MavsCityDoncic.jpg', 'Basketball', 5),
(103, 'Denver Nuggets JAMAL MURRAY Association Jersey', 60.00, 'NuggetsHomeMurray.jpg', 'Basketball', 5),
(104, 'Denver Nuggets NIKOLA JOKIC Icon Jersey', 60.00, 'NuggetsRoadJokic.jpg', 'Basketball', 5),
(105, 'Denver Nuggets RUSSELL WESTBROOK Statement Jersey', 60.00, 'NuggetsAlternateJokic.jpg', 'Basketball', 5),
(106, 'Denver Nuggets NIKOLA JOKIC City Jersey', 60.00, 'NuggetsCityJokic.jpg', 'Basketball', 5),
(107, 'Detroit Pistons CADE CUNNINGHAM Association Jersey', 60.00, 'PistonsHomeCade.jpg', 'Basketball', 5),
(108, 'Detroit Pistons CADE CUNNINGHAM Icon Jersey', 60.00, 'PistonsRoadCade.jpg', 'Basketball', 5),
(109, 'Detroit Pistons AUSAR THOMPSON Statement Jersey', 60.00, 'PistonsAlternateThompson.jpg', 'Basketball', 5),
(110, 'Detroit Pistons CADE CUNNINGHAM City Jersey', 60.00, 'PistonsCityCade.jpg', 'Basketball', 5),
(111, 'Golden State Warriors STEPHEN CURRY Association Jersey ', 60.00, 'WarriorsHomeCurry.jpg', 'Basketball', 5),
(112, 'Golden State Warriors STEPHEN CURRY Icon Jersey', 60.00, 'WarriorsRoadCurry.jpg', 'Basketball', 5),
(113, 'Golden State Warriors JIMMY BUTLER III City Jersey', 60.00, 'WarriorsCityButler.jpg', 'Basketball', 5),
(114, 'Golden State Warriors STEPHEN CURRY Classic Jersey', 60.00, 'WarriorsClassicCurry.jpg', 'Basketball', 5),
(115, 'Houston Rockets JALEN GREEN City Jersey', 60.00, 'RocketsHomeGreen.jpg', 'Basketball', 5),
(116, 'Houston Rockets ALPHEREN SENGUN Icon Jersey', 60.00, 'RocketsRoadSengun.jpg', 'Basketball', 5),
(117, 'Houston Rockets AMEN THOMPSON  Statement Jersey', 60.00, 'RocketsAlternateThompson.jpg', 'Basketball', 5),
(118, 'Indiana Pacers TYRESE HALIBURTON Association Jersey', 60.00, 'PacersHomeHali.jpg', 'Basketball', 5),
(119, 'Indiana Pacers MYLES TURNER Icon Jersey', 60.00, 'PacersRoadTurner.jpg', 'Basketball', 5),
(120, 'Indiana Pacers PASCAL SIAKAM Statement Jersey', 60.00, 'PacersAlternateSiakam.jpg', 'Basketball', 5),
(121, 'Los Angeles Clippers KAWHI LEONARD Association Jersey', 60.00, 'ClippersHomeLeonard.jpg', 'Basketball', 5),
(122, 'Los Angeles Clippers KAWHI LEONARD Icon Jersey', 60.00, 'ClippersRoadLeonard.jpg', 'Basketball', 5),
(123, 'Los Angeles Clippers JAMES HARDEN Statement Jersey', 60.00, 'ClippersAlternateHarden.jpg', 'Basketball', 5),
(124, 'Los Angeles Clippers JAMES HARDEN City Jersey', 60.00, 'ClippersCityHarden.jpg', 'Basketball', 5),
(125, 'Los Angeles Lakers LEBRON JAMES Association Jersey', 60.00, 'LakersHomeJames.jpg', 'Basketball', 5),
(126, 'Los Angeles Lakers LUKA DONCIC Statement Jersey', 60.00, 'LakersAlternateDoncic.jpg', 'Basketball', 5),
(127, 'Los Angeles Lakers LEBRON JAMES Icon Jersey', 60.00, 'LakersRoadJames.jpg', 'Basketball', 5),
(128, 'Memphis Grizzlies JA MORANT Classic Jersey', 60.00, 'GrizzliesClassicMorant.jpg', 'Basketball', 5),
(129, 'Memphis Grizzlies JARREN JACKSON JR Icon Jersey', 60.00, 'GrizzliesRoadJackson.jpg', 'Basketball', 5),
(130, 'Memphis Grizzlies JA MORANT City Jersey', 60.00, 'GrizzliesCityMorant.jpg', 'Basketball', 5),
(131, 'Miami Heat BAM ADEBAYO Association Jersey', 60.00, 'HeatHomeAdebayo.jpg', 'Basketball', 5),
(132, 'Miami Heat BAM ADEBAYO Icon Jersey', 60.00, 'HeatRoadAdebayo.jpg', 'Basketball', 5),
(133, 'Miami Heat DWYANE WADE Miami Vice Jersey', 60.00, 'HeatCityWade.jpg', 'Basketball', 5),
(134, 'Miami Heat TYLER HERRO Miami Vice Jersey', 60.00, 'HeatCityHerro.jpg', 'Basketball', 5),
(135, 'Miami Heat JIMMY BUTLER Miami Vice Jersey', 60.00, 'HeatCityButler.jpg', 'Basketball', 5),
(136, 'Milwaukee Bucks GIANNIS ANTETOKOUNMPO Association Jersey', 60.00, 'BucksHomeGiannis.jpg', 'Basketball', 5),
(137, 'Milwaukee Bucks DAMIAN LILLARD Icon Jersey', 60.00, 'BucksRoadLillard.jpg', 'Basketball', 5),
(138, 'Milwaukee Bucks GIANNIS ANTETOKOUNMPO Statement Jersey', 60.00, 'BucksAlternateGiannis.jpg', 'Basketball', 5),
(139, 'Minnesota Timberwolves ANTHONY EDWARDS Icon Jerseys', 60.00, 'TwolvesHomeEdwards.jpg', 'Basketball', 5),
(140, 'Minnesota Timberwolves RUDY GOBERT Statement Jersey', 60.00, 'TwolvesAlternateGobert.jpg', 'Basketball', 5),
(141, 'New Orleans Pelicans ZION WILLIAMSON Association Jersey', 60.00, 'PelicansHomeZion.jpg', 'Basketball', 5),
(142, 'New Orleans Pelicans ZION WILLIAMSON Icon Jersey', 60.00, 'PelicansRoadZion.jpg', 'Basketball', 5),
(143, 'New Orleans Pelicans ZION WILLIAMSON Statement Jersey', 60.00, 'PelicansAlternateZion.jpg', 'Basketball', 5),
(144, 'New Orleans Pelicans ZION WILLIAMSON City Jersey', 60.00, 'PelicansCityZion.jpg', 'Basketball', 5),
(145, 'New York Knicks JALEN BRUNSON Association Jersey', 60.00, 'KnicksHomeBrunson.jpg', 'Basketball', 5),
(146, 'New York Knicks KARL-ANTHONY TOWNS Icon Jersey', 60.00, 'KnicksRoadTowns.jpg', 'Basketball', 5),
(147, 'New York Knicks JALEN BRUNSON Statement Jersey', 60.00, 'KnicksAlternateBrunson.jpg', 'Basketball', 5),
(148, 'Oklahoma City Thunder SHAI GILGEOUS-ALEXANDER Association Jersey', 60.00, 'OKCHomeSGA.jpg', 'Basketball', 5),
(149, 'Oklahoma City Thunder CHET HOLMGREN Icon Jersey', 60.00, 'OKCRoadHolmgren.jpg', 'Basketball', 5),
(150, 'Oklahoma City Thunder ALEX CARUSO Statement Jersey', 60.00, 'OKCAlternateCaruso.jpg', 'Basketball', 5),
(151, 'Oklahoma City Thunder SHAI GILGEOUS-ALEXANDER City Jersey', 60.00, 'OKCCitySGA.jpg', 'Basketball', 5),
(152, 'Orlando Magic PAOLO BANCHERO Association Jersey', 60.00, 'MagicHomeBanchero.jpg', 'Basketball', 5),
(153, 'Orlando Magic FRANZ WAGNER Icon Jersey', 60.00, 'MagicRoadWagner.jpg', 'Basketball', 5),
(154, 'Orlando Magic PAOLO BANCHERO Statement Jersey', 60.00, 'MagicAlternateBanchero.jpg', 'Basketball', 5),
(155, 'Philadelphia 76ers JOEL EMBIID City Jersey', 60.00, '76ersCityEmbiid.jpg', 'Basketball', 5),
(156, 'Philadelphia 76ers JARED MCCAIN Icon Jersey', 60.00, '76ersRoadGeorge.jpg', 'Basketball', 5),
(157, 'Philadelphia 76ers PAUL GEORGE Statement Jersey', 60.00, '76ersAlternateGeorgejpg.jpg', 'Basketball', 5),
(158, 'Pheonix Suns DEVIN BOOKER Association Jersey ', 60.00, 'SunsHomeBooker.jpg', 'Basketball', 5),
(159, 'Phoenix Suns BRADLEY BEAL Icon Jersey', 60.00, 'SunsRoadBeal.jpg', 'Basketball', 5),
(160, 'Phoenix Suns KEVIN DURANT Icon Jersey', 60.00, 'SunsAlternateDuarant.jpg', 'Basketball', 5),
(161, 'Portland Trail Blazers DONOVAN CLINGAN Icon Jersey', 60.00, 'BlazersHomeClingan.jpg', 'Basketball', 5),
(162, 'Portland Trail Blazers DEANDRE AYTON Association Jersey', 60.00, 'BlazersHomeAyton.jpg', 'Basketball', 5),
(163, 'Sacramento Kings DEAARON FOX Association Jersey', 60.00, 'KingsHomeFox.jpg', 'Basketball', 5),
(164, 'Sacramento Kings DOMANTAS SABONIS Statement Jersey', 60.00, 'KingsAlternateSabonis.jpg', 'Basketball', 5),
(165, 'Sacramento Kings DEMAR DEROZAN Icon Jersey', 60.00, 'KingsRoadDerozan.jpg', 'Basketball', 5),
(166, 'San Antonio Spurs CHRIS PAUL Association Jersey', 60.00, 'SpursHomePaul.jpg', 'Basketball', 5),
(167, 'San Antonio Spurs VICTOR WEMBANYAMA Icon Jersey', 60.00, 'SpursRoadWemby.jpg', 'Basketball', 5),
(168, 'Toronto Raptors SCOTTIE BARNES Association Jersey', 60.00, 'RaptorsHomeBarnes.jpg', 'Basketball', 5),
(169, 'Toronto Raptors IMMANUEL QUICKLEY Icon Jersey', 60.00, 'RaptorsRoadQuickley.jpg', 'Basketball', 5),
(170, 'Toronto Raptors RJ BARRETT City Jersey', 60.00, 'RaptorsCityBarrett.jpg', 'Basketball', 5),
(171, 'Arizona Diamondbacks CORBIN CARROLL Home Jersey ', 55.00, 'DBacksHomeCarroll.jpg', 'Baseball', 5),
(172, 'Arizona Diamondbacks CORBIN CARROLL City Connect Jersey', 55.00, 'DBacksCityCarroll.jpg', 'Baseball', 5),
(173, 'Atlanta Braves RONALD ACUNA JR Home Jersey', 55.00, 'BravesHomeAcuna.jpg', 'Baseball', 5),
(174, 'Atlanta Braves MATT OLSON Alternate Jersey', 55.00, 'BravesAlternateOlson.jpg', 'Baseball', 5),
(175, 'Baltimore Orioles GUNNAR HENDERSON Home Jersey', 55.00, 'OriolesHomeHenderson.jpg', 'Baseball', 5),
(176, 'Baltimore Orioles ADLEY RUTSCHMAN Alternate Jersey', 55.00, 'OriolesAlternateRUTSCHMAN.jpg', 'Baseball', 5),
(177, 'Boston Red Sox Home Jersey', 55.00, 'RSoxHome.jpg', 'Baseball', 5),
(178, 'Boston Red Sox RAFAEL DEVERS Jersey', 55.00, 'RSoxAlternateDevers.jpg', 'Baseball', 5),
(179, 'Chicago White Sox LUIS ROBERT Home Jersey', 55.00, 'WSoxHomeRobert.jpg', 'Baseball', 5),
(180, 'Chicago White Sox LUIS ROBERT City Connect Jersey', 55.00, 'WSoxCityRobert.jpg', 'Baseball', 5),
(181, 'Chicago Cubs KYLE TUCKER Home Jersey', 55.00, 'CubsHomeTucker.jpg', 'Baseball', 5),
(182, 'Chicago Cubs KYLE TUCKER Alternate Jersey', 55.00, 'CubsAltTucker.jpg', 'Baseball', 5),
(183, 'Cincinnati Reds HUNTER GREENE Home Jersey', 55.00, 'RedsHomeGreene.jpg', 'Baseball', 5),
(184, 'Cincinnati Reds JOEY VOTTO AlternateJersey', 55.00, 'RedsAltVotto.jpg', 'Baseball', 5),
(185, 'Cincinnati Reds ELLY DE LA CRUZ Jersey', 55.00, 'RedsCityCruz.jpg', 'Baseball', 5),
(186, 'Cleveland Guardians JOSE RAMIREZ Home Jersey', 55.00, 'GuardiansHomeRamirez.jpg', 'Baseball', 5),
(187, 'Cleveland Guardians SHANE BIEBER Alternate Jersey', 55.00, 'GuardiansAltBieber.jpg', 'Baseball', 5),
(188, 'Colorado Rockies EZEQUIEL TOVAR Home Jersey', 55.00, 'RockiesHomeTovar.jpg', 'Baseball', 5),
(189, 'Colorado Rockies RYAN MCMAHON Alternate Jersey', 55.00, 'RockiesAltMcMahon.jpg', 'Baseball', 5),
(190, 'Detroit Tigers RILEY GREENE Home Jersey', 55.00, 'TigersHomeGreene.jpg', 'Baseball', 5),
(191, 'Detroit Tigers RILEY GREENE City Connect Jersey', 55.00, 'TigersCityGreene.jpg', 'Baseball', 5),
(192, 'Houston Astros FRAMBER VALDEZ Home Jersey', 55.00, 'AstrosHomeValdez.jpg', 'Baseball', 5),
(193, 'Houston Astros JOSE ALTUVE Alternate Jersey', 55.00, 'AstrosAltAltuve.jpg', 'Baseball', 5),
(194, 'Houston Astros JEREMY PENA City Connect Jersey', 55.00, 'AstrosCityPena.jpg', 'Baseball', 5),
(195, 'Kansas City Royals BO JACKSON Home Jersey', 55.00, 'RoyalsHomeJackson.jpg', 'Baseball', 5),
(196, 'Kansas City Royals BOBBY WITT JR Alternate Jersey', 55.00, 'RoyalsAltWitt.jpg', 'Baseball', 5),
(197, 'Los Angeles Angels MIKE TROUT Home Jersey', 55.00, 'AngelsHomeTrout.jpg', 'Baseball', 5),
(198, 'Los Angeles Dodgers SHOHEI OHTANI Home Jersey', 55.00, 'DodgersHomeOhtani.jpg', 'Baseball', 5),
(199, 'Los Angeles Dodgers FREDDIE FREEMAN Road Jersey', 55.00, 'DodgersRoadFreeman.jpg', 'Baseball', 5),
(200, 'Miami Marlins SANDY ALCANTARA  Home Jersey', 55.00, 'MarlinsHomeSandy.jpg', 'Baseball', 5),
(201, 'Miami Marlins JAZZ CHISLOM JR City Connect Jersey', 55.00, 'MarlinsCityChisolm.jpg', 'Baseball', 5),
(202, 'Milwaukee Brewers CHRISTIAN YELICH Home Jersey', 55.00, 'BrewersHomeYelich.jpg', 'Baseball', 5),
(203, 'Milwaukee Brewers CHRISTIAN YELICH City Connect Jersey', 55.00, 'BrewersCityYelich.jpg', 'Baseball', 5),
(204, 'Minnesota Twins RYAN JEFFERS Home Jersey', 55.00, 'TwinsHomeJeffers.jpg', 'Baseball', 5),
(205, 'Minnesota Twins CARLOS CORREA  AlternateJersey', 55.00, 'TwinsAltCorrea.jpg', 'Baseball', 5),
(206, 'New York Yankees AARON JUDGE Home Jersey', 55.00, 'YanksHomeJudge.jpg', 'Baseball', 5),
(207, 'New York Yankees JUAN SOTO Alt Jersey', 55.00, 'YanksAltSoto.jpg', 'Baseball', 5),
(208, 'New York Yankees ANTONY VOLPE  Jersey', 55.00, 'YanksRoadVolpe.jpg', 'Baseball', 5),
(209, 'New York Mets JUAN SOTO Home Jersey', 55.00, 'MetsHomeSoto.jpg', 'Baseball', 5),
(210, 'New York Mets JUAN SOTO Alternate Jersey', 55.00, 'MetsAltSoto.jpg', 'Baseball', 5),
(211, 'New York Mets FRANCISCO LINDOR Alternate Jersey', 55.00, 'MetsAltLindor.jpg', 'Baseball', 5),
(212, 'Oakland Athletics BRENT ROOKER Home Jersey', 55.00, 'AsHomeRooker.jpg', 'Baseball', 5),
(213, 'Oakland Athletics BRENT ROOKER Alternate Jersey', 55.00, 'AsAltRooker.jpg', 'Baseball', 5),
(214, 'Philadelphia Phillies TREA TURNER Home Jersey', 55.00, 'PhilliesHomeTurner.jpg', 'Baseball', 5),
(215, 'Philadelphia Phillies BRYCE HARPER Jersey', 55.00, 'PhilliesAltHarper.jpg', 'Baseball', 5),
(216, 'Pittsburgh Pirates BRYAN REYNOLDS Home Jersey', 55.00, 'PiratesHomeReynolds.jpg', 'Baseball', 5),
(217, 'Pittsburgh Pirates PAUL SKENES Alternate Jersey', 55.00, 'PiratesAltSkenes.jpg', 'Baseball', 5),
(218, 'San Diego Padres MANNY MACHADO Home Jersey', 55.00, 'PadresHomeMachado.jpg', 'Baseball', 5),
(219, 'San Diego Padres FERNANDO TATIS JR Alternate Jersey', 55.00, 'PadresAltTatis.jpg', 'Baseball', 5),
(220, 'San Diego Padres FERNANDO TATIS JR City Jersey', 55.00, 'PadresCityTatis.jpg', 'Baseball', 5),
(221, 'San Francisco Giants WILLY ADAMES Home Jersey', 55.00, 'GiantsHomeAdames.jpg', 'Baseball', 5),
(222, 'San Francisco Giants WILLY ADAMES Alternate Jersey', 55.00, 'GiantsAltAdames.jpg', 'Baseball', 5),
(223, 'Seattle Mariners JULIO RODRIGUEZ Home Jersey', 55.00, 'MarinersHomeRod.jpg', 'Baseball', 5),
(224, 'Seattle Mariners JULIO RODRIGUEZ Alternate Jersey', 55.00, 'MarinersAltRod.jpg', 'Baseball', 5),
(225, 'St Louis Cardinals NOLAN ARENADO Home Jersey', 55.00, 'CardinalsHomeArenado.jpg', 'Baseball', 5),
(226, 'St Louis Cardinals WILSON CONTRERAS City Connect Jersey', 55.00, 'CardinalsCityContreras.jpg', 'Baseball', 5),
(227, 'Tampa Bay Rays SHANE MCCLANAHAN Home Jersey', 55.00, 'RaysHomeShane.jpg', 'Baseball', 5),
(228, 'Tampa Bay Rays JOSE SIRI City Connect Jersey', 55.00, 'RaysCitySiri.jpg', 'Baseball', 5),
(229, 'Texas Rangers JONAH HEIM Home Jersey', 55.00, 'RangersHomeHeim.jpg', 'Baseball', 5),
(230, 'Texas Rangers COREY SEAGER Alternate Jersey', 55.00, 'RangersAltSeager.jpg', 'Baseball', 5),
(231, 'Texas Rangers JACOB DEGROM Alternate Jersey', 55.00, 'RangersAltdegrom.jpg', 'Baseball', 5),
(232, 'Toronto Blue Jays VLADIMIR GUERRERO JR Home Jersey ', 55.00, 'JaysHomeVlad.jpg', 'Baseball', 5),
(233, 'Toronto Blue Jays BO BICHETTE Alternate Jersey ', 55.00, 'JaysAltBo.jpg', 'Baseball', 5),
(234, 'Toronto Blue Jays VLADIMIR GUERRERO JR City Connect Jersey ', 55.00, 'JaysCityVlad.jpg', 'Baseball', 5),
(235, 'Washington Nationals CJ ABRAMS Home Jersey', 55.00, 'NatsHomeAbrams.jpg', 'Baseball', 5),
(236, 'Washington Nationals CJ ABRAMS Alternate Jersey', 55.00, 'NatsAltAbrams.jpg', 'Baseball', 5),
(237, 'Barcelona MESSI 15/16 Home Kit', 49.99, 'Barca1516H.jpg', 'Soccer', 5),
(238, 'Barcelona MESSI 15/16 Away Kit', 49.99, 'Barca1516V.jpg', 'Soccer', 5),
(239, 'Barcelona MESSI 16/17 Home Kit', 49.99, 'Barca1617H.jpg', 'Soccer', 5),
(240, 'Barcelona NEYMAR JR 16/17 Away Kit', 49.99, 'Barca1617A.jpg', 'Soccer', 5),
(241, 'Manchester City KUN AGUERO 16/17 Home Kit', 49.99, 'ManCity1617H.jpg', 'Soccer', 5),
(242, 'Barcelona MESSI 17/18 Home Kit', 49.99, 'Barca1718H.jpg', 'Soccer', 5),
(243, 'Barcelona MESSI 17/18 Away Kit', 49.99, 'Barca1718A.jpg', 'Soccer', 5),
(244, 'Barcelona COUTINHO 17/18 Third Kit', 49.99, 'Barca1718T.jpg', 'Soccer', 5),
(245, 'Juventus DYBALA 17/18 Home Kit', 49.99, 'Juventus1718H.jpg', 'Soccer', 5),
(246, 'PSG NEYMAR JR 17/18 Home Kit', 49.99, 'PSG1718H.jpg', 'Soccer', 5),
(247, 'Real Madrid RONALDO 17/18 Away Kit', 49.99, 'RealMadrid1718A.jpg', 'Soccer', 5),
(248, 'Manchester City KUN AGUERO 17/18 Away Kit', 49.99, 'ManCity1718V.jpg', 'Soccer', 5),
(249, 'Brazil NEYMAR JR 2017 Third Kit', 49.99, 'Brazil17Third.jpg', 'Soccer', 5),
(250, 'Barcelona MESSI 18/19 Home Kit', 49.99, 'Barca1819H.jpg', 'Soccer', 5),
(251, 'Barcelona MESSI 18/19 Away Kit', 49.99, 'Barca1819A.jpg', 'Soccer', 5),
(252, 'Real Madrid MARCELO 18/19 Home Kit', 49.99, 'RealMadrid1819H.jpg', 'Soccer', 5),
(253, 'Manchester City KUN AGUERO 18/19 Home Kit', 49.99, 'ManCity1819H.jpg', 'Soccer', 5),
(254, 'Juventus RONALDO 18/19 Third Kit', 49.99, 'Juventus1819T.jpg', 'Soccer', 5),
(255, 'PSG NEYMAR JR 18/19 Third KIt', 49.99, 'PSG1819T.jpg', 'Soccer', 5),
(256, 'Manchester United BRUNO FERNANDES 24/25 Home Kit', 49.99, 'ManU2425H.jpg', 'Soccer', 5),
(257, 'Manchester United BRUNO FERNANDES 24/25 Away Kit', 49.99, 'ManU2425A.jpg', 'Soccer', 5),
(258, 'Arsenal BUKAYO SAKA 24/25 Home Kit', 49.99, 'Arsenal2425H.jpg', 'Soccer', 5),
(259, 'Arsenal MARTIN ODEGAARD 24/25 Away Kit', 49.99, 'Arsenal2425A.jpg', 'Soccer', 5),
(260, 'Chelsea COLE PALMER 24/25 Home Kit', 49.99, 'Chelsea2425H.jpg', 'Soccer', 5),
(261, 'Chelsea COLE PALMER 24/25 Away Kit', 49.99, 'Chelsea2425A.jpg', 'Soccer', 5),
(262, 'Liverpool MO SALAH 24/25 Home Kit', 49.99, 'Liverpool2425H.jpg', 'Soccer', 5),
(263, 'Liverpool MO SALAH 24/25 Away Kit', 49.99, 'Liverpool2425A.jpg', 'Soccer', 5),
(264, 'Tottenham SON 24/25 Home Jersey', 49.99, 'Spurs2425H.jpg', 'Soccer', 5),
(265, 'Tottenham SON 24/25 Away Jersey', 49.99, 'Spurs2425A.jpg', 'Soccer', 5),
(266, 'Bayern Munich HARRY KANE 24/25 Home Kit', 49.99, 'Munich2425H.jpg', 'Soccer', 5),
(267, 'Bayern Munich JAMAL MUSIALA 24/25 Away Kit', 49.99, 'Munich2425A.jpg', 'Soccer', 5),
(268, 'Borrusia Dortmund GUIRASSY 24/25 Home Jersey', 49.99, 'BVB2425H.jpg', 'Soccer', 5),
(269, 'Borrusia Dortmund GUIRASSY 24/25 Away Jersey', 49.99, 'BVB2425A.jpg', 'Soccer', 5),
(270, 'PSG OUSMANE DEMBELE 24/25 Home Kit', 49.99, 'PSG2425A.jpg', 'Soccer', 5),
(271, 'PSG 24/25 Third Kit', 49.99, 'PSG2425T.jpg', 'Soccer', 5),
(272, 'Inter Milan LAUTARO MARTINEZ 24/25 Home Kit', 49.99, 'IM2425H.jpg', 'Soccer', 5),
(273, 'Inter Milan LAUTARO MARTINEZ 24/25 Third Kit', 49.99, 'IM2425T.jpg', 'Soccer', 5),
(274, 'AC Milan PULISIC 24/25 Home Kit', 49.99, 'ACM2425H.jpg', 'Soccer', 5),
(275, 'AC Milan PULISIC 24/25 Away Kit', 49.99, 'ACM2425A.jpg', 'Soccer', 5),
(276, 'Juventus YILDIZ 24/25 Home Kit', 49.99, 'Juventus2425H.jpg', 'Soccer', 5),
(277, 'Juventus MCKENNIE 24/25 Away Kit', 49.99, 'Juventus2425A.jpg', 'Soccer', 5),
(278, 'Roma 24/25 Home Kit', 49.99, 'Roma2425H.jpg', 'Soccer', 5),
(279, 'Roma 23/24 DYBALA Third Kit', 49.99, 'Roma2425T.jpg', 'Soccer', 5),
(280, 'Atletico Madrid GRIEZMANN 24/25 Home Kit', 49.99, 'ATM2425H.jpg', 'Soccer', 5),
(281, 'Atletico Madrid ALVAREZ 24/25 Away Kit', 49.99, 'ATM2425A.jpg', 'Soccer', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

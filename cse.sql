-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               11.6.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for cse299
CREATE DATABASE IF NOT EXISTS `cse299` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci */;
USE `cse299`;

-- Dumping structure for table cse299.apartments
CREATE TABLE IF NOT EXISTS `apartments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.apartments: ~0 rows (approximately)

-- Dumping structure for table cse299.bank_accounts
CREATE TABLE IF NOT EXISTS `bank_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `account_balance` int(11) NOT NULL DEFAULT 0,
  `account_type` enum('shared','job','gang') NOT NULL,
  `users` longtext DEFAULT '[]',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `account_name` (`account_name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.bank_accounts: ~20 rows (approximately)
INSERT INTO `bank_accounts` (`id`, `citizenid`, `account_name`, `account_balance`, `account_type`, `users`) VALUES
	(1, NULL, 'cardealer', 0, 'job', '[]'),
	(2, NULL, 'vineyard', 0, 'job', '[]'),
	(3, NULL, 'bus', 0, 'job', '[]'),
	(4, NULL, 'judge', 0, 'job', '[]'),
	(5, NULL, 'ambulance', 2000, 'job', '[]'),
	(6, NULL, 'garbage', 0, 'job', '[]'),
	(7, NULL, 'bennys', 0, 'job', '[]'),
	(8, NULL, 'lawyer', 0, 'job', '[]'),
	(9, NULL, 'hotdog', 0, 'job', '[]'),
	(10, NULL, 'mechanic2', 0, 'job', '[]'),
	(11, NULL, 'mechanic', 0, 'job', '[]'),
	(12, NULL, 'reporter', 0, 'job', '[]'),
	(13, NULL, 'realestate', 0, 'job', '[]'),
	(14, NULL, 'trucker', 0, 'job', '[]'),
	(15, NULL, 'unemployed', 0, 'job', '[]'),
	(16, NULL, 'mechanic3', 0, 'job', '[]'),
	(17, NULL, 'tow', 0, 'job', '[]'),
	(18, NULL, 'taxi', 0, 'job', '[]'),
	(19, NULL, 'beeker', 0, 'job', '[]'),
	(20, NULL, 'police', 0, 'job', '[]');

-- Dumping structure for table cse299.bank_statements
CREATE TABLE IF NOT EXISTS `bank_statements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT 'checking',
  `amount` int(11) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `statement_type` enum('deposit','withdraw') DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.bank_statements: ~5 rows (approximately)
INSERT INTO `bank_statements` (`id`, `citizenid`, `account_name`, `amount`, `reason`, `statement_type`, `date`) VALUES
	(1, 'TQZ09203', 'checking', 500, 'drrd', 'withdraw', '2025-02-26 05:46:16'),
	(2, 'TQZ09203', 'checking', 10, 'amamama', 'withdraw', '2025-02-26 05:50:39'),
	(3, 'TQZ09203', 'checking', 40, 'sdf', 'deposit', '2025-02-26 05:50:45'),
	(4, 'TQZ09203', 'checking', 340, 'Bank Withdrawal', 'withdraw', '2025-02-26 05:59:53'),
	(5, NULL, 'ambulance', 2000, 'Player treatment', 'deposit', '2025-03-11 17:12:17');

-- Dumping structure for table cse299.bans
CREATE TABLE IF NOT EXISTS `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `expire` int(11) DEFAULT NULL,
  `bannedby` varchar(255) NOT NULL DEFAULT 'LeBanhammer',
  PRIMARY KEY (`id`),
  KEY `license` (`license`),
  KEY `discord` (`discord`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.bans: ~0 rows (approximately)

-- Dumping structure for table cse299.crypto
CREATE TABLE IF NOT EXISTS `crypto` (
  `crypto` varchar(50) NOT NULL DEFAULT 'qbit',
  `worth` int(11) NOT NULL DEFAULT 0,
  `history` text DEFAULT NULL,
  PRIMARY KEY (`crypto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table cse299.crypto: ~0 rows (approximately)

-- Dumping structure for table cse299.crypto_transactions
CREATE TABLE IF NOT EXISTS `crypto_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.crypto_transactions: ~0 rows (approximately)

-- Dumping structure for table cse299.dealers
CREATE TABLE IF NOT EXISTS `dealers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `coords` longtext DEFAULT NULL,
  `time` longtext DEFAULT NULL,
  `createdby` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.dealers: ~0 rows (approximately)

-- Dumping structure for table cse299.fuel_stations
CREATE TABLE IF NOT EXISTS `fuel_stations` (
  `location` int(11) NOT NULL,
  `owned` int(11) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT NULL,
  `fuelprice` int(11) DEFAULT NULL,
  `balance` int(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table cse299.fuel_stations: ~24 rows (approximately)
INSERT INTO `fuel_stations` (`location`, `owned`, `owner`, `fuel`, `fuelprice`, `balance`, `label`) VALUES
	(1, 0, '0', 100000, 5, 0, 'Davis Avenue Ron'),
	(2, 0, '0', 100000, 5, 0, 'Grove Street LTD'),
	(3, 0, '0', 100000, 5, 0, 'Dutch London Xero'),
	(4, 0, '0', 100000, 5, 0, 'Little Seoul LTD'),
	(5, 0, '0', 100000, 5, 0, 'Strawberry Ave Xero'),
	(6, 0, '0', 100000, 5, 0, 'Popular Street Ron'),
	(7, 0, '0', 100000, 5, 0, 'Capital Blvd Ron'),
	(8, 0, '0', 100000, 5, 0, 'Mirror Park LTD'),
	(9, 0, '0', 100000, 5, 0, 'Clinton Ave Globe Oil'),
	(10, 0, '0', 100000, 5, 0, 'North Rockford Ron'),
	(11, 0, '0', 100000, 5, 0, 'Great Ocean Xero'),
	(12, 0, '0', 100000, 5, 0, 'Paleto Blvd Xero'),
	(13, 0, '0', 100000, 5, 0, 'Paleto Ron'),
	(14, 0, '0', 100000, 5, 0, 'Paleto Globe Oil'),
	(15, 0, '0', 100000, 5, 0, 'Grapeseed LTD'),
	(16, 0, '0', 100000, 5, 0, 'Sandy Shores Xero'),
	(17, 0, '0', 100000, 5, 0, 'Sandy Shores Globe Oil'),
	(18, 0, '0', 100000, 5, 0, 'Senora Freeway Xero'),
	(19, 0, '0', 100000, 5, 0, 'Harmony Globe Oil'),
	(20, 0, '0', 100000, 5, 0, 'Route 68 Globe Oil'),
	(21, 0, '0', 100000, 5, 0, 'Route 68 Workshop Globe O'),
	(22, 0, '0', 100000, 5, 0, 'Route 68 Xero'),
	(24, 0, '0', 100000, 5, 0, 'Rex\'s Diner Globe Oil'),
	(25, 0, '0', 100000, 5, 0, 'Route 68 Ron');

-- Dumping structure for table cse299.houselocations
CREATE TABLE IF NOT EXISTS `houselocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `owned` tinyint(1) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tier` tinyint(4) DEFAULT NULL,
  `garage` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.houselocations: ~0 rows (approximately)

-- Dumping structure for table cse299.house_plants
CREATE TABLE IF NOT EXISTS `house_plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building` varchar(50) DEFAULT NULL,
  `stage` int(11) DEFAULT 1,
  `sort` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `food` int(11) DEFAULT 100,
  `health` int(11) DEFAULT 100,
  `progress` int(11) DEFAULT 0,
  `coords` text DEFAULT NULL,
  `plantid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `building` (`building`),
  KEY `plantid` (`plantid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.house_plants: ~0 rows (approximately)

-- Dumping structure for table cse299.inventories
CREATE TABLE IF NOT EXISTS `inventories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL,
  `items` longtext DEFAULT '[]',
  PRIMARY KEY (`identifier`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.inventories: ~0 rows (approximately)

-- Dumping structure for table cse299.lapraces
CREATE TABLE IF NOT EXISTS `lapraces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `checkpoints` text DEFAULT NULL,
  `records` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `raceid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `raceid` (`raceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.lapraces: ~0 rows (approximately)

-- Dumping structure for table cse299.occasion_vehicles
CREATE TABLE IF NOT EXISTS `occasion_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `mods` text DEFAULT NULL,
  `occasionid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `occasionId` (`occasionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.occasion_vehicles: ~0 rows (approximately)

-- Dumping structure for table cse299.phone_gallery
CREATE TABLE IF NOT EXISTS `phone_gallery` (
  `citizenid` varchar(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.phone_gallery: ~0 rows (approximately)

-- Dumping structure for table cse299.phone_invoices
CREATE TABLE IF NOT EXISTS `phone_invoices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `society` tinytext DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `sendercitizenid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.phone_invoices: ~0 rows (approximately)

-- Dumping structure for table cse299.phone_messages
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `messages` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `number` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.phone_messages: ~0 rows (approximately)

-- Dumping structure for table cse299.phone_tweets
CREATE TABLE IF NOT EXISTS `phone_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `firstName` varchar(25) DEFAULT NULL,
  `lastName` varchar(25) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `url` text DEFAULT NULL,
  `picture` varchar(512) DEFAULT './img/default.png',
  `tweetId` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.phone_tweets: ~0 rows (approximately)

-- Dumping structure for table cse299.players
CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` text NOT NULL,
  `charinfo` text DEFAULT NULL,
  `job` text NOT NULL,
  `gang` text DEFAULT NULL,
  `position` text NOT NULL,
  `metadata` text NOT NULL,
  `inventory` longtext DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`citizenid`),
  KEY `id` (`id`),
  KEY `last_updated` (`last_updated`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.players: ~1 rows (approximately)
INSERT INTO `players` (`id`, `citizenid`, `cid`, `license`, `name`, `money`, `charinfo`, `job`, `gang`, `position`, `metadata`, `inventory`, `last_updated`) VALUES
	(1, 'TQZ09203', 1, 'license:a045ed84bc7b147ab67442c4be4c70a4bb7d0ad5', 'DEV Dx', '{"cash":1310,"bank":2190,"crypto":0}', '{"gender":0,"nationality":"Bangladesh","phone":"8013640721","account":"US03QBCore2905308391","lastname":"Dx","cid":1,"firstname":"Mr","birthdate":"2025-02-19"}', '{"name":"ambulance","label":"EMS","grade":{"name":"Chief","isboss":true,"payment":150,"level":4},"onduty":true,"isboss":true,"type":"ems"}', '{"name":"none","isboss":false,"label":"No Gang","grade":{"name":"Unaffiliated","isboss":false,"level":0}}', '{"x":-615.2175903320313,"y":-860.123046875,"z":24.5113525390625}', '{"armor":0,"thirst":96.2,"ishandcuffed":false,"bloodtype":"A+","status":[],"criminalrecord":{"hasRecord":false},"rep":[],"fingerprint":"As456g19RXX7856","phone":[],"stress":0,"phonedata":{"InstalledApps":[],"SerialNumber":24090349},"injail":0,"walletid":"QB-74527074","callsign":"NO CALLSIGN","vehicleKeys":{"00LFM257":true,"EMS156":true,"40IQU294":true},"inlaststand":false,"jailitems":[],"isdead":false,"inside":{"apartment":[]},"licences":{"business":false,"driver":true,"weapon":false},"tracker":false,"hunger":95.8}', '[{"info":{"lastname":"Dx","citizenid":"TQZ09203","gender":0,"birthdate":"2025-02-19","firstname":"Mr","nationality":"Bangladesh"},"slot":1,"type":"item","name":"id_card","amount":1},{"info":{"type":"Class C Driver License","lastname":"Dx","firstname":"Mr","birthdate":"2025-02-19"},"slot":2,"type":"item","name":"driver_license","amount":1},{"info":[],"slot":3,"type":"item","name":"phone","amount":1}]', '2025-03-11 17:17:27');

-- Dumping structure for table cse299.playerskins
CREATE TABLE IF NOT EXISTS `playerskins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.playerskins: ~0 rows (approximately)
INSERT INTO `playerskins` (`id`, `citizenid`, `model`, `skin`, `active`) VALUES
	(1, 'TQZ09203', '1885233650', '{"facemix":{"shapeMix":0,"skinMix":0,"defaultShapeMix":0.0,"defaultSkinMix":0.0},"pants":{"defaultTexture":0,"item":32,"texture":0,"defaultItem":0},"ageing":{"defaultTexture":0,"item":-1,"texture":0,"defaultItem":-1},"hat":{"defaultTexture":0,"item":-1,"texture":0,"defaultItem":-1},"lipstick":{"defaultTexture":1,"item":-1,"texture":1,"defaultItem":-1},"decals":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"watch":{"defaultTexture":0,"item":-1,"texture":0,"defaultItem":-1},"beard":{"defaultTexture":1,"item":-1,"texture":1,"defaultItem":-1},"makeup":{"defaultTexture":1,"item":-1,"texture":1,"defaultItem":-1},"face":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"hair":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"vest":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"eyebrows":{"defaultTexture":1,"item":-1,"texture":1,"defaultItem":-1},"cheek_1":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"mask":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"eye_color":{"defaultTexture":0,"item":-1,"texture":0,"defaultItem":-1},"face2":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"t-shirt":{"defaultTexture":0,"item":330,"texture":0,"defaultItem":1},"nose_2":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"cheek_3":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"chimp_hole":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"arms":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"chimp_bone_width":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"nose_3":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"nose_1":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"blush":{"defaultTexture":1,"item":-1,"texture":1,"defaultItem":-1},"chimp_bone_lowering":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"neck_thikness":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"eyebrown_forward":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"eyebrown_high":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"jaw_bone_back_lenght":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"glass":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"chimp_bone_lenght":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"moles":{"defaultTexture":0,"item":-1,"texture":0,"defaultItem":-1},"nose_5":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"bracelet":{"defaultTexture":0,"item":-1,"texture":0,"defaultItem":-1},"jaw_bone_width":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"nose_0":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"eye_opening":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"torso2":{"defaultTexture":0,"item":642,"texture":0,"defaultItem":0},"bag":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"nose_4":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"lips_thickness":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"cheek_2":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"ear":{"defaultTexture":0,"item":-1,"texture":0,"defaultItem":-1},"accessory":{"defaultTexture":0,"item":0,"texture":0,"defaultItem":0},"shoes":{"defaultTexture":0,"item":14,"texture":0,"defaultItem":1}}', 1);

-- Dumping structure for table cse299.player_contacts
CREATE TABLE IF NOT EXISTS `player_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `iban` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.player_contacts: ~0 rows (approximately)

-- Dumping structure for table cse299.player_houses
CREATE TABLE IF NOT EXISTS `player_houses` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `house` varchar(50) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  `keyholders` text DEFAULT NULL,
  `decorations` text DEFAULT NULL,
  `stash` text DEFAULT NULL,
  `outfit` text DEFAULT NULL,
  `logout` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `house` (`house`),
  KEY `citizenid` (`citizenid`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.player_houses: ~0 rows (approximately)

-- Dumping structure for table cse299.player_mails
CREATE TABLE IF NOT EXISTS `player_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinyint(4) DEFAULT 0,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.player_mails: ~1 rows (approximately)
INSERT INTO `player_mails` (`id`, `citizenid`, `sender`, `subject`, `message`, `read`, `mailid`, `date`, `button`) VALUES
	(1, 'TQZ09203', 'Pillbox Hospital', 'Hospital Costs', 'Dear Mr. Dx, <br /><br />Hereby you received an email with the costs of the last hospital visit.<br />The final costs have become: <strong>$2000</strong><br /><br />We wish you a quick recovery!', 0, 274105, '2025-03-11 17:12:21', '[]');

-- Dumping structure for table cse299.player_outfits
CREATE TABLE IF NOT EXISTS `player_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `skin` text DEFAULT NULL,
  `outfitId` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `outfitId` (`outfitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.player_outfits: ~0 rows (approximately)

-- Dumping structure for table cse299.player_vehicles
CREATE TABLE IF NOT EXISTS `player_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) DEFAULT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `plate` varchar(8) NOT NULL,
  `fakeplate` varchar(8) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `engine` float DEFAULT 1000,
  `body` float DEFAULT 1000,
  `state` int(11) DEFAULT 1,
  `depotprice` int(11) NOT NULL DEFAULT 0,
  `drivingdistance` int(50) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `paymentamount` int(11) NOT NULL DEFAULT 0,
  `paymentsleft` int(11) NOT NULL DEFAULT 0,
  `financetime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `plate` (`plate`),
  KEY `citizenid` (`citizenid`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.player_vehicles: ~0 rows (approximately)
INSERT INTO `player_vehicles` (`id`, `license`, `citizenid`, `vehicle`, `hash`, `mods`, `plate`, `fakeplate`, `garage`, `fuel`, `engine`, `body`, `state`, `depotprice`, `drivingdistance`, `status`, `balance`, `paymentamount`, `paymentsleft`, `financetime`) VALUES
	(1, 'license:a045ed84bc7b147ab67442c4be4c70a4bb7d0ad5', 'TQZ09203', 't20', '1663218586', '{"modTurbo":false,"modTrunk":-1,"modKit49":-1,"modKit21":-1,"modEngineBlock":-1,"plate":"00LFM257","modAPlate":-1,"modRearBumper":-1,"modArmor":-1,"modHorns":-1,"modHood":-1,"modRoof":-1,"modSpeakers":-1,"modTransmission":-1,"modDoorSpeaker":-1,"liveryRoof":-1,"tyreSmokeColor":[255,255,255],"modTrimB":-1,"modKit19":-1,"wheelColor":0,"wheels":7,"bodyHealth":1000.0592475178704,"modVanityPlate":-1,"modTank":-1,"modArchCover":-1,"dashboardColor":0,"modSteeringWheel":-1,"modCustomTiresR":false,"wheelWidth":0.0,"dirtLevel":0.0,"engineHealth":1000.0592475178704,"modBackWheels":-1,"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"plateIndex":0,"windowStatus":{"1":true,"2":false,"3":false,"4":false,"5":false,"6":true,"7":true,"0":true},"modDashboard":-1,"modCustomTiresF":false,"modAerials":-1,"modSmokeEnabled":false,"modAirFilter":-1,"modEngine":-1,"modWindows":-1,"modPlateHolder":-1,"interiorColor":0,"modShifterLeavers":-1,"modSuspension":-1,"modStruts":-1,"modSideSkirt":-1,"modRightFender":-1,"wheelSize":0.0,"modExhaust":-1,"modGrille":-1,"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"0":1000.0},"color1":7,"modSpoilers":-1,"model":1663218586,"fuelLevel":35.74477056259266,"windowTint":-1,"modKit17":-1,"modBrakes":-1,"pearlescentColor":3,"modFrontBumper":-1,"modKit47":-1,"modOrnaments":-1,"oilLevel":4.76596940834568,"modHydrolic":-1,"modSeats":-1,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"extras":[],"color2":7,"modTrimA":-1,"neonEnabled":[false,false,false,false],"modDial":-1,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"xenonColor":255,"modFender":-1,"modFrame":-1,"tankHealth":1000.0592475178704,"modFrontWheels":-1,"modLivery":-1,"neonColor":[255,0,255],"modXenon":false}', '00LFM257', NULL, 'pillboxgarage', 36, 1000, 1000, 1, 0, NULL, NULL, 0, 0, 0, 0);

-- Dumping structure for table cse299.player_warns
CREATE TABLE IF NOT EXISTS `player_warns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `senderIdentifier` varchar(50) DEFAULT NULL,
  `targetIdentifier` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `warnId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table cse299.player_warns: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

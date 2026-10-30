-- MySQL dump 10.13  Distrib 26.7.0, for macos15 (arm64)
--
-- Host: localhost    Database: pokemon
-- ------------------------------------------------------
-- Server version	26.7.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `body_shape`
--

DROP TABLE IF EXISTS `body_shape`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `body_shape` (
  `body_shape_id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `number_of_legs` int DEFAULT NULL,
  `has_wings` tinyint(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`body_shape_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon` (
  `pokedex_number` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `speed` int DEFAULT NULL,
  `special_defence` int DEFAULT NULL,
  `special_attack` int DEFAULT NULL,
  `defence` int DEFAULT NULL,
  `attack` int DEFAULT NULL,
  `hp` int DEFAULT NULL,
  `primary_type` varchar(45) DEFAULT NULL,
  `secondary_type` varchar(45) DEFAULT NULL,
  `body_shape_id` int DEFAULT NULL,
  `rarity_id` int DEFAULT NULL,
  PRIMARY KEY (`pokedex_number`),
  KEY `body_shape_id` (`body_shape_id`),
  KEY `fk_pokemon_rarity` (`rarity_id`),
  CONSTRAINT `fk_pokemon_rarity` FOREIGN KEY (`rarity_id`) REFERENCES `rarity` (`rarity_id`),
  CONSTRAINT `pokemon_ibfk_1` FOREIGN KEY (`body_shape_id`) REFERENCES `body_shape` (`body_shape_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pokemon_move`
--

DROP TABLE IF EXISTS `pokemon_move`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon_move` (
  `move_id` int NOT NULL AUTO_INCREMENT,
  `move_name` varchar(50) NOT NULL,
  `move_power` int NOT NULL,
  `move_accuracy` int DEFAULT '100',
  `move_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`move_id`),
  CONSTRAINT `pokemon_move_chk_1` CHECK ((`move_power` >= 0)),
  CONSTRAINT `pokemon_move_chk_2` CHECK ((`move_accuracy` between 0 and 100))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rarity`
--

DROP TABLE IF EXISTS `rarity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rarity` (
  `rarity_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `color` varchar(7) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`rarity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trainer`
--

DROP TABLE IF EXISTS `trainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainer` (
  `trainer_id` int NOT NULL AUTO_INCREMENT,
  `trainer_name` varchar(50) NOT NULL,
  `age` int DEFAULT NULL,
  `hometown` varchar(50) DEFAULT NULL,
  `badge_count` int NOT NULL DEFAULT '0',
  `wins` int NOT NULL DEFAULT '0',
  `level_id` int DEFAULT NULL,
  PRIMARY KEY (`trainer_id`),
  KEY `level_id` (`level_id`),
  CONSTRAINT `trainer_ibfk_1` FOREIGN KEY (`level_id`) REFERENCES `trainer_level` (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trainer_has_badge`
--

DROP TABLE IF EXISTS `trainer_has_badge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainer_has_badge` (
  `trainer_trainer_id` int NOT NULL,
  `badge_badge_id` int NOT NULL,
  `trainder_badge_date` datetime DEFAULT NULL,
  PRIMARY KEY (`trainer_trainer_id`,`badge_badge_id`),
  KEY `fk_trainer_has_badge_badge1_idx` (`badge_badge_id`),
  KEY `fk_trainer_has_badge_trainer1_idx` (`trainer_trainer_id`),
  CONSTRAINT `fk_trainer_has_badge_badge1` FOREIGN KEY (`badge_badge_id`) REFERENCES `mydb`.`badge` (`badge_id`),
  CONSTRAINT `fk_trainer_has_badge_trainer1` FOREIGN KEY (`trainer_trainer_id`) REFERENCES `trainer` (`trainer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trainer_level`
--

DROP TABLE IF EXISTS `trainer_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainer_level` (
  `level_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trainer_pokemon`
--

DROP TABLE IF EXISTS `trainer_pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainer_pokemon` (
  `trainer_id` int NOT NULL,
  `pokedex_number` int NOT NULL,
  PRIMARY KEY (`trainer_id`,`pokedex_number`),
  KEY `pokedex_number` (`pokedex_number`),
  CONSTRAINT `trainer_pokemon_ibfk_1` FOREIGN KEY (`trainer_id`) REFERENCES `trainer` (`trainer_id`),
  CONSTRAINT `trainer_pokemon_ibfk_2` FOREIGN KEY (`pokedex_number`) REFERENCES `pokemon` (`pokedex_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-30 12:49:24

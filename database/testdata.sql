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
-- Dumping data for table `body_shape`
--

LOCK TABLES `body_shape` WRITE;
/*!40000 ALTER TABLE `body_shape` DISABLE KEYS */;
INSERT INTO `body_shape` VALUES (1,'Quadruped',4,0,'Walks primarily on four legs'),(2,'Biped',2,0,'Walks primarily on two legs'),(3,'Winged',2,1,'Has wings'),(4,'Serpentine',0,0,'Long body with no legs'),(5,'Aquatic',0,0,'Body adapted primarily for swimming'),(6,'Insectoid',6,1,'Body structure similar to an insect'),(7,'Blob',0,0,'Body has no clearly defined limbs'),(8,'Humanoid',2,0,'Body structure resembles a human');
/*!40000 ALTER TABLE `body_shape` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
INSERT INTO `pokemon` VALUES (1,'Bulbasaur',45,65,65,49,49,45,'Grass','Poison',1,1),(2,'Ivysaur',60,80,80,63,62,60,'Grass','Poison',1,2),(3,'Venusaur',80,100,100,83,82,80,'Grass','Poison',1,3),(4,'Charmander',65,50,60,43,52,39,'Fire',NULL,2,1),(5,'Charmeleon',80,65,80,58,64,58,'Fire',NULL,2,2),(6,'Charizard',100,85,109,78,84,78,'Fire','Flying',3,3),(7,'Squirtle',43,64,50,65,48,44,'Water',NULL,2,1),(8,'Wartortle',58,80,65,80,63,59,'Water',NULL,2,2),(9,'Blastoise',78,105,85,100,83,79,'Water',NULL,2,3),(10,'Caterpie',45,20,20,35,30,45,'Bug',NULL,6,1),(11,'Metapod',30,25,25,55,20,50,'Bug',NULL,6,1),(12,'Butterfree',70,80,90,50,45,60,'Bug','Flying',6,1),(13,'Weedle',50,20,20,30,35,40,'Bug','Poison',6,1),(14,'Kakuna',35,25,25,50,25,45,'Bug','Poison',6,1),(15,'Beedrill',75,80,45,40,90,65,'Bug','Poison',6,1),(16,'Pidgey',56,35,35,40,45,40,'Normal','Flying',3,1),(17,'Pidgeotto',71,50,50,55,60,63,'Normal','Flying',3,1),(18,'Pidgeot',101,70,70,75,80,83,'Normal','Flying',3,2),(19,'Rattata',72,35,25,35,56,30,'Normal',NULL,1,1),(20,'Raticate',97,70,50,60,81,55,'Normal',NULL,1,2),(21,'Spearow',70,31,31,30,60,40,'Normal','Flying',3,1),(22,'Fearow',100,61,61,65,90,65,'Normal','Flying',3,2),(23,'Ekans',55,54,40,44,60,35,'Poison',NULL,4,1),(24,'Arbok',80,79,65,69,85,60,'Poison',NULL,4,2),(25,'Pikachu',90,50,50,40,55,35,'Electric',NULL,2,1),(26,'Raichu',110,80,90,55,90,60,'Electric',NULL,2,2),(27,'Sandshrew',40,30,20,85,75,50,'Ground',NULL,2,1),(28,'Sandslash',65,55,45,110,100,75,'Ground',NULL,2,2),(29,'Nidoran-f',41,40,40,52,47,55,'Poison',NULL,1,1),(30,'Nidorina',56,55,55,67,62,70,'Poison',NULL,1,1),(31,'Nidoqueen',76,85,75,87,92,90,'Poison','Ground',2,3),(32,'Nidoran-m',50,40,40,40,57,46,'Poison',NULL,1,1),(33,'Nidorino',65,55,55,57,72,61,'Poison',NULL,1,1),(34,'Nidoking',85,75,85,77,102,81,'Poison','Ground',2,3),(35,'Clefairy',35,65,60,48,45,70,'Fairy',NULL,2,1),(36,'Clefable',60,90,95,73,70,95,'Fairy',NULL,2,2),(37,'Vulpix',65,65,50,40,41,38,'Fire',NULL,1,1),(38,'Ninetales',100,100,81,75,76,73,'Fire',NULL,1,3),(39,'Jigglypuff',20,25,45,20,45,115,'Normal','Fairy',2,1),(40,'Wigglytuff',45,50,85,45,70,140,'Normal','Fairy',2,2),(41,'Zubat',55,40,30,35,45,40,'Poison','Flying',3,1),(42,'Golbat',90,75,65,70,80,75,'Poison','Flying',3,2),(43,'Oddish',30,65,75,55,50,45,'Grass','Poison',2,1),(44,'Gloom',40,75,85,70,65,60,'Grass','Poison',2,1),(45,'Vileplume',50,90,110,85,80,75,'Grass','Poison',2,2),(46,'Paras',25,55,45,55,70,35,'Bug','Grass',6,1),(47,'Parasect',30,80,60,80,95,60,'Bug','Grass',6,2),(48,'Venonat',45,55,40,50,55,60,'Bug','Poison',6,1),(49,'Venomoth',90,75,90,60,65,70,'Bug','Poison',6,2),(50,'Diglett',95,45,35,25,55,10,'Ground',NULL,7,1),(51,'Dugtrio',120,70,50,50,80,35,'Ground',NULL,7,2),(52,'Meowth',90,40,40,35,45,40,'Normal',NULL,1,1),(53,'Persian',115,65,65,60,70,65,'Normal',NULL,1,2),(54,'Psyduck',55,50,65,48,52,50,'Water',NULL,2,1),(55,'Golduck',85,80,95,78,82,80,'Water',NULL,2,3),(56,'Mankey',70,45,35,35,80,40,'Fighting',NULL,2,1),(57,'Primeape',95,70,60,60,105,65,'Fighting',NULL,2,2),(58,'Growlithe',60,50,70,45,70,55,'Fire',NULL,1,1),(59,'Arcanine',95,80,100,80,110,90,'Fire',NULL,1,3),(60,'Poliwag',90,40,40,40,50,40,'Water',NULL,5,1),(61,'Poliwhirl',90,50,50,65,65,65,'Water',NULL,2,1),(62,'Poliwrath',70,90,70,95,95,90,'Water','Fighting',2,3),(63,'Abra',90,55,105,15,20,25,'Psychic',NULL,8,1),(64,'Kadabra',105,70,120,30,35,40,'Psychic',NULL,8,2),(65,'Alakazam',120,95,135,45,50,55,'Psychic',NULL,8,3),(66,'Machop',35,35,35,50,80,70,'Fighting',NULL,8,1),(67,'Machoke',45,60,50,70,100,80,'Fighting',NULL,8,2),(68,'Machamp',55,85,65,80,130,90,'Fighting',NULL,8,3),(69,'Bellsprout',40,30,70,35,75,50,'Grass','Poison',2,1),(70,'Weepinbell',55,45,85,50,90,65,'Grass','Poison',2,1),(71,'Victreebel',70,70,100,65,105,80,'Grass','Poison',2,2),(72,'Tentacool',70,100,50,35,40,40,'Water','Poison',5,1),(73,'Tentacruel',100,120,80,65,70,80,'Water','Poison',5,3),(74,'Geodude',20,30,30,100,80,40,'Rock','Ground',8,1),(75,'Graveler',35,45,45,115,95,55,'Rock','Ground',8,1),(76,'Golem',45,65,55,130,120,80,'Rock','Ground',8,2),(77,'Ponyta',90,65,65,55,85,50,'Fire',NULL,1,2),(78,'Rapidash',105,80,80,70,100,65,'Fire',NULL,1,3),(79,'Slowpoke',15,40,40,65,65,90,'Water','Psychic',1,1),(80,'Slowbro',30,80,100,110,75,95,'Water','Psychic',2,2),(81,'Magnemite',45,55,95,70,35,25,'Electric','Steel',7,1),(82,'Magneton',70,70,120,95,60,50,'Electric','Steel',7,2),(83,'Farfetchd',60,62,58,55,65,52,'Normal','Flying',3,1),(84,'Doduo',75,35,35,45,85,35,'Normal','Flying',2,1),(85,'Dodrio',100,60,60,70,110,60,'Normal','Flying',2,2),(86,'Seel',45,70,45,55,45,65,'Water',NULL,5,1),(87,'Dewgong',70,95,70,80,70,90,'Water','Ice',5,2),(88,'Grimer',25,50,40,50,80,80,'Poison',NULL,7,1),(89,'Muk',50,100,65,75,105,105,'Poison',NULL,7,3),(90,'Shellder',40,25,45,100,65,30,'Water',NULL,5,1),(91,'Cloyster',70,45,85,180,95,50,'Water','Ice',5,3),(92,'Gastly',80,35,100,30,35,30,'Ghost','Poison',7,1),(93,'Haunter',95,55,115,45,50,45,'Ghost','Poison',8,2),(94,'Gengar',110,75,130,60,65,60,'Ghost','Poison',8,3),(95,'Onix',70,45,30,160,45,35,'Rock','Ground',4,1),(96,'Drowzee',42,90,43,45,48,60,'Psychic',NULL,8,1),(97,'Hypno',67,115,73,70,73,85,'Psychic',NULL,8,2),(98,'Krabby',50,25,25,90,105,30,'Water',NULL,6,1),(99,'Kingler',75,50,50,115,130,55,'Water',NULL,6,2),(100,'Voltorb',100,55,55,50,30,40,'Electric',NULL,7,1),(101,'Electrode',140,80,80,70,50,60,'Electric',NULL,7,2),(102,'Exeggcute',40,45,60,80,40,60,'Grass','Psychic',7,1),(103,'Exeggutor',55,65,125,85,95,95,'Grass','Psychic',2,3),(104,'Cubone',35,50,40,95,50,50,'Ground',NULL,2,1),(105,'Marowak',45,80,50,110,80,60,'Ground',NULL,2,2),(106,'Hitmonlee',87,110,35,53,120,50,'Fighting',NULL,8,2),(107,'Hitmonchan',76,110,35,79,105,50,'Fighting',NULL,8,2),(108,'Lickitung',30,75,60,75,55,90,'Normal',NULL,2,1),(109,'Koffing',35,45,60,95,65,40,'Poison',NULL,7,1),(110,'Weezing',60,70,85,120,90,65,'Poison',NULL,7,2),(111,'Rhyhorn',25,30,30,95,85,80,'Ground','Rock',1,1),(112,'Rhydon',40,45,45,120,130,105,'Ground','Rock',2,2),(113,'Chansey',50,105,35,5,5,250,'Normal',NULL,2,2),(114,'Tangela',60,40,100,115,55,65,'Grass',NULL,7,2),(115,'Kangaskhan',90,80,40,80,95,105,'Normal',NULL,2,2),(116,'Horsea',60,25,70,70,40,30,'Water',NULL,5,1),(117,'Seadra',85,45,95,95,65,55,'Water',NULL,5,2),(118,'Goldeen',63,50,35,60,67,45,'Water',NULL,5,1),(119,'Seaking',68,80,65,65,92,80,'Water',NULL,5,2),(120,'Staryu',85,55,70,55,45,30,'Water',NULL,5,1),(121,'Starmie',115,85,100,85,75,60,'Water','Psychic',5,3),(122,'Mr-mime',90,120,100,65,45,40,'Psychic','Fairy',8,2),(123,'Scyther',105,80,55,80,110,70,'Bug','Flying',6,3),(124,'Jynx',95,95,115,35,50,65,'Ice','Psychic',8,2),(125,'Electabuzz',105,85,95,57,83,65,'Electric',NULL,8,2),(126,'Magmar',93,85,100,57,95,65,'Fire',NULL,8,2),(127,'Pinsir',85,70,55,100,125,65,'Bug',NULL,6,3),(128,'Tauros',110,70,40,95,100,75,'Normal',NULL,1,2),(129,'Magikarp',80,20,15,55,10,20,'Water',NULL,5,1),(130,'Gyarados',81,100,60,79,125,95,'Water','Flying',4,3),(131,'Lapras',60,95,85,80,85,130,'Water','Ice',5,3),(132,'Ditto',48,48,48,48,48,48,'Normal',NULL,7,1),(133,'Eevee',55,65,45,50,55,55,'Normal',NULL,1,1),(134,'Vaporeon',65,95,110,60,65,130,'Water',NULL,1,3),(135,'Jolteon',130,95,110,60,65,65,'Electric',NULL,1,3),(136,'Flareon',65,110,95,60,130,65,'Fire',NULL,1,3),(137,'Porygon',40,75,85,70,60,65,'Normal',NULL,7,1),(138,'Omanyte',35,55,90,100,40,35,'Rock','Water',5,1),(139,'Omastar',55,70,115,125,60,70,'Rock','Water',5,2),(140,'Kabuto',55,45,55,90,80,30,'Rock','Water',5,1),(141,'Kabutops',80,70,65,105,115,60,'Rock','Water',2,2),(142,'Aerodactyl',130,75,60,65,105,80,'Rock','Flying',3,3),(143,'Snorlax',30,110,65,65,110,160,'Normal',NULL,2,3),(144,'Articuno',85,125,95,100,85,90,'Ice','Flying',3,4),(145,'Zapdos',100,90,125,85,90,90,'Electric','Flying',3,4),(146,'Moltres',90,85,125,90,100,90,'Fire','Flying',3,4),(147,'Dratini',50,50,50,45,64,41,'Dragon',NULL,4,1),(148,'Dragonair',70,70,70,65,84,61,'Dragon',NULL,4,2),(149,'Dragonite',80,100,100,95,134,91,'Dragon','Flying',3,3),(150,'Mewtwo',130,90,154,90,110,106,'Psychic',NULL,8,4),(151,'Mew',100,100,100,100,100,100,'Psychic',NULL,2,5);
/*!40000 ALTER TABLE `pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pokemon_move`
--

LOCK TABLES `pokemon_move` WRITE;
/*!40000 ALTER TABLE `pokemon_move` DISABLE KEYS */;
INSERT INTO `pokemon_move` VALUES (1,'Thunderbolt',90,100,'Electric'),(2,'Tackle',40,100,'Normal'),(3,'Hydro Pump',110,80,'Water');
/*!40000 ALTER TABLE `pokemon_move` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `rarity`
--

LOCK TABLES `rarity` WRITE;
/*!40000 ALTER TABLE `rarity` DISABLE KEYS */;
INSERT INTO `rarity` VALUES (1,'Common','#9ca3af'),(2,'Uncommon','#22c55e'),(3,'Rare','#3b82f6'),(4,'Legendary','#f4c542'),(5,'Mythical','#a855f7');
/*!40000 ALTER TABLE `rarity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `trainer`
--

LOCK TABLES `trainer` WRITE;
/*!40000 ALTER TABLE `trainer` DISABLE KEYS */;
INSERT INTO `trainer` VALUES (1,'Ash',10,'Pallet Town',8,40,6),(2,'Misty',10,'Cerulean City',8,40,7),(3,'Brock',15,'Pewter City',8,40,7),(4,'Gary',10,'Pallet Town',10,60,6),(5,'Jessie',20,'Unknown',0,0,1),(6,'James',20,'Unknown',0,0,1),(7,'Lt. Surge',NULL,'Vermilion City',8,120,7),(8,'Erika',NULL,'Celadon City',8,95,7),(9,'Sabrina',NULL,'Saffron City',8,140,7),(10,'Koga',NULL,'Fuchsia City',8,130,7),(11,'Blaine',NULL,'Cinnabar Island',8,135,7),(12,'Giovanni',NULL,'Viridian City',8,200,7);
/*!40000 ALTER TABLE `trainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `trainer_has_badge`
--

LOCK TABLES `trainer_has_badge` WRITE;
/*!40000 ALTER TABLE `trainer_has_badge` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainer_has_badge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `trainer_level`
--

LOCK TABLES `trainer_level` WRITE;
/*!40000 ALTER TABLE `trainer_level` DISABLE KEYS */;
INSERT INTO `trainer_level` VALUES (1,'Begynder'),(2,'Let Øvet'),(3,'Øvet'),(4,'Rutineret'),(5,'Ekspert'),(6,'Goat'),(7,'Gym Leader');
/*!40000 ALTER TABLE `trainer_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `trainer_pokemon`
--

LOCK TABLES `trainer_pokemon` WRITE;
/*!40000 ALTER TABLE `trainer_pokemon` DISABLE KEYS */;
INSERT INTO `trainer_pokemon` VALUES (1,1),(1,6),(4,9),(1,12),(5,24),(1,25),(4,25),(3,41),(5,52),(6,52),(2,54),(4,59),(3,74),(3,95),(6,110),(2,118),(2,120),(2,121),(4,133),(1,143);
/*!40000 ALTER TABLE `trainer_pokemon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-30 12:49:33

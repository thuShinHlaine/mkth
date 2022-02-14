-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: testhis
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area` (
  `idarea` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `idstate` int DEFAULT NULL,
  PRIMARY KEY (`idarea`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT  IGNORE INTO `area` (`idarea`, `name`, `idstate`) VALUES (1,'Bogalay',1),(2,'Danuphyu',1),(3,'Hnin Thada',1),(4,'Kyone Pyaw',1),(5,'Lattputa',1),(6,'Maubin',1),(7,'Myan Aung',1),(8,'Myaungmya',1),(9,'Nathaichaung',1),(10,'Nyaung Tone',1),(11,'Pann Ta Naw',1),(12,'Pathein',1),(13,'Phyar Pone',1),(14,'War Khal Ma',1),(15,'Zalon',1),(16,'Ingapu',1),(17,'Dedaye',1),(18,'Chaungtha',1),(19,'Hainggyi',1),(20,'Shwelaung',1),(21,'Mawlamyainggyun',1),(22,'Ngwesaung',1),(23,'Kyaiklat',1),(24,'Bago',2),(25,'Dike Oo',2),(26,'Lat Pan Tan',2),(27,'Min Hla ',2),(28,'Nat Ta Lin ',2),(29,'Pyuu',2),(30,'Poung Tal',2),(31,'Pyay',2),(32,'Shwe Kyin',2),(33,'Shwe Taung ',2),(34,'Taungoo',2),(35,'Tha Nat Pin',2),(36,'Thar Yar Waddy',2),(37,'Thonse',2),(38,'Harkhar',3),(39,'Falam',3),(40,'Mindat',3),(41,'Teetain',3),(42,'Matupi',3),(43,'Kalay University',3);
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-14 12:50:07

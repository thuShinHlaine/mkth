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
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id_country` int NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_country`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT  IGNORE INTO `country` (`id_country`, `country_name`) VALUES (1,'Andorra'),(2,'United Arab Emirates'),(3,'Afghanistan'),(4,'Anguilla'),(5,'Armenia'),(6,'Angola'),(7,'Antarctica'),(8,'Argentina'),(9,'Austria'),(10,'Australia'),(11,'Aruba'),(12,'Bangladesh'),(13,'Barbados'),(14,'Belgium'),(15,'Bahrain'),(16,'Bermuda'),(17,'Bolivia'),(18,'Brazil'),(19,'Bahamas'),(20,'Bhutan'),(21,'Bulgaria'),(22,'Belarus'),(23,'Belize'),(24,'Canada'),(25,'Congo'),(26,'China'),(27,'Switzerland'),(28,'Chile'),(29,'Cambodia'),(30,'Cameroon'),(31,'Columbia'),(32,'Czech Republic'),(33,'Costa Rica'),(34,'Cuba'),(35,'Cyprus'),(36,'Germany'),(37,'Denmark'),(38,'Dominica'),(39,'Ecuador'),(40,'Estonia'),(41,'Egypt'),(42,'Ethiopia'),(43,'Fiji'),(44,'Finland'),(45,'France'),(46,'Georgia'),(47,'Germany'),(48,'Ghana'),(49,'Greece'),(50,'Guinea'),(51,'Guyana'),(52,'Hong Kong'),(53,'Hungary'),(54,'Iceland'),(55,'India'),(56,'Indonesia'),(57,'Iran'),(58,'Iraq'),(59,'Ireland'),(60,'Israel'),(61,'Italy'),(62,'Jamaica'),(63,'Japan'),(64,'Jordan'),(65,'Kazakhstan'),(66,'Kenya'),(67,'Korea'),(68,'Kuwait'),(69,'Lebanon'),(70,'Lithunia'),(71,'Luxembourg'),(72,'Macau'),(73,'Malaysia'),(74,'Maldives'),(75,'Mauritius'),(76,'Mexico'),(77,'Monaco'),(78,'Mongolia'),(79,'Morocco'),(80,'Myanmar'),(81,'Namibia'),(82,'Nepal'),(83,'Netherland'),(84,'New Zealand'),(85,'Nigeria'),(86,'Norway'),(87,'Oman'),(88,'Pakistan'),(89,'Panama'),(90,'Paraguay'),(91,'Peru'),(92,'Philippines'),(93,'Poland'),(94,'Portugal'),(95,'Qatar'),(96,'Romania'),(97,'Russia'),(98,'Saudi Arabia'),(99,'Senegal'),(100,'Seychelles'),(101,'Singapore'),(102,'Slovakia'),(103,'Somalia'),(104,'South Africa'),(105,'Spain'),(106,'Sri Lanka'),(107,'Sweden'),(108,'Switzerland'),(109,'Taiwan'),(110,'Tanzania'),(111,'Thailand'),(112,'Tunisia'),(113,'Turkey'),(114,'Turkmenistan'),(115,'Uganda'),(116,'Ukraine'),(117,'United Arab Emirates'),(118,'United Kingdom'),(119,'United States of America'),(120,'Uruguay'),(121,'Uzbekistan'),(122,'Venezuela'),(123,'Vietnam'),(124,'Yemen'),(125,'Zambia'),(126,'Zimbabwe');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-14 12:50:06

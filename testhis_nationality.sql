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
-- Table structure for table `nationality`
--

DROP TABLE IF EXISTS `nationality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nationality` (
  `id_nationality` int NOT NULL AUTO_INCREMENT,
  `nationality_name` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id_nationality`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nationality`
--

LOCK TABLES `nationality` WRITE;
/*!40000 ALTER TABLE `nationality` DISABLE KEYS */;
INSERT  IGNORE INTO `nationality` (`id_nationality`, `nationality_name`) VALUES (1,'Afghani'),(2,'American'),(3,'Andorian'),(4,'Angolian'),(5,'Anguillan'),(6,'Antarctic'),(7,'Argentine'),(8,'Armenian'),(9,'Arubian'),(10,'Australian'),(11,'Austrian'),(12,'Bahameese'),(13,'Bahrainian'),(14,'Bangladeshi'),(15,'Barbadian'),(16,'Belarusian'),(17,'Belgian'),(18,'Belizean'),(19,'Bermuda'),(20,'Bhutanese'),(21,'Bolivian'),(22,'Brazilian'),(23,'British'),(24,'Bulgarian'),(25,'Cambodian'),(26,'Cameroonian'),(27,'Canadian'),(28,'Chilean'),(29,'Chinese'),(30,'Columbian'),(31,'Congolese'),(32,'Costa Rican'),(33,'Croatian'),(34,'Cuban'),(35,'Cypriot'),(36,'Czech'),(37,'Danish'),(38,'Dominican'),(39,'Dutch'),(40,'Ecuadorean'),(41,'Egyptian'),(42,'Emirian'),(43,'Estonian'),(44,'Ethiopian'),(45,'Fijian'),(46,'Filipino'),(47,'Finnish'),(48,'French'),(49,'Georgian'),(50,'German'),(51,'Ghanaian'),(52,'Greek'),(53,'Guinean'),(54,'Guyanese'),(55,'Hungarian'),(56,'Icelander'),(57,'Indian'),(58,'Indonesian'),(59,'Iranian'),(60,'Iraqi'),(61,'Irish'),(62,'Israeli'),(63,'Italian'),(64,'Jamaican'),(65,'Japanese'),(66,'Jordanian'),(67,'Kazakhstani'),(68,'Kenyan'),(69,'Korean'),(70,'Kuwaiti'),(71,'Lebanese'),(72,'Lithunian'),(73,'Luxembourger'),(74,'Macau'),(75,'Malaysian'),(76,'Maldivan'),(77,'Maldivan'),(78,'Mexican'),(79,'Monacan'),(80,'Mongolian'),(81,'Moroccan'),(82,'Myanmar'),(83,'Namibian'),(84,'Nepalese'),(85,'New Zealander'),(86,'Nigerian'),(87,'Norwegian'),(88,'Omani'),(89,'Pakistani'),(90,'Panamanian'),(91,'Paraguayan'),(92,'Peruvian'),(93,'Polish'),(94,'Portugees'),(95,'Qatari'),(96,'Romanian'),(97,'Russian'),(98,'Saudi Arabian'),(99,'Senegalese'),(100,'Seychellois'),(101,'Singaporean'),(102,'Slovakian'),(103,'Somali'),(104,'South African'),(105,'Spanish'),(106,'Sri Lankan'),(107,'Swedish'),(108,'Swiss'),(109,'Taiwanese'),(110,'Tanzanian'),(111,'Thai'),(112,'Tunisian'),(113,'Turkish'),(114,'Turkmenistani'),(115,'Ugandan'),(116,'Ukrainian'),(117,'Uruguayan'),(118,'Uzbekistani'),(119,'Venezuelan'),(120,'Vietnamese'),(121,'Yemeni'),(122,'Zambian'),(123,'Zimbabwean');
/*!40000 ALTER TABLE `nationality` ENABLE KEYS */;
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

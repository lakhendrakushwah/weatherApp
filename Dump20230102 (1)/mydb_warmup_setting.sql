-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `warmup_setting`
--

DROP TABLE IF EXISTS `warmup_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warmup_setting` (
  `idwarmup_setting` int NOT NULL AUTO_INCREMENT,
  `sender_idsender` int NOT NULL,
  `enable` tinyint DEFAULT '1',
  `errors` tinyint DEFAULT '0',
  `limit_reached` tinyint DEFAULT NULL,
  `filter_tag` varchar(45) NOT NULL,
  `increase_per_day` int DEFAULT NULL,
  `reply_rate` varchar(45) DEFAULT NULL,
  `monitor_blacklist` varchar(45) DEFAULT NULL,
  `custom_tracking` varchar(255) DEFAULT NULL,
  `current_day_limit` int DEFAULT NULL,
  PRIMARY KEY (`idwarmup_setting`),
  KEY `fk_warmup_setting_sender1` (`sender_idsender`),
  CONSTRAINT `fk_warmup_setting_sender1` FOREIGN KEY (`sender_idsender`) REFERENCES `sender` (`idsender`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warmup_setting`
--

LOCK TABLES `warmup_setting` WRITE;
/*!40000 ALTER TABLE `warmup_setting` DISABLE KEYS */;
INSERT INTO `warmup_setting` VALUES (1,1,1,0,NULL,'KrLFt-xEmail-kprAj',NULL,NULL,NULL,NULL,NULL),(2,10,1,0,NULL,'vmyWR-xEmail-c25HC',NULL,NULL,NULL,NULL,NULL),(3,2,1,0,NULL,'dasd-xEmail-cssd',NULL,NULL,NULL,NULL,NULL),(4,11,1,0,NULL,'pO2AU-xEmail-Tvo5z',NULL,NULL,NULL,NULL,NULL),(5,12,1,0,NULL,'Zts1j-xEmail-hE8BW',NULL,NULL,NULL,NULL,NULL),(6,13,1,0,NULL,'zIlsX-xEmail-e30ny',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `warmup_setting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-02 23:58:44

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
-- Table structure for table `warmup_daily_analytics`
--

DROP TABLE IF EXISTS `warmup_daily_analytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warmup_daily_analytics` (
  `idwarmup_daily_analyticsc` int NOT NULL,
  `sender_idsender` int NOT NULL,
  `email_sent` int DEFAULT NULL,
  `inbox` int DEFAULT NULL,
  `spam` int DEFAULT NULL,
  `missed` int DEFAULT NULL,
  `bounced` int DEFAULT NULL,
  `warmup_emails_recieved` int DEFAULT NULL,
  `token` varchar(45) NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`idwarmup_daily_analyticsc`),
  UNIQUE KEY `token_UNIQUE` (`token`),
  KEY `fk_warmup_daily_analytics_sender1` (`sender_idsender`),
  CONSTRAINT `fk_warmup_daily_analytics_sender1` FOREIGN KEY (`sender_idsender`) REFERENCES `sender` (`idsender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warmup_daily_analytics`
--

LOCK TABLES `warmup_daily_analytics` WRITE;
/*!40000 ALTER TABLE `warmup_daily_analytics` DISABLE KEYS */;
/*!40000 ALTER TABLE `warmup_daily_analytics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-02 23:57:48

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
-- Table structure for table `sender`
--

DROP TABLE IF EXISTS `sender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sender` (
  `idsender` int NOT NULL AUTO_INCREMENT,
  `user_email` varchar(255) NOT NULL,
  `email` varchar(45) NOT NULL,
  `provider_idprovider` int NOT NULL,
  `email_template` varchar(45) DEFAULT NULL,
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_port` int DEFAULT NULL,
  `imap_host` varchar(45) DEFAULT NULL,
  `imap_port` int DEFAULT NULL,
  `credentials` json NOT NULL,
  `warmup_daily_analytics_email` int NOT NULL,
  `recieve_limit_per_day` int DEFAULT NULL,
  `recieved_mail_today` int DEFAULT NULL,
  `email_template_id` int NOT NULL,
  `sqs_msg_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idsender`),
  KEY `fk_sender_user1` (`user_email`),
  KEY `fk_sender_provider1` (`provider_idprovider`),
  KEY `fk_sender_email_template1` (`email_template_id`),
  CONSTRAINT `fk_sender_email_template1` FOREIGN KEY (`email_template_id`) REFERENCES `email_template` (`id`),
  CONSTRAINT `fk_sender_provider1` FOREIGN KEY (`provider_idprovider`) REFERENCES `provider` (`idprovider`),
  CONSTRAINT `fk_sender_user1` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sender`
--

LOCK TABLES `sender` WRITE;
/*!40000 ALTER TABLE `sender` DISABLE KEYS */;
INSERT INTO `sender` VALUES (1,'kushwahlakhendra@gmail.com','lakhendra.19627@knit.ac.in',1,NULL,'smtp.gmail.com',587,'imap.gmail.com',993,'\"mbslorfrxrlcitaf\"',10,NULL,NULL,1,NULL),(2,'kushwahlakhendra@gmail.com','Linda@xemaildeliveryreport.com',1,NULL,'smtp.gmail.com',587,'imap.gmail.com',993,'\"lcnttwepkqkzuqel\"',10,NULL,NULL,1,NULL),(10,'kushwahlakhendra@gmail.com','niharikaagarwal154@gmail.com',1,NULL,'smtp.gmail.com',587,'imap.gmail.com',993,'\"mjfdvgqhkhyttsfe\"',10,NULL,NULL,1,NULL),(11,'lakhendra.kushwah@xemailverify.com','aryan.208601@knit.ac.in',1,NULL,'smtp.gmail.com',587,'imap.gmail.com',993,'\"Aryan@123\"',10,NULL,NULL,1,NULL),(12,'lakhendra.kushwah@xemailverify.com','aryan.208601@knit.ac.in',1,NULL,'smtp.gmail.com',587,'imap.gmail.com',993,'\"Aryan@123\"',10,NULL,NULL,1,NULL),(13,'lakhendra.kushwah@xemailverify.com','aryanss@knit.ac.in',1,NULL,'smtp.gmail.com',587,'imap.gmail.com',993,'\"123123\"',10,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `sender` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-02 23:57:49

-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: gestori_telefonici
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tariffe`
--

DROP TABLE IF EXISTS `tariffe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariffe` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_Tariffa` varchar(30) NOT NULL,
  `Minuti` int(11) DEFAULT NULL,
  `SMS` int(11) DEFAULT NULL,
  `Internet` int(11) DEFAULT NULL,
  `Data_Attivazione` date NOT NULL,
  `ID_Gestore` int(11) NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  PRIMARY KEY (`ID`,`ID_Gestore`),
  KEY `ID_Gestore` (`ID_Gestore`),
  KEY `ID_Cliente` (`ID_Cliente`),
  CONSTRAINT `tariffe_ibfk_1` FOREIGN KEY (`ID_Gestore`) REFERENCES `gestori` (`ID`),
  CONSTRAINT `tariffe_ibfk_2` FOREIGN KEY (`ID_Cliente`) REFERENCES `clienti` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariffe`
--

LOCK TABLES `tariffe` WRITE;
/*!40000 ALTER TABLE `tariffe` DISABLE KEYS */;
/*!40000 ALTER TABLE `tariffe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-31 10:45:47

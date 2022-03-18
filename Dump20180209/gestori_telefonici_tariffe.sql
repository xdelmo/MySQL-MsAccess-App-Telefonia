CREATE DATABASE  IF NOT EXISTS `gestori_telefonici` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gestori_telefonici`;
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
  KEY `tariffe_ibfk_1_idx` (`ID_Gestore`),
  KEY `tariffe_ibfk_1_idx1` (`ID_Cliente`),
  CONSTRAINT `tariffe_ibfk_1` FOREIGN KEY (`ID_Gestore`) REFERENCES `gestori` (`ID`),
  CONSTRAINT `tariffe_ibfk_2` FOREIGN KEY (`ID_Cliente`) REFERENCES `clienti` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=580 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariffe`
--

LOCK TABLES `tariffe` WRITE;
/*!40000 ALTER TABLE `tariffe` DISABLE KEYS */;
INSERT INTO `tariffe` VALUES (1,'SMS ILLIMITATI',0,9999,0,'2017-02-09',1,1),(2,'SENZA LIMITI VOCE',9999,100,5,'2017-11-03',1,2),(3,'ALL-IN',1000,100,5,'2017-11-11',1,3),(4,'KIDS TRACKER',1000,0,1,'2017-11-22',2,4),(5,'60+',400,0,2,'2017-01-04',2,5),(6,'SUPER ONE',9999,50,2,'2017-01-16',2,6),(7,'FIVE GO',1000,0,5,'2017-03-02',3,7),(8,'TEN GO',1000,0,10,'2017-04-17',3,8),(9,'SPECIAL TOP',9999,9999,25,'2017-05-01',3,9),(10,'SPECIAL ONE',100,100,1,'2017-06-24',4,10),(11,'SPECIAL SEVEN',100,100,7,'2017-07-07',4,11),(12,'SPECIAL 20',1000,100,20,'2017-07-13',4,12),(13,'SHAKE ',100,1000,5,'2017-10-05',5,13),(14,'SHAKE REMIX',500,1000,10,'2017-11-23',5,14),(15,'SHAKE SUMMER',1000,100,15,'2017-12-25',5,15),(16,'PLAY',1000,0,5,'2017-01-03',6,16),(17,'PLAY ILLIMITATO',1000,0,20,'2017-01-24',6,17),(18,'ALL-IN',1000,100,5,'2017-03-02',6,18),(19,'ALL-IN SPECIAL',9999,100,15,'2017-03-07',7,19),(20,'ALL-IN START',100,100,5,'2017-03-18',7,20),(21,'ALL-IN REMIX',1000,100,5,'2017-06-20',7,21),(22,'MASTER SPECIAL',9999,9999,15,'2017-06-29',8,22),(23,'MASTER X',1000,0,5,'2017-09-05',8,23),(24,'MASTER PRIME',9999,0,2,'2017-09-08',8,24),(25,'MOBILE 100',100,100,10,'2017-09-12',9,25),(26,'MOBILE 1000',1000,1000,10,'2017-09-16',9,26),(27,'MOBILE SPECIAL',9999,1000,20,'2017-09-28',9,27),(28,'FACILE',1000,0,2,'2017-10-01',10,28),(29,'XVOICE',9999,0,0,'2017-10-12',10,29),(30,'CREAMI',9999,9999,20,'2017-12-08',10,30),(31,'17',NULL,NULL,NULL,'2017-12-13',1,31),(32,'SENZA LIMITI VOCE',9999,100,5,'2017-01-05',1,32),(33,'YOUNG INTERNET',1000,0,20,'2017-02-07',1,33),(34,'KIDS TRACKER',1000,0,1,'2017-02-13',2,34),(35,'60+',400,0,2,'2017-02-13',2,35),(36,'SUPER ONE',9999,50,2,'2017-02-17',2,36),(37,'FIVE GO',1000,0,5,'2017-02-19',3,37),(38,'TEN GO',1000,0,10,'2017-03-28',3,38),(39,'SPECIAL TOP',9999,9999,25,'2017-04-12',3,39),(40,'SPECIAL ONE',100,100,1,'2017-04-14',4,40),(41,'SPECIAL SEVEN',100,100,7,'2017-04-27',4,41),(42,'SPECIAL 20',1000,100,20,'2017-05-14',4,42),(43,'SHAKE ',100,1000,5,'2017-05-17',5,43),(44,'SHAKE REMIX',500,1000,10,'2017-06-01',5,44),(45,'SHAKE SUMMER',1000,100,15,'2017-06-10',5,45),(46,'PLAY',1000,0,5,'2017-06-25',6,46),(47,'PLAY ILLIMITATO',1000,0,20,'2017-06-26',6,47),(48,'ALL-IN',1000,100,5,'2017-06-29',6,48),(49,'ALL-IN SPECIAL',9999,100,15,'2017-07-01',7,49),(50,'ALL-IN START',100,100,5,'2017-07-01',7,50),(51,'ALL-IN REMIX',1000,100,5,'2017-07-09',7,51),(52,'MASTER SPECIAL',9999,9999,15,'2017-08-06',8,52),(53,'MASTER X',1000,0,5,'2017-08-19',8,53),(54,'MASTER PRIME',9999,0,2,'2017-08-21',8,54),(55,'MOBILE 100',100,100,10,'2017-09-03',9,55),(56,'MOBILE 1000',1000,1000,10,'2017-09-12',9,56),(57,'MOBILE SPECIAL',9999,1000,20,'2017-09-22',9,57),(58,'FACILE',1000,0,2,'2017-10-12',10,58),(59,'XVOICE',9999,0,0,'2017-10-25',10,59),(60,'CREAMI',9999,9999,20,'2017-10-29',10,60),(61,'SMS ILLIMITATI',0,9999,0,'2017-11-01',1,61),(62,'SENZA LIMITI VOCE',9999,100,5,'2017-11-05',1,62),(63,'YOUNG INTERNET',1000,0,20,'2017-12-28',1,63),(64,'KIDS TRACKER',1000,0,1,'2017-01-02',2,64),(65,'60+',400,0,2,'2017-01-07',2,65),(66,'SUPER ONE',9999,50,2,'2017-01-19',2,66),(67,'FIVE GO',1000,0,5,'2017-01-20',3,67),(68,'TEN GO',1000,0,10,'2017-02-07',3,68),(69,'SPECIAL TOP',9999,9999,25,'2017-02-21',3,69),(70,'SPECIAL ONE',100,100,1,'2017-02-21',4,70),(71,'SPECIAL SEVEN',100,100,7,'2017-03-01',4,71),(72,'SPECIAL 20',1000,100,20,'2017-03-18',4,72),(73,'SHAKE ',100,1000,5,'2017-04-02',5,73),(74,'SHAKE REMIX',500,1000,10,'2017-04-03',5,74),(75,'SHAKE SUMMER',1000,100,15,'2017-04-12',5,75),(76,'PLAY',1000,0,5,'2017-04-27',6,76),(77,'PLAY ILLIMITATO',1000,0,20,'2017-04-28',6,77),(78,'ALL-IN',1000,100,5,'2017-05-09',6,78),(79,'ALL-IN SPECIAL',9999,100,15,'2017-05-13',7,79),(80,'ALL-IN START',100,100,5,'2017-05-19',7,80),(81,'ALL-IN REMIX',1000,100,5,'2017-05-26',7,81),(82,'MASTER SPECIAL',9999,9999,15,'2017-06-02',8,82),(83,'MASTER X',1000,0,5,'2017-06-16',8,83),(84,'MASTER PRIME',9999,0,2,'2017-06-18',8,84),(85,'MOBILE 100',100,100,10,'2017-06-18',9,85),(86,'MOBILE 1000',1000,1000,10,'2017-06-23',9,86),(87,'MOBILE SPECIAL',9999,1000,20,'2017-06-27',9,87),(88,'FACILE',1000,0,2,'2017-06-30',10,88),(89,'XVOICE',9999,0,0,'2017-06-30',10,89),(90,'CREAMI',9999,9999,20,'2017-07-03',10,90),(91,'SMS ILLIMITATI',0,9999,0,'2017-07-24',1,91),(92,'SENZA LIMITI VOCE',9999,100,5,'2017-07-27',1,92),(93,'YOUNG INTERNET',1000,0,20,'2017-07-28',1,93),(94,'KIDS TRACKER',1000,0,1,'2017-08-02',2,94),(95,'60+',400,0,2,'2017-09-12',2,95),(96,'SUPER ONE',9999,50,2,'2017-09-12',2,96),(97,'FIVE GO',1000,0,5,'2017-09-28',3,97),(98,'TEN GO',1000,0,10,'2017-10-02',3,98),(99,'SPECIAL TOP',9999,9999,25,'2017-10-11',3,99),(100,'SPECIAL ONE',100,100,1,'2017-10-25',4,100),(101,'SPECIAL SEVEN',100,100,7,'2017-12-03',4,101),(102,'SPECIAL 20',1000,100,20,'2017-12-17',4,102),(103,'SHAKE ',100,1000,5,'2017-12-19',5,103),(104,'SHAKE REMIX',500,1000,10,'2017-12-21',5,104),(105,'SHAKE SUMMER',1000,100,15,'2017-01-03',5,105),(106,'PLAY',1000,0,5,'2017-01-04',6,106),(107,'PLAY ILLIMITATO',1000,0,20,'2017-01-05',6,107),(108,'ALL-IN',1000,100,5,'2017-01-09',6,108),(109,'ALL-IN SPECIAL',9999,100,15,'2017-01-12',7,109),(110,'ALL-IN START',100,100,5,'2017-01-13',7,110),(111,'ALL-IN REMIX',1000,100,5,'2017-01-18',7,111),(112,'MASTER SPECIAL',9999,9999,15,'2017-01-28',8,112),(113,'MASTER X',1000,0,5,'2017-01-29',8,113),(114,'MASTER PRIME',9999,0,2,'2017-02-26',8,114),(115,'MOBILE 100',100,100,10,'2017-03-03',9,115),(116,'MOBILE 1000',1000,1000,10,'2017-03-04',9,116),(117,'MOBILE SPECIAL',9999,1000,20,'2017-03-12',9,117),(118,'FACILE',1000,0,2,'2017-03-13',10,118),(119,'XVOICE',9999,0,0,'2017-03-28',10,119),(120,'CREAMI',9999,9999,20,'2017-04-01',10,120),(121,'SMS ILLIMITATI',0,9999,0,'2017-04-07',1,121),(122,'SENZA LIMITI VOCE',9999,100,5,'2017-04-08',1,122),(123,'YOUNG INTERNET',1000,0,20,'2017-04-10',1,123),(124,'KIDS TRACKER',1000,0,1,'2017-04-16',2,124),(125,'60+',400,0,2,'2017-04-18',2,125),(126,'SUPER ONE',9999,50,2,'2017-04-22',2,126),(127,'FIVE GO',1000,0,5,'2017-04-25',3,127),(128,'TEN GO',1000,0,10,'2017-04-26',3,128),(129,'SPECIAL TOP',9999,9999,25,'2017-04-27',3,129),(130,'SPECIAL ONE',100,100,1,'2017-05-11',4,130),(131,'SPECIAL SEVEN',100,100,7,'2017-05-19',4,131),(132,'SPECIAL 20',1000,100,20,'2017-05-20',4,132),(133,'SHAKE ',100,1000,5,'2017-05-23',5,133),(134,'SHAKE REMIX',500,1000,10,'2017-05-30',5,134),(135,'SHAKE SUMMER',1000,100,15,'2017-06-11',5,135),(136,'PLAY',1000,0,5,'2017-06-25',6,136),(137,'PLAY ILLIMITATO',1000,0,20,'2017-06-26',6,137),(138,'ALL-IN',1000,100,5,'2017-06-30',6,138),(139,'ALL-IN SPECIAL',9999,100,15,'2017-07-03',7,139),(140,'ALL-IN START',100,100,5,'2017-07-06',7,140),(141,'ALL-IN REMIX',1000,100,5,'2017-07-21',7,141),(142,'MASTER SPECIAL',9999,9999,15,'2017-07-23',8,142),(143,'MASTER X',1000,0,5,'2017-07-23',8,143),(144,'MASTER PRIME',9999,0,2,'2017-07-25',8,144),(145,'MOBILE 100',100,100,10,'2017-07-29',9,145),(146,'MOBILE 1000',1000,1000,10,'2017-08-01',9,146),(147,'MOBILE SPECIAL',9999,1000,20,'2017-08-13',9,147),(148,'FACILE',1000,0,2,'2017-08-16',10,148),(149,'XVOICE',9999,0,0,'2017-08-19',10,149),(150,'CREAMI',9999,9999,20,'2017-08-22',10,150),(151,'SMS ILLIMITATI',0,9999,0,'2017-08-25',1,151),(152,'SENZA LIMITI VOCE',9999,100,5,'2017-09-04',1,152),(153,'YOUNG INTERNET',1000,0,20,'2017-09-09',1,153),(154,'KIDS TRACKER',1000,0,1,'2017-09-12',2,154),(155,'60+',400,0,2,'2017-10-04',2,155),(156,'SUPER ONE',9999,50,2,'2017-10-20',2,156),(157,'FIVE GO',1000,0,5,'2017-10-27',3,157),(158,'TEN GO',1000,0,10,'2017-10-30',3,158),(159,'SPECIAL TOP',9999,9999,25,'2017-11-05',3,159),(160,'SPECIAL ONE',100,100,1,'2017-11-11',4,160),(161,'SPECIAL SEVEN',100,100,7,'2017-11-21',4,161),(162,'SPECIAL 20',1000,100,20,'2017-11-22',4,162),(163,'SHAKE ',100,1000,5,'2017-11-23',5,163),(164,'SHAKE REMIX',500,1000,10,'2017-12-06',5,164),(165,'SHAKE SUMMER',1000,100,15,'2017-12-07',5,165),(166,'PLAY',1000,0,5,'2017-12-12',6,166),(167,'PLAY ILLIMITATO',1000,0,20,'2017-12-26',6,167),(168,'ALL-IN',1000,100,5,'2017-12-29',6,168),(169,'ALL-IN SPECIAL',9999,100,15,'2017-01-02',7,169),(170,'ALL-IN START',100,100,5,'2017-01-02',7,170),(171,'ALL-IN REMIX',1000,100,5,'2017-01-03',7,171),(172,'MASTER SPECIAL',9999,9999,15,'2017-01-03',8,172),(173,'MASTER X',1000,0,5,'2017-01-09',8,173),(174,'MASTER PRIME',9999,0,2,'2017-01-10',8,174),(175,'MOBILE 100',100,100,10,'2017-01-13',9,175),(176,'MOBILE 1000',1000,1000,10,'2017-01-21',9,176),(177,'MOBILE SPECIAL',9999,1000,20,'2017-01-30',9,177),(178,'FACILE',1000,0,2,'2017-01-30',10,178),(179,'XVOICE',9999,0,0,'2017-02-05',10,179),(180,'CREAMI',9999,9999,20,'2017-02-16',10,180),(181,'SMS ILLIMITATI',0,9999,0,'2017-02-17',1,181),(182,'SENZA LIMITI VOCE',9999,100,5,'2017-02-26',1,182),(183,'YOUNG INTERNET',1000,0,20,'2017-03-02',1,183),(184,'KIDS TRACKER',1000,0,1,'2017-03-03',2,184),(185,'60+',400,0,2,'2017-03-05',2,185),(186,'SUPER ONE',9999,50,2,'2017-03-23',2,186),(187,'FIVE GO',1000,0,5,'2017-04-01',3,187),(188,'TEN GO',1000,0,10,'2017-04-13',3,188),(189,'SPECIAL TOP',9999,9999,25,'2017-04-28',3,189),(190,'SPECIAL ONE',100,100,1,'2017-05-09',4,190),(191,'SPECIAL SEVEN',100,100,7,'2017-05-09',4,191),(192,'SPECIAL 20',1000,100,20,'2017-06-02',4,192),(193,'SHAKE ',100,1000,5,'2017-06-08',5,193),(194,'SHAKE REMIX',500,1000,10,'2017-06-13',5,194),(195,'SHAKE SUMMER',1000,100,15,'2017-06-22',5,195),(196,'PLAY',1000,0,5,'2017-06-24',6,196),(197,'PLAY ILLIMITATO',1000,0,20,'2017-07-03',6,197),(198,'ALL-IN',1000,100,5,'2017-07-08',6,198),(199,'ALL-IN SPECIAL',9999,100,15,'2017-07-09',7,199),(200,'ALL-IN START',100,100,5,'2017-07-20',7,200),(201,'ALL-IN REMIX',1000,100,5,'2017-07-24',7,201),(202,'MASTER SPECIAL',9999,9999,15,'2017-08-09',8,202),(203,'MASTER X',1000,0,5,'2017-08-15',8,203),(204,'MASTER PRIME',9999,0,2,'2017-08-18',8,204),(205,'MOBILE 100',100,100,10,'2017-08-22',9,205),(206,'MOBILE 1000',1000,1000,10,'2017-09-14',9,206),(207,'MOBILE SPECIAL',9999,1000,20,'2017-09-26',9,207),(208,'FACILE',1000,0,2,'2017-09-26',10,208),(209,'XVOICE',9999,0,0,'2017-09-28',10,209),(210,'CREAMI',9999,9999,20,'2017-09-29',10,210),(211,'SMS ILLIMITATI',0,9999,0,'2017-10-13',1,211),(212,'SENZA LIMITI VOCE',9999,100,5,'2017-10-27',1,212),(213,'YOUNG INTERNET',1000,0,20,'2017-11-16',1,213),(214,'KIDS TRACKER',1000,0,1,'2017-11-19',2,214),(215,'60+',400,0,2,'2017-11-22',2,215),(216,'SUPER ONE',9999,50,2,'2017-12-26',2,216),(217,'FIVE GO',1000,0,5,'2017-01-01',3,217),(218,'TEN GO',1000,0,10,'2017-01-07',3,218),(219,'SPECIAL TOP',9999,9999,25,'2017-01-07',3,219),(220,'SPECIAL ONE',100,100,1,'2017-01-25',4,220),(221,'SPECIAL SEVEN',100,100,7,'2017-01-28',4,221),(222,'SPECIAL 20',1000,100,20,'2017-01-31',4,222),(223,'SHAKE ',100,1000,5,'2017-02-01',5,223),(224,'SHAKE REMIX',500,1000,10,'2017-02-12',5,224),(225,'SHAKE SUMMER',1000,100,15,'2017-02-13',5,225),(226,'PLAY',1000,0,5,'2017-02-23',6,226),(227,'PLAY ILLIMITATO',1000,0,20,'2017-02-27',6,227),(228,'ALL-IN',1000,100,5,'2017-03-05',6,228),(229,'ALL-IN SPECIAL',9999,100,15,'2017-03-06',7,229),(230,'ALL-IN START',100,100,5,'2017-03-16',7,230),(231,'ALL-IN REMIX',1000,100,5,'2017-03-22',7,231),(232,'MASTER SPECIAL',9999,9999,15,'2017-03-30',8,232),(233,'MASTER X',1000,0,5,'2017-04-01',8,233),(234,'MASTER PRIME',9999,0,2,'2017-04-06',8,234),(235,'MOBILE 100',100,100,10,'2017-04-13',9,235),(236,'MOBILE 1000',1000,1000,10,'2017-04-14',9,236),(237,'MOBILE SPECIAL',9999,1000,20,'2017-04-15',9,237),(238,'FACILE',1000,0,2,'2017-04-27',10,238),(239,'XVOICE',9999,0,0,'2017-05-02',10,239),(240,'CREAMI',9999,9999,20,'2017-05-06',10,240),(241,'SMS ILLIMITATI',0,9999,0,'2017-05-07',1,241),(242,'SENZA LIMITI VOCE',9999,100,5,'2017-05-16',1,242),(243,'YOUNG INTERNET',1000,0,20,'2017-05-22',1,243),(244,'KIDS TRACKER',1000,0,1,'2017-05-30',2,244),(245,'60+',400,0,2,'2017-05-31',2,245),(246,'SUPER ONE',9999,50,2,'2017-06-05',2,246),(247,'FIVE GO',1000,0,5,'2017-06-08',3,247),(248,'TEN GO',1000,0,10,'2017-06-15',3,248),(249,'SPECIAL TOP',9999,9999,25,'2017-06-18',3,249),(250,'SPECIAL ONE',100,100,1,'2017-07-19',4,250),(251,'SPECIAL SEVEN',100,100,7,'2017-07-23',4,251),(252,'SPECIAL 20',1000,100,20,'2017-07-27',4,252),(253,'SHAKE ',100,1000,5,'2017-07-29',5,253),(254,'SHAKE REMIX',500,1000,10,'2017-08-08',5,254),(255,'SHAKE SUMMER',1000,100,15,'2017-08-10',5,255),(256,'PLAY',1000,0,5,'2017-08-19',6,256),(257,'PLAY ILLIMITATO',1000,0,20,'2017-08-20',6,257),(258,'ALL-IN',1000,100,5,'2017-08-22',6,258),(259,'ALL-IN SPECIAL',9999,100,15,'2017-08-29',7,259),(260,'ALL-IN START',100,100,5,'2017-09-05',7,260),(261,'ALL-IN REMIX',1000,100,5,'2017-09-15',7,261),(262,'MASTER SPECIAL',9999,9999,15,'2017-09-24',8,262),(263,'MASTER X',1000,0,5,'2017-10-06',8,263),(264,'MASTER PRIME',9999,0,2,'2017-10-31',8,264),(265,'MOBILE 100',100,100,10,'2017-11-15',9,265),(266,'MOBILE 1000',1000,1000,10,'2017-11-20',9,266),(267,'MOBILE SPECIAL',9999,1000,20,'2017-12-13',9,267),(268,'FACILE',1000,0,2,'2017-12-15',10,268),(269,'XVOICE',9999,0,0,'2017-12-17',10,269),(270,'CREAMI',9999,9999,20,'2017-01-01',10,270),(271,'SMS ILLIMITATI',0,9999,0,'2017-01-04',1,271),(272,'SENZA LIMITI VOCE',9999,100,5,'2017-01-11',1,272),(273,'YOUNG INTERNET',1000,0,20,'2017-01-13',1,273),(274,'KIDS TRACKER',1000,0,1,'2017-01-16',2,274),(275,'60+',400,0,2,'2017-01-24',2,275),(276,'SUPER ONE',9999,50,2,'2017-02-09',2,276),(277,'FIVE GO',1000,0,5,'2017-02-17',3,277),(278,'TEN GO',1000,0,10,'2017-03-18',3,278),(279,'SPECIAL TOP',9999,9999,25,'2017-03-23',3,279),(280,'SPECIAL ONE',100,100,1,'2017-03-30',4,280),(281,'SPECIAL SEVEN',100,100,7,'2017-03-31',4,281),(282,'SPECIAL 20',1000,100,20,'2017-04-01',4,282),(283,'SHAKE ',100,1000,5,'2017-04-02',5,283),(284,'SHAKE REMIX',500,1000,10,'2017-04-16',5,284),(285,'SHAKE SUMMER',1000,100,15,'2017-04-20',5,285),(286,'PLAY',1000,0,5,'2017-05-01',6,286),(287,'PLAY ILLIMITATO',1000,0,20,'2017-05-03',6,287),(288,'ALL-IN',1000,100,5,'2017-05-04',6,288),(289,'ALL-IN SPECIAL',9999,100,15,'2017-05-07',7,289),(290,'ALL-IN START',100,100,5,'2017-06-04',7,290),(291,'ALL-IN REMIX',1000,100,5,'2017-06-08',7,291),(292,'MASTER SPECIAL',9999,9999,15,'2017-06-10',8,292),(293,'MASTER X',1000,0,5,'2017-06-19',8,293),(294,'MASTER PRIME',9999,0,2,'2017-06-20',8,294),(295,'MOBILE 100',100,100,10,'2017-06-25',9,295),(296,'MOBILE 1000',1000,1000,10,'2017-07-03',9,296),(297,'MOBILE SPECIAL',9999,1000,20,'2017-07-04',9,297),(298,'FACILE',1000,0,2,'2017-07-25',10,298),(299,'XVOICE',9999,0,0,'2017-07-29',10,299),(300,'CREAMI',9999,9999,20,'2017-07-31',10,300),(301,'SMS ILLIMITATI',0,9999,0,'2017-08-16',1,301),(302,'SENZA LIMITI VOCE',9999,100,5,'2017-08-18',1,302),(303,'YOUNG INTERNET',1000,0,20,'2017-08-22',1,303),(304,'KIDS TRACKER',1000,0,1,'2017-08-24',2,304),(305,'60+',400,0,2,'2017-08-28',2,305),(306,'SUPER ONE',9999,50,2,'2017-09-14',2,306),(307,'FIVE GO',1000,0,5,'2017-09-24',3,307),(308,'TEN GO',1000,0,10,'2017-09-28',3,308),(309,'SPECIAL TOP',9999,9999,25,'2017-10-08',3,309),(310,'SPECIAL ONE',100,100,1,'2017-10-19',4,310),(311,'SPECIAL SEVEN',100,100,7,'2017-10-25',4,311),(312,'SPECIAL 20',1000,100,20,'2017-11-04',4,312),(313,'SHAKE ',100,1000,5,'2017-11-10',5,313),(314,'SHAKE REMIX',500,1000,10,'2017-12-03',5,314),(315,'SHAKE SUMMER',1000,100,15,'2017-12-18',5,315),(316,'PLAY',1000,0,5,'2017-01-05',6,316),(317,'PLAY ILLIMITATO',1000,0,20,'2017-01-08',6,317),(318,'ALL-IN',1000,100,5,'2017-01-13',6,318),(319,'ALL-IN SPECIAL',9999,100,15,'2017-01-17',7,319),(320,'ALL-IN START',100,100,5,'2017-01-18',7,320),(321,'ALL-IN REMIX',1000,100,5,'2017-02-17',7,321),(322,'MASTER SPECIAL',9999,9999,15,'2017-03-18',8,322),(323,'MASTER X',1000,0,5,'2017-04-10',8,323),(324,'MASTER PRIME',9999,0,2,'2017-04-16',8,324),(325,'MOBILE 100',100,100,10,'2017-05-04',9,325),(326,'MOBILE 1000',1000,1000,10,'2017-05-14',9,326),(327,'MOBILE SPECIAL',9999,1000,20,'2017-05-24',9,327),(328,'FACILE',1000,0,2,'2017-05-25',10,328),(329,'XVOICE',9999,0,0,'2017-05-30',10,329),(330,'CREAMI',9999,9999,20,'2017-06-14',10,330),(331,'SMS ILLIMITATI',0,9999,0,'2017-06-24',1,331),(332,'SENZA LIMITI VOCE',9999,100,5,'2017-06-30',1,332),(333,'YOUNG INTERNET',1000,0,20,'2017-07-13',1,333),(334,'KIDS TRACKER',1000,0,1,'2017-07-21',2,334),(335,'60+',400,0,2,'2017-08-04',2,335),(336,'SUPER ONE',9999,50,2,'2017-09-22',2,336),(337,'FIVE GO',1000,0,5,'2017-09-24',3,337),(338,'TEN GO',1000,0,10,'2017-09-25',3,338),(339,'SPECIAL TOP',9999,9999,25,'2017-09-26',3,339),(340,'SPECIAL ONE',100,100,1,'2017-10-06',4,340),(341,'SPECIAL SEVEN',100,100,7,'2017-10-24',4,341),(342,'SPECIAL 20',1000,100,20,'2017-11-01',4,342),(343,'SHAKE ',100,1000,5,'2017-11-26',5,343),(344,'SHAKE REMIX',500,1000,10,'2017-11-29',5,344),(345,'SHAKE SUMMER',1000,100,15,'2017-12-01',5,345),(346,'PLAY',1000,0,5,'2017-12-11',6,346),(347,'PLAY ILLIMITATO',1000,0,20,'2017-01-05',6,347),(348,'ALL-IN',1000,100,5,'2017-01-07',6,348),(349,'ALL-IN SPECIAL',9999,100,15,'2017-01-11',7,349),(350,'ALL-IN START',100,100,5,'2017-01-14',7,350),(351,'ALL-IN REMIX',1000,100,5,'2017-02-14',7,351),(352,'MASTER SPECIAL',9999,9999,15,'2017-03-18',8,352),(353,'MASTER X',1000,0,5,'2017-03-23',8,353),(354,'MASTER PRIME',9999,0,2,'2017-03-27',8,354),(355,'MOBILE 100',100,100,10,'2017-04-04',9,355),(356,'MOBILE 1000',1000,1000,10,'2017-04-17',9,356),(357,'MOBILE SPECIAL',9999,1000,20,'2017-04-20',9,357),(358,'FACILE',1000,0,2,'2017-04-20',10,358),(359,'XVOICE',9999,0,0,'2017-04-30',10,359),(360,'CREAMI',9999,9999,20,'2017-05-08',10,360),(361,'SMS ILLIMITATI',0,9999,0,'2017-05-31',1,361),(362,'SENZA LIMITI VOCE',9999,100,5,'2017-06-20',1,362),(363,'YOUNG INTERNET',1000,0,20,'2017-06-23',1,363),(364,'KIDS TRACKER',1000,0,1,'2017-07-03',2,364),(365,'60+',400,0,2,'2017-07-05',2,365),(366,'SUPER ONE',9999,50,2,'2017-07-06',2,366),(367,'FIVE GO',1000,0,5,'2017-07-08',3,367),(368,'TEN GO',1000,0,10,'2017-07-08',3,368),(369,'SPECIAL TOP',9999,9999,25,'2017-07-12',3,369),(370,'SPECIAL ONE',100,100,1,'2017-07-15',4,370),(371,'SPECIAL SEVEN',100,100,7,'2017-08-25',4,371),(372,'SPECIAL 20',1000,100,20,'2017-09-30',4,372),(373,'SHAKE ',100,1000,5,'2017-10-07',5,373),(374,'SHAKE REMIX',500,1000,10,'2017-10-08',5,374),(375,'SHAKE SUMMER',1000,100,15,'2017-10-28',5,375),(376,'PLAY',1000,0,5,'2017-11-03',6,376),(377,'PLAY ILLIMITATO',1000,0,20,'2017-11-18',6,377),(378,'ALL-IN',1000,100,5,'2017-11-20',6,378),(379,'ALL-IN SPECIAL',9999,100,15,'2017-12-02',7,379),(380,'ALL-IN START',100,100,5,'2017-12-16',7,380),(381,'ALL-IN REMIX',1000,100,5,'2017-01-18',7,381),(382,'MASTER SPECIAL',9999,9999,15,'2017-01-21',8,382),(383,'MASTER X',1000,0,5,'2017-02-10',8,383),(384,'MASTER PRIME',9999,0,2,'2017-03-04',8,384),(385,'MOBILE 100',100,100,10,'2017-03-09',9,385),(386,'MOBILE 1000',1000,1000,10,'2017-03-25',9,386),(387,'MOBILE SPECIAL',9999,1000,20,'2017-04-11',9,387),(388,'FACILE',1000,0,2,'2017-04-24',10,388),(389,'XVOICE',9999,0,0,'2017-06-12',10,389),(390,'CREAMI',9999,9999,20,'2017-07-12',10,390),(391,'SMS ILLIMITATI',0,9999,0,'2017-07-26',1,391),(392,'SENZA LIMITI VOCE',9999,100,5,'2017-07-31',1,392),(393,'YOUNG INTERNET',1000,0,20,'2017-08-29',1,393),(394,'KIDS TRACKER',1000,0,1,'2017-09-02',2,394),(395,'60+',400,0,2,'2017-09-25',2,395),(396,'SUPER ONE',9999,50,2,'2017-09-27',2,396),(397,'FIVE GO',1000,0,5,'2017-09-28',3,397),(398,'TEN GO',1000,0,10,'2017-10-02',3,398),(399,'SPECIAL TOP',9999,9999,25,'2017-10-04',3,399),(400,'SPECIAL ONE',100,100,1,'2017-10-10',4,400),(401,'SPECIAL SEVEN',100,100,7,'2017-11-03',4,401),(402,'SPECIAL 20',1000,100,20,'2017-11-22',4,402),(403,'SHAKE ',100,1000,5,'2017-11-24',5,403),(404,'SHAKE REMIX',500,1000,10,'2017-11-25',5,404),(405,'SHAKE SUMMER',1000,100,15,'2017-11-30',5,405),(406,'PLAY',1000,0,5,'2017-01-07',6,406),(407,'PLAY ILLIMITATO',1000,0,20,'2017-01-22',6,407),(408,'ALL-IN',1000,100,5,'2017-02-08',6,408),(409,'ALL-IN SPECIAL',9999,100,15,'2017-03-09',7,409),(410,'ALL-IN START',100,100,5,'2017-03-17',7,410),(411,'ALL-IN REMIX',1000,100,5,'2017-03-23',7,411),(412,'MASTER SPECIAL',9999,9999,15,'2017-05-01',8,412),(413,'MASTER X',1000,0,5,'2017-06-01',8,413),(414,'MASTER PRIME',9999,0,2,'2017-06-02',8,414),(415,'MOBILE 100',100,100,10,'2017-06-22',9,415),(416,'MOBILE 1000',1000,1000,10,'2017-06-30',9,416),(417,'MOBILE SPECIAL',9999,1000,20,'2017-07-06',9,417),(418,'FACILE',1000,0,2,'2017-07-08',10,418),(419,'XVOICE',9999,0,0,'2017-07-25',10,419),(420,'CREAMI',9999,9999,20,'2017-08-16',10,420),(421,'SMS ILLIMITATI',0,9999,0,'2017-08-22',1,421),(422,'SENZA LIMITI VOCE',9999,100,5,'2017-08-25',1,422),(423,'YOUNG INTERNET',1000,0,20,'2017-08-28',1,423),(424,'KIDS TRACKER',1000,0,1,'2017-09-07',2,424),(425,'60+',400,0,2,'2017-09-22',2,425),(426,'SUPER ONE',9999,50,2,'2017-10-11',2,426),(427,'FIVE GO',1000,0,5,'2017-10-18',3,427),(428,'TEN GO',1000,0,10,'2017-11-20',3,428),(429,'SPECIAL TOP',9999,9999,25,'2017-12-11',3,429),(430,'SPECIAL ONE',100,100,1,'2017-12-15',4,430),(431,'SPECIAL SEVEN',100,100,7,'2017-01-12',4,431),(432,'SPECIAL 20',1000,100,20,'2017-02-21',4,432),(433,'SHAKE ',100,1000,5,'2017-03-14',5,433),(434,'SHAKE REMIX',500,1000,10,'2017-05-02',5,434),(435,'SHAKE SUMMER',1000,100,15,'2017-05-23',5,435),(436,'PLAY',1000,0,5,'2017-08-03',6,436),(437,'PLAY ILLIMITATO',1000,0,20,'2017-08-15',6,437),(438,'ALL-IN',1000,100,5,'2017-09-17',6,438),(439,'ALL-IN SPECIAL',9999,100,15,'2017-09-30',7,439),(440,'ALL-IN START',100,100,5,'2017-10-02',7,440),(441,'ALL-IN REMIX',1000,100,5,'2017-10-07',7,441),(442,'MASTER SPECIAL',9999,9999,15,'2017-10-15',8,442),(443,'MASTER X',1000,0,5,'2017-12-02',8,443),(444,'MASTER PRIME',9999,0,2,'2017-12-03',8,444),(445,'MOBILE 100',100,100,10,'2017-02-28',9,445),(446,'MOBILE 1000',1000,1000,10,'2017-03-01',9,446),(447,'MOBILE SPECIAL',9999,1000,20,'2017-03-03',9,447),(448,'FACILE',1000,0,2,'2017-03-10',10,448),(449,'XVOICE',9999,0,0,'2017-03-26',10,449),(450,'CREAMI',9999,9999,20,'2017-05-29',10,450),(451,'SMS ILLIMITATI',0,9999,0,'2017-08-06',1,451),(452,'SENZA LIMITI VOCE',9999,100,5,'2017-09-23',1,452),(453,'YOUNG INTERNET',1000,0,20,'2017-09-30',1,453),(454,'KIDS TRACKER',1000,0,1,'2017-12-16',2,454),(455,'60+',400,0,2,'2017-01-11',2,455),(456,'SUPER ONE',9999,50,2,'2017-03-06',2,456),(457,'FIVE GO',1000,0,5,'2017-03-15',3,457),(458,'TEN GO',1000,0,10,'2017-03-24',3,458),(459,'SPECIAL TOP',9999,9999,25,'2017-04-18',3,459),(460,'SPECIAL ONE',100,100,1,'2017-05-12',4,460),(461,'SPECIAL SEVEN',100,100,7,'2017-07-18',4,461),(462,'SPECIAL 20',1000,100,20,'2017-08-01',4,462),(463,'SHAKE ',100,1000,5,'2017-09-22',5,463),(464,'SHAKE REMIX',500,1000,10,'2017-09-24',5,464),(465,'SHAKE SUMMER',1000,100,15,'2017-12-08',5,465),(466,'PLAY',1000,0,5,'2017-12-18',6,466),(467,'PLAY ILLIMITATO',1000,0,20,'2017-02-23',6,467),(468,'ALL-IN',1000,100,5,'2017-04-21',6,468),(469,'ALL-IN SPECIAL',9999,100,15,'2017-05-15',7,469),(470,'ALL-IN START',100,100,5,'2017-05-27',7,470),(471,'ALL-IN REMIX',1000,100,5,'2017-05-27',7,471),(472,'MASTER SPECIAL',9999,9999,15,'2017-06-01',8,472),(473,'MASTER X',1000,0,5,'2017-06-29',8,473),(474,'MASTER PRIME',9999,0,2,'2017-07-31',8,474),(475,'MOBILE 100',100,100,10,'2017-08-24',9,475),(476,'MOBILE 1000',1000,1000,10,'2017-08-31',9,476),(477,'MOBILE SPECIAL',9999,1000,20,'2017-01-03',9,477),(478,'FACILE',1000,0,2,'2017-05-13',10,478),(479,'XVOICE',9999,0,0,'2017-09-05',10,479),(480,'CREAMI',9999,9999,20,'2017-10-05',10,480),(481,'SMS ILLIMITATI',0,9999,0,'2017-01-16',1,481),(482,'SENZA LIMITI VOCE',9999,100,5,'2017-03-19',1,482),(483,'YOUNG INTERNET',1000,0,20,'2017-03-25',1,483),(484,'KIDS TRACKER',1000,0,1,'2017-04-19',2,484),(485,'60+',400,0,2,'2017-05-27',2,485),(486,'SUPER ONE',9999,50,2,'2017-10-15',2,486),(487,'FIVE GO',1000,0,5,'2017-05-07',3,487),(488,'TEN GO',1000,0,10,'2017-07-11',3,488),(489,'SPECIAL TOP',9999,9999,25,'2017-02-23',3,489),(490,'SPECIAL ONE',100,100,1,'2017-05-13',4,490),(491,'SPECIAL SEVEN',100,100,7,'2017-06-19',4,491),(492,'SPECIAL 20',1000,100,20,'2017-05-19',4,492),(493,'SHAKE ',100,1000,5,'2017-06-28',5,493),(494,'SHAKE REMIX',500,1000,10,'2017-03-10',5,494),(495,'SHAKE SUMMER',1000,100,15,'2017-07-27',5,495),(496,'PLAY',1000,0,5,'2017-11-10',6,496),(497,'PLAY ILLIMITATO',1000,0,20,'2017-09-24',6,497),(498,'ALL-IN',1000,100,5,'2017-06-14',6,498),(499,'ALL-IN SPECIAL',9999,100,15,'2017-01-03',7,499),(500,'ALL-IN START',100,100,5,'2017-03-17',7,500),(501,'ALL-IN REMIX',1000,100,5,'2017-03-23',7,501),(502,'MASTER SPECIAL',9999,9999,15,'2017-05-01',8,502),(503,'MASTER X',1000,0,5,'2017-06-01',8,503),(504,'MASTER PRIME',9999,0,2,'2017-06-02',8,504),(505,'MOBILE 100',100,100,10,'2017-06-22',9,505),(506,'MOBILE 1000',1000,1000,10,'2017-06-30',9,506),(507,'MOBILE SPECIAL',9999,1000,20,'2017-07-06',9,507),(508,'FACILE',1000,0,2,'2017-07-08',10,508),(509,'XVOICE',9999,0,0,'2017-07-25',10,509),(510,'CREAMI',9999,9999,20,'2017-08-16',10,510),(511,'SMS ILLIMITATI',0,9999,0,'2017-08-22',1,511),(512,'SENZA LIMITI VOCE',9999,100,5,'2017-08-25',1,512),(513,'YOUNG INTERNET',1000,0,20,'2017-08-28',1,513),(514,'KIDS TRACKER',1000,0,1,'2017-09-07',2,514),(515,'60+',400,0,2,'2017-09-22',2,515),(516,'SUPER ONE',9999,50,2,'2017-10-11',2,516),(517,'FIVE GO',1000,0,5,'2017-10-18',3,517),(518,'TEN GO',1000,0,10,'2017-11-20',3,518),(519,'SPECIAL TOP',9999,9999,25,'2017-12-11',3,519),(520,'SPECIAL ONE',100,100,1,'2017-12-15',4,520),(521,'SPECIAL SEVEN',100,100,7,'2017-01-12',4,521),(522,'SPECIAL 20',1000,100,20,'2017-02-21',4,522),(523,'SHAKE ',100,1000,5,'2017-03-14',5,523),(524,'SHAKE REMIX',500,1000,10,'2017-05-02',5,524),(525,'SHAKE SUMMER',1000,100,15,'2017-05-23',5,525),(526,'PLAY',1000,0,5,'2017-08-03',6,526),(527,'PLAY ILLIMITATO',1000,0,20,'2017-08-15',6,527),(528,'ALL-IN',1000,100,5,'2017-09-17',6,528),(529,'ALL-IN SPECIAL',9999,100,15,'2017-09-30',7,529),(530,'ALL-IN START',100,100,5,'2017-10-02',7,530),(531,'ALL-IN REMIX',1000,100,5,'2017-10-07',7,531),(532,'MASTER SPECIAL',9999,9999,15,'2017-10-15',8,532),(533,'MASTER X',1000,0,5,'2017-12-02',8,533),(534,'MASTER PRIME',9999,0,2,'2017-12-03',8,534),(535,'MOBILE 100',100,100,10,'2017-02-28',9,535),(536,'MOBILE 1000',1000,1000,10,'2017-03-01',9,536),(537,'MOBILE SPECIAL',9999,1000,20,'2017-03-03',9,537),(538,'FACILE',1000,0,2,'2017-03-10',10,538),(539,'XVOICE',9999,0,0,'2017-03-26',10,539),(540,'CREAMI',9999,9999,20,'2017-05-29',10,540),(541,'SMS ILLIMITATI',0,9999,0,'2017-08-06',1,541),(542,'SENZA LIMITI VOCE',9999,100,5,'2017-09-23',1,542),(543,'YOUNG INTERNET',1000,0,20,'2017-09-30',1,543),(544,'KIDS TRACKER',1000,0,1,'2017-12-16',2,544),(545,'60+',400,0,2,'2017-01-11',2,545),(546,'SUPER ONE',9999,50,2,'2017-03-06',2,546),(547,'PLAY',1000,0,5,'2017-03-15',3,547),(548,'TEN GO',1000,0,10,'2017-05-19',3,40),(549,'SPECIAL TOP',9999,9999,25,'2017-05-20',3,41),(550,'SPECIAL ONE',100,100,1,'2017-05-23',4,42),(551,'SPECIAL SEVEN',100,100,7,'2017-05-30',4,43),(552,'SPECIAL 20',1000,100,20,'2017-06-11',4,44),(553,'SHAKE ',100,1000,5,'2017-06-25',5,45),(554,'SHAKE REMIX',500,1000,10,'2017-06-26',5,46),(555,'SHAKE SUMMER',1000,100,15,'2017-06-30',5,47),(556,'PLAY',1000,0,5,'2017-07-03',6,48),(557,'PLAY ILLIMITATO',1000,0,20,'2017-07-06',6,49),(558,'ALL-IN',1000,100,5,'2017-07-21',6,50),(559,'ALL-IN SPECIAL',9999,100,15,'2017-07-23',7,51),(560,'ALL-IN START',100,100,5,'2017-07-23',7,52),(561,'ALL-IN REMIX',1000,100,5,'2017-07-25',7,53),(562,'MASTER SPECIAL',9999,9999,15,'2017-07-29',8,54),(563,'MASTER X',1000,0,5,'2017-08-01',8,55),(564,'MASTER PRIME',9999,0,2,'2017-08-13',8,56),(565,'MOBILE 100',100,100,10,'2017-08-16',9,57),(566,'MOBILE 1000',1000,1000,10,'2017-08-19',9,58),(567,'MOBILE SPECIAL',9999,1000,20,'2017-08-22',9,59),(568,'FACILE',1000,0,2,'2017-08-25',10,60),(569,'XVOICE',9999,0,0,'2017-09-04',10,61),(570,'CREAMI',9999,9999,20,'2017-09-09',10,62),(571,'PLAY',1000,0,5,'2017-02-09',6,106),(572,'ALL-IN',1000,100,5,'2017-02-01',6,166),(573,'PLAY ILLIMITATO',1000,0,20,'2017-06-11',6,227),(574,'PLAY ILLIMITATO',1000,0,20,'2017-07-07',6,16),(575,'ALL-IN',1000,100,5,'2017-03-27',6,377),(579,'ALL-IN',1000,100,5,'2018-02-09',6,558);
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

-- Dump completed on 2018-02-09 14:11:40

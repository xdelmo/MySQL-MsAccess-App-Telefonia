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
-- Table structure for table `clienti_aziendali`
--

DROP TABLE IF EXISTS `clienti_aziendali`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clienti_aziendali` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_Cliente` varchar(20) NOT NULL,
  `Cognome` varchar(20) NOT NULL,
  `Data_Nascita` date NOT NULL,
  `P_IVA` int(12) NOT NULL,
  `ID_Cliente` int(12) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `clienti_aziendali_ibfk_1` (`ID_Cliente`),
  CONSTRAINT `clienti_aziendali_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `clienti` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clienti_aziendali`
--

LOCK TABLES `clienti_aziendali` WRITE;
/*!40000 ALTER TABLE `clienti_aziendali` DISABLE KEYS */;
INSERT INTO `clienti_aziendali` VALUES (1,'ALBERTO','ALBANI','1954-02-17',675368,1),(2,'MARILISA','AMOROSI','1953-11-05',675369,2),(3,'ANTONIO','ANTICO','1951-12-28',675370,3),(4,'LINO','ANTONINI','1960-03-23',675371,4),(5,'MAURIZIO','ASSETTA','1955-09-15',675372,5),(6,'ANTONIO','ASTOLFI','1959-06-12',675373,6),(7,'MASSIMO','BASTI','1953-09-04',675374,7),(8,'ANGELO GEREMIA','BLASETTI','1960-03-17',675375,8),(9,'STEFANO','BOCCABELLA','1953-11-21',675376,9),(10,'ROSA','BORGIA','1949-10-05',675377,10),(11,'ROBERTO','BUZZELLI','1955-02-13',675378,11),(12,'GIUSEPPE','CALVISI','1952-12-03',675379,12),(13,'ANTONIO','CAPONETTI','1956-05-01',675380,13),(14,'CLAUDIO DONADIO','CAPORALE','1958-06-20',675381,14),(15,'ANTONIO','CAPORRELLA','1964-05-27',675382,15),(16,'DONATELLA','CARACENI','1952-07-03',675383,16),(17,'FULVIO','CARLUCCIO','1953-12-26',675384,17),(18,'LINO','CAVASINNI','1953-09-12',675385,18),(19,'VINCENZO','CERASA','1952-06-18',675386,19),(20,'RENATO','CERBO','1950-01-03',675387,20),(21,'EUGENIO','CIACCO','1956-07-31',675388,21),(22,'SABRINA','CICOGNA','1954-11-19',675389,22),(23,'MARIAROSARIA','CILLO','1956-01-24',675390,23),(24,'GIUSEPPE','CINALLI','1958-07-12',675391,24),(25,'ROBERTO','CINELLI','1954-05-09',675392,25),(26,'ANNA RITA','CITARELLA','1967-07-11',675393,26),(27,'DIEGO','COLACCIO','1952-07-27',675394,27),(28,'GIUSEPPE','COLICIGNO','1958-07-05',675395,28),(29,'VINCENZO','COMUNE','1958-11-03',675396,29),(30,'GIUSEPPE','CONTE','1952-06-30',675397,30),(31,'MICHELE','COPPOLA','1955-10-31',675398,31),(32,'GUIDO','CORBISIERO','1972-09-24',675399,32),(33,'FRANCESCO','CORCIONE','1963-01-11',675400,33),(34,'ANTONIO','CORCIONE','1950-03-07',675401,34),(35,'GIULIO','CORRIVETTI','1952-03-18',675402,35),(36,'MARIA','CORVINO','1950-09-05',675403,36),(37,'MASSIMO','COSTA','1959-11-30',675404,37),(38,'FRANCESCO MARIA','CRAFA','1953-03-03',675405,38),(39,'VINCENZO','CRESCENZO','1952-06-30',675406,39),(40,'ADRIANO','CRISTINZIANO','1954-01-02',675407,40),(41,'FELICIANO','CROVELLA','1949-06-24',675408,41),(42,'ARTURO','CUOMO','1957-02-17',675409,42),(43,'CARLO','CURCIO','1951-06-26',675410,43),(44,'MARIA LAURA','CUZZOLINO','1953-05-30',675411,44),(45,'TERESA','D\'AGOSTINO','1952-07-28',675412,45),(46,'VINCENZO','D\'AGOSTINO','1954-07-03',675413,46),(47,'LIVIO','D\'ALESSANDRO','1954-09-29',675414,47),(48,'ROBERTO','D\'ALESSIO','1959-07-12',675415,48),(49,'PASQUALE ANTONIO','D\'AMATO','1957-11-29',675416,49),(50,'VINCENZO','D\'AMATO','1957-10-24',675417,50),(51,'RAFFAELE','D\'AMATO','1956-04-20',675418,51),(52,'SALVATORE','D\'AMBROSIO','1952-12-17',675419,52),(53,'MAURIZIO','D\'AMORA','1953-08-25',675420,53),(54,'SABATINA','D\'ANDREA','1952-06-27',675421,54),(55,'MASSIMO','D\'ANDREA','1956-02-17',675422,55),(56,'GIOVANNI','D\'ANGELO','1960-07-25',675423,56),(57,'ADOLFO','D\'ERRICO GALLIPOLI','1956-04-02',675424,57),(58,'MICHELE','D\'ORAZIO','1953-01-13',675425,58),(59,'CAMILLO','DANIELE','1956-04-16',675426,59),(60,'CARMELA','DE CESARE','1954-02-16',675427,60),(61,'LUCIA','DE CICCO','1960-02-08',675428,61),(62,'RAFFAELE','DE FALCO','1951-11-01',675429,62),(63,'FABRIZIO ANTONIO','DE FALCO','1955-06-08',675430,63),(64,'MICHELINO','DE LAURENTIIS','1961-08-03',675431,64),(65,'GIUSTINO','DE LUCA','1953-11-11',675432,65),(66,'PANTALEO','DE LUCA','1953-03-13',675433,66),(67,'ANTONIO','DE LUNA','1958-10-07',675434,67),(68,'ROCCO','DE LUNA','1960-12-15',675435,68),(69,'GAETANO','DE MAIO','1960-11-20',675436,69),(70,'PASQUALINO','DE MARINIS','1959-01-21',675437,70),(71,'PIERO','DE MASI','1956-01-11',675438,71),(72,'ANIELLO','DE NICOLA','1953-03-04',675439,72),(73,'MAURIZIO','DE PALMA','1958-11-20',675440,73),(74,'LUIGI','DE PAOLA','1954-08-09',675441,74),(75,'GIOVANNI CARLO','DE RENZI','1958-01-11',675442,75),(76,'ANTONIO','DE ROSA','1953-10-27',675443,76),(77,'PARIDE','DE ROSA','1954-09-28',675444,77),(78,'VINCENZO','DE ROSA','1953-01-28',675445,78),(79,'PASQUALE','DE ROSA','1952-06-02',675446,79),(80,'DONATO','DE SANTIS','1962-05-29',675447,80),(81,'GIORGIO','DE STEFANO','1954-06-13',675448,81),(82,'SALVATORE','DE STEFANO','1950-10-12',675449,82),(83,'ANDREO ANTONIO','DE STEFANO','1954-09-26',675450,83),(84,'GENNARO','DEL FRANCO','1955-03-30',675451,84),(85,'BRUNO','DEL PRATO','1955-06-15',675452,85),(86,'SALVATORE','DEL PRETE','1954-10-13',675453,86),(87,'RAFFAELE','DELL\'AVERSANO','1958-12-16',675454,87),(88,'PAOLO','DELRIO','1958-04-30',675455,88),(89,'LUCIA','DI COSTANZO','1951-02-19',675456,89),(90,'GIUSEPPE','DI FLURI','1954-02-26',675457,90),(91,'MICHELE','DI GENIO','1961-05-23',675458,91),(92,'DAVIDE','DI GENNARO','1950-09-16',675459,92),(93,'FRANCESCO','DI GREZIA','1953-09-09',675460,93),(94,'BIAGIO RAFFAELE','DI IORIO','1955-02-27',675461,94),(95,'GIOVANNI','DI LAURO','1956-08-18',675462,95),(96,'GIORGIO','DI LAURO','1949-12-25',675463,96),(97,'EMILIO','DI LORENZO','1954-01-03',675464,97),(98,'LUIGI','DI LORENZO','1952-01-19',675465,98),(99,'BRUNO','DI MAGGIO','1959-10-10',675466,99),(100,'MARINA','DI MATTEO','1954-02-05',675467,100),(101,'DELIA','DI MONACO','1956-06-20',675468,101),(102,'WALTER','DI MUNZIO','1955-04-06',675469,102),(103,'WALTER','DI MUNZIO','1953-10-20',675470,103),(104,'CLARA','DI NICOLA','1954-07-24',675471,104),(105,'GIOVANNI','DI SANTO','1962-03-01',675472,105),(106,'MARIA GIOVANNA','DI SEVO','1956-07-29',675473,106),(107,'ARTURO','DI SPIRITO','1953-03-12',675474,107),(108,'ANTONINO','DI TORO','1952-02-21',675475,108),(109,'GIUSEPPE','DI VITA','1952-02-07',675476,109),(110,'FRANCESCO','DIURNO','1955-08-22',675477,110),(111,'VITTORIA','DONOFRIO','1954-04-28',675478,111),(112,'AURELIO','ELBERTI','1951-09-03',675479,112),(113,'ALFONSO','ERRA','1956-08-24',675480,113),(114,'MARCELLINO','ESCALONA','1954-07-08',675481,114),(115,'LUIGI','ESPOSITO','1953-12-06',675482,115),(116,'VINCENZO','ESPOSITO','1955-03-06',675483,116),(117,'SABATO','ESPOSITO','1961-10-02',675484,117),(119,'UMBERTO','ESPOSITO','1951-09-22',675486,119),(120,'FULVIO','ESPOSITO','1950-12-08',675487,120),(121,'ANNA','ESPOSITO','1955-06-05',675488,121),(122,'ANTONIO','FASCIONE','1953-01-29',675489,122),(123,'LUCIANO','FATTORE','1952-06-16',675490,123),(124,'PAOLO','FEDELINI','1955-04-27',675491,124),(125,'MICHELE','FELEPPA','1956-05-03',675492,125),(126,'PASQUALE','FEMIANO','1957-12-01',675493,126),(127,'GIUSEPPA','FERNANDES','1964-05-15',675494,127),(128,'GABRIELE','FERRANTE','1960-01-22',675495,128),(129,'FELICETTO','FERRARA','1958-08-25',675496,129),(130,'MARIA ANTONIETTA R.','FERRARA','1954-09-14',675497,130),(131,'SERGIO','FERRARO','1951-06-10',675498,131),(132,'FRANCESCO','FIORE','1955-05-31',675499,132),(133,'CIRO','FLORIO','1963-03-15',675500,133),(134,'LUIGI','FOGGIA','1953-07-06',675501,134),(135,'MARIO','FORLENZA','1951-02-17',675502,135),(136,'ALFONSO','FORTUNATO','1952-04-02',675503,136),(137,'FIORENTINO','FRAGANZA','1954-04-13',675504,137),(138,'VITTORIO','FRANCHI','1953-04-27',675505,138),(139,'ANGELO','FRIERI','1951-10-12',675506,139),(140,'FERDINANDO','FRIGERI','1958-01-07',675507,140),(141,'SALVATORE','FRULLONE','1954-03-03',675508,141),(142,'ANNAMARIA','FUCILE','1952-09-28',675509,142),(143,'BARTOLO','FUSCO','1959-03-25',675510,143),(144,'MARIANO','FUSCO','1957-01-17',675511,144),(145,'GIUSEPPE','GALASSO','1961-09-30',675512,145),(146,'LUIGI','GALASSO','1966-05-27',675513,146),(147,'MARIA','GALDI','1953-01-18',675514,147),(148,'OTELLO','GALLO','1952-04-28',675515,148),(149,'ANNA','GARGIULO','1954-08-15',675516,149),(150,'MIRIAM','GARGIULO','1951-02-07',675517,150),(151,'ANNA MARIA','GIANGREGORIO','1953-11-23',675518,151),(152,'LUCIANA','GIANNELLI','1965-10-05',675519,152),(153,'LUIGI MARIA','GIANNETTI','1956-01-01',675520,153),(154,'PASQUALE','GIORDANO','1953-08-22',675521,154),(155,'DOMENICO','GIORGIANO','1951-06-01',675522,155),(156,'SABRINA','GIOVINE','1960-09-07',675523,156),(157,'TOMMASO','GIRASOLE','1950-10-01',675524,157),(158,'GIUSEPPINA','GIUGLIANO','1958-07-08',675525,158),(159,'ROBERTO','GIULIO','1957-05-30',675526,159),(160,'DARIO','GOLIA','1955-05-07',675527,160),(161,'ELISABETTA','GRANATA','1957-09-25',675528,161),(162,'GIOVANNI','GRANDE','1957-01-18',675529,162),(163,'PASQUALINA','GRASSO','1952-07-24',675530,163),(164,'STEFANO','GREGGI','1955-03-22',675531,164),(165,'GIOVANNI','GREGORIO','1951-10-25',675532,165),(166,'CESARE','GRIDELLI','1964-07-31',675533,166),(167,'MANLIO','GRIMALDI','1953-07-23',675534,167),(168,'PASQUALE','GUARIGLIA','1951-07-01',675535,168),(169,'CARMINE','GUARINO','1958-12-02',675536,169),(170,'FRANCESCO','GUERRIERO','1952-09-12',675537,170),(171,'PASQUALE','GUIDA','1955-03-05',675538,171),(172,'CESARE','GUIDA','1958-09-30',675539,172),(173,'ENRICO','GUIDA','1956-06-25',675540,173),(174,'CRISTIANO','HUSCHER','1957-06-24',675541,174),(175,'GIOVANNI','IACONO','1956-06-04',675542,175),(176,'ALESSANDRO','IACONO','1956-03-31',675543,176),(177,'LEOPOLDO','IANNELLI','1956-07-03',675544,177),(178,'ALBERTA','IANNICELLI','1956-04-01',675545,178),(179,'GIOVANNI PIETRO','IANNIELLO','1958-07-03',675546,179),(180,'ADRIANA','IANNONE','1961-02-21',675547,180),(181,'TOMMASO','IANNOTTI','1952-10-25',675548,181),(182,'ARCANGELO','IANNUZZI','1960-05-01',675549,182),(183,'FIORAVANTE','IEVOLI','1958-01-14',675550,183),(184,'ALFONSO','ILLIANO','1955-09-05',675551,184),(185,'ROSARIO MARCO','INFASCELLI','1953-04-25',675552,185),(186,'FLAVIA','INGALA','1960-06-30',675553,186),(187,'FRANCO','IONNA','1953-04-26',675554,187),(188,'GIOVANNI','IOVIENO','1953-05-20',675555,188),(189,'REGINALDO','IOVINE','1957-09-24',675556,189),(190,'AGNESE','IOVINO','1953-12-12',675557,190),(191,'VINCENZO','LANDOLFI','1953-07-23',675558,191),(192,'SALVATORE','LANGELLA','1953-04-01',675559,192),(193,'ROSARIO','LANZETTA','1963-03-06',675560,193),(194,'SECONDO','LASTORIA','1958-04-20',675561,194),(195,'CARLO ANTONIO','LEONE','1952-08-02',675562,195),(196,'ALDO','LIGUORI','1959-09-28',675563,196),(197,'CARMINE','LISI','1957-11-26',675564,197),(198,'CARMELO','LOMBARDI','1958-05-08',675565,198),(199,'ADAMO','MAIESE','1956-01-04',675566,199),(200,'COSIMO','MAIORINO','1954-03-23',675567,200);
/*!40000 ALTER TABLE `clienti_aziendali` ENABLE KEYS */;
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

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
-- Temporary view structure for view `privati`
--

DROP TABLE IF EXISTS `privati`;
/*!50001 DROP VIEW IF EXISTS `privati`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `privati` AS SELECT 
 1 AS `ID`,
 1 AS `Data_Nascita`,
 1 AS `Nome_Cliente`,
 1 AS `Cognome`,
 1 AS `ID_Cliente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aziendali`
--

DROP TABLE IF EXISTS `aziendali`;
/*!50001 DROP VIEW IF EXISTS `aziendali`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aziendali` AS SELECT 
 1 AS `ID`,
 1 AS `Data_Nascita`,
 1 AS `Nome_Cliente`,
 1 AS `Cognome`,
 1 AS `P_IVA`,
 1 AS `ID_Cliente`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `privati`
--

/*!50001 DROP VIEW IF EXISTS `privati`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `privati` AS select `p`.`Nome_Cliente` AS `ID`,`p`.`Cognome` AS `Data_Nascita`,`p`.`Data_Nascita` AS `Nome_Cliente`,`p`.`ID_Cliente` AS `Cognome`,`c`.`ID` AS `ID_Cliente` from (`clienti_privati` `p` join `clienti` `c`) where (`p`.`ID_Cliente` = `c`.`ID`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aziendali`
--

/*!50001 DROP VIEW IF EXISTS `aziendali`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aziendali` AS select `a`.`Nome_Cliente` AS `ID`,`a`.`Cognome` AS `Data_Nascita`,`a`.`Data_Nascita` AS `Nome_Cliente`,`a`.`P_IVA` AS `Cognome`,`a`.`ID_Cliente` AS `P_IVA`,`c`.`ID` AS `ID_Cliente` from (`clienti_aziendali` `a` join `clienti` `c`) where (`a`.`ID_Cliente` = `c`.`ID`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-31 10:45:50

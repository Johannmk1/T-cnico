CREATE DATABASE  IF NOT EXISTS `sa1` /*!40100 DEFAULT CHARACTER SET armscii8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sa1`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: sa1
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `arbitragem`
--

DROP TABLE IF EXISTS `arbitragem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arbitragem` (
  `idarbitro` int NOT NULL,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idarbitro`),
  UNIQUE KEY `idarbitragem_UNIQUE` (`idarbitro`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arbitragem`
--

LOCK TABLES `arbitragem` WRITE;
/*!40000 ALTER TABLE `arbitragem` DISABLE KEYS */;
INSERT INTO `arbitragem` VALUES (1,'Jorge'),(2,'Matheus'),(3,'Morgana'),(4,'ana'),(5,'Flavio');
/*!40000 ALTER TABLE `arbitragem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copa`
--

DROP TABLE IF EXISTS `copa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `copa` (
  `ano` int NOT NULL,
  `vencedor` varchar(45) NOT NULL,
  `onde ocorreu` varchar(20) NOT NULL,
  PRIMARY KEY (`ano`),
  UNIQUE KEY `ano_UNIQUE` (`ano`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copa`
--

LOCK TABLES `copa` WRITE;
/*!40000 ALTER TABLE `copa` DISABLE KEYS */;
/*!40000 ALTER TABLE `copa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadio`
--

DROP TABLE IF EXISTS `estadio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadio` (
  `idestadio` int NOT NULL,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idestadio`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadio`
--

LOCK TABLES `estadio` WRITE;
/*!40000 ALTER TABLE `estadio` DISABLE KEYS */;
INSERT INTO `estadio` VALUES (1,'Al Thumama'),(2,'Al Janoub'),(3,'Al Bayt'),(4,'Ahmad bin Ali'),(5,'974');
/*!40000 ALTER TABLE `estadio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fases_tabela`
--

DROP TABLE IF EXISTS `fases_tabela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fases_tabela` (
  `fases` varchar(45) NOT NULL,
  `partidas_jogadas` int NOT NULL,
  `gol_marcados` int NOT NULL,
  `time_maior_media_gol` int NOT NULL,
  `quant_gol_feito_time` int NOT NULL,
  PRIMARY KEY (`fases`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fases_tabela`
--

LOCK TABLES `fases_tabela` WRITE;
/*!40000 ALTER TABLE `fases_tabela` DISABLE KEYS */;
INSERT INTO `fases_tabela` VALUES ('final',1,5,1,3),('oitavas',2,7,3,4),('quartas',4,15,7,5),('seme',2,4,1,2);
/*!40000 ALTER TABLE `fases_tabela` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogadores`
--

DROP TABLE IF EXISTS `jogadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogadores` (
  `id_jogador` int NOT NULL,
  `nome` varchar(45) NOT NULL,
  `status` varchar(1) NOT NULL,
  `cartoes_aplicados` int NOT NULL,
  `time` varchar(45) NOT NULL,
  `substituicoes` int NOT NULL,
  `falta_cometida` int NOT NULL,
  `falta_sofrida` int NOT NULL,
  PRIMARY KEY (`id_jogador`),
  UNIQUE KEY `id_jogador_UNIQUE` (`id_jogador`),
  KEY `time` (`time`),
  CONSTRAINT `jogadores_ibfk_1` FOREIGN KEY (`time`) REFERENCES `time` (`idtime`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogadores`
--

LOCK TABLES `jogadores` WRITE;
/*!40000 ALTER TABLE `jogadores` DISABLE KEYS */;
INSERT INTO `jogadores` VALUES (1,'Lee','t',0,'01',0,0,0),(2,'LeBlanc','t',0,'01',0,0,0),(3,'Rodrigues','t',0,'01',0,0,0),(4,'Lewis','t',0,'01',0,0,0),(5,'Ferri','t',0,'01',0,0,0),(6,'Santana','t',0,'01',0,0,0),(7,'Castro','t',0,'10',0,0,0),(8,'Ribeiro','t',0,'01',0,0,0),(9,'Agostini','t',0,'01',0,0,0),(10,'Antonelli','t',0,'01',0,0,0),(11,'Campbell','t',0,'02',0,0,0),(12,'Stewart','t',0,'02',0,0,0),(13,'Bennett','t',0,'02',0,0,0),(14,'Roux','t',0,'02',0,0,0),(15,'Chevalier','t',0,'02',0,0,0),(16,'Leclerc','t',0,'02',0,0,0),(17,'Alencar','t',0,'02',0,0,0),(18,'Gutierrez','t',0,'02',0,0,0),(19,'Baumer','t',0,'02',0,0,0),(20,'Diniz','t',0,'02',0,0,0),(21,'Hernandez','t',0,'03',0,0,0),(22,'Medina','t',0,'03',0,0,0),(23,'Hermans','t',0,'03',0,0,0),(24,'Sanchez','t',0,'03',0,0,0),(25,'Gabrielli','t',0,'03',0,0,0),(26,'Lamberti','t',0,'03',0,0,0),(27,'Manfredi','t',0,'03',0,0,0),(28,'Milani','t',0,'03',0,0,0),(29,'Alonso','t',0,'03',0,0,0),(30,'Espinosa','t',0,'03',0,0,0),(31,'Iglesias','t',0,'04',0,0,0),(32,'Loyola','t',0,'04',0,0,0),(33,'Baumann','t',0,'04',0,0,0),(34,'Dirksen','t',0,'04',0,0,0),(35,'Fischer','t',0,'04',0,0,0),(36,'Johnson','t',0,'04',0,0,0),(37,'Cooper','t',0,'04',0,0,0),(38,'Davis','t',0,'04',0,0,0),(39,'Miller','t',0,'04',0,0,0),(40,'Wilson','t',0,'04',0,0,0),(41,'Stevens','t',0,'05',0,0,0),(42,'Taylor','t',0,'05',0,0,0),(43,'Thompson','t',0,'05',0,0,0),(44,'Walker','t',0,'05',0,0,0),(45,'White','t',0,'05',0,0,0),(46,'Adams','t',0,'05',0,0,0),(47,'Green','t',0,'05',0,0,0),(48,'Baker','t',0,'05',0,0,0),(49,'Phillips','t',0,'05',0,0,0),(50,'Brown','t',0,'05',0,0,0),(51,'Moore','t',0,'06',0,0,0),(52,'Harris','t',0,'06',0,0,0),(53,'Clark','t',0,'06',0,0,0),(54,'Watson','t',0,'06',0,0,0),(55,'Bellini','t',0,'06',0,0,0),(56,'Greco','t',0,'06',0,0,0),(57,'Bianchi','t',0,'06',0,0,0),(58,'Gianni','t',0,'06',0,0,0),(59,'Ricci','t',0,'06',0,0,0),(60,'Santoro','t',0,'06',0,0,0),(61,'Fiore','t',0,'07',0,0,0),(62,'Mancini','t',0,'07',0,0,0),(63,'Sartori','t',0,'07',0,0,0),(64,'Campana','t',0,'07',0,0,0),(65,'Capello','t',0,'07',0,0,0),(66,'Cipriani','t',0,'07',0,0,0),(67,'D\'Angelo','t',0,'07',0,0,0),(68,'DeVito','t',0,'07',0,0,0),(69,'Gagliardi','t',0,'07',0,0,0),(70,'DiCaprio','t',0,'07',0,0,0),(71,'Beaumont','t',0,'08',0,0,0),(72,'Bellerose','t',0,'08',0,0,0),(73,'Delacroix','t',0,'08',0,0,0),(74,'LaChance','t',0,'08',0,0,0),(75,'Monet','t',0,'08',0,0,0),(76,'Toussaint','t',0,'08',0,0,0),(77,'Dupont','t',0,'08',0,0,0),(78,'Moreau','t',0,'08',0,0,0),(79,'Dubois','t',0,'08',0,0,0),(80,'De la Roche','t',0,'08',0,0,0),(81,'Deschamps','t',0,'09',0,0,0),(82,'Fournier','t',0,'09',0,0,0),(83,'Legrand','t',0,'09',0,0,0),(84,'Rousseau','t',0,'09',0,0,0),(85,'Guillaume','t',0,'09',0,0,0),(86,'Hathaway','t',0,'09',0,0,0),(87,'Clifford','t',0,'09',0,0,0),(88,'Howard','t',0,'09',0,0,0),(89,'Monroe','t',0,'09',0,0,0),(90,'Lennox','t',0,'09',0,0,0),(91,'Parker','t',0,'10',0,0,0),(92,'Jackson','t',0,'10',0,0,0),(93,'King','t',0,'10',0,0,0),(94,'Williams','t',0,'10',0,0,0),(95,'Roberts','t',0,'10',0,0,0),(96,'Mitchell','t',0,'10',0,0,0),(97,'Coleman','t',0,'10',0,0,0),(98,'Cornell','t',0,'10',0,0,0),(99,'Dorsey','t',0,'10',0,0,0),(100,'Fletcher','t',0,'10',0,0,0);
/*!40000 ALTER TABLE `jogadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogo`
--

DROP TABLE IF EXISTS `jogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogo` (
  `id_jogo` int NOT NULL AUTO_INCREMENT,
  `resultado` varchar(45) NOT NULL,
  `gol_marcado` int NOT NULL,
  `data` date NOT NULL,
  `substituicoes` varchar(45) DEFAULT NULL,
  `publico` int NOT NULL,
  `idarbitro` int NOT NULL,
  `idestadio` int NOT NULL,
  `time1` varchar(45) NOT NULL,
  `time2` varchar(45) NOT NULL,
  `grupo` varchar(3) NOT NULL,
  `fase` varchar(45) NOT NULL,
  `penalti` int NOT NULL,
  `chutes` int NOT NULL,
  `chute_gol` int NOT NULL,
  `impedimento` int NOT NULL,
  `escanteio` int NOT NULL,
  `cartao_vermelho` int NOT NULL,
  `cartao_amarelo` int NOT NULL,
  `expulcao_amarelo` int NOT NULL,
  PRIMARY KEY (`id_jogo`),
  UNIQUE KEY `id_jogo_UNIQUE` (`id_jogo`),
  KEY `idestadio` (`idestadio`),
  KEY `resultado` (`resultado`),
  KEY `jogo_ibfk_1_idx` (`time1`,`time2`),
  KEY `fk_time2` (`time2`),
  CONSTRAINT `fk_time1` FOREIGN KEY (`time1`) REFERENCES `time` (`idtime`),
  CONSTRAINT `fk_time2` FOREIGN KEY (`time2`) REFERENCES `time` (`idtime`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogo`
--

LOCK TABLES `jogo` WRITE;
/*!40000 ALTER TABLE `jogo` DISABLE KEYS */;
INSERT INTO `jogo` VALUES (1,'2-0',2,'2015-09-22',NULL,50000,1,1,'01','02','a','oitavas',0,15,4,4,3,0,5,0),(2,'4-1',5,'2017-08-22',NULL,27000,2,2,'03','04','a','oitavas',0,22,8,2,4,0,1,0),(3,'2-1',3,'2020-08-22',NULL,45000,1,3,'05','06','a/b','quartas',0,27,5,1,5,0,3,0),(4,'5-0',5,'2002-09-22',NULL,60000,3,4,'07','08','b','quartas',0,24,9,2,4,0,5,0),(5,'3-1',4,'2012-09-22',NULL,46000,4,2,'09','10','b','quartas',0,12,7,2,2,0,9,0),(6,'2-1',3,'2016-09-22',NULL,62000,5,5,'01','03','a','quartas',0,18,6,3,7,0,5,0),(7,'1-0',1,'2020-09-22',NULL,72000,2,3,'05','07','a/b','seme',0,21,5,0,4,0,5,0),(8,'2-1',3,'2023-09-22',NULL,60000,2,1,'01','09','a/b','seme',0,13,5,1,3,0,9,0),(9,'3-2',5,'2002-10-22',NULL,70000,2,3,'01','07','a/b','final',0,20,7,2,1,0,5,0);
/*!40000 ALTER TABLE `jogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time`
--

DROP TABLE IF EXISTS `time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time` (
  `idtime` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `grupo` char(1) NOT NULL,
  `pontuacao` int NOT NULL,
  `vitorias` int NOT NULL,
  `empate` int NOT NULL,
  `derrota` int NOT NULL,
  `saldo_gol` int NOT NULL,
  `gol_pro` int NOT NULL,
  `gol_contra` int NOT NULL,
  `falta_cometida_time` int NOT NULL,
  `falta_sofrida_time` int NOT NULL,
  PRIMARY KEY (`idtime`),
  UNIQUE KEY `idtime_UNIQUE` (`idtime`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time`
--

LOCK TABLES `time` WRITE;
/*!40000 ALTER TABLE `time` DISABLE KEYS */;
INSERT INTO `time` VALUES ('01','Brasil','a',7,2,1,0,9,9,0,0,0),('02','Equador','a',0,0,0,1,0,0,0,0,0),('03','Estados Unidos','a',3,1,0,1,2,2,0,0,0),('04','Madagascar','a',0,0,0,1,1,1,0,0,0),('05','Alemanha','a',6,2,0,0,3,3,0,0,0),('06','Inglaterra','b',0,0,0,1,1,1,0,0,0),('07','Espanha','b',1,0,1,2,2,2,0,0,0),('08','Emirados arebes','b',1,0,1,0,0,0,0,0,0),('09','Argentina','b',1,0,1,1,1,1,0,0,0),('10','Chile','b',1,0,1,0,2,2,0,0,0);
/*!40000 ALTER TABLE `time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view1`
--

DROP TABLE IF EXISTS `view1`;
/*!50001 DROP VIEW IF EXISTS `view1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view1` AS SELECT 
 1 AS `idtime`,
 1 AS `id_jogo`,
 1 AS `fase`,
 1 AS `publico`,
 1 AS `gol_pro`,
 1 AS `gol_contra`,
 1 AS `penalti`,
 1 AS `impedimento`,
 1 AS `escanteio`,
 1 AS `cartao_amarelo`,
 1 AS `cartao_vermelho`,
 1 AS `expulcao_amarelo`,
 1 AS `falta_cometida_time`,
 1 AS `falta_sofrida_time`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view2`
--

DROP TABLE IF EXISTS `view2`;
/*!50001 DROP VIEW IF EXISTS `view2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view2` AS SELECT 
 1 AS `Fase`,
 1 AS `Quantidade de jogos fase`,
 1 AS `Gols marcados fase`,
 1 AS `Média de gol por partida`,
 1 AS `Time com maior média de gol por fase`,
 1 AS `Quantidade de gol feito pelo time que fez mais gol`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view1`
--

/*!50001 DROP VIEW IF EXISTS `view1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view1` AS select `time`.`idtime` AS `idtime`,`jogo`.`id_jogo` AS `id_jogo`,`jogo`.`fase` AS `fase`,`jogo`.`publico` AS `publico`,`time`.`gol_pro` AS `gol_pro`,`time`.`gol_contra` AS `gol_contra`,`jogo`.`penalti` AS `penalti`,`jogo`.`impedimento` AS `impedimento`,`jogo`.`escanteio` AS `escanteio`,`jogo`.`cartao_amarelo` AS `cartao_amarelo`,`jogo`.`cartao_vermelho` AS `cartao_vermelho`,`jogo`.`expulcao_amarelo` AS `expulcao_amarelo`,`time`.`falta_cometida_time` AS `falta_cometida_time`,`time`.`falta_sofrida_time` AS `falta_sofrida_time` from (`time` join `jogo`) where ((0 <> `jogo`.`time1`) or (`jogo`.`time2` = `time`.`idtime`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view2`
--

/*!50001 DROP VIEW IF EXISTS `view2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view2` AS select `fases_tabela`.`fases` AS `Fase`,`fases_tabela`.`partidas_jogadas` AS `Quantidade de jogos fase`,`fases_tabela`.`gol_marcados` AS `Gols marcados fase`,(`fases_tabela`.`gol_marcados` / `fases_tabela`.`partidas_jogadas`) AS `Média de gol por partida`,`fases_tabela`.`time_maior_media_gol` AS `Time com maior média de gol por fase`,`fases_tabela`.`quant_gol_feito_time` AS `Quantidade de gol feito pelo time que fez mais gol` from `fases_tabela` group by `fases_tabela`.`fases` */;
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

-- Dump completed on 2022-09-05 19:30:32

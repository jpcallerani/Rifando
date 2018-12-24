-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: rifandoproject
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(10) NOT NULL,
  `desc1` varchar(15) NOT NULL,
  `desc2` varchar(40) NOT NULL,
  `desc3` varchar(800) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Voyage GLS','1989 Novíssimo','Cor Prata 28.000 km praticamente zero','Este canal é exclusivo para clientes de Varejo.Condições válidas para financiamento pelo Banco Volkswagen com Capitalização de juros mensal. IOF e Cadastro inclusos no cálculo das prestações e no CET. Os custos de registro de contrato serão aplicados de acordo com o DETRAN de cada Estado ou autoridade estadual competente para realização do registro. A critério do cliente, no caso de inclusão dos custos de registro de contrato e demais despesas decorrentes deste no financiamento, os valores deverão compor o CET e serão informados previamente à contratação. Condições válidas ape');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rifa`
--

DROP TABLE IF EXISTS `rifa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rifa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantidade_numero` int(11) NOT NULL,
  `data_sorteio` date NOT NULL,
  `id_produto` int(11) NOT NULL,
  `finalizada` varchar(1) NOT NULL DEFAULT 'S',
  PRIMARY KEY (`id`),
  KEY `FK_ID_PRODUTO_idx` (`id_produto`),
  CONSTRAINT `FK_ID_PRODUTO` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rifa`
--

LOCK TABLES `rifa` WRITE;
/*!40000 ALTER TABLE `rifa` DISABLE KEYS */;
INSERT INTO `rifa` VALUES (4,50,'2019-01-05',1,'N'),(8,100,'2019-01-05',1,'N');
/*!40000 ALTER TABLE `rifa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rifa_numero`
--

DROP TABLE IF EXISTS `rifa_numero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rifa_numero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `id_rifa` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_RIFA_NUMERO_idx` (`id_rifa`),
  CONSTRAINT `FK_RIFA_NUMERO` FOREIGN KEY (`id_rifa`) REFERENCES `rifa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rifa_numero`
--

LOCK TABLES `rifa_numero` WRITE;
/*!40000 ALTER TABLE `rifa_numero` DISABLE KEYS */;
INSERT INTO `rifa_numero` VALUES (1,50,4),(2,49,4),(3,48,4),(4,47,4),(5,46,4),(6,45,4),(7,44,4),(8,43,4),(9,42,4),(10,41,4),(11,40,4),(12,39,4),(13,38,4),(14,37,4),(15,36,4),(16,35,4),(17,34,4),(18,33,4),(19,32,4),(20,31,4),(21,30,4),(22,29,4),(23,28,4),(24,27,4),(25,26,4),(26,25,4),(27,24,4),(28,23,4),(29,22,4),(30,21,4),(31,20,4),(32,19,4),(33,18,4),(34,17,4),(35,16,4),(36,15,4),(37,14,4),(38,13,4),(39,12,4),(40,11,4),(41,10,4),(42,9,4),(43,8,4),(44,7,4),(45,6,4),(46,5,4),(47,4,4),(48,3,4),(49,2,4),(50,1,4),(151,100,8),(152,99,8),(153,98,8),(154,97,8),(155,96,8),(156,95,8),(157,94,8),(158,93,8),(159,92,8),(160,91,8),(161,90,8),(162,89,8),(163,88,8),(164,87,8),(165,86,8),(166,85,8),(167,84,8),(168,83,8),(169,82,8),(170,81,8),(171,80,8),(172,79,8),(173,78,8),(174,77,8),(175,76,8),(176,75,8),(177,74,8),(178,73,8),(179,72,8),(180,71,8),(181,70,8),(182,69,8),(183,68,8),(184,67,8),(185,66,8),(186,65,8),(187,64,8),(188,63,8),(189,62,8),(190,61,8),(191,60,8),(192,59,8),(193,58,8),(194,57,8),(195,56,8),(196,55,8),(197,54,8),(198,53,8),(199,52,8),(200,51,8),(201,50,8),(202,49,8),(203,48,8),(204,47,8),(205,46,8),(206,45,8),(207,44,8),(208,43,8),(209,42,8),(210,41,8),(211,40,8),(212,39,8),(213,38,8),(214,37,8),(215,36,8),(216,35,8),(217,34,8),(218,33,8),(219,32,8),(220,31,8),(221,30,8),(222,29,8),(223,28,8),(224,27,8),(225,26,8),(226,25,8),(227,24,8),(228,23,8),(229,22,8),(230,21,8),(231,20,8),(232,19,8),(233,18,8),(234,17,8),(235,16,8),(236,15,8),(237,14,8),(238,13,8),(239,12,8),(240,11,8),(241,10,8),(242,9,8),(243,8,8),(244,7,8),(245,6,8),(246,5,8),(247,4,8),(248,3,8),(249,2,8),(250,1,8);
/*!40000 ALTER TABLE `rifa_numero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rifa_venda`
--

DROP TABLE IF EXISTS `rifa_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rifa_venda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(1) NOT NULL,
  `id_numero_rifa` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_rifa` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ID_RIFA_NUM_VENDA_idx` (`id_numero_rifa`),
  KEY `FK_ID_USUARIO_NUM_VENDA_idx` (`id_usuario`),
  KEY `FK_ID_RIFA_VENDA_idx` (`id_rifa`),
  CONSTRAINT `FK_ID_RIFA_NUM_VENDA` FOREIGN KEY (`id_numero_rifa`) REFERENCES `rifa_numero` (`id`),
  CONSTRAINT `FK_ID_RIFA_VENDA` FOREIGN KEY (`id_rifa`) REFERENCES `rifa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ID_USUARIO_NUM_VENDA` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rifa_venda`
--

LOCK TABLES `rifa_venda` WRITE;
/*!40000 ALTER TABLE `rifa_venda` DISABLE KEYS */;
INSERT INTO `rifa_venda` VALUES (9,'R',43,1,4),(10,'P',20,2,4);
/*!40000 ALTER TABLE `rifa_venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `telefone` varchar(30) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `numero` int(11) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'34005806864','Joao Silva','19984271504','nicola fassina','sousas','campinas','são paulo',637,'13106102','jpcallerani@gmail.com','1234'),(2,'39936065824','Bia Messias','19984271504','nicola fassina','sousas','campinas','são paulo',637,'13106102','biahmessias@gmail.com','1234');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-24 18:19:29

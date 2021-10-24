-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 172.21.0.48    Database: winostock
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.2

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
-- Table structure for table `acompanhamento`
--

DROP TABLE IF EXISTS `acompanhamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acompanhamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(30) NOT NULL,
  `item` varchar(30) NOT NULL,
  `quantidade` int NOT NULL,
  `data` datetime NOT NULL,
  `user` varchar(50) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `localizacao` varchar(50) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acompanhamento`
--

LOCK TABLES `acompanhamento` WRITE;
/*!40000 ALTER TABLE `acompanhamento` DISABLE KEYS */;
INSERT INTO `acompanhamento` VALUES (27,'Saida','1',5,'2021-10-01 16:10:29','ernani.miranda','4','4','Estoque CSF'),(28,'Saida','9',5,'2021-10-01 16:10:51','ernani.miranda','4','4','Estoque CSF'),(29,'Saida','8',5,'2021-10-01 16:11:35','ernani.miranda','4','4','Estoque CSF'),(30,'Saida','6',2,'2021-10-01 20:55:46','aldrin.rosa','4','18','Reposição Gaveta'),(31,'Saida','7',1,'2021-10-04 08:23:13','luiz.dornelas','5','7','Vitoria Sayuri 2034'),(32,'Saida','6',1,'2021-10-04 12:33:44','Samuel.dias','1','15','33485'),(33,'Saida','15',1,'2021-10-11 14:02:54','aldrin.rosa','1','7','Chamado Nº 33852'),(34,'Entrada','18',1,'2021-10-11 14:43:45','ernani.miranda','7','4','Retorno de Home'),(35,'Entrada','22',1,'2021-10-11 14:44:10','ernani.miranda','7','4','Retorno de Home'),(36,'Entrada','23',1,'2021-10-11 14:44:26','ernani.miranda','7','4','Retorno de Home'),(37,'Entrada','19',1,'2021-10-11 14:45:32','ernani.miranda','7','4','Retorno de Home'),(38,'Entrada','21',1,'2021-10-11 14:45:53','ernani.miranda','7','4','Retorno de Home'),(39,'Entrada','24',1,'2021-10-11 14:46:20','ernani.miranda','7','4','Retorno de Home'),(40,'Saida','21',1,'2021-10-11 16:18:04','luiz.dornelas','1','3','33849'),(41,'Saida','15',1,'2021-10-11 19:47:05','ernani.miranda','1','7','Chamado 33872'),(42,'Saida','17',1,'2021-10-13 09:56:49','luiz.dornelas','1','4','33900'),(43,'Entrada','18',1,'2021-10-13 13:45:42','ernani.miranda','7','4','Retorno de  Home'),(44,'Saida','17',1,'2021-10-13 17:03:54','luiz.dornelas','1','4','7924 (Home)'),(45,'Entrada','16',1,'2021-10-13 20:34:07','ernani.miranda','7','4','Retorno de Home'),(46,'Entrada','21',1,'2021-10-13 20:34:32','ernani.miranda','7','4','Retorno de Home'),(47,'Entrada','23',2,'2021-10-13 20:34:55','ernani.miranda','7','4','Retorno de Home'),(48,'Entrada','19',1,'2021-10-13 20:35:15','ernani.miranda','7','4','Retorno de Home'),(49,'Entrada','22',1,'2021-10-14 09:28:34','luiz.dornelas','7','6','Retorno'),(50,'Entrada','18',1,'2021-10-14 09:28:50','luiz.dornelas','7','6','Retorno'),(51,'Entrada','20',1,'2021-10-14 09:29:27','luiz.dornelas','7','6','Retorno'),(52,'Entrada','23',2,'2021-10-14 09:29:48','luiz.dornelas','7','6','Retorno'),(53,'Entrada','21',1,'2021-10-14 09:30:03','luiz.dornelas','7','6','Retorno'),(54,'Saida','16',1,'2021-10-14 10:39:55','Samuel.dias','1','15','Numero do chamado: 33945'),(55,'Saida','17',1,'2021-10-14 11:36:19','luiz.dornelas','1','4','33964'),(56,'Entrada','25',1,'2021-10-14 11:45:39','luiz.dornelas','1','4','33964'),(57,'Saida','25',1,'2021-10-15 08:34:54','luiz.dornelas','5','4','PA 192'),(58,'Saida','26',1,'2021-10-15 08:36:51','luiz.dornelas','6','4','PA 263'),(59,'Saida','15',1,'2021-10-15 15:01:52','aldrin.rosa','1','15','C: 34029 | F: 154'),(60,'Saida','18',1,'2021-10-15 15:13:35','luiz.dornelas','1','7','C: 34028 F:153'),(61,'Saida','15',1,'2021-10-15 20:56:14','ernani.miranda','1','7','C: 34037 F: 155'),(62,'Saida','14',1,'2021-10-16 10:38:10','ernani.miranda','1','7','C: 34053 F: 156'),(63,'Saida','16',2,'2021-10-16 11:01:14','Samuel.dias','1','15','157 - 34054\r\n158 - 34055'),(64,'Saida','15',1,'2021-10-16 13:54:54','ernani.miranda','1','7','C:34063 F:159'),(65,'Saida','11',4,'2021-10-16 14:58:52','aldrin.rosa','6','4','C: 34057'),(66,'Entrada','17',4,'2021-10-16 14:59:16','aldrin.rosa','6','4','C: 34057	'),(67,'Saida','12',1,'2021-10-16 15:20:45','aldrin.rosa','6','18','C: 34067'),(68,'Entrada','16',1,'2021-10-16 15:21:17','aldrin.rosa','6','18','C: 34067'),(69,'Saida','11',4,'2021-10-16 15:21:38','aldrin.rosa','6','18','C: 34067'),(70,'Entrada','15',4,'2021-10-16 15:22:14','aldrin.rosa','6','18','C: 34067'),(71,'Saida','28',1,'2021-10-16 15:23:09','aldrin.rosa','6','18','C: 34067'),(72,'Entrada','20',1,'2021-10-16 15:23:49','aldrin.rosa','6','18','C:34067'),(73,'Saida','18',1,'2021-10-16 15:24:09','aldrin.rosa','6','18','34067'),(74,'Saida','27',2,'2021-10-16 16:21:58','aldrin.rosa','6','18','C: 34067'),(75,'Saida','20',1,'2021-10-18 10:36:43','luiz.dornelas','6','14','Chamado: 34089'),(76,'Saida','26',2,'2021-10-18 19:12:14','ernani.miranda','4','4','Motagem de equipamentos.'),(77,'Saida','21',1,'2021-10-18 19:12:41','ernani.miranda','4','4','Montagem de equipamento.'),(78,'Entrada','22',4,'2021-10-18 19:14:47','ernani.miranda','7','4','Retorno de Home'),(79,'Entrada','19',3,'2021-10-18 19:15:13','ernani.miranda','7','4','Retorno de Home'),(80,'Entrada','28',1,'2021-10-18 19:18:15','ernani.miranda','7','4','Retorno Home'),(81,'Entrada','25',1,'2021-10-18 19:18:44','ernani.miranda','7','4','Retorno Home'),(82,'Saida','24',1,'2021-10-18 19:19:22','ernani.miranda','4','4','Montagem de equipamento.'),(83,'Entrada','23',1,'2021-10-18 19:19:44','ernani.miranda','7','4','Retorno de Home'),(84,'Entrada','21',1,'2021-10-18 19:20:13','ernani.miranda','7','4','Retorno Home'),(85,'Saida','31',2,'2021-10-18 19:23:17','ernani.miranda','4','4','Montagem de Equipamento'),(86,'Entrada','30',1,'2021-10-18 19:23:47','ernani.miranda','7','4','Retorno de Home'),(87,'Entrada','16',3,'2021-10-18 20:48:42','aldrin.rosa','3','18','Desligamento '),(88,'Entrada','15',2,'2021-10-18 20:49:09','aldrin.rosa','3','17','Desligamento'),(89,'Saida','25',1,'2021-10-19 10:41:35','luiz.dornelas','9','4','WDARLENE_1761'),(90,'Saida','17',1,'2021-10-19 11:56:31','luiz.dornelas','1','4','C: 34167 F: 160'),(91,'Entrada','25',1,'2021-10-19 11:58:25','luiz.dornelas','1','4','C: 34167'),(92,'Saida','25',1,'2021-10-19 12:21:59','luiz.dornelas','1','4','C: 34169 F: 161'),(93,'Saida','16',4,'2021-10-19 12:52:02','Leandro.costa','2','14','e-mail enviado.'),(94,'Saida','20',1,'2021-10-19 12:58:55','Samuel.dias','1','15','Chamado número: 34168'),(95,'Saida','23',2,'2021-10-19 20:57:05','aldrin.rosa','1','16','C: 34126'),(96,'Saida','21',1,'2021-10-19 20:57:22','aldrin.rosa','1','16','C: 34126'),(97,'Saida','18',1,'2021-10-19 20:57:53','aldrin.rosa','1','16','C: 34126'),(98,'Saida','20',1,'2021-10-19 20:59:01','aldrin.rosa','1','16','C: 34126'),(99,'Saida','23',20,'2021-10-20 09:40:32','luiz.dornelas','2','4','Crescimento 01/11'),(100,'Saida','24',1,'2021-10-20 09:40:49','luiz.dornelas','2','4','Admissão 01/11'),(101,'Saida','21',6,'2021-10-20 09:41:09','luiz.dornelas','2','4','Admissão 01/11'),(102,'Saida','31',6,'2021-10-20 09:42:16','luiz.dornelas','2','4','Admissão 01/11'),(103,'Saida','22',2,'2021-10-20 09:42:31','luiz.dornelas','2','4','Admissão 01/11'),(104,'Saida','30',6,'2021-10-20 09:42:47','luiz.dornelas','2','4','Admissão 01/11'),(105,'Saida','28',6,'2021-10-20 09:43:00','luiz.dornelas','2','4','Admissão 01/11'),(106,'Entrada','17',2,'2021-10-20 11:04:06','luiz.dornelas','3','4','MATS: 1761 | 2266'),(107,'Entrada','31',3,'2021-10-20 11:28:27','Samuel.dias','6','18','Reposição Gaveta'),(108,'Entrada','20',3,'2021-10-20 11:29:14','Samuel.dias','6','18','Reposição Gaveta'),(109,'Saida','32',3,'2021-10-20 13:21:04','Samuel.dias','4','15','Instalação de Máquina'),(110,'Saida','32',1,'2021-10-20 13:21:37','Samuel.dias','6','18','Gaveta'),(111,'Entrada','30',1,'2021-10-20 18:35:33','ernani.miranda','7','4','Retorno de Home'),(112,'Entrada','24',3,'2021-10-20 18:36:02','ernani.miranda','7','4','Retorno de Home'),(113,'Entrada','23',3,'2021-10-20 18:37:03','ernani.miranda','7','4','Retorno de Home'),(114,'Entrada','21',1,'2021-10-20 18:39:47','ernani.miranda','7','4','Retorno de Home'),(115,'Entrada','28',1,'2021-10-20 18:40:21','ernani.miranda','7','4','Retorno de Home'),(116,'Saida','11',21,'2021-10-21 10:38:40','luiz.dornelas','2','4','Admissão 23/10/2021'),(117,'Saida','15',1,'2021-10-21 16:57:02','luiz.dornelas','1','3','C: 34299 F: 167'),(118,'Saida','15',1,'2021-10-21 16:58:38','luiz.dornelas','1','7','C: 34307 F: 168');
/*!40000 ALTER TABLE `acompanhamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Chamado'),(2,'Admissão'),(3,'Desligamento'),(4,'Outros'),(5,'Empréstimo'),(6,'Reposição'),(7,'Retorno Home'),(8,'Levantamento'),(9,'Retorno férias');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `name_2` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (38,'Adaptador'),(39,'Cabo'),(36,'Headset'),(32,'Mouse'),(37,'Teclado');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localizacao`
--

DROP TABLE IF EXISTS `localizacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localizacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `localizacao` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localizacao`
--

LOCK TABLES `localizacao` WRITE;
/*!40000 ALTER TABLE `localizacao` DISABLE KEYS */;
INSERT INTO `localizacao` VALUES (1,'Administrativo'),(2,'Backoffice'),(3,'BMG'),(4,'Carrefour'),(5,'Coordernação'),(6,'Crefisa'),(7,'Dmcard'),(8,'Financeiro'),(9,'Jequiti'),(10,'Marketing'),(11,'Monitoria'),(12,'Planejamento'),(13,'Monitoria/ Treinamento'),(14,'RH'),(15,'Santander'),(16,'Supervisão'),(17,'Tenda'),(18,'TI'),(19,'Verdecard'),(20,'Outros');
/*!40000 ALTER TABLE `localizacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (3,'Head set Top Use USB.jpg','image/jpeg'),(5,'Felitron.jpeg','image/jpeg'),(6,'Top Use P2.png','image/png'),(7,'Teclado USB.jpg','image/jpeg'),(8,'Adaptador Wifi.jpg','image/jpeg'),(9,'Mouse USB.jpg','image/jpeg'),(10,'VGA.jpg','image/jpeg'),(11,'Cabo de rede.jpg','image/jpeg'),(12,'cabo-de-forca-AOC.jpg','image/jpeg'),(13,'cabo-de-forca-BR.jpg','image/jpeg'),(14,'displayport.jpg','image/jpeg'),(15,'701_1_H.png','image/png');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `categorie_id` int unsigned NOT NULL,
  `media_id` int DEFAULT '0',
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `categorie_id` (`categorie_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `FK_products` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (11,'E - Top Use USB','2',36,3,'2021-10-11 11:16:45'),(12,'E - Felitron USB','0',36,5,'2021-10-11 11:17:05'),(13,'E - Top Use P2','3',36,6,'2021-10-11 11:17:29'),(14,'G - Top Use P2','5',36,6,'2021-10-11 13:59:20'),(15,'G - Top Use USB','4',36,3,'2021-10-11 13:59:45'),(16,'G - Felitron USB','0',36,5,'2021-10-11 14:00:17'),(17,'CSF - Top Use USB ','6',36,3,'2021-10-11 14:01:09'),(18,'G - Teclado USB','0',37,7,'2021-10-11 14:23:58'),(19,'G - Adaptador Wi-fi','16',38,8,'2021-10-11 14:26:39'),(20,'G - Mouse USB','3',32,9,'2021-10-11 14:29:08'),(21,'G - Cabo VGA','1',39,10,'2021-10-11 14:29:24'),(22,'G - Cabo de Rede','6',39,11,'2021-10-11 14:30:34'),(23,'G - Cabo de Energia BR','3',39,13,'2021-10-11 14:31:39'),(24,'G - Cabo de Energia AOC','3',39,12,'2021-10-11 14:39:11'),(25,'CSF - Felitron USB','0',36,5,'2021-10-14 11:41:10'),(26,'G - DisplayPort','2',38,14,'2021-10-15 08:36:07'),(27,'E - DisplayPort ','13',38,14,'2021-10-16 12:16:05'),(28,'E - Mouse USB 100%','22',32,9,'2021-10-16 12:16:41'),(29,'E - Mouse USB 75%','6',32,9,'2021-10-16 12:18:12'),(30,'E - Teclado USB','1',37,7,'2021-10-18 19:17:57'),(31,'G - Cabo HDMI','3',39,15,'2021-10-18 19:21:10'),(32,'E - Cabo VGA','0',39,10,'2021-10-20 13:18:41');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(150) NOT NULL,
  `group_level` int NOT NULL,
  `group_status` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_level` (`group_level`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
INSERT INTO `user_groups` VALUES (1,'Admin',1,1),(5,'Normal',2,1);
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `status` int NOT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_level` (`user_level`),
  CONSTRAINT `FK_user` FOREIGN KEY (`user_level`) REFERENCES `user_groups` (`group_level`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,' Admin','Admin','2d93b5b99b575718afb15273fe5a07fd020a8def',1,'raytp1so1.jpg',1,'2021-10-01 12:43:15'),(6,'Normal','normal','2d93b5b99b575718afb15273fe5a07fd020a8def',2,'850paowh6.jpg',1,'2021-10-01 11:36:24'),(7,'Kaua Morateli','Kaua.morateli','31a721b32c112aa6e543c606b444f92953175118',2,'dwy2nz77.jpg',1,'2021-09-28 13:24:19'),(8,'Samuel Dias','Samuel.dias','7f42033d3366c6037bda132147a7daa92d1723ba',2,'no_image.jpg',1,'2021-10-20 13:19:32'),(9,'Luiz Dornelas','luiz.dornelas','c3f4c455850c4cc1a257a19b9c5a21ece07a8c5c',1,'perfil.jpg',1,'2021-10-22 09:56:52'),(10,'Aldrin Rosa','aldrin.rosa','2d93b5b99b575718afb15273fe5a07fd020a8def',1,'cgm0ey4f10.jpg',1,'2021-10-21 16:44:45'),(11,'Leandro Costa','Leandro.costa','eb13557a4874de0751de50532d4aa847ef47a82a',2,'5vzvxp4l11.jpg',1,'2021-10-19 12:51:16'),(12,'Ernani Moura Miranda','ernani.miranda','d281ed9528ae248fd28101ba65c00264b090571e',2,'no_image.jpg',1,'2021-10-20 18:30:21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-22  9:57:18

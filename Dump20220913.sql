CREATE DATABASE  IF NOT EXISTS `cshirt` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cshirt`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: cshirt
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `Nome_admin` varchar(32) NOT NULL,
  `Pin` int NOT NULL,
  PRIMARY KEY (`Pin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('Ermanno',1234),('Ciro',1235);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo`
--

DROP TABLE IF EXISTS `catalogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo` (
  `id_tipo` int NOT NULL,
  `Tipo` varchar(32) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo`
--

LOCK TABLES `catalogo` WRITE;
/*!40000 ALTER TABLE `catalogo` DISABLE KEYS */;
INSERT INTO `catalogo` VALUES (1,'Magliette'),(2,'Canottiere'),(3,'Felpe'),(4,'Cappellini'),(5,'Calze'),(6,'Scarpe'),(7,'Occhiali da sole'),(8,'Zaini');
/*!40000 ALTER TABLE `catalogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordini_utente`
--

DROP TABLE IF EXISTS `ordini_utente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordini_utente` (
  `Numero_ordine` int NOT NULL AUTO_INCREMENT,
  `id_prodotto` int NOT NULL,
  `Nome_maglia` varchar(32) NOT NULL,
  `Prezzo` float NOT NULL,
  `Immagine` varchar(128) NOT NULL,
  `Immagine2` varchar(128) DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `Quantità` int NOT NULL,
  PRIMARY KEY (`Numero_ordine`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordini_utente`
--

LOCK TABLES `ordini_utente` WRITE;
/*!40000 ALTER TABLE `ordini_utente` DISABLE KEYS */;
INSERT INTO `ordini_utente` VALUES (15,2,'M02',20,'https://statics.pampling.com/imagenes/galerias/imagen_42883.jpg?1662128169','https://statics.pampling.com/imagenes/galerias/imagen_42882.jpg?1662128169','mappabionda@gmail.com',1);
/*!40000 ALTER TABLE `ordini_utente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prodotti`
--

DROP TABLE IF EXISTS `prodotti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodotti` (
  `id_Prodotto` int NOT NULL AUTO_INCREMENT,
  `Nome_maglia` varchar(32) NOT NULL,
  `Prezzo` float NOT NULL,
  `Quantità` int NOT NULL,
  `Immagine` varchar(128) NOT NULL,
  `Immagine2` varchar(128) NOT NULL,
  PRIMARY KEY (`id_Prodotto`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodotti`
--

LOCK TABLES `prodotti` WRITE;
/*!40000 ALTER TABLE `prodotti` DISABLE KEYS */;
INSERT INTO `prodotti` VALUES (1,'M01',15,1,'https://statics.pampling.com/imagenes/galerias/imagen_40705.jpg?1662128139','https://statics.pampling.com/imagenes/galerias/imagen_40704.jpg?1662128139'),(2,'M02',20,2,'https://statics.pampling.com/imagenes/galerias/imagen_42883.jpg?1662128169','https://statics.pampling.com/imagenes/galerias/imagen_42882.jpg?1662128169'),(3,'M03',14,1,'https://statics.pampling.com/imagenes/galerias/imagen_42893.jpg?1662128356','https://statics.pampling.com/imagenes/galerias/imagen_42892.jpg?1662128356'),(4,'M04',22,1,'https://statics.pampling.com/imagenes/galerias/imagen_40330.jpg?1662128409','https://statics.pampling.com/imagenes/galerias/imagen_40329.jpg?1662128409'),(5,'M05',10,4,'https://statics.pampling.com/imagenes/galerias/imagen_37005.jpg?1662128491','https://statics.pampling.com/imagenes/galerias/imagen_37004.jpg?1662128491'),(6,'M06',10,6,'https://statics.pampling.com/imagenes/galerias/imagen_42399.jpg?1662128492','https://statics.pampling.com/imagenes/galerias/imagen_42398.jpg?1662128492'),(7,'M07',10,5,'https://statics.pampling.com/imagenes/galerias/imagen_42519.jpg?1662128493','https://statics.pampling.com/imagenes/galerias/imagen_42518.jpg?1662128493'),(8,'M08',10,3,'https://statics.pampling.com/imagenes/galerias/imagen_41511.jpg?1662128494','https://statics.pampling.com/imagenes/galerias/imagen_41510.jpg?1662128494'),(9,'CN01',10,8,'https://statics.pampling.com/imagenes/galerias/imagen_42364.jpg?1662388591','https://statics.pampling.com/imagenes/galerias/imagen_32012.jpg?1662388591'),(10,'CN02',10,20,'https://statics.pampling.com/imagenes/galerias/imagen_32936.jpg?1662388592','https://statics.pampling.com/imagenes/galerias/imagen_32117.jpg?1662388592'),(11,'CN03',15,13,'https://statics.pampling.com/imagenes/galerias/imagen_41904.jpg?1662388779','https://statics.pampling.com/imagenes/galerias/imagen_41748.jpg?1662388779'),(12,'F01',19,21,'https://statics.pampling.com/imagenes/galerias/imagen_43071.jpg?1662396311','https://statics.pampling.com/imagenes/galerias/imagen_40863.jpg?1662396311'),(13,'F02',21,8,'https://statics.pampling.com/imagenes/galerias/imagen_35784.jpg?1662396311','https://statics.pampling.com/imagenes/galerias/imagen_35496.jpg?1662396311'),(14,'CP01',9,5,'https://statics.pampling.com/imagenes/galerias/imagen_42926.jpg?1662396430','https://statics.pampling.com/imagenes/galerias/imagen_35546.jpg?1662396430'),(15,'Z01',12,14,'https://statics.pampling.com/imagenes/galerias/imagen_38190.jpg?1662396887','https://statics.pampling.com/imagenes/galerias/imagen_38193.jpg?1662396506'),(16,'Z02',12,11,'https://statics.pampling.com/imagenes/galerias/imagen_38186.jpg?1662396507','https://statics.pampling.com/imagenes/galerias/imagen_38189.jpg?1662396507'),(17,'S01',24,11,'https://statics.pampling.com/imagenes/galerias/imagen_40236.jpg?1662396611','https://statics.pampling.com/imagenes/galerias/imagen_40251.jpg?1662396611'),(18,'S02',24,23,'https://statics.pampling.com/imagenes/galerias/imagen_40242.jpg?1662396615','https://statics.pampling.com/imagenes/galerias/imagen_40253.jpg?1662396615');
/*!40000 ALTER TABLE `prodotti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo` (
  `id_tipo` int NOT NULL,
  `id_prodotto` int NOT NULL,
  PRIMARY KEY (`id_tipo`,`id_prodotto`),
  KEY `id_prodotto` (`id_prodotto`),
  CONSTRAINT `tipo_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `catalogo` (`id_tipo`),
  CONSTRAINT `tipo_ibfk_2` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotti` (`id_Prodotto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(2,9),(2,10),(2,11);
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utente`
--

DROP TABLE IF EXISTS `utente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utente` (
  `idUtente` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(32) NOT NULL,
  `Cognome` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(32) NOT NULL,
  `indirizzo` varchar(64) NOT NULL,
  PRIMARY KEY (`idUtente`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utente`
--

LOCK TABLES `utente` WRITE;
/*!40000 ALTER TABLE `utente` DISABLE KEYS */;
INSERT INTO `utente` VALUES (1,'Ciro','Forino','ciro@gmail.com','abcd1234','via a'),(3,'Luca','Rossi','luca@gmail.com','3','via b'),(4,'Federica','Rossi','fede@gmail.com','4','via c'),(5,'Ermanno','Allocco','ermanno@gmail.com','abcd1234','via d'),(7,'Francesco','Ferraioli','francesco@gmail.com','5','via e'),(8,'Ciccio','Fattorusso','ciccio@gmail.com','abcd','via f'),(14,'mappo','biondi','mappabionda@gmail.com','Mn12345.','via ettorfe padovano 56');
/*!40000 ALTER TABLE `utente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-13  8:55:04

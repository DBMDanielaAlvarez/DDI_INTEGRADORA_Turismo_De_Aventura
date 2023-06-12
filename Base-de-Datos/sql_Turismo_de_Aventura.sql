CREATE DATABASE  IF NOT EXISTS `bd_turismo_de_aventura` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_turismo_de_aventura`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_turismo_de_aventura
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `tbb_atractivos_turísticos`
--

DROP TABLE IF EXISTS `tbb_atractivos_turísticos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_atractivos_turísticos` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Pueblo_Mágico_ID` int unsigned DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Descripción` text,
  `Tipo` enum('histórico','natural','cultural') DEFAULT NULL,
  `Dirección` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Pueblo_Mágico_ID` (`Pueblo_Mágico_ID`),
  CONSTRAINT `tbb_atractivos_turísticos_ibfk_1` FOREIGN KEY (`Pueblo_Mágico_ID`) REFERENCES `tbb_pueblos_mágicos` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_atractivos_turísticos`
--

LOCK TABLES `tbb_atractivos_turísticos` WRITE;
/*!40000 ALTER TABLE `tbb_atractivos_turísticos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_atractivos_turísticos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_festividades`
--

DROP TABLE IF EXISTS `tbb_festividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_festividades` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Pueblo_Mágico_ID` int unsigned DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Descripción` varchar(250) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Pueblo_Mágico_ID` (`Pueblo_Mágico_ID`),
  CONSTRAINT `tbb_festividades_ibfk_1` FOREIGN KEY (`Pueblo_Mágico_ID`) REFERENCES `tbb_pueblos_mágicos` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_festividades`
--

LOCK TABLES `tbb_festividades` WRITE;
/*!40000 ALTER TABLE `tbb_festividades` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_festividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_gastronomía`
--

DROP TABLE IF EXISTS `tbb_gastronomía`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_gastronomía` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Pueblo_Mágico_ID` int unsigned DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Descripción` varchar(250) DEFAULT NULL,
  `Ingredientes` varchar(250) DEFAULT NULL,
  `Receta` text,
  PRIMARY KEY (`ID`),
  KEY `Pueblo_Mágico_ID` (`Pueblo_Mágico_ID`),
  CONSTRAINT `tbb_gastronomía_ibfk_1` FOREIGN KEY (`Pueblo_Mágico_ID`) REFERENCES `tbb_pueblos_mágicos` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_gastronomía`
--

LOCK TABLES `tbb_gastronomía` WRITE;
/*!40000 ALTER TABLE `tbb_gastronomía` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_gastronomía` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_pueblos_mágicos`
--

DROP TABLE IF EXISTS `tbb_pueblos_mágicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_pueblos_mágicos` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) DEFAULT NULL,
  `Descripción` text,
  `Año_nombramiento` date DEFAULT NULL,
  `Poblacion` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_pueblos_mágicos`
--

LOCK TABLES `tbb_pueblos_mágicos` WRITE;
/*!40000 ALTER TABLE `tbb_pueblos_mágicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_pueblos_mágicos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-11 21:39:17

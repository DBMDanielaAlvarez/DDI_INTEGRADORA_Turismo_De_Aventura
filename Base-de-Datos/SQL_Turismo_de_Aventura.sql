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
-- Table structure for table `tbb_atractivo_turistico`
--

DROP TABLE IF EXISTS `tbb_atractivo_turistico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_atractivo_turistico` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` text NOT NULL,
  `Establecimiento` int unsigned DEFAULT NULL,
  `Pueblo_Magico` int unsigned NOT NULL,
  `Valoracion_Global` float NOT NULL,
  `Tipo` enum('Gatronomia','Cultural','Social') NOT NULL,
  `Tipo_Ambiente` enum('Familiar','Mayores de 15','Mayores de 18') NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_pueblo_3_idx` (`Pueblo_Magico`),
  KEY `fk_establecimiento_4_idx` (`Establecimiento`),
  CONSTRAINT `fk_establecimiento_4` FOREIGN KEY (`Establecimiento`) REFERENCES `tbc_establecimiento` (`ID`),
  CONSTRAINT `fk_pueblo_3` FOREIGN KEY (`Pueblo_Magico`) REFERENCES `tbb_pueblo_magico` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_atractivo_turistico`
--

LOCK TABLES `tbb_atractivo_turistico` WRITE;
/*!40000 ALTER TABLE `tbb_atractivo_turistico` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_atractivo_turistico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_comentario`
--

DROP TABLE IF EXISTS `tbb_comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_comentario` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Descripcion` text NOT NULL,
  `Tipo` enum('positivo','negativo') NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Publicado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_comentario`
--

LOCK TABLES `tbb_comentario` WRITE;
/*!40000 ALTER TABLE `tbb_comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_criterio`
--

DROP TABLE IF EXISTS `tbb_criterio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_criterio` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Descripcion` text NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_criterio`
--

LOCK TABLES `tbb_criterio` WRITE;
/*!40000 ALTER TABLE `tbb_criterio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_criterio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_persona`
--

DROP TABLE IF EXISTS `tbb_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_persona` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Primer_Apellido` varchar(50) NOT NULL,
  `Segundo_Apellido` varchar(50) NOT NULL,
  `Genero` char(1) DEFAULT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_persona`
--

LOCK TABLES `tbb_persona` WRITE;
/*!40000 ALTER TABLE `tbb_persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_pueblo_magico`
--

DROP TABLE IF EXISTS `tbb_pueblo_magico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_pueblo_magico` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` text NOT NULL,
  `Año_Nombramiento` date DEFAULT NULL,
  `ValoracionGlobal` float DEFAULT NULL,
  `tbb_pueblo_magicocol` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_pueblo_magico`
--

LOCK TABLES `tbb_pueblo_magico` WRITE;
/*!40000 ALTER TABLE `tbb_pueblo_magico` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_pueblo_magico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_rol`
--

DROP TABLE IF EXISTS `tbb_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_rol` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Descripcion` text NOT NULL,
  `Fecha_Registro` datetime NOT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_rol`
--

LOCK TABLES `tbb_rol` WRITE;
/*!40000 ALTER TABLE `tbb_rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_ubicacion`
--

DROP TABLE IF EXISTS `tbb_ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_ubicacion` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Ciudad` varchar(30) NOT NULL,
  `Codigo_Postal` decimal(10,0) NOT NULL,
  `Colonia` varchar(30) NOT NULL,
  `Calle` varchar(50) DEFAULT NULL,
  `Numero_Exterior` varchar(3) DEFAULT NULL,
  `Numero_Interior` varchar(3) DEFAULT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_ubicacion`
--

LOCK TABLES `tbb_ubicacion` WRITE;
/*!40000 ALTER TABLE `tbb_ubicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_ubicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_usuario`
--

DROP TABLE IF EXISTS `tbb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_usuario` (
  `Persona_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_Usuario` varchar(80) NOT NULL,
  `Correo` varchar(256) NOT NULL,
  `Contrasena` varchar(20) NOT NULL,
  `Estatus` enum('Activo','Inactivo') NOT NULL DEFAULT 'Activo',
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Rol` int unsigned NOT NULL,
  PRIMARY KEY (`Persona_ID`),
  UNIQUE KEY `Persona_ID_UNIQUE` (`Persona_ID`),
  KEY `fk_rol_6_idx` (`Rol`),
  CONSTRAINT `fk_persona_5` FOREIGN KEY (`Persona_ID`) REFERENCES `tbb_persona` (`ID`),
  CONSTRAINT `fk_rol_6` FOREIGN KEY (`Rol`) REFERENCES `tbb_rol` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_usuario`
--

LOCK TABLES `tbb_usuario` WRITE;
/*!40000 ALTER TABLE `tbb_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_valoracion`
--

DROP TABLE IF EXISTS `tbb_valoracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_valoracion` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Numero` float NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_valoracion`
--

LOCK TABLES `tbb_valoracion` WRITE;
/*!40000 ALTER TABLE `tbb_valoracion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_valoracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_establecimiento`
--

DROP TABLE IF EXISTS `tbc_establecimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_establecimiento` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Horario` time NOT NULL,
  `Tipo` enum('Restaurante','Museo') NOT NULL,
  `Ubicacion` int unsigned NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL,
  `Valoracion_Global` float unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `Ubicacion_UNIQUE` (`Ubicacion`),
  CONSTRAINT `fk_ubicacion_7` FOREIGN KEY (`Ubicacion`) REFERENCES `tbb_ubicacion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_establecimiento`
--

LOCK TABLES `tbc_establecimiento` WRITE;
/*!40000 ALTER TABLE `tbc_establecimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbc_establecimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbr_valoracion_atractivo`
--

DROP TABLE IF EXISTS `tbr_valoracion_atractivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbr_valoracion_atractivo` (
  `ID_Valoracion` int unsigned NOT NULL,
  `ID_Atractivo` int unsigned NOT NULL,
  KEY `fk_valoracion_1_idx` (`ID_Valoracion`),
  KEY `fk_atractivo_2_idx` (`ID_Atractivo`),
  CONSTRAINT `fk_atractivo_2` FOREIGN KEY (`ID_Atractivo`) REFERENCES `tbb_atractivo_turistico` (`ID`),
  CONSTRAINT `fk_valoracion_1` FOREIGN KEY (`ID_Valoracion`) REFERENCES `tbb_valoracion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbr_valoracion_atractivo`
--

LOCK TABLES `tbr_valoracion_atractivo` WRITE;
/*!40000 ALTER TABLE `tbr_valoracion_atractivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbr_valoracion_atractivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bd_turismo_de_aventura'
--

--
-- Dumping routines for database 'bd_turismo_de_aventura'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-09 21:01:06

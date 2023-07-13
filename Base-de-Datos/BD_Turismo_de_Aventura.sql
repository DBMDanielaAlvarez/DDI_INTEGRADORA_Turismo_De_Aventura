CREATE DATABASE  IF NOT EXISTS `db_turismo_de_aventura` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_turismo_de_aventura`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: db_turismo_de_aventura
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
-- Table structure for table `tbr_atractivo_comentario`
--

DROP TABLE IF EXISTS `tbr_atractivo_comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbr_atractivo_comentario` (
  `ID_Atractivo` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_Comentario` int unsigned NOT NULL,
  `ID_Usuario` int unsigned NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL,
  UNIQUE KEY `ID_Atractivo_UNIQUE` (`ID_Atractivo`),
  KEY `fk_atrcom1_comentario_idx` (`ID_Comentario`),
  KEY `fk_atrcom1_usuario_idx` (`ID_Usuario`),
  CONSTRAINT `fk_atrcom1_atractivo` FOREIGN KEY (`ID_Atractivo`) REFERENCES `ttb_atractivo_turistico` (`ID`),
  CONSTRAINT `fk_atrcom2_comentario` FOREIGN KEY (`ID_Comentario`) REFERENCES `ttb_comentarios` (`ID`),
  CONSTRAINT `fk_atrcom3_usuario` FOREIGN KEY (`ID_Usuario`) REFERENCES `ttb_usuarios` (`Persona_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbr_atractivo_comentario`
--

LOCK TABLES `tbr_atractivo_comentario` WRITE;
/*!40000 ALTER TABLE `tbr_atractivo_comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbr_atractivo_comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbr_atractivo_valoracion`
--

DROP TABLE IF EXISTS `tbr_atractivo_valoracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbr_atractivo_valoracion` (
  `ID_Atractivo` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_Valoracion` int unsigned NOT NULL,
  `ID_Usuario` int unsigned NOT NULL,
  `ID_Criterio` int unsigned NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL,
  UNIQUE KEY `ID_Atractivo_UNIQUE` (`ID_Atractivo`),
  KEY `fk_atrval1_valoracion_idx` (`ID_Valoracion`),
  KEY `fk_atrval2_usuario_idx` (`ID_Usuario`),
  KEY `fk_atrval3_criterio_idx` (`ID_Criterio`),
  CONSTRAINT `fk_atrval1_atractivo` FOREIGN KEY (`ID_Atractivo`) REFERENCES `ttb_atractivo_turistico` (`ID`),
  CONSTRAINT `fk_atrval2_valoracion` FOREIGN KEY (`ID_Valoracion`) REFERENCES `ttb_valoracion` (`ID`),
  CONSTRAINT `fk_atrval3_usuario` FOREIGN KEY (`ID_Usuario`) REFERENCES `ttb_usuarios` (`Persona_ID`),
  CONSTRAINT `fk_atrval4_criterio` FOREIGN KEY (`ID_Criterio`) REFERENCES `ttb_criterio` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbr_atractivo_valoracion`
--

LOCK TABLES `tbr_atractivo_valoracion` WRITE;
/*!40000 ALTER TABLE `tbr_atractivo_valoracion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbr_atractivo_valoracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbr_establecimiento_comentario`
--

DROP TABLE IF EXISTS `tbr_establecimiento_comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbr_establecimiento_comentario` (
  `ID_Establecimiento` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_Comentario` int unsigned NOT NULL,
  `ID_Usuario` int unsigned NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL,
  UNIQUE KEY `ID_Establecimiento_UNIQUE` (`ID_Establecimiento`),
  KEY `fk_estcom2_comentario_idx` (`ID_Comentario`),
  KEY `fk_estcom3_usuario_idx` (`ID_Usuario`),
  CONSTRAINT `fk_estcom1_establecimiento` FOREIGN KEY (`ID_Establecimiento`) REFERENCES `ttb_establecimientos` (`ID`),
  CONSTRAINT `fk_estcom2_comentario` FOREIGN KEY (`ID_Comentario`) REFERENCES `ttb_comentarios` (`ID`),
  CONSTRAINT `fk_estcom3_usuario` FOREIGN KEY (`ID_Usuario`) REFERENCES `ttb_usuarios` (`Persona_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbr_establecimiento_comentario`
--

LOCK TABLES `tbr_establecimiento_comentario` WRITE;
/*!40000 ALTER TABLE `tbr_establecimiento_comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbr_establecimiento_comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbr_establecimiento_valoracion`
--

DROP TABLE IF EXISTS `tbr_establecimiento_valoracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbr_establecimiento_valoracion` (
  `ID_Establecimiento` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_Valoracion` int unsigned NOT NULL,
  `ID_Usuario` int unsigned NOT NULL,
  `ID_Criterio` int unsigned NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL,
  UNIQUE KEY `ID_Establecimiento_UNIQUE` (`ID_Establecimiento`),
  KEY `fk_atrval1_valoracion_idx` (`ID_Valoracion`),
  KEY `fk_atrval2_Usuario_idx` (`ID_Usuario`),
  KEY `fk_atrval3_criterio_idx` (`ID_Criterio`),
  CONSTRAINT `fk_estval1_establecimiento` FOREIGN KEY (`ID_Establecimiento`) REFERENCES `ttb_establecimientos` (`ID`),
  CONSTRAINT `fk_estval2_valoracion` FOREIGN KEY (`ID_Valoracion`) REFERENCES `ttb_valoracion` (`ID`),
  CONSTRAINT `fk_estval3_Usuario` FOREIGN KEY (`ID_Usuario`) REFERENCES `ttb_usuarios` (`Persona_ID`),
  CONSTRAINT `fk_estval4_criterio` FOREIGN KEY (`ID_Criterio`) REFERENCES `ttb_criterio` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbr_establecimiento_valoracion`
--

LOCK TABLES `tbr_establecimiento_valoracion` WRITE;
/*!40000 ALTER TABLE `tbr_establecimiento_valoracion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbr_establecimiento_valoracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbr_pueblomagico_comentario`
--

DROP TABLE IF EXISTS `tbr_pueblomagico_comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbr_pueblomagico_comentario` (
  `ID_PuebloMagico` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_Comentario` int unsigned NOT NULL,
  `ID_Usuario` int unsigned NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL,
  UNIQUE KEY `ID_PuebloMagico_UNIQUE` (`ID_PuebloMagico`),
  KEY `fk_puebcom1_comentario_idx` (`ID_Comentario`),
  KEY `fk_puebcom2_Usuario_idx` (`ID_Usuario`),
  CONSTRAINT `fk_puebcom1_pueblo` FOREIGN KEY (`ID_PuebloMagico`) REFERENCES `ttb_pueblos_magicos` (`ID`),
  CONSTRAINT `fk_puebcom2_comentario` FOREIGN KEY (`ID_Comentario`) REFERENCES `ttb_comentarios` (`ID`),
  CONSTRAINT `fk_puebcom3_usuario` FOREIGN KEY (`ID_Usuario`) REFERENCES `ttb_usuarios` (`Persona_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbr_pueblomagico_comentario`
--

LOCK TABLES `tbr_pueblomagico_comentario` WRITE;
/*!40000 ALTER TABLE `tbr_pueblomagico_comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbr_pueblomagico_comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbr_pueblomagico_valoracion`
--

DROP TABLE IF EXISTS `tbr_pueblomagico_valoracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbr_pueblomagico_valoracion` (
  `ID_PuebloMagico` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_Valoracion` int unsigned NOT NULL,
  `ID_Criterio` int unsigned NOT NULL,
  `ID_Usuario` int unsigned NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL,
  UNIQUE KEY `ID_PuebloMagico_UNIQUE` (`ID_PuebloMagico`),
  KEY `fk_puebval2_valoracion_idx` (`ID_Valoracion`),
  KEY `fk_puebval3_criterio_idx` (`ID_Criterio`),
  KEY `fk_puebval4_usuario_idx` (`ID_Usuario`),
  CONSTRAINT `fk_puebval1_pueblo` FOREIGN KEY (`ID_PuebloMagico`) REFERENCES `ttb_pueblos_magicos` (`ID`),
  CONSTRAINT `fk_puebval2_valoracion` FOREIGN KEY (`ID_Valoracion`) REFERENCES `ttb_valoracion` (`ID`),
  CONSTRAINT `fk_puebval3_criterio` FOREIGN KEY (`ID_Criterio`) REFERENCES `ttb_criterio` (`ID`),
  CONSTRAINT `fk_puebval4_usuario` FOREIGN KEY (`ID_Usuario`) REFERENCES `ttb_usuarios` (`Persona_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbr_pueblomagico_valoracion`
--

LOCK TABLES `tbr_pueblomagico_valoracion` WRITE;
/*!40000 ALTER TABLE `tbr_pueblomagico_valoracion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbr_pueblomagico_valoracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ttb_atractivo_turistico`
--

DROP TABLE IF EXISTS `ttb_atractivo_turistico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ttb_atractivo_turistico` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` text NOT NULL,
  `Ubicacion` int unsigned DEFAULT NULL,
  `Tipo` enum('Gatronomico','Festividad') NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL,
  `Tipo_Ambiente` enum('familiar') NOT NULL,
  `Pueblo_Magico` int unsigned NOT NULL,
  `Valoracion_Global` float NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_atractivo1_ubicacion_idx` (`Ubicacion`),
  KEY `fk_atractivo2_pueblo_idx` (`Pueblo_Magico`),
  CONSTRAINT `fk_atractivo1_ubicacion` FOREIGN KEY (`Ubicacion`) REFERENCES `ttb_ubicaciones` (`ID`),
  CONSTRAINT `fk_atractivo2_pueblo` FOREIGN KEY (`Pueblo_Magico`) REFERENCES `ttb_pueblos_magicos` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttb_atractivo_turistico`
--

LOCK TABLES `ttb_atractivo_turistico` WRITE;
/*!40000 ALTER TABLE `ttb_atractivo_turistico` DISABLE KEYS */;
/*!40000 ALTER TABLE `ttb_atractivo_turistico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ttb_comentarios`
--

DROP TABLE IF EXISTS `ttb_comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ttb_comentarios` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Descripcion` text NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Tipo` enum('Positivo') NOT NULL,
  `Publicado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttb_comentarios`
--

LOCK TABLES `ttb_comentarios` WRITE;
/*!40000 ALTER TABLE `ttb_comentarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `ttb_comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ttb_criterio`
--

DROP TABLE IF EXISTS `ttb_criterio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ttb_criterio` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Descripcion` text NOT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '1',
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttb_criterio`
--

LOCK TABLES `ttb_criterio` WRITE;
/*!40000 ALTER TABLE `ttb_criterio` DISABLE KEYS */;
/*!40000 ALTER TABLE `ttb_criterio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ttb_establecimientos`
--

DROP TABLE IF EXISTS `ttb_establecimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ttb_establecimientos` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Horario` int unsigned NOT NULL,
  `Tipo` enum('') NOT NULL,
  `Ubicacion` int unsigned NOT NULL,
  `Estatus` tinyint(1) NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Valoracion_Global` float NOT NULL,
  `Atractivo_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_establecimiento1_ubicacion_idx` (`Ubicacion`),
  KEY `fk_establecimiento2_atractivo_idx` (`Atractivo_ID`),
  KEY `fk_establecimiento3_horarios_idx` (`Horario`),
  CONSTRAINT `fk_establecimiento1_ubicacion` FOREIGN KEY (`Ubicacion`) REFERENCES `ttb_ubicaciones` (`ID`),
  CONSTRAINT `fk_establecimiento2_atractivo` FOREIGN KEY (`Atractivo_ID`) REFERENCES `ttb_atractivo_turistico` (`ID`),
  CONSTRAINT `fk_establecimiento3_horarios` FOREIGN KEY (`Horario`) REFERENCES `ttc_horarios` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttb_establecimientos`
--

LOCK TABLES `ttb_establecimientos` WRITE;
/*!40000 ALTER TABLE `ttb_establecimientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ttb_establecimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ttb_personas`
--

DROP TABLE IF EXISTS `ttb_personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ttb_personas` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Primer_Apellido` varchar(50) NOT NULL,
  `Segundo_Apellido` varchar(50) NOT NULL,
  `Genero` enum('M','F','Prefiero no decirlo') DEFAULT 'Prefiero no decirlo',
  `Fecha_Nacimiento` date NOT NULL,
  `Estatus` tinyint(1) NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttb_personas`
--

LOCK TABLES `ttb_personas` WRITE;
/*!40000 ALTER TABLE `ttb_personas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ttb_personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ttb_pueblos_magicos`
--

DROP TABLE IF EXISTS `ttb_pueblos_magicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ttb_pueblos_magicos` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` text NOT NULL,
  `Año_Nombremiento` date DEFAULT NULL,
  `Ubicacion` int unsigned NOT NULL,
  `Valoracion_Global` float NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_pueblo1_ubicacion_idx` (`Ubicacion`),
  CONSTRAINT `fk_pueblo1_ubicacion` FOREIGN KEY (`Ubicacion`) REFERENCES `ttb_ubicaciones` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttb_pueblos_magicos`
--

LOCK TABLES `ttb_pueblos_magicos` WRITE;
/*!40000 ALTER TABLE `ttb_pueblos_magicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ttb_pueblos_magicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ttb_roles`
--

DROP TABLE IF EXISTS `ttb_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ttb_roles` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(40) NOT NULL,
  `Descripcion` text NOT NULL,
  `Estatus` tinyint(1) NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttb_roles`
--

LOCK TABLES `ttb_roles` WRITE;
/*!40000 ALTER TABLE `ttb_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `ttb_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ttb_ubicaciones`
--

DROP TABLE IF EXISTS `ttb_ubicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ttb_ubicaciones` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(150) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Estatus` tinyint(1) NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Ubicacion_Padre_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_ubicaciones1_ubicaciones_idx` (`Ubicacion_Padre_ID`),
  CONSTRAINT `fk_ubicaciones1_ubicaciones` FOREIGN KEY (`Ubicacion_Padre_ID`) REFERENCES `ttb_ubicaciones` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttb_ubicaciones`
--

LOCK TABLES `ttb_ubicaciones` WRITE;
/*!40000 ALTER TABLE `ttb_ubicaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `ttb_ubicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ttb_usuarios`
--

DROP TABLE IF EXISTS `ttb_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ttb_usuarios` (
  `Persona_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_Usuario` varchar(50) NOT NULL,
  `Correo` varchar(200) NOT NULL,
  `Contraseña` varchar(30) NOT NULL,
  `Estatus` tinyint(1) NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Rol` int unsigned NOT NULL,
  PRIMARY KEY (`Persona_ID`),
  UNIQUE KEY `Persona_ID_UNIQUE` (`Persona_ID`),
  KEY `fk_usuario2_rol_idx` (`Rol`),
  CONSTRAINT `fk_usuario1_persona` FOREIGN KEY (`Persona_ID`) REFERENCES `ttb_personas` (`ID`),
  CONSTRAINT `fk_usuario2_rol` FOREIGN KEY (`Rol`) REFERENCES `ttb_roles` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttb_usuarios`
--

LOCK TABLES `ttb_usuarios` WRITE;
/*!40000 ALTER TABLE `ttb_usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `ttb_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ttb_valoracion`
--

DROP TABLE IF EXISTS `ttb_valoracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ttb_valoracion` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Numero` float NOT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '1',
  `Fecha_Registro` datetime NOT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttb_valoracion`
--

LOCK TABLES `ttb_valoracion` WRITE;
/*!40000 ALTER TABLE `ttb_valoracion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ttb_valoracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ttc_horarios`
--

DROP TABLE IF EXISTS `ttc_horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ttc_horarios` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Dia` varchar(20) NOT NULL,
  `Hora_apertura` time NOT NULL,
  `Hora_Cierre` time NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttc_horarios`
--

LOCK TABLES `ttc_horarios` WRITE;
/*!40000 ALTER TABLE `ttc_horarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `ttc_horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_turismo_de_aventura'
--

--
-- Dumping routines for database 'db_turismo_de_aventura'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-13  9:24:47

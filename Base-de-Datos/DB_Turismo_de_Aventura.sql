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
-- Table structure for table `tbb_atractivo_turistico`
--

DROP TABLE IF EXISTS `tbb_atractivo_turistico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_atractivo_turistico` (
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
  CONSTRAINT `fk_atractivo1_ubicacion` FOREIGN KEY (`Ubicacion`) REFERENCES `tbb_ubicaciones` (`ID`),
  CONSTRAINT `fk_atractivo2_pueblo` FOREIGN KEY (`Pueblo_Magico`) REFERENCES `tbc_pueblos_magicos` (`ID`)
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
-- Table structure for table `tbb_comentarios`
--

DROP TABLE IF EXISTS `tbb_comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_comentarios` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Descripcion` text NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Tipo` enum('Positivo') NOT NULL,
  `Publicado` tinyint(1) DEFAULT NULL,
  `ID_Usuario` int unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_comentario1_usuario_idx` (`ID_Usuario`),
  CONSTRAINT `fk_comentario1_usuario` FOREIGN KEY (`ID_Usuario`) REFERENCES `tbb_usuarios` (`Persona_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_comentarios`
--

LOCK TABLES `tbb_comentarios` WRITE;
/*!40000 ALTER TABLE `tbb_comentarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_personas`
--

DROP TABLE IF EXISTS `tbb_personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_personas` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Primer_Apellido` varchar(50) NOT NULL,
  `Segundo_Apellido` varchar(50) NOT NULL,
  `Genero` enum('M','F','N/A') NOT NULL DEFAULT 'N/A',
  `Fecha_Nacimiento` date NOT NULL,
  `Estatus` tinyint(1) NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_personas`
--

LOCK TABLES `tbb_personas` WRITE;
/*!40000 ALTER TABLE `tbb_personas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_ubicaciones`
--

DROP TABLE IF EXISTS `tbb_ubicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_ubicaciones` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(150) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Estatus` tinyint(1) NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Ubicacion_Padre_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_ubicaciones1_ubicaciones_idx` (`Ubicacion_Padre_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_ubicaciones`
--

LOCK TABLES `tbb_ubicaciones` WRITE;
/*!40000 ALTER TABLE `tbb_ubicaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_ubicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_usuarios`
--

DROP TABLE IF EXISTS `tbb_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_usuarios` (
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
  UNIQUE KEY `Nombre_Usuario_UNIQUE` (`Nombre_Usuario`),
  UNIQUE KEY `Correo_UNIQUE` (`Correo`),
  KEY `fk_usuario2_rol_idx` (`Rol`),
  CONSTRAINT `fk_usuario1_persona` FOREIGN KEY (`Persona_ID`) REFERENCES `tbb_personas` (`ID`),
  CONSTRAINT `fk_usuario2_rol` FOREIGN KEY (`Rol`) REFERENCES `tbc_roles` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_usuarios`
--

LOCK TABLES `tbb_usuarios` WRITE;
/*!40000 ALTER TABLE `tbb_usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_usuarios` ENABLE KEYS */;
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
  `Estatus` tinyint(1) NOT NULL DEFAULT '1',
  `Fecha_Registro` datetime NOT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `ID_Usuario` int unsigned NOT NULL,
  `ID_Item_Evaluado` int unsigned NOT NULL,
  `Tipo` enum('Atractivo','Estanlecimiento','Pueblo') NOT NULL,
  `ID_Criterio` int unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_valoracion1_usuario_idx` (`ID_Usuario`),
  KEY `fk_valoracion2_item_idx` (`ID_Item_Evaluado`),
  KEY `fk_valoracion5_criterio_idx` (`ID_Criterio`),
  CONSTRAINT `fk_valoracion1_usuario` FOREIGN KEY (`ID_Usuario`) REFERENCES `tbb_usuarios` (`Persona_ID`),
  CONSTRAINT `fk_valoracion2_item` FOREIGN KEY (`ID_Item_Evaluado`) REFERENCES `tbb_atractivo_turistico` (`ID`),
  CONSTRAINT `fk_valoracion3_item` FOREIGN KEY (`ID_Item_Evaluado`) REFERENCES `tbc_establecimientos` (`ID`),
  CONSTRAINT `fk_valoracion4_item` FOREIGN KEY (`ID_Item_Evaluado`) REFERENCES `tbc_pueblos_magicos` (`ID`),
  CONSTRAINT `fk_valoracion5_criterio` FOREIGN KEY (`ID_Criterio`) REFERENCES `tbc_criterio` (`ID`)
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
-- Table structure for table `tbc_criterio`
--

DROP TABLE IF EXISTS `tbc_criterio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_criterio` (
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
-- Dumping data for table `tbc_criterio`
--

LOCK TABLES `tbc_criterio` WRITE;
/*!40000 ALTER TABLE `tbc_criterio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbc_criterio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_establecimientos`
--

DROP TABLE IF EXISTS `tbc_establecimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_establecimientos` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Horario` int unsigned NOT NULL,
  `Tipo` enum('') NOT NULL,
  `Ubicacion` int unsigned NOT NULL,
  `Estatus` tinyint(1) NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Valoracion_Global` float NOT NULL,
  `Atractivo_ID` int unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_establecimiento1_ubicacion_idx` (`Ubicacion`),
  KEY `fk_establecimiento2_atractivo_idx` (`Atractivo_ID`),
  KEY `fk_establecimiento3_horarios_idx` (`Horario`),
  CONSTRAINT `fk_establecimiento1_ubicacion` FOREIGN KEY (`Ubicacion`) REFERENCES `tbb_ubicaciones` (`ID`),
  CONSTRAINT `fk_establecimiento2_atractivo` FOREIGN KEY (`Atractivo_ID`) REFERENCES `tbb_atractivo_turistico` (`ID`),
  CONSTRAINT `fk_establecimiento3_horarios` FOREIGN KEY (`Horario`) REFERENCES `tbc_horarios` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_establecimientos`
--

LOCK TABLES `tbc_establecimientos` WRITE;
/*!40000 ALTER TABLE `tbc_establecimientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbc_establecimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_horarios`
--

DROP TABLE IF EXISTS `tbc_horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_horarios` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Dia` varchar(20) NOT NULL,
  `Hora_apertura` time NOT NULL,
  `Hora_Cierre` time NOT NULL,
  `ID_Establecimiento` int unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_horario1_usuario_idx` (`ID_Establecimiento`),
  CONSTRAINT `fk_horario1_usuario` FOREIGN KEY (`ID_Establecimiento`) REFERENCES `tbc_establecimientos` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_horarios`
--

LOCK TABLES `tbc_horarios` WRITE;
/*!40000 ALTER TABLE `tbc_horarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbc_horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_pueblos_magicos`
--

DROP TABLE IF EXISTS `tbc_pueblos_magicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_pueblos_magicos` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` text NOT NULL,
  `Año_Nombremiento` date DEFAULT NULL,
  `Ubicacion` int unsigned NOT NULL,
  `Valoracion_Global` float NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_pueblo1_ubicacion_idx` (`Ubicacion`),
  CONSTRAINT `fk_pueblo1_ubicacion` FOREIGN KEY (`Ubicacion`) REFERENCES `tbb_ubicaciones` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_pueblos_magicos`
--

LOCK TABLES `tbc_pueblos_magicos` WRITE;
/*!40000 ALTER TABLE `tbc_pueblos_magicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbc_pueblos_magicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_roles`
--

DROP TABLE IF EXISTS `tbc_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_roles` (
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
-- Dumping data for table `tbc_roles`
--

LOCK TABLES `tbc_roles` WRITE;
/*!40000 ALTER TABLE `tbc_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbc_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbr_visita_atractivo`
--

DROP TABLE IF EXISTS `tbr_visita_atractivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbr_visita_atractivo` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_Usuario` int unsigned NOT NULL,
  `ID_Atractivo` int unsigned NOT NULL,
  `Fecha_Visita` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_visatr1_usuario_idx` (`ID_Usuario`),
  KEY `fk_visatr2_atractivo_idx` (`ID_Atractivo`),
  CONSTRAINT `fk_visatr1_usuario` FOREIGN KEY (`ID_Usuario`) REFERENCES `tbb_usuarios` (`Persona_ID`),
  CONSTRAINT `fk_visatr2_atractivo` FOREIGN KEY (`ID_Atractivo`) REFERENCES `tbb_atractivo_turistico` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbr_visita_atractivo`
--

LOCK TABLES `tbr_visita_atractivo` WRITE;
/*!40000 ALTER TABLE `tbr_visita_atractivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbr_visita_atractivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbr_visita_establecimiento`
--

DROP TABLE IF EXISTS `tbr_visita_establecimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbr_visita_establecimiento` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_Usuario` int unsigned NOT NULL,
  `ID_Establecimiento` int unsigned NOT NULL,
  `Fecha_Visita` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_visest1_usuario_idx` (`ID_Usuario`),
  KEY `fk_visest2_establecimiento_idx` (`ID_Establecimiento`),
  CONSTRAINT `fk_visest1_usuario` FOREIGN KEY (`ID_Usuario`) REFERENCES `tbb_usuarios` (`Persona_ID`),
  CONSTRAINT `fk_visest2_establecimiento` FOREIGN KEY (`ID_Establecimiento`) REFERENCES `tbc_establecimientos` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbr_visita_establecimiento`
--

LOCK TABLES `tbr_visita_establecimiento` WRITE;
/*!40000 ALTER TABLE `tbr_visita_establecimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbr_visita_establecimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbr_visita_pueblo`
--

DROP TABLE IF EXISTS `tbr_visita_pueblo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbr_visita_pueblo` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_Usuario` int unsigned NOT NULL,
  `ID_Pueblo` int unsigned NOT NULL,
  `Fecha_Visita` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_vispue1_usuario_idx` (`ID_Usuario`),
  KEY `fk_vispue2_pueblo_idx` (`ID_Pueblo`),
  CONSTRAINT `fk_vispue1_usuario` FOREIGN KEY (`ID_Usuario`) REFERENCES `tbb_usuarios` (`Persona_ID`),
  CONSTRAINT `fk_vispue2_pueblo` FOREIGN KEY (`ID_Pueblo`) REFERENCES `tbc_pueblos_magicos` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbr_visita_pueblo`
--

LOCK TABLES `tbr_visita_pueblo` WRITE;
/*!40000 ALTER TABLE `tbr_visita_pueblo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbr_visita_pueblo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_turismo_de_aventura'
--

--
-- Dumping routines for database 'db_turismo_de_aventura'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_apellido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_apellido`() RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE v_apellido_generado VARCHAR(50) DEFAULT NULL;
    
    SET v_apellido_generado = ELT(fn_numero_aleatorio_rangos(1,100), 
			"Álvarez","Briones","Cruz","Díaz","Estrada", "Fuentes","Gayosso","Hernández","Ibarra","Jiménez",
			"Kuno","López","Martínez","Ortíz","Paredes", "Quiróz","Ramírez","Sampayo","Téllez","Urbina",
			"Vargas","Wurtz","Ximénez","Yañez","Zapata", "García","González","Pérez","Rodríguez","Sánchez",
            "Romero","Gómez","Flores","Morales","Vázquez", "Reyes","Torres","Gutiérrez","Ruíz","Mendoza",
            "Aguilar","Moreno","Castillo","Méndez","Chávez", "Rivera","Juárez","Ramos","Domínguez","Herrera",
            "Medina","Castro","Vargas","Guzmán","Velazquez", "Muñoz","Rojas","de la Cruz","Contreras","Salazar",
            "Luna","Ortega","Santiago","Guerrero","Bautista", "Cortés","Soto","Alvarado","Espinoza","Lara",
            "Ávila","Ríos","Cervantes","Silva","Delgado", "Vega","Márquez","Sandoval","Carrillo","León",
            "Mejía","Solís","Rosas","Valdéz","Nuñez", "Campos","Santos","Camacho","Navarro","Peña",
            "Maldonado","Rosales","Acosta","Miranda","Trejo", "Valencia","Nava","Pacheco","Huerta","Padilla");

RETURN v_apellido_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_nombre_simple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_nombre_simple`(v_genero CHAR) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE v_nombre_generado VARCHAR(100) DEFAULT NULL;
    IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Antonio", "Baltazar", "Carlos", "Daniel", "Ernesto", "Fernando", "Gustavo", "Hugo", "Ignacio" ,"Jaime",
                "Karim", "Lorenzo", "Manuel", "Nabor", "Octavio", "Pablo", "Quetzálcoatl", "Ramón", "Saúl" ,"Tadeo",
                "Uriel", "Valentín", "Yahir", "Xavier", "Zacek", "Alejandro", "Bernardo", "Camilo", "Dylan" ,"Edgar",
                "Francisco", "Gerardo", "Héctor", "Iván", "Josafat", "Karlo", "Luis", "Marco", "Neftalí" ,"Óscar",
                "Pedro", "Raúl", "Salvador", "Timoteo", "Uziel", "Víctor", "William", "Germán", "Benito","Gonzálo");
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Alondra", "Berenice", "Carla", "Daniela", "Evelyn", "Fernanda", "Gabriela", "Hanna", "Isabel" ,"Jazmín",
                "Karen", "Laura", "María", "Natalia", "Olga", "Patricia", "Quetzálli", "Renata", "Sandra" ,"Tamara",
                "Ursula", "Valeria", "Yara", "Xochítl", "Zara", "Alma", "Barbara", "Carolina", "Denisse" ,"Esther",
                "Fatima", "Galilea", "Helena", "Ivana", "Jaqueline", "Karla", "Lorena", "Magdalena", "Nadia" ,"Ofelia",
                "Paola", "Rosa", "Salomé", "Tanya", "Alejandra", "Josefa", "Wendy", "Valentina", "Elena","Sofía");
		END IF;

RETURN v_nombre_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_numero_aleatorio_rangos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_numero_aleatorio_rangos`(v_limite_inferior int,
 v_limite_superior INT) RETURNS int
    DETERMINISTIC
BEGIN
     DECLARE v_numero_generado INT DEFAULT FLOOR(Rand()* (v_limite_superior-v_limite_inferior+1)+v_limite_inferior);
     SET @numero_generado = v_numero_generado;
RETURN v_numero_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_estatus_bd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_estatus_bd`()
BEGIN
	(SELECT "tbr_vista_atractivo" as Tabla,	 COUNT(*) as Total_Registros FROM tbr_vista_atractivo)
	UNION
	(SELECT "tbr_vista_establecimiento" as Tabla, COUNT(*) as Total_Registros FROM tbr_vista_establecimiento)
     UNION
	(SELECT "tbr_vista_pueblo" as Tabla, COUNT(*) as Total_Registros FROM tbr_vista_pueblo)
     UNION
	(SELECT "ttb_atractivo_turistico" as Tabla,  COUNT(*) as Total_Registros FROM ttb_atractivo_turistico)
     UNION
	(SELECT "ttb_comentarios" as Tabla,	 COUNT(*) as Total_Registros FROM ttb_comentarios)
     UNION
	(SELECT "ttb_criterio" as Tabla, COUNT(*) as Total_Registros FROM ttb_criterio)
     UNION
	(SELECT "ttb_establecimientos" as Tabla, COUNT(*) as Total_Registros FROM ttb_establecimientos)
     UNION
	(SELECT "ttb_personas" as Tabla, COUNT(*) as Total_Registros FROM ttb_personas)
     UNION
	(SELECT "ttb_pueblos_magicos" as Tabla, COUNT(*) as Total_Registros FROM ttb_pueblos_magicos)
     UNION
	(SELECT "ttb_roles" as Tabla, COUNT(*) as Total_Registros FROM ttb_roles)
     UNION
	(SELECT "ttb_ubicaciones" as Tabla, COUNT(*) as Total_Registros FROM ttb_ubicaciones)
     UNION
	(SELECT "ttb_usuarios" as Tabla, COUNT(*) as Total_Registros FROM ttb_usuarios)
     UNION
	(SELECT "ttb_valoracion" as Tabla, COUNT(*) as Total_Registros FROM ttb_valoracion)
	UNION
	(SELECT "ttc_horarios" as Tabla, COUNT(*) as Total_Registros FROM ttc_horarios);
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-30 16:01:54

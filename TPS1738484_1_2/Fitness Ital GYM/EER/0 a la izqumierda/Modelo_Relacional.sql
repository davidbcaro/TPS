-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: gimnasio
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
-- Table structure for table `clase`
--

DROP TABLE IF EXISTS `clase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `clase` (
  `idClase` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Descripcion_Clase` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idClase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clase`
--

LOCK TABLES `clase` WRITE;
/*!40000 ALTER TABLE `clase` DISABLE KEYS */;
INSERT INTO `clase` VALUES (1,'cardio','uso de sus musculos'),(2,'zumba','uso de su cuerpo');
/*!40000 ALTER TABLE `clase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clase_has_ejercicio`
--

DROP TABLE IF EXISTS `clase_has_ejercicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `clase_has_ejercicio` (
  `Clase_idClase` int(11) NOT NULL,
  `Ejercicio_idEjercicio` int(11) NOT NULL,
  PRIMARY KEY (`Clase_idClase`,`Ejercicio_idEjercicio`),
  KEY `fk_Clase_has_Ejercicio_Ejercicio1_idx` (`Ejercicio_idEjercicio`),
  KEY `fk_Clase_has_Ejercicio_Clase1_idx` (`Clase_idClase`),
  CONSTRAINT `fk_Clase_has_Ejercicio_Clase1` FOREIGN KEY (`Clase_idClase`) REFERENCES `clase` (`idclase`),
  CONSTRAINT `fk_Clase_has_Ejercicio_Ejercicio1` FOREIGN KEY (`Ejercicio_idEjercicio`) REFERENCES `ejercicio` (`idejercicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clase_has_ejercicio`
--

LOCK TABLES `clase_has_ejercicio` WRITE;
/*!40000 ALTER TABLE `clase_has_ejercicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `clase_has_ejercicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cronograma`
--

DROP TABLE IF EXISTS `cronograma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cronograma` (
  `idCronograma` int(11) NOT NULL,
  `Horario_Apertura` varchar(45) DEFAULT NULL,
  `Horario_Clases` varchar(45) DEFAULT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idCronograma`),
  KEY `fk_Cronograma_Usuario1_idx` (`Usuario_idUsuario`),
  CONSTRAINT `fk_Cronograma_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronograma`
--

LOCK TABLES `cronograma` WRITE;
/*!40000 ALTER TABLE `cronograma` DISABLE KEYS */;
INSERT INTO `cronograma` VALUES (1,'lunes','martes',1),(2,'martes','miercoles',2);
/*!40000 ALTER TABLE `cronograma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ejercicio`
--

DROP TABLE IF EXISTS `ejercicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ejercicio` (
  `idEjercicio` int(11) NOT NULL,
  `Tipo_Ejercicio` varchar(45) DEFAULT NULL,
  `Musculo_Trabajado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEjercicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejercicio`
--

LOCK TABLES `ejercicio` WRITE;
/*!40000 ALTER TABLE `ejercicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `ejercicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pago` (
  `idPago` int(11) NOT NULL,
  `Valor_Pago` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rol` (
  `idRol` int(11) NOT NULL,
  `Permiso_Rol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol_has_usuario`
--

DROP TABLE IF EXISTS `rol_has_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rol_has_usuario` (
  `Rol_idRol` int(11) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`Rol_idRol`,`Usuario_idUsuario`),
  KEY `fk_Rol_has_Usuario_Usuario1_idx` (`Usuario_idUsuario`),
  KEY `fk_Rol_has_Usuario_Rol_idx` (`Rol_idRol`),
  CONSTRAINT `fk_Rol_has_Usuario_Rol` FOREIGN KEY (`Rol_idRol`) REFERENCES `rol` (`idrol`),
  CONSTRAINT `fk_Rol_has_Usuario_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol_has_usuario`
--

LOCK TABLES `rol_has_usuario` WRITE;
/*!40000 ALTER TABLE `rol_has_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `rol_has_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutina`
--

DROP TABLE IF EXISTS `rutina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rutina` (
  `idRutina` int(11) NOT NULL,
  `Dias_Rutina` varchar(45) DEFAULT NULL,
  `Ejercicios_Rutina` varchar(45) DEFAULT NULL,
  `Recomendacion_Rutina` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRutina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutina`
--

LOCK TABLES `rutina` WRITE;
/*!40000 ALTER TABLE `rutina` DISABLE KEYS */;
/*!40000 ALTER TABLE `rutina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutina_has_clase`
--

DROP TABLE IF EXISTS `rutina_has_clase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rutina_has_clase` (
  `Rutina_idRutina` int(11) NOT NULL,
  `Clase_idClase` int(11) NOT NULL,
  PRIMARY KEY (`Rutina_idRutina`,`Clase_idClase`),
  KEY `fk_Rutina_has_Clase_Clase1_idx` (`Clase_idClase`),
  KEY `fk_Rutina_has_Clase_Rutina1_idx` (`Rutina_idRutina`),
  CONSTRAINT `fk_Rutina_has_Clase_Clase1` FOREIGN KEY (`Clase_idClase`) REFERENCES `clase` (`idclase`),
  CONSTRAINT `fk_Rutina_has_Clase_Rutina1` FOREIGN KEY (`Rutina_idRutina`) REFERENCES `rutina` (`idrutina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutina_has_clase`
--

LOCK TABLES `rutina_has_clase` WRITE;
/*!40000 ALTER TABLE `rutina_has_clase` DISABLE KEYS */;
/*!40000 ALTER TABLE `rutina_has_clase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `Primer_Nombre` varchar(45) DEFAULT NULL,
  `Segundo _Nombre` varchar(45) DEFAULT NULL,
  `Primer_Apellido` varchar(45) DEFAULT NULL,
  `Segundo_Apellido` varchar(45) DEFAULT NULL,
  `Edad` int(11) DEFAULT NULL,
  `Numero_Documento` int(11) DEFAULT NULL,
  `TipoDeDocumento` varchar(45) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL,
  `Contraseña` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `Correo_UNIQUE` (`Correo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Maicol','Eusebio','Torres','Martinez',22,528447654,'cc',5758484,'Saf@misena.edu.co','sxcghd123'),(2,'Carmen','Antonia','Gonzales','Gonzales',18,2554181,'cc',2698751,'ghfhgd@vjhdsfjk.com','12xc3v a45');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_has_pago`
--

DROP TABLE IF EXISTS `usuario_has_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario_has_pago` (
  `Usuario_idUsuario` int(11) NOT NULL,
  `Pago_idPago` int(11) NOT NULL,
  PRIMARY KEY (`Usuario_idUsuario`,`Pago_idPago`),
  KEY `fk_Usuario_has_Pago_Pago1_idx` (`Pago_idPago`),
  KEY `fk_Usuario_has_Pago_Usuario1_idx` (`Usuario_idUsuario`),
  CONSTRAINT `fk_Usuario_has_Pago_Pago1` FOREIGN KEY (`Pago_idPago`) REFERENCES `pago` (`idpago`),
  CONSTRAINT `fk_Usuario_has_Pago_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_has_pago`
--

LOCK TABLES `usuario_has_pago` WRITE;
/*!40000 ALTER TABLE `usuario_has_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_has_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_has_rutina`
--

DROP TABLE IF EXISTS `usuario_has_rutina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario_has_rutina` (
  `Usuario_idUsuario` int(11) NOT NULL,
  `Rutina_idRutina` int(11) NOT NULL,
  PRIMARY KEY (`Usuario_idUsuario`,`Rutina_idRutina`),
  KEY `fk_Usuario_has_Rutina_Rutina1_idx` (`Rutina_idRutina`),
  KEY `fk_Usuario_has_Rutina_Usuario1_idx` (`Usuario_idUsuario`),
  CONSTRAINT `fk_Usuario_has_Rutina_Rutina1` FOREIGN KEY (`Rutina_idRutina`) REFERENCES `rutina` (`idrutina`),
  CONSTRAINT `fk_Usuario_has_Rutina_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_has_rutina`
--

LOCK TABLES `usuario_has_rutina` WRITE;
/*!40000 ALTER TABLE `usuario_has_rutina` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_has_rutina` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-10 14:06:43

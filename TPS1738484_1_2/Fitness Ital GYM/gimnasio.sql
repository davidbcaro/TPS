-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 31-03-2019 a las 13:39:07
-- Versión del servidor: 10.2.8-MariaDB
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gimnasio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

DROP TABLE IF EXISTS `clase`;
CREATE TABLE IF NOT EXISTS `clase` (
  `idClase` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Descripcion_Clase` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idClase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clase`
--

INSERT INTO `clase` (`idClase`, `Nombre`, `Descripcion_Clase`) VALUES
(12, 'zumba', 'tiempo largo'),
(13, 'yoga', 'tiempo continuo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cronograma`
--

DROP TABLE IF EXISTS `cronograma`;
CREATE TABLE IF NOT EXISTS `cronograma` (
  `idCronograma` int(11) NOT NULL,
  `Horario_Apertura` varchar(45) DEFAULT NULL,
  `Horario_Clases` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCronograma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cronograma`
--

INSERT INTO `cronograma` (`idCronograma`, `Horario_Apertura`, `Horario_Clases`) VALUES
(1, '9 am', '5 pm'),
(2, '8am', '3pm'),
(17, '8am', '1pm'),
(25, '7am', '7am'),
(32, '10am', '4pm'),
(48, '6am', '5pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicio`
--

DROP TABLE IF EXISTS `ejercicio`;
CREATE TABLE IF NOT EXISTS `ejercicio` (
  `idEjercicio` int(11) NOT NULL,
  `Tipo_Ejercicio` varchar(45) DEFAULT NULL,
  `Musculo_Trabajado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEjercicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `identificacion`
--

DROP TABLE IF EXISTS `identificacion`;
CREATE TABLE IF NOT EXISTS `identificacion` (
  `id_Identificacion` int(11) NOT NULL,
  `tipo_documento` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `identificacion`
--

INSERT INTO `identificacion` (`id_Identificacion`, `tipo_documento`) VALUES
(369, 'pasaporte'),
(746, 'tarjeta _identidad'),
(852, 'cedula '),
(1476, 'cedula_extranjeria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medida`
--

DROP TABLE IF EXISTS `medida`;
CREATE TABLE IF NOT EXISTS `medida` (
  `id_Medida` int(11) NOT NULL,
  `hombros` varchar(45) DEFAULT NULL,
  `pecho` varchar(45) DEFAULT NULL,
  `biceps` varchar(45) DEFAULT NULL,
  `triceps` varchar(45) DEFAULT NULL,
  `antebrazo` varchar(45) DEFAULT NULL,
  `abdomen` varchar(45) DEFAULT NULL,
  `muslo` varchar(45) DEFAULT NULL,
  `oblicuos` varchar(45) DEFAULT NULL,
  `pantorrilla` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Medida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `medida`
--

INSERT INTO `medida` (`id_Medida`, `hombros`, `pecho`, `biceps`, `triceps`, `antebrazo`, `abdomen`, `muslo`, `oblicuos`, `pantorrilla`) VALUES
(41, '20cm', '19cm', '15cm', '4cm', '12cm', '1cm', '2cm', '55cm', '3cm'),
(42, '85cm', '60cm', '15cm', '19cm', '21cm', '2cm', '54cm', '49cm', '5cm'),
(43, '13cm', '50cm', '42cm', '6cm', '54cm', '5cm', '32cm', '54cm', '45cm'),
(44, '50cm', '15cm', '21cm', '21cm', '74cm', '54cm', '54cm', '41cm', '56cm'),
(45, '14cm', '64cm', '2cm', '21cm', '21cm', '234cm', '64cm', '15cm', '12cm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

DROP TABLE IF EXISTS `pago`;
CREATE TABLE IF NOT EXISTS `pago` (
  `idPago` int(11) NOT NULL,
  `Valor_Pago` varchar(45) DEFAULT NULL,
  `usuario_idUsuario` int(11) NOT NULL,
  `usuario_rol_idRol` int(11) NOT NULL,
  `usuario_cronograma_idCronograma` int(11) NOT NULL,
  PRIMARY KEY (`idPago`,`usuario_idUsuario`,`usuario_rol_idRol`,`usuario_cronograma_idCronograma`),
  KEY `fk_pago_usuario1_idx` (`usuario_idUsuario`,`usuario_rol_idRol`,`usuario_cronograma_idCronograma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `idRol` int(11) NOT NULL,
  `Permiso_Rol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idRol`, `Permiso_Rol`) VALUES
(11, 'administrador'),
(12, 'cliente'),
(13, 'instructor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutina`
--

DROP TABLE IF EXISTS `rutina`;
CREATE TABLE IF NOT EXISTS `rutina` (
  `idRutina` int(11) NOT NULL,
  `Dias_Rutina` varchar(45) DEFAULT NULL,
  `Ejercicios_Rutina` varchar(45) DEFAULT NULL,
  `Recomendacion_Rutina` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRutina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutina_has_ejercicio`
--

DROP TABLE IF EXISTS `rutina_has_ejercicio`;
CREATE TABLE IF NOT EXISTS `rutina_has_ejercicio` (
  `rutina_idRutina` int(11) NOT NULL,
  `ejercicio_idEjercicio` int(11) NOT NULL,
  PRIMARY KEY (`rutina_idRutina`,`ejercicio_idEjercicio`),
  KEY `fk_Rutina_has_Ejercicio_Ejercicio1_idx` (`ejercicio_idEjercicio`),
  KEY `fk_Rutina_has_Ejercicio_Rutina1_idx` (`rutina_idRutina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutina_has_usuario`
--

DROP TABLE IF EXISTS `rutina_has_usuario`;
CREATE TABLE IF NOT EXISTS `rutina_has_usuario` (
  `rutina_idRutina` int(11) NOT NULL,
  `usuario_idUsuario` int(11) NOT NULL,
  `usuario_rol_idRol` int(11) NOT NULL,
  `usuario_cronograma_idCronograma` int(11) NOT NULL,
  PRIMARY KEY (`rutina_idRutina`,`usuario_idUsuario`,`usuario_rol_idRol`,`usuario_cronograma_idCronograma`),
  KEY `fk_Rutina_has_Usuario_Rutina1_idx` (`rutina_idRutina`),
  KEY `fk_rutina_has_usuario_usuario1_idx` (`usuario_idUsuario`,`usuario_rol_idRol`,`usuario_cronograma_idCronograma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `Primer_Nombre` varchar(45) NOT NULL,
  `Segundo _Nombre` varchar(45) NOT NULL,
  `Primer_Apellido` varchar(45) DEFAULT NULL,
  `Segundo_Apellido` varchar(45) DEFAULT NULL,
  `Edad` int(11) DEFAULT NULL,
  `numero_documento` int(20) UNSIGNED DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL,
  `Contraseña` varchar(45) DEFAULT NULL,
  `rol_idRol` int(11) NOT NULL,
  `cronograma_idCronograma` int(11) NOT NULL,
  `identificacion_id_Identificacion` int(11) NOT NULL,
  `medida_id_Medida` int(11) NOT NULL,
  PRIMARY KEY (`idUsuario`,`rol_idRol`,`cronograma_idCronograma`,`identificacion_id_Identificacion`,`medida_id_Medida`),
  UNIQUE KEY `Correo_UNIQUE` (`Correo`),
  KEY `fk_Usuario_Identificacion1_idx` (`identificacion_id_Identificacion`),
  KEY `fk_usuario_rol_idx` (`rol_idRol`),
  KEY `fk_usuario_cronograma1_idx` (`cronograma_idCronograma`),
  KEY `fk_usuario_medida1_idx` (`medida_id_Medida`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_has_clase`
--

DROP TABLE IF EXISTS `usuario_has_clase`;
CREATE TABLE IF NOT EXISTS `usuario_has_clase` (
  `usuario_idUsuario` int(11) NOT NULL,
  `usuario_rol_idRol` int(11) NOT NULL,
  `usuario_cronograma_idCronograma` int(11) NOT NULL,
  `usuario_identificacion_id_Identificacion` int(11) NOT NULL,
  `clase_idClase` int(11) NOT NULL,
  PRIMARY KEY (`usuario_idUsuario`,`usuario_rol_idRol`,`usuario_cronograma_idCronograma`,`usuario_identificacion_id_Identificacion`,`clase_idClase`),
  KEY `fk_Usuario_has_Clase_Clase1_idx` (`clase_idClase`),
  KEY `fk_usuario_has_clase_usuario1_idx` (`usuario_idUsuario`,`usuario_rol_idRol`,`usuario_cronograma_idCronograma`,`usuario_identificacion_id_Identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `fk_pago_usuario1` FOREIGN KEY (`usuario_idUsuario`,`usuario_rol_idRol`,`usuario_cronograma_idCronograma`) REFERENCES `usuario` (`idusuario`, `rol_idrol`, `cronograma_idcronograma`);

--
-- Filtros para la tabla `rutina_has_ejercicio`
--
ALTER TABLE `rutina_has_ejercicio`
  ADD CONSTRAINT `fk_rutina_has_ejercicio_ejercicio1` FOREIGN KEY (`ejercicio_idEjercicio`) REFERENCES `ejercicio` (`idEjercicio`),
  ADD CONSTRAINT `fk_rutina_has_ejercicio_rutina1` FOREIGN KEY (`rutina_idRutina`) REFERENCES `rutina` (`idRutina`);

--
-- Filtros para la tabla `rutina_has_usuario`
--
ALTER TABLE `rutina_has_usuario`
  ADD CONSTRAINT `fk_rutina_has_usuario_rutina1` FOREIGN KEY (`rutina_idRutina`) REFERENCES `rutina` (`idRutina`),
  ADD CONSTRAINT `fk_rutina_has_usuario_usuario1` FOREIGN KEY (`usuario_idUsuario`,`usuario_rol_idRol`,`usuario_cronograma_idCronograma`) REFERENCES `usuario` (`idusuario`, `rol_idrol`, `cronograma_idcronograma`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_cronograma1` FOREIGN KEY (`cronograma_idCronograma`) REFERENCES `cronograma` (`idCronograma`),
  ADD CONSTRAINT `fk_usuario_identificacion1` FOREIGN KEY (`identificacion_id_Identificacion`) REFERENCES `identificacion` (`id_Identificacion`),
  ADD CONSTRAINT `fk_usuario_medida1` FOREIGN KEY (`medida_id_Medida`) REFERENCES `medida` (`id_Medida`),
  ADD CONSTRAINT `fk_usuario_rol` FOREIGN KEY (`rol_idRol`) REFERENCES `rol` (`idRol`);

--
-- Filtros para la tabla `usuario_has_clase`
--
ALTER TABLE `usuario_has_clase`
  ADD CONSTRAINT `fk_usuario_has_clase_clase1` FOREIGN KEY (`clase_idClase`) REFERENCES `clase` (`idClase`),
  ADD CONSTRAINT `fk_usuario_has_clase_usuario1` FOREIGN KEY (`usuario_idUsuario`,`usuario_rol_idRol`,`usuario_cronograma_idCronograma`,`usuario_identificacion_id_Identificacion`) REFERENCES `usuario` (`idUsuario`, `rol_idRol`, `cronograma_idCronograma`, `identificacion_id_Identificacion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

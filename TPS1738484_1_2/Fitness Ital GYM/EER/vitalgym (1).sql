-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 31-03-2019 a las 19:49:39
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
-- Base de datos: `vitalgym`
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
  `Tipo_Ejercicio` varchar(70) DEFAULT NULL,
  `Musculo_Trabajado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEjercicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ejercicio`
--

INSERT INTO `ejercicio` (`idEjercicio`, `Tipo_Ejercicio`, `Musculo_Trabajado`) VALUES
(1, 'Curl de bíceps con barra', 'Biceps'),
(2, 'Curl de bíceps con barra y agarre en pronación', 'Biceps'),
(3, 'Curl de bíceps con polea', 'Biceps'),
(4, 'Dipping entre dos bancos. Tríceps', 'Triceps'),
(5, 'Extensión con mancuernas para tríceps. Tronco inclinado', 'Triceps'),
(6, 'Extensión de los brazos sentado y con barra', 'Triceps'),
(7, 'Elevación de piernas suspendido en barra fija', 'Abdominal'),
(8, 'El “TWIST” abdominal', 'Abdominal'),
(9, 'Objetivo… marcar abdominales', 'Abdominal'),
(10, '“Pull-Over” con mancuerma', 'Pecho'),
(11, 'Aperturas en máquina contractora de pecho', 'Pecho'),
(12, 'Apertura con mancuernas en banco inclinado', 'Pecho'),
(13, 'Press de banco declinado', 'Pecho'),
(14, 'Tracción o dominadas en barra fija\r\n', 'Espalda'),
(15, 'Encogimiento de hombros en máquina', 'Espalda'),
(16, 'Encogimiento y rotación de los hombros con mancuernas', 'Espalda'),
(17, 'Elevación de talones sentado con barra', 'Pierna'),
(18, 'Extensión de talones sentado en máquina', 'Pierna'),
(19, 'Flexión del tronco al frente “Buenos Dias”', 'Pierna'),
(20, 'Ejercicios TRX para glúteos', 'Gluteos');

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
(45, '14cm', '64cm', '2cm', '21cm', '21cm', '234cm', '64cm', '15cm', '12cm'),
(46, '12cm', '15cm', '12cm', '15cm', '22cm', '45cm', '45cm', '78cm', '89cm'),
(47, '55cm', '88cm', '78cm', '86cm', '79cm', '63cm', '45cm', '88cm', '1cm'),
(48, '12cm', '12cm', '45cm', '96cm', '33cm', '88cm', '22cm', '12cm', '2cm'),
(49, '85cm', '96cm', '88cm', '54cm', '12cm', '20cm', '33cm', '55cm', '55cm'),
(50, '78cm', '55cm', '93cm', '25cm', '79cm', '78cm', '77cm', '88cm', '96cm'),
(51, '89cm', '33cm', '96cm', '54cm', '89cm', '74cm', '33cm', '65cm', '97cm'),
(52, '14cm', '37cm', '78cm', '44cm', '89cm', '22cm', '46cm', '55cm', '63cm'),
(53, '96cm', '55cm', '20cm', '30cm', '31cm', '22cm', '22cm', '32cm', '11cm'),
(54, '78cm', '41cm', '89cm', '44cm', '89cm', '73cm', '12cm', '55cm', '66cm'),
(55, '22cm', '47cm', '35cm', '88cm', '33cm', '78cm', '96cm', '22cm', '20cm'),
(56, '14cm', '35cm', '42cm', '15cm', '84cm', '63cm', '21cm', '54cm', '74cm'),
(57, '52cm', '42cm', '63cm', '52cm', '14cm', '35cm', '83cm', '63cm', '36cm'),
(58, '36cm', '42cm', '63cm', '54cm', '63cm', '54cm', '84cm', '24cm', '10cm'),
(59, '84cm', '65cm', '32cm', '63cm', '41cm', '25cm', '63cm', '45cm', '86cm'),
(60, '52cm', '42cm', '85cm', '39cm', '42cm', '35cm', '46cm', '46cm', '96cm'),
(61, '34cm', '34cm', '45cm', '63cm', '30cm', '45cm', '63cm', '20cm', '16cm');

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

--
-- Volcado de datos para la tabla `rutina`
--

INSERT INTO `rutina` (`idRutina`, `Dias_Rutina`, `Ejercicios_Rutina`, `Recomendacion_Rutina`) VALUES
(1, '6 dias', 'biceps, triceps', 'hacer adecuadamente'),
(2, '6 dias', 'biceps, espalda,cola', 'hacer adecuadamente el ejercicio'),
(3, '6 dias', 'biceps, espalda', 'hacer adecuadamente el ejercicio'),
(4, '6 dias', 'espalda', 'hacer adecuadamente el ejercicio'),
(5, '6 dias', 'gluteos,antebrazo', 'Hacer adecuadamente el ejercicio'),
(6, '6 dias', 'triceps', 'hacer adecuadamente el ejercicio'),
(7, '6 dias', 'gluteos,antebrazo,espalda', 'Hacer adecuadamente el ejercicio'),
(8, '6 dias', 'abdomen', 'hacer adecuadamente el ejercicio'),
(9, '6 dias', 'abdomen,pierna', 'Hacer adecuadamente el ejercicio'),
(10, '6 dias', 'espalda,hombros,pecho', 'hacer adecuadamente el ejercicio'),
(11, '6 dias', 'pecho,biceps', 'Hacer adecuadamente el ejercicio'),
(12, '6 dias', 'biceps, espalda,gluteos', 'hacer adecuadamente el ejercicio'),
(13, '6 dias', 'Pecho, Pierna, Espalda', 'Hacer adecuadamente el ejercicio'),
(14, '6 dias', 'Pierna, Abdomenal, Triceps', 'hacer adecuadamente el ejercicio'),
(15, '6 dias', 'Biceps, Triceps, Gluteos', 'Hacer adecuadamente el ejercicio'),
(16, '6 dias', 'espalda,hombros,pecho', 'Hacer adecuadamente el ejercicio'),
(17, '6 dias', 'gluteos,antebrazo', 'Hacer adecuadamente el ejercicio'),
(18, '6 dias', 'espalda,hombros,pecho', 'Hacer adecuadamente el ejercicio'),
(19, '6 dias', 'pecho,biceps', 'Hacer adecuadamente el ejercicio'),
(20, '6 dias', 'espalda,hombros,pecho', 'Hacer adecuadamente el ejercicio');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `Primer_Nombre`, `Segundo _Nombre`, `Primer_Apellido`, `Segundo_Apellido`, `Edad`, `numero_documento`, `Telefono`, `Correo`, `Contraseña`, `rol_idRol`, `cronograma_idCronograma`, `identificacion_id_Identificacion`, `medida_id_Medida`) VALUES
(1, 'johan', 'steven', 'romero', 'leaño', 18, 1000856294, 7236426, 'johansromero2001@gmail.com', '12345', 11, 2, 852, 53),
(2, 'paola', 'juliana', 'guevara', 'laguna', 22, 52234075, 313381397, 'jp@gmail.com', '54321', 12, 2, 852, 44),
(3, 'nelson', 'steven', 'leaño', 'gomez', 45, 79511001, 212365425, 'negrooooooooooonoseaflojo@gamil.com', '54789', 13, 48, 369, 45),
(4, 'flor', 'alejandra', 'ramoz', 'quintero', 66, 755514144, 2000001, 'florismela@gamil.com', '555523', 11, 48, 852, 47),
(5, 'pedro', 'juan', 'romero', 'petronilo', 19, 665255535, 222536636, 'petronilo@gmail.com', '96325', 13, 25, 1476, 45),
(6, 'alejo', 'david', 'rosalvo', 'finalizacion', 45, 77747475, 310455585, 'jajajajaj@gmail.com', '222001', 11, 1, 369, 60),
(7, 'cristian', 'javier', 'maya', 'salazar', 45, 1222525, 33232163, 'llll@gmail.com', '1114114', 11, 2, 1476, 48),
(8, 'matias', 'felipe', 'suarez', 'nosea', 21, 7444144, 115454855, 'suareznoseahiji@gmail.com', '78585', 11, 2, 1476, 59),
(9, 'lais', 'luisa', 'almanza', 'gomez', 19, 855555, 5465565, 'luisalais@gmail.com', '77777', 13, 1, 852, 57),
(10, 'gloria', 'juliana', 'paez', 'perdomo', 74, 8555695, 2222121, 'nomelose@hotmail.com', '52362', 12, 17, 1476, 42),
(11, 'juan', 'martin', 'gonzales', 'juamo', 55, 45455454, 411111222, 'martinpk@gmail.com', '44545445', 11, 17, 746, 48),
(12, 'matias', 'julian', 'ramoz', 'laguna', 31, 252653232, 4444444, 'skkssksksk@yahoo.com', '88885', 11, 25, 369, 51),
(13, 'roberto', 'robert', 'gomez', 'marroqui', 77, 555555, 222222, 'estoycansado@hotmail.com', '74474', 13, 2, 1476, 46),
(14, 'jersson', 'adrual', 'personm', 'hans', 18, 665445, 5655655, 'jerson12@gmail.com', '52362', 13, 17, 852, 49),
(15, 'esfera', 'latina', 'dance', 'study', 55, 4444585, 9966996, 'bailaconamor@gmail.com', '88552252', 11, 17, 1476, 47),
(16, 'ignacio', 'marco', 'PAZZZZ', 'marcolino', 17, 966524, 663655, 'elmarco@hotmail.com', '5555', 12, 17, 746, 58),
(17, 'victor', 'manuel', 'salsa', 'koaj', 25, 522132, 15855, 'salsaispasion@gmail.com', '32265', 11, 17, 369, 45),
(18, 'felipe', 'fabian', 'stuard', 'garavito', 45, 12451254, 23556, 'alvstoy@hotmail.com', '89965', 13, 17, 1476, 54),
(19, 'crack', 'family', 'little', 'josea', 57, 2453233, 452252, 'losamigoa@gmail.com', '96612', 13, 17, 1476, 52),
(20, 'felipe', 'juliano', 'stuard', 'hans', 12, 66363, 21155, 'estoyvaliendo@gmail.com', '4122121', 12, 48, 746, 47);

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
  ADD CONSTRAINT `fk_pago_usuario1` FOREIGN KEY (`usuario_idUsuario`,`usuario_rol_idRol`,`usuario_cronograma_idCronograma`) REFERENCES `usuario` (`idUsuario`, `rol_idRol`, `cronograma_idCronograma`);

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
  ADD CONSTRAINT `fk_rutina_has_usuario_usuario1` FOREIGN KEY (`usuario_idUsuario`,`usuario_rol_idRol`,`usuario_cronograma_idCronograma`) REFERENCES `usuario` (`idUsuario`, `rol_idRol`, `cronograma_idCronograma`);

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

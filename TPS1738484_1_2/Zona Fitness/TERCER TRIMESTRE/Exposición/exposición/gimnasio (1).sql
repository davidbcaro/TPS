-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 06-04-2019 a las 19:24:20
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
-- Estructura de tabla para la tabla `dieta`
--

DROP TABLE IF EXISTS `dieta`;
CREATE TABLE IF NOT EXISTS `dieta` (
  `ID_Dieta` int(11) NOT NULL,
  `Duracion` varchar(35) NOT NULL,
  PRIMARY KEY (`ID_Dieta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dieta`
--

INSERT INTO `dieta` (`ID_Dieta`, `Duracion`) VALUES
(1, '1-MES'),
(2, '15-DIAS'),
(3, '3-MESES'),
(4, '2-MESES'),
(5, '1-MES'),
(6, '15-DIAS'),
(7, '2-MESES'),
(8, '3-MESES'),
(9, '1-MES'),
(10, '15-DIAS'),
(11, '1-MES'),
(12, '15-DIAS'),
(13, '1-MES'),
(14, '15-DIAS'),
(15, '1-MES'),
(16, '3-MESES'),
(17, '1-MES'),
(18, '3-MESES'),
(19, '15-DIAS'),
(20, '3-MESES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dueta_usuario`
--

DROP TABLE IF EXISTS `dueta_usuario`;
CREATE TABLE IF NOT EXISTS `dueta_usuario` (
  `ID_Dieta_Usuario` int(11) NOT NULL,
  `Información_Dieta` varchar(35) NOT NULL,
  PRIMARY KEY (`ID_Dieta_Usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dueta_usuario`
--

INSERT INTO `dueta_usuario` (`ID_Dieta_Usuario`, `Información_Dieta`) VALUES
(1, 'documento01'),
(2, 'documento02'),
(3, 'documento03'),
(4, 'documento06'),
(5, 'documento07'),
(6, 'documento09'),
(7, 'documento10'),
(8, 'documento11'),
(9, 'documento13'),
(10, 'documento14'),
(11, 'documento11'),
(12, 'documento12'),
(13, 'documento13'),
(14, 'documento14'),
(15, 'documento15'),
(16, 'documento16'),
(17, 'documento17'),
(18, 'documento18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_cuenta`
--

DROP TABLE IF EXISTS `estado_cuenta`;
CREATE TABLE IF NOT EXISTS `estado_cuenta` (
  `ID_Estado_Cuenta` int(11) NOT NULL,
  `Periodo_Inscripción` varchar(35) NOT NULL,
  `costo` int(35) NOT NULL,
  `info_Estado_Cuenta` varchar(35) NOT NULL,
  PRIMARY KEY (`ID_Estado_Cuenta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado_cuenta`
--

INSERT INTO `estado_cuenta` (`ID_Estado_Cuenta`, `Periodo_Inscripción`, `costo`, `info_Estado_Cuenta`) VALUES
(1, 'Quincenal', 40, 'DOCUMENTO01'),
(2, 'DIA', 10, 'DOCUMENTO02'),
(3, 'MENSUAL', 60, 'DOCUMENTO03'),
(4, 'Quincenal', 40, 'DOCUMENTO04'),
(5, 'DIA', 10, 'DOCUMENTO05'),
(6, 'MENSUAL', 60, 'DOCUMENTO6'),
(7, 'DIA', 10, 'DOCUMENTO07'),
(8, 'ANUAL', 250, 'DOCUMENTO8'),
(9, 'Quincenal', 40, 'DOCUMENTO09'),
(10, 'ANUAL', 250, 'DOCUMENTO10'),
(11, 'MENSUAL', 60, 'DOCUMENTO11'),
(12, 'ANUAL', 250, 'DOCUMENTO12'),
(13, 'MENSUAL', 60, 'DOCUMENTO13'),
(14, 'ANUAL', 250, 'DOCUMENTO14'),
(15, 'DIA', 10, 'DOCUMENTO15'),
(16, 'ANUAL', 250, 'DOCUMENTO16'),
(17, 'Quincenal', 40, 'DOCUMENTO17'),
(18, 'MENSUAL', 60, 'DOCUMENTO18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripción`
--

DROP TABLE IF EXISTS `inscripción`;
CREATE TABLE IF NOT EXISTS `inscripción` (
  `ID_Inscripcion` int(11) NOT NULL,
  `ID_usuario` int(25) NOT NULL,
  `Fecha_Ingreso` date NOT NULL,
  `Fecha_Retiro` date NOT NULL,
  PRIMARY KEY (`ID_Inscripcion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inscripción`
--

INSERT INTO `inscripción` (`ID_Inscripcion`, `ID_usuario`, `Fecha_Ingreso`, `Fecha_Retiro`) VALUES
(1, 1, '2019-01-02', '2019-05-12'),
(2, 2, '2019-03-03', '2019-06-02'),
(3, 3, '2019-03-02', '2019-06-12'),
(4, 4, '2019-06-30', '2019-08-30'),
(5, 5, '2019-03-02', '2019-07-02'),
(6, 6, '2019-06-04', '2019-09-04'),
(7, 7, '2019-03-04', '2019-05-04'),
(8, 8, '2019-05-06', '2019-09-06'),
(9, 9, '2019-06-05', '2019-09-05'),
(10, 10, '2019-06-09', '2019-06-26'),
(11, 11, '2019-06-24', '2019-08-24'),
(12, 12, '2019-03-02', '2019-04-02'),
(13, 13, '2019-06-05', '2019-06-12'),
(14, 14, '2019-06-24', '2019-08-30'),
(15, 15, '2019-08-05', '2019-10-02'),
(16, 15, '2019-05-02', '2019-06-02'),
(17, 17, '2019-11-03', '2019-12-02'),
(18, 18, '2019-05-03', '2019-09-03'),
(19, 19, '2019-02-02', '2019-06-06'),
(20, 20, '2019-06-12', '2019-08-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `id_rol` int(11) NOT NULL,
  `Tipo_rol` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `Tipo_rol`) VALUES
(1, 'ADMINISTRADOR'),
(2, 'INSTRUCTOR'),
(3, 'INSTRUCTOR'),
(4, 'INSTRUCTOR'),
(5, 'INSTRUCTOR'),
(6, 'USUARIO'),
(7, 'USUARIO'),
(8, 'USUARIO'),
(9, 'USUARIO'),
(10, 'USUARIO'),
(11, 'USUARIO'),
(12, 'USUARIO'),
(13, 'USUARIO'),
(14, 'USUARIO'),
(15, 'USUARIO'),
(16, 'USUARIO'),
(17, 'USUARIO'),
(18, 'USUARIO'),
(19, 'USUARIO'),
(20, 'USUARIO'),
(21, 'USUARIO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutina`
--

DROP TABLE IF EXISTS `rutina`;
CREATE TABLE IF NOT EXISTS `rutina` (
  `ID_Rutina` int(11) NOT NULL,
  `Duracion_Rutina` varchar(35) NOT NULL,
  `Series_Rutinas` varchar(35) NOT NULL,
  PRIMARY KEY (`ID_Rutina`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rutina`
--

INSERT INTO `rutina` (`ID_Rutina`, `Duracion_Rutina`, `Series_Rutinas`) VALUES
(1, '2HORAS', '3 DE 30'),
(2, '3HORAS', '4 DE 30'),
(3, '1HORA', '3 DE 20'),
(4, '2HORA', '4 DE 30'),
(5, '2horas', '30 de20'),
(6, '2horas', '20 de 60'),
(7, '2horas', '30 de20'),
(8, '3 horas', '400 de 3'),
(10, '2 horas', '30 de20'),
(9, '1 hora', '400 de 2'),
(12, '2 horas', '20 de 60'),
(13, '1 hora ', ' 20 de 20'),
(14, '2horas', '30 de20'),
(15, '1 hora', ' 20 de 20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

DROP TABLE IF EXISTS `servicio`;
CREATE TABLE IF NOT EXISTS `servicio` (
  `id_tipo_servicio` int(11) NOT NULL,
  `Tipo_Alimentacion` varchar(45) DEFAULT NULL,
  `Tipo_Rutina` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_servicio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id_tipo_servicio`, `Tipo_Alimentacion`, `Tipo_Rutina`) VALUES
(1, 'PROTEINA', 'PIERNA_PECHO'),
(2, 'PROTEINA', 'CARDIO'),
(3, 'CARBOIDRATOS', 'CARDIO'),
(4, 'CARBOIDRATOS', 'PECHO_ABDOMEN'),
(5, 'FIBRA', 'CARDIO'),
(6, 'CARBOIDRATOS', 'PECHO_ABDOMEN'),
(7, 'PROTEINA', 'CARDIO'),
(8, 'PROTEINA', 'CARDIO'),
(9, 'PROTEINA', 'PECHO_PIERNA'),
(10, 'PROTEINA', 'PECHO_BRAZOS'),
(12, 'proteina', 'linea-abdomen'),
(15, 'fibra', 'abdomen-linea'),
(13, 'carbohidratos', 'abdomen'),
(14, 'fibra', 'pecho'),
(16, 'proteina', 'linea triceps'),
(17, 'fibra', 'pierna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_servicio`
--

DROP TABLE IF EXISTS `tipo_servicio`;
CREATE TABLE IF NOT EXISTS `tipo_servicio` (
  `ID_tipo_documento` int(11) NOT NULL,
  `Tipo_Alimentación` varchar(35) NOT NULL,
  `Tipo_Rutina` varchar(35) NOT NULL,
  PRIMARY KEY (`ID_tipo_documento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_servicio`
--

INSERT INTO `tipo_servicio` (`ID_tipo_documento`, `Tipo_Alimentación`, `Tipo_Rutina`) VALUES
(1, 'PROTEINA', 'CARDIO'),
(2, 'carbohidrato', 'brazo'),
(3, 'vitamina', 'pecho'),
(4, 'vitamina', 'linea-brazo'),
(5, 'vitamina', 'abdomen'),
(6, 'vitamina', 'abdomen'),
(7, 'vitamina', 'pecho'),
(8, 'vitamina', 'abdomen'),
(9, 'proteina', 'brazo'),
(10, 'vitamina', 'abdomen'),
(11, 'proteina', 'pecho'),
(12, 'vitamina', 'abdomen'),
(13, 'proteina', 'pierna'),
(14, 'vitamina', 'pierna'),
(15, 'fibra', 'abdomen-linea'),
(16, 'fibra', 'linea-abdomen'),
(17, 'proteina', 'abdomen-linea'),
(18, 'vitamina', 'linea-abdomen'),
(19, 'proteina', 'pecho');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `codigo_usuario` int(25) NOT NULL,
  `primer_nombre` varchar(30) NOT NULL,
  `segundo_nombre` varchar(30) NOT NULL,
  `primer_apellido` varchar(30) NOT NULL,
  `segundo_apellido` varchar(30) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `numero_documento` int(25) NOT NULL,
  `correo_electronico` varchar(30) NOT NULL,
  `grupo_sanguineo` varchar(30) NOT NULL,
  `edad` int(10) NOT NULL,
  PRIMARY KEY (`codigo_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`codigo_usuario`, `primer_nombre`, `segundo_nombre`, `primer_apellido`, `segundo_apellido`, `fecha_nacimiento`, `numero_documento`, `correo_electronico`, `grupo_sanguineo`, `edad`) VALUES
(1, 'lina', 'andre', 'perez', 'quevedo', '1999-11-23', 10023154, 'lina@gmail.com', 'A+', 19),
(2, 'laura', 'camila', 'duran', 'duran', '1999-11-28', 1001270225, 'laura@gmail.com', 'A+', 19),
(3, 'martin', 'eduard', 'velarde', 'moscu', '1999-07-30', 102154188, 'martin@gmail.com', 'o-', 19),
(4, 'martina', 'andrea', 'peligrosa', 'duarte', '1999-01-20', 1031546696, 'martina@gmail.com', 'o-', 20),
(5, 'martha', 'lucia', 'duran', 'duran', '1998-11-30', 100542352, 'martha@gmail.com', 'A-', 21),
(6, 'juliana', 'sara', 'castañeda', 'parrado', '2000-06-30', 10023155, 'juliana@gmail.com', 'A-', 18),
(7, 'sara', 'andrea', 'perez', 'castro', '1995-01-05', 1322542232, 'sara@gmail.com', 'o-', 25),
(8, 'andres', 'santiago', 'gonzales', 'perez', '2000-12-23', 12345678, 'santiago@gmail.com', 'o+', 18),
(9, 'alejandra ', 'maria', 'rodriguez', 'aldana', '2000-09-07', 123456987, 'aleja@gmail.com', 'o+', 18),
(11, 'laura', 'lucia', 'duran', 'perez', '1999-01-25', 12345616, 'laura@gmail.com', 'o+', 20),
(12, 'martina', 'lucia', 'velarde', 'pelucas', '1998-11-22', 123456547, 'martina01@gmail.com', 'A+', 21);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

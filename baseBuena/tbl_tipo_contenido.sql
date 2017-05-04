-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2017 a las 08:05:44
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `netflix_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_contenido`
--

CREATE TABLE IF NOT EXISTS `tbl_tipo_contenido` (
  `codigo_tipo_contenido` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo que identifica de forma unica un tipo de contenido, ejemplo (novela, pelicula...).',
  `nombre_tipo_contenido` varchar(100) NOT NULL COMMENT 'campo que almacena el nombre del tipo de contenido. ',
  PRIMARY KEY (`codigo_tipo_contenido`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tbl_tipo_contenido`
--

INSERT INTO `tbl_tipo_contenido` (`codigo_tipo_contenido`, `nombre_tipo_contenido`) VALUES
(1, 'contenido de prueba'),
(2, 'prueba2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

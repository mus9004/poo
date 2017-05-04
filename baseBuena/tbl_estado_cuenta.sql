-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2017 a las 08:06:34
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
-- Estructura de tabla para la tabla `tbl_estado_cuenta`
--

CREATE TABLE IF NOT EXISTS `tbl_estado_cuenta` (
  `codigo_estado_cuenta` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CODIGO UNICO QUE IDENTIFICA DE FORMA UNICA UN ESTADO DE CUENTA',
  `nombre_estado_cuenta` varchar(45) NOT NULL COMMENT 'CAMPO QUE EL NOMBRE DEL ESTADO DE CUENTA.',
  PRIMARY KEY (`codigo_estado_cuenta`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `tbl_estado_cuenta`
--

INSERT INTO `tbl_estado_cuenta` (`codigo_estado_cuenta`, `nombre_estado_cuenta`) VALUES
(1, 'disponible'),
(2, 'prueba1'),
(3, 'prueba2'),
(4, 'prueba3');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

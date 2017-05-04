-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2017 a las 08:04:23
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
-- Estructura de tabla para la tabla `tbl_membresia`
--

CREATE TABLE IF NOT EXISTS `tbl_membresia` (
  `codigo_membresia` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo que identifica de forma unica una membresia. ',
  `nombre_membresia` varchar(45) NOT NULL COMMENT 'campo que almacena el nombre de la membresia',
  `hd_disponible` int(11) NOT NULL COMMENT 'CAMPO QUE HACE REFERENCIA SI LA CALIDAD DE ALTA DEFINICION ESTA DISPONIBLE EN LA MEMBRESIA.',
  `ultra_hd_disponible` int(11) NOT NULL COMMENT 'CAMPO QUE HACE REFERENCIA SI LA CALIDAD DE ALTA DEFINICION ESTA DISPONIBLE EN LA MEMBRESIA.',
  `pantallas_simultaneas` int(11) NOT NULL COMMENT 'CAMPO QUE DETERMINA CUANTAS PERSONAS PUEDEN UTILIZAR LA CUENTA AL MISMO TIEMPO.',
  `dispositivos` int(11) NOT NULL COMMENT 'CAMPO QUE DETERMINA SI SE PUEDE UTILIZAR LA CUENTA EN DIVERSOS DISPOSITIVOS.',
  `contenido_ilimitado` int(11) NOT NULL,
  `cancelar_cuenta` int(11) NOT NULL COMMENT 'CAMPO QUE INDICA SI SE PUEDE CANCELAR LA CUENTA.',
  `mes_gratis` int(11) NOT NULL COMMENT 'CAMPO QUE DETERMINA SI EL PRIMER MES DE SUSCRIPCION ES GRATIS.',
  `precio_membresia` decimal(10,0) NOT NULL COMMENT 'CAMPO QUE SIRVE PARA ALMACENAR EL PRECIO DE LA MEMBRESIA.',
  PRIMARY KEY (`codigo_membresia`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tbl_membresia`
--

INSERT INTO `tbl_membresia` (`codigo_membresia`, `nombre_membresia`, `hd_disponible`, `ultra_hd_disponible`, `pantallas_simultaneas`, `dispositivos`, `contenido_ilimitado`, `cancelar_cuenta`, `mes_gratis`, `precio_membresia`) VALUES
(1, 'prueba', 1, 2, 1, 1, 1, 1, 1, '4'),
(2, 'prueba', 1, 2, 1, 1, 1, 1, 1, '3');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

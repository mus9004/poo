-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 03-05-2017 a las 21:04:32
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
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
-- Estructura de tabla para la tabla `tbl_idiomas`
--

CREATE TABLE IF NOT EXISTS `tbl_idiomas` (
  `codigo_idioma` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE SIRVE PARA IDENTIFICAR DE FORMA UNICA UN IDIOMA.',
  `nombre_idioma` varchar(100) NOT NULL COMMENT 'CAMPO QUE SIRVE PARA ALMACENAR EL NOMNRE DE UN IDOMA.',
  `abreviatura_idioma` varchar(10) NOT NULL COMMENT 'CAMPO QUE SIRVE PARA ALMACENAR LA ABREVIATURA DE UN IDOMA.',
  PRIMARY KEY (`codigo_idioma`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `tbl_idiomas`
--

INSERT INTO `tbl_idiomas` (`codigo_idioma`, `nombre_idioma`, `abreviatura_idioma`) VALUES
(1, 'Español', 'es'),
(2, 'inglés', 'en'),
(3, 'Alemán', 'de'),
(4, 'Francés', 'fr'),
(5, 'Italiano', 'it'),
(6, 'Japonés', 'jp'),
(7, 'Portugués', 'pt');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

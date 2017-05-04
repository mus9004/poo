-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 03-05-2017 a las 21:16:45
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
-- Estructura de tabla para la tabla `tbl_esrb`
--

CREATE TABLE IF NOT EXISTS `tbl_esrb` (
  `codigo_esrb` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE SIRVE COMO IDENTIFICADOR PARA EL CODIGO DE LA CLASIFICACION.',
  `codigo_imagen` int(11) NOT NULL COMMENT 'campo que identifica la imagen que hace referencia al esrb.',
  `nombre_esrb` varchar(45) NOT NULL COMMENT 'campo que almacena el nombre del esrb. (esrb nos indica el publico al que esta dirigido un contenido, por ejemplo, mayores de 12 años, mayores de 21 años, todo publico, etc...)',
  PRIMARY KEY (`codigo_esrb`),
  KEY `fk_tbl_esrb_tbl_imagen1_idx` (`codigo_imagen`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `tbl_esrb`
--

INSERT INTO `tbl_esrb` (`codigo_esrb`, `codigo_imagen`, `nombre_esrb`) VALUES
(1, 1, 'G'),
(2, 2, 'PG'),
(3, 3, 'PG-13'),
(4, 4, 'R'),
(5, 5, 'NC-17');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_esrb`
--
ALTER TABLE `tbl_esrb`
  ADD CONSTRAINT `fk_tbl_esrb_tbl_imagen1` FOREIGN KEY (`codigo_imagen`) REFERENCES `tbl_imagen` (`codigo_imagen`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

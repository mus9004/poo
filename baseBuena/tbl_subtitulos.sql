-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 03-05-2017 a las 21:05:02
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
-- Estructura de tabla para la tabla `tbl_subtitulos`
--

CREATE TABLE IF NOT EXISTS `tbl_subtitulos` (
  `codigo_subtitulo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE SIRVE PARA IDENTIFICAR DE FORMA UNICA LOS SUBTITULOS DE UNA PELICULA.',
  `nombre_subtitulo` varchar(45) NOT NULL COMMENT 'CAMPO QUE ALMACENA EL NOMBRE DEL ARCHIVO DE BUSTITULOS.',
  `tbl_idiomas_codigo_idioma` int(11) NOT NULL,
  PRIMARY KEY (`codigo_subtitulo`),
  KEY `fk_tbl_subtitulos_tbl_idiomas1_idx` (`tbl_idiomas_codigo_idioma`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `tbl_subtitulos`
--

INSERT INTO `tbl_subtitulos` (`codigo_subtitulo`, `nombre_subtitulo`, `tbl_idiomas_codigo_idioma`) VALUES
(1, 'Español Latino', 1),
(2, 'Español Castellano', 1),
(3, 'Ingles', 2),
(4, 'Frances', 4),
(5, 'Portugues', 7),
(6, 'Italiano', 5);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_subtitulos`
--
ALTER TABLE `tbl_subtitulos`
  ADD CONSTRAINT `fk_tbl_subtitulos_tbl_idiomas1` FOREIGN KEY (`tbl_idiomas_codigo_idioma`) REFERENCES `tbl_idiomas` (`codigo_idioma`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2017 a las 08:04:15
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
-- Estructura de tabla para la tabla `tbl_lugares`
--

CREATE TABLE IF NOT EXISTS `tbl_lugares` (
  `codigo_lugares` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo que almacena el codigo que identifica de forma unica un lugar. ',
  `codigo_lugares_padre` int(11) NOT NULL COMMENT 'campo que almacena el codigo del lugar padre de un lugar en especifico. ',
  `codigo_tipo_lugar` int(11) NOT NULL COMMENT 'campo que hace referencia al tipo de lugar que es... por ejemplo (continente, país).. ',
  `nombre_lugar` varchar(200) NOT NULL COMMENT 'Campo que almacena el nombre del lugar. ',
  PRIMARY KEY (`codigo_lugares`),
  KEY `fk_tbl_lugares_tbl_lugares1_idx` (`codigo_lugares_padre`),
  KEY `fk_tbl_lugares_tbl_tipos_lugares1_idx` (`codigo_tipo_lugar`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `tbl_lugares`
--

INSERT INTO `tbl_lugares` (`codigo_lugares`, `codigo_lugares_padre`, `codigo_tipo_lugar`, `nombre_lugar`) VALUES
(1, 1, 1, 'lugar prueba'),
(2, 1, 1, 'Honduras'),
(3, 2, 1, 'Costa Rica'),
(4, 2, 1, 'E.U.A');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_lugares`
--
ALTER TABLE `tbl_lugares`
  ADD CONSTRAINT `fk_tbl_lugares_tbl_lugares1` FOREIGN KEY (`codigo_lugares_padre`) REFERENCES `tbl_lugares` (`codigo_lugares`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_lugares_tbl_tipos_lugares1` FOREIGN KEY (`codigo_tipo_lugar`) REFERENCES `tbl_tipos_lugares` (`codigo_tipo_lugar`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

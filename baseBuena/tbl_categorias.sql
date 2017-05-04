-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 03-05-2017 a las 21:03:25
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
-- Estructura de tabla para la tabla `tbl_categorias`
--

CREATE TABLE IF NOT EXISTS `tbl_categorias` (
  `codigo_categoria` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE SIRVE QUE SIRVE PARA IDENTIFICAR DE FORMA UNICA LAS CATEGORIAS DE UNA PELICULA O SERIE.',
  `nombre_categoria` varchar(45) NOT NULL COMMENT 'NOMBRE DE LA CATEGORIA DE UN CONTENIDO.',
  PRIMARY KEY (`codigo_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `tbl_categorias`
--

INSERT INTO `tbl_categorias` (`codigo_categoria`, `nombre_categoria`) VALUES
(1, 'Drama'),
(2, 'Terror'),
(3, 'Comedia'),
(4, 'Accion'),
(5, 'Animada'),
(6, 'Ciencia Ficcion'),
(7, 'Romance');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

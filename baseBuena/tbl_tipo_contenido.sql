-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-05-2017 a las 23:12:54
-- Versión del servidor: 5.7.14
-- Versión de PHP: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `netflix_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_contenido`
--

CREATE TABLE `tbl_tipo_contenido` (
  `codigo_tipo_contenido` int(11) NOT NULL COMMENT 'campo que identifica de forma unica un tipo de contenido, ejemplo (novela, pelicula...).',
  `nombre_tipo_contenido` varchar(100) NOT NULL COMMENT 'campo que almacena el nombre del tipo de contenido. '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_tipo_contenido`
--

INSERT INTO `tbl_tipo_contenido` (`codigo_tipo_contenido`, `nombre_tipo_contenido`) VALUES
(1, 'Película'),
(2, 'Serie'),
(3, 'Telenovela'),
(4, 'Anime'),
(5, 'Cortometraje');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_tipo_contenido`
--
ALTER TABLE `tbl_tipo_contenido`
  ADD PRIMARY KEY (`codigo_tipo_contenido`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_tipo_contenido`
--
ALTER TABLE `tbl_tipo_contenido`
  MODIFY `codigo_tipo_contenido` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo que identifica de forma unica un tipo de contenido, ejemplo (novela, pelicula...).', AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

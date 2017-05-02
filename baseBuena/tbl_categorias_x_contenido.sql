-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2017 a las 01:52:56
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

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
-- Estructura de tabla para la tabla `tbl_categorias_x_contenido`
--

CREATE TABLE `tbl_categorias_x_contenido` (
  `codigo_contenido` int(11) NOT NULL COMMENT 'campo que hace referencia al contenido.',
  `codigo_categoria` int(11) NOT NULL COMMENT 'campo que hace referencia a la categoria.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_categorias_x_contenido`
--

INSERT INTO `tbl_categorias_x_contenido` (`codigo_contenido`, `codigo_categoria`) VALUES
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(6, 3),
(7, 3),
(3, 7),
(5, 7),
(8, 7),
(9, 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_categorias_x_contenido`
--
ALTER TABLE `tbl_categorias_x_contenido`
  ADD PRIMARY KEY (`codigo_contenido`,`codigo_categoria`),
  ADD KEY `fk_tbl_contenidos_has_tbl_categorias_tbl_categorias1_idx` (`codigo_categoria`),
  ADD KEY `fk_tbl_contenidos_has_tbl_categorias_tbl_contenidos1_idx` (`codigo_contenido`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_categorias_x_contenido`
--
ALTER TABLE `tbl_categorias_x_contenido`
  ADD CONSTRAINT `fk_tbl_contenidos_has_tbl_categorias_tbl_categorias1` FOREIGN KEY (`codigo_categoria`) REFERENCES `tbl_categorias` (`codigo_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_contenidos_has_tbl_categorias_tbl_contenidos1` FOREIGN KEY (`codigo_contenido`) REFERENCES `tbl_contenidos` (`codigo_contenido`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

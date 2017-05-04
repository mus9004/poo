-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2017 a las 04:26:31
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
(44, 1),
(12, 2),
(16, 2),
(19, 2),
(21, 2),
(22, 2),
(30, 2),
(31, 2),
(38, 2),
(40, 2),
(41, 2),
(43, 2),
(6, 3),
(7, 3),
(11, 3),
(12, 3),
(13, 3),
(15, 3),
(17, 3),
(18, 3),
(21, 3),
(22, 3),
(30, 3),
(40, 3),
(43, 3),
(15, 4),
(17, 4),
(20, 4),
(24, 4),
(33, 4),
(35, 4),
(36, 4),
(41, 4),
(10, 5),
(19, 5),
(25, 5),
(26, 5),
(27, 5),
(29, 5),
(31, 5),
(32, 5),
(34, 5),
(37, 5),
(10, 6),
(12, 6),
(14, 6),
(16, 6),
(21, 6),
(22, 6),
(23, 6),
(25, 6),
(26, 6),
(29, 6),
(34, 6),
(37, 6),
(42, 6),
(3, 7),
(5, 7),
(8, 7),
(9, 7),
(16, 7),
(17, 7),
(19, 7),
(27, 7),
(31, 7),
(32, 7),
(34, 7),
(39, 7),
(42, 7);

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

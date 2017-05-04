-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2017 a las 04:27:29
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
-- Estructura de tabla para la tabla `tbl_imagenes_x_contenido`
--

CREATE TABLE `tbl_imagenes_x_contenido` (
  `codigo_imagen` int(11) NOT NULL COMMENT 'campo que hace referencia a la imagen. ',
  `codigo_contenido` int(11) NOT NULL COMMENT 'campo que hace referencia al contenido. '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_imagenes_x_contenido`
--

INSERT INTO `tbl_imagenes_x_contenido` (`codigo_imagen`, `codigo_contenido`) VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(11, 10),
(12, 11),
(13, 12),
(14, 13),
(15, 14),
(16, 15),
(17, 16),
(18, 17),
(19, 18),
(20, 19),
(21, 20),
(22, 21),
(23, 22),
(24, 23),
(25, 24),
(26, 25),
(27, 26),
(28, 27),
(29, 29),
(30, 30),
(40, 31),
(41, 32),
(42, 33),
(43, 34),
(44, 35),
(45, 36),
(46, 37),
(47, 38),
(48, 39),
(49, 40),
(50, 41),
(51, 42),
(55, 43),
(56, 44);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_imagenes_x_contenido`
--
ALTER TABLE `tbl_imagenes_x_contenido`
  ADD PRIMARY KEY (`codigo_imagen`,`codigo_contenido`),
  ADD KEY `fk_tbl_imagen_has_tbl_contenidos_tbl_contenidos1_idx` (`codigo_contenido`),
  ADD KEY `fk_tbl_imagen_has_tbl_contenidos_tbl_imagen1_idx` (`codigo_imagen`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_imagenes_x_contenido`
--
ALTER TABLE `tbl_imagenes_x_contenido`
  ADD CONSTRAINT `fk_tbl_imagen_has_tbl_contenidos_tbl_contenidos1` FOREIGN KEY (`codigo_contenido`) REFERENCES `tbl_contenidos` (`codigo_contenido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_imagen_has_tbl_contenidos_tbl_imagen1` FOREIGN KEY (`codigo_imagen`) REFERENCES `tbl_imagen` (`codigo_imagen`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

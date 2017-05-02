-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
<<<<<<< HEAD
-- Tiempo de generación: 02-05-2017 a las 01:53:57
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25
=======
-- Tiempo de generación: 01-05-2017 a las 23:12:35
-- Versión del servidor: 5.7.14
-- Versión de PHP: 7.0.10
>>>>>>> origin/master

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
<<<<<<< HEAD
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9);
=======
(6, 1);
>>>>>>> origin/master

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

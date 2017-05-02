-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
<<<<<<< HEAD
-- Tiempo de generación: 02-05-2017 a las 01:53:46
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25
=======
-- Tiempo de generación: 01-05-2017 a las 23:12:24
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
-- Estructura de tabla para la tabla `tbl_imagen`
--

CREATE TABLE `tbl_imagen` (
  `codigo_imagen` int(11) NOT NULL COMMENT 'CAMPO QUE GUARDA LA ABREVIATURA DEL GENERO.',
  `nombre_imagen` varchar(250) NOT NULL COMMENT 'CAMPO DE REFERENCIA PARA EL NOMBRE DE LA IMAGEN',
  `ancho_imagen` int(11) NOT NULL COMMENT 'CAMPO DE REFERENCIA PARA EL ANCHO DE LA IMAGEN.',
  `alto_imagen` int(11) NOT NULL COMMENT 'CAMPO DE REFERENCIA PARA EL ALTO DE LA IMAGEN.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_imagen`
--

INSERT INTO `tbl_imagen` (`codigo_imagen`, `nombre_imagen`, `ancho_imagen`, `alto_imagen`) VALUES
<<<<<<< HEAD
(1, 'img/img/18.jpg', 128, 128),
(2, 'img/img/32.jpg', 128, 128),
(3, 'img/img/48.jpg', 128, 128),
(4, 'img/img/50.jpg', 128, 128),
(5, 'img/img/26.jpg', 128, 128),
(6, 'img/img/34.jpg', 128, 128),
(7, 'img/img/25.jpg', 128, 128),
(8, 'img/img/73.jpg', 128, 128),
(10, 'img/esrb/RATED_PG.png', 128, 128);
=======
(1, 'RATED_NC-17', 320, 94),
(2, 'RATED_G', 106, 92),
(3, 'RATED_PG', 175, 92),
(4, 'RATED_PG-13', 332, 93),
(5, 'RATED_R', 106, 92),
(6, 'img/poster/metro.png', 1280, 738);
>>>>>>> origin/master

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_imagen`
--
ALTER TABLE `tbl_imagen`
  ADD PRIMARY KEY (`codigo_imagen`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_imagen`
--
ALTER TABLE `tbl_imagen`
<<<<<<< HEAD
  MODIFY `codigo_imagen` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE GUARDA LA ABREVIATURA DEL GENERO.', AUTO_INCREMENT=11;
=======
  MODIFY `codigo_imagen` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE GUARDA LA ABREVIATURA DEL GENERO.', AUTO_INCREMENT=7;
>>>>>>> origin/master
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

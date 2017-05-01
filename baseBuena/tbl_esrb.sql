-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-05-2017 a las 23:11:58
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
-- Estructura de tabla para la tabla `tbl_esrb`
--

CREATE TABLE `tbl_esrb` (
  `codigo_esrb` int(11) NOT NULL COMMENT 'CAMPO QUE SIRVE COMO IDENTIFICADOR PARA EL CODIGO DE LA CLASIFICACION.',
  `codigo_imagen` int(11) NOT NULL COMMENT 'campo que identifica la imagen que hace referencia al esrb.',
  `nombre_esrb` varchar(45) NOT NULL COMMENT 'campo que almacena el nombre del esrb. (esrb nos indica el publico al que esta dirigido un contenido, por ejemplo, mayores de 12 años, mayores de 21 años, todo publico, etc...)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_esrb`
--

INSERT INTO `tbl_esrb` (`codigo_esrb`, `codigo_imagen`, `nombre_esrb`) VALUES
(1, 1, 'RATED_NC-17'),
(2, 2, 'RATED_G'),
(3, 3, 'RATED_PG'),
(4, 4, 'RATED_PG-13'),
(5, 5, 'RATED_R');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_esrb`
--
ALTER TABLE `tbl_esrb`
  ADD PRIMARY KEY (`codigo_esrb`),
  ADD KEY `fk_tbl_esrb_tbl_imagen1_idx` (`codigo_imagen`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_esrb`
--
ALTER TABLE `tbl_esrb`
  MODIFY `codigo_esrb` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE SIRVE COMO IDENTIFICADOR PARA EL CODIGO DE LA CLASIFICACION.', AUTO_INCREMENT=6;
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

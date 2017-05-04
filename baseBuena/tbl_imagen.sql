-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2017 a las 04:27:18
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
(1, 'img/img/18.jpg', 128, 128),
(2, 'img/img/32.jpg', 128, 128),
(3, 'img/img/48.jpg', 128, 128),
(4, 'img/img/50.jpg', 128, 128),
(5, 'img/img/26.jpg', 128, 128),
(6, 'img/img/34.jpg', 128, 128),
(7, 'img/img/25.jpg', 128, 128),
(8, 'img/img/73.jpg', 128, 128),
(10, 'img/esrb/RATED_PG.png', 128, 128),
(11, 'img/img/002.jpg', 128, 128),
(12, 'img/img/02.jpg', 128, 128),
(13, 'img/img/003.jpg', 128, 128),
(14, 'img/img/03.jpg', 128, 128),
(15, 'img/img/004.jpg', 128, 128),
(16, 'img/img/04.jpg', 128, 128),
(17, 'img/img/007_2.jpg', 128, 128),
(18, 'img/img/005.jpg', 128, 128),
(19, 'img/img/07.jpg', 128, 128),
(20, 'img/img/05.jpg', 128, 128),
(21, 'img/img/06.jpg', 128, 128),
(22, 'img/img/008.jpg', 128, 128),
(23, 'img/img/08.jpg', 128, 128),
(24, 'img/img/009.jpg', 128, 128),
(25, 'img/img/09.jpg', 128, 128),
(26, 'img/img/010.jpg', 128, 128),
(27, 'img/img/10.jpg', 128, 128),
(28, 'img/img/011.jpg', 128, 128),
(29, 'img/img/012.jpg', 128, 128),
(30, 'img/img/12.jpg', 128, 128),
(31, 'img/img/013.jpg', 128, 128),
(32, 'img/img/014.jpg', 128, 128),
(33, 'img/img/14.jpg', 128, 128),
(34, 'img/img/015.jpg', 128, 128),
(35, 'img/img/15.jpg', 128, 128),
(36, 'img/img/016.jpg', 128, 128),
(37, 'img/img/10.jpg', 128, 128),
(38, 'img/img/011.jpg', 128, 128),
(39, 'img/img/012.jpg', 128, 128),
(40, 'img/img/013.jpg', 128, 128),
(41, 'img/img/014.jpg', 128, 128),
(42, 'img/img/14.jpg', 128, 128),
(43, 'img/img/015.jpg', 128, 128),
(44, 'img/img/15.jpg', 128, 128),
(45, 'img/img/16.jpg', 128, 128),
(46, 'img/img/017.jpg', 128, 128),
(47, 'img/img/17.jpg', 128, 128),
(48, 'img/img/018.jpg', 128, 128),
(49, 'img/img/019.jpg', 128, 128),
(50, 'img/img/19.jpg', 128, 128),
(51, 'img/img/020.jpg', 128, 128),
(52, 'img/img/20.jpg', 128, 128),
(53, 'img/img/21.jpg', 128, 128),
(54, 'img/img/22.jpg', 128, 128),
(55, 'img/img/75.jpg', 128, 128),
(56, 'img/img/72.jpg', 512, 512);

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
  MODIFY `codigo_imagen` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE GUARDA LA ABREVIATURA DEL GENERO.', AUTO_INCREMENT=57;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

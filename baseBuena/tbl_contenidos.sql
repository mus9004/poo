-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-05-2017 a las 23:11:33
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
-- Estructura de tabla para la tabla `tbl_contenidos`
--

CREATE TABLE `tbl_contenidos` (
  `codigo_contenido` int(11) NOT NULL COMMENT 'CAMPO QUE IDENTIFICA DE MANERA UNICA UN CONTENIDO EN ESPECIFICO. ',
  `codigo_tipo_contenido` int(11) NOT NULL COMMENT 'campo que hace referencia al codigo del tipo de contenido que es..',
  `codigo_esrb` int(11) NOT NULL COMMENT 'campo que hace refrencia al codigo esrb del contenido, por ende, el público que esta dirigido.',
  `nombre_contenido` varchar(200) NOT NULL COMMENT 'CAMPO QUE ALMACENA EL NOMBRE DEL CONTENIDO, YA SEA PELICULA, SERIE, NOVELA,ETC...',
  `descripcion_contenido` varchar(4000) NOT NULL COMMENT 'CAMPO QUE ALMACENA LA DESCRIPCION O SINOPSIS DE UN CONTENIDO.',
  `fecha_lanzamiento` date NOT NULL COMMENT 'CAMPO QUE ALMACENA LA FECHA DE LA PUBLICACION O DE LANZAMIENTO DE UN CONTENIDO. ',
  `duracion_contenido` decimal(10,0) NOT NULL COMMENT 'CAMPO QUE ALMACENA LA DURACION DEL CONTENIDO EN LA BASE. ',
  `calificacion_promedio` int(11) DEFAULT NULL COMMENT 'CAMPO QUE ALMACENA LA CALIFICACION PROMEDIO DADA POR LOS USUARIOS. ',
  `url_contenido` varchar(200) NOT NULL COMMENT 'campo que almacena la url o direccion del video del contenido. '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_contenidos`
--

INSERT INTO `tbl_contenidos` (`codigo_contenido`, `codigo_tipo_contenido`, `codigo_esrb`, `nombre_contenido`, `descripcion_contenido`, `fecha_lanzamiento`, `duracion_contenido`, `calificacion_promedio`, `url_contenido`) VALUES
(1, 5, 2, 'METRO', 'Una maravillosa fantasía minimalista...', '2012-01-01', '5', NULL, 'videos/METRO.mp4');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_contenidos`
--
ALTER TABLE `tbl_contenidos`
  ADD PRIMARY KEY (`codigo_contenido`),
  ADD KEY `fk_tbl_contenidos_tbl_tipo_contenido1_idx` (`codigo_tipo_contenido`),
  ADD KEY `fk_tbl_contenidos_tbl_esrb1_idx` (`codigo_esrb`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_contenidos`
--
ALTER TABLE `tbl_contenidos`
  MODIFY `codigo_contenido` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE IDENTIFICA DE MANERA UNICA UN CONTENIDO EN ESPECIFICO. ', AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_contenidos`
--
ALTER TABLE `tbl_contenidos`
  ADD CONSTRAINT `fk_tbl_contenidos_tbl_esrb1` FOREIGN KEY (`codigo_esrb`) REFERENCES `tbl_esrb` (`codigo_esrb`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_contenidos_tbl_tipo_contenido1` FOREIGN KEY (`codigo_tipo_contenido`) REFERENCES `tbl_tipo_contenido` (`codigo_tipo_contenido`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

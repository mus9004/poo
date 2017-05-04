-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2017 a las 07:44:03
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE IF NOT EXISTS `tbl_usuarios` (
  `codigo_usuario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo que hace referencia de forma unica a un usuario. ',
  `codigo_membresia` int(11) NOT NULL COMMENT 'CAMPO QUE IDENTIFICA EL TIPO DE MEMBRESIA.',
  `codigo_estado_cuenta` int(11) NOT NULL COMMENT 'codigo que identifica el estado de la cuenta. (activa o no activa)',
  `codigo_lugares` int(11) NOT NULL COMMENT 'campo que almacena el codigo del lugar donde vive un usuario.',
  `correo_electronico` varchar(100) NOT NULL COMMENT 'campo que almacena el correo electronico de un usuairo. ',
  `fecha_suscripcion` date NOT NULL COMMENT 'campo que almacena la fecha de suscripcion del usuario en la plataforma netflix. ',
  PRIMARY KEY (`codigo_usuario`),
  KEY `fk_tbl_usuarios_tbl_membresia1_idx` (`codigo_membresia`),
  KEY `fk_tbl_usuarios_tbl_estado_cuenta1_idx` (`codigo_estado_cuenta`),
  KEY `fk_tbl_usuarios_tbl_lugares1_idx` (`codigo_lugares`),
  KEY `fk_tbl_usuarios_tbl_personas1_idx` (`codigo_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`codigo_usuario`, `codigo_membresia`, `codigo_estado_cuenta`, `codigo_lugares`, `correo_electronico`, `fecha_suscripcion`) VALUES
(1, 1, 1, 1, 'ana@gmail.com', '2017-04-05'),
(2, 1, 1, 1, 'prueba@gmail.com', '2017-03-22'),
(3, 2, 1, 1, 'prueba@gmail.com', '2017-04-26');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD CONSTRAINT `fk_tbl_usuarios_tbl_estado_cuenta1` FOREIGN KEY (`codigo_estado_cuenta`) REFERENCES `tbl_estado_cuenta` (`codigo_estado_cuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_usuarios_tbl_lugares1` FOREIGN KEY (`codigo_lugares`) REFERENCES `tbl_lugares` (`codigo_lugares`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_usuarios_tbl_membresia1` FOREIGN KEY (`codigo_membresia`) REFERENCES `tbl_membresia` (`codigo_membresia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_usuarios_tbl_personas1` FOREIGN KEY (`codigo_usuario`) REFERENCES `tbl_personas` (`codigo_persona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

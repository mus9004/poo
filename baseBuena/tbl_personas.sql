-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2017 a las 07:44:14
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
-- Estructura de tabla para la tabla `tbl_personas`
--

CREATE TABLE IF NOT EXISTS `tbl_personas` (
  `codigo_persona` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo que identifica de forma unica el registro d euna persona. ',
  `codigo_genero` int(11) NOT NULL COMMENT 'campo que identifica el genero al que pertenece la persona.',
  `codigo_imagen` int(11) NOT NULL COMMENT 'Campo que identifica la imagen de perfil de la persona. ',
  `codigo_tipo_usuario` int(11) NOT NULL COMMENT 'campo que hace referencia al tipo de usuario que es la persona. (administrador o usuario-cliennte)',
  `nombre_persona` varchar(45) NOT NULL COMMENT 'campo que guarda el nombre de una persona. ',
  `apellido_persona` varchar(45) NOT NULL COMMENT 'este campo almacena el apellido de una persona. ',
  `fecha_nacimiento` date NOT NULL COMMENT 'campo que almacena la fecha en que nacio la persona. ',
  `nombre_usuario` varchar(200) NOT NULL COMMENT 'campo que almacena el nombre de usuario de una persona. ',
  `contrasena` varchar(200) NOT NULL COMMENT 'campo que almacena la contraseña de un usuario. ',
  PRIMARY KEY (`codigo_persona`),
  KEY `fk_tbl_personas_tbl_generos1_idx` (`codigo_genero`),
  KEY `fk_tbl_personas_tbl_imagen1_idx` (`codigo_imagen`),
  KEY `fk_tbl_personas_tbl_tipos_usuarios1_idx` (`codigo_tipo_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tbl_personas`
--

INSERT INTO `tbl_personas` (`codigo_persona`, `codigo_genero`, `codigo_imagen`, `codigo_tipo_usuario`, `nombre_persona`, `apellido_persona`, `fecha_nacimiento`, `nombre_usuario`, `contrasena`) VALUES
(1, 1, 1, 1, 'Ana iris', 'padilla', '2017-04-02', 'anapailla', 'asd.456'),
(2, 1, 1, 1, 'Ana', 'Padilla', '2017-05-10', 'iris@padilla', '234567'),
(3, 1, 1, 1, 'levi', 'morales', '2017-05-26', 'levyElTrabado', 'fre435');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_personas`
--
ALTER TABLE `tbl_personas`
  ADD CONSTRAINT `fk_tbl_personas_tbl_generos1` FOREIGN KEY (`codigo_genero`) REFERENCES `tbl_generos` (`codigo_genero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_personas_tbl_imagen1` FOREIGN KEY (`codigo_imagen`) REFERENCES `tbl_imagen` (`codigo_imagen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_personas_tbl_tipos_usuarios1` FOREIGN KEY (`codigo_tipo_usuario`) REFERENCES `tbl_tipos_usuarios` (`codigo_tipo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

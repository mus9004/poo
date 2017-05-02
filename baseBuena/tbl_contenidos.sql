-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
<<<<<<< HEAD
-- Tiempo de generación: 02-05-2017 a las 01:53:21
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25
=======
-- Tiempo de generación: 01-05-2017 a las 23:11:33
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
<<<<<<< HEAD
(2, 1, 1, 'Dirty Dancing', 'Dirty Dancing: Havana Nights sigue el amoroso romance de la joven pareja Katey (Romola Garai) y Javier (Diego Luna) con el telón de fondo de la revolución cubana en 1958. Katey es una chica estadounidense que vive en Cuba con sus padres y que conoce a Javier, un local. Javier lleva a Katey a un club nocturno donde le enseña a bailar sucio estilo cubano. Los dos se acercan cada vez más, pero cuando Castro toma el relevo, los padres de Katey deciden huir para los Estados Unidos, dejando a Katey para tomar la decisión final', '2014-02-27', '86', 3, 'videos/METRO.mp4'),
(3, 1, 1, 'Kate & Leopold', 'Kate McKay (Meg Ryan) es una ejecutiva moderna del siglo XXI cuya vida está dirigida a triunfar en el mundo empresarial. Leopold (Hugh Jackman), el tercer Duque de Albany, es un caballero soltero y encantador de finales del siglo XIX. Viven en épocas diferentes pero comparten expectativas sociales y profesionales, además de la forma escéptica a la que se enfrentan a sus relaciones sentimentales. Al producirse una rasgadura en el tejido del tiempo, la casualidad hace que Leopold aparezca en la Nueva York de 2002; allí se cruzarán sus caminos y nacerá un curioso romance.', '2001-12-25', '121', 7, 'videos/METRO.mp4'),
(4, 1, 1, 'Mi Amor', 'Cuando Tony es ingresada en un centro de rehabilitación tras sufrir un grave accidente de esquí, empieza a reflexionar sobre la complicada historia de amor que vivió con Georgio. Entre personal médico y analgésicos, se pregunta por qué se aman y cómo fue capaz de ceder ante una pasión tan sofocante como destructiva. Para Tony empieza un duro proceso de reconstrucción a través de un trabajo físico que quizá le permita liberarse de forma definitiva de ese amor pasado que tanto le hizo sufrir. \r\n\r\nMi amor es una apasionada historia de amor dirigida por la directora y actriz Maïwenn (Polisse, Le bal des actrices, Pardonnez-moi) y protagonizada por Vincent Cassel (La Bella y la Bestia), Emmanuelle Bercot (El viaje de Bettie), Louis Garrel (Saint Laurent) e Isild Le Besco (The Good Heart (Un buen corazón)).', '2016-04-15', '130', 6, 'videos/METRO.mp4'),
(5, 1, 1, 'Story of Us', 'Ben Jordan (Bruce Willis) y su esposa Katie (Michelle Pfeiffer) llevan 15 años de matrimonio y aparentemente tienen una vida perfecta. Comparten con sus dos encantadores hijos, Erin (Colleen Rennison) y Josh (Jake Sandvig), un acogedor y cómodo hogar. Sin embargo, cuando los niños no están, la pareja no tienen más remedio que enfrentarse a la cruda realidad de que a estas alturas ninguno de los dos se soporta.\r\n\r\nCuando se acercan las vacaciones escolares, inscriben a sus muchachos en un campamento de verano y, apenas salen del hogar, la pareja comienzan a hacer todos los arreglos necesarios para oficializar su separación. Durante este proceso, cada uno por su cuenta intentará recordar cuáles fueron las razones por las que se enamoraron. ¿Encontrarán motivos suficientes para permanecer juntos?', '1999-11-28', '95', 13, 'videos/METRO.mp4'),
(6, 1, 1, 'Fallen', 'Luce, de 17 años, es una nueva estudiante de Sword & Cross (Espada y Cruz), un internado/reformatorio ubicado en Savannah, Georgia. El novio de Luce murió en circunstancias sospechosas, y ella carga con la culpa de su muerte mientras se mueve por los pocos amistosos pasillos de Sword & Cross, donde cada estudiante parece tener una historia desagradable.\r\n\r\nPero al conocer a Daniel, un guapo estudiante, Luce siente que hay una razón para estar allí - aunque no sabe cuál es. ¿Y el comportamiento frío y distante de Daniel con ella? Realmente es un mecanismo de defensa al que se ha acostumbrado. Daniel es un ángel caído, condenado a enamorarse de la misma chica cada 17 años y verla morir. Y Luce una chica mortal, que tiende a retornar una y otra vez, y que además no tiene ni idea de quién es en realidad.', '2016-11-10', '92', 9, 'videos/METRO.mp4'),
(7, 1, 1, 'La Bella y La Bestia', 'Una joven soñadora y romántica llamada Bella (Emma Watson) vive en una pequeña aldea junto a su padre, un inventor de artilugios, al que algunos consideran un anciano demente. Un día, su padre viaja a una feria para exponer sus inventos, pero se pierde en el camino y acaba en un viejo y misterioso castillo. Buscando cobijo y un lugar donde pasar la noche, el padre de Bella descubre que el señor de ese castillo es una horrible Bestia (Dan Stevens). Cuando se percata de su presencia, la Bestia le deja encerrado entre rejas. \r\nBella, preocupada por su anciano padre, no duda ni un instante en salir en su busca. Cuando encuentra el castillo, Bella decide hacer un intercambio, y quedarse encerrada a cambio de la libertad del anciano. Durante su estancia, la protagonista conocerá a una serie de peculiares personajes que harán que se sienta mucho más cómoda. Además, poco a poco, irá conociendo la Bestia, y se dará cuenta de que, en su interior, hay un gran corazón. La joven se enamora de él, deshaciendo así el antiguo hechizo de la rosa...\r\n', '2017-03-17', '120', 10, 'videos/METRO.mp4'),
(8, 1, 1, 'Experta en Bodas', 'Nadie entiende tanto de amor como Mary Fiore (Jennifer Lopez). Después de todo, es la más prestigiosa organizadora de bodas de San Francisco. Como se especializa en que los sueños de amor se conviertan en realidad, está demasiado ocupada para tener una vida amorosa propia. Mientras celebra el último y más lucrativo contrato -el de la magnate de Internet Fran Donolly (Bridgette Wilson-Sampras)- Mary es rescatada de un choque casi mortal con un camionero en fuga por el Doctor Steve Edison (Matthew McConaughey). Después de pasar juntos la velada más agradable de sus vidas, Mary cree que por fin ha encontrado un motivo para creer en el amor. Bueno, casi. El mundo de Mary cambia de arriba abajo cuando descubre que Steve es en realidad el futuro marido de Fran Donolly, y ella su organizadora de boda. Su carrera y Cupido acaban de chocar.', '2001-01-26', '114', 9, 'videos/METRO.mp4'),
(9, 1, 1, 'La hija del Patron', 'Vital, de 40 años, es jefe de taller en una fábrica textil. Es elegido como “cobaya” por Alix, la hija de 25 años del jefe de la fábrica, que ha venido para hacer un estudio ergonómico. La hija del jefe se rendirá pronto a los encantos de Vital, quien se irá abriendo poco a poco a Alix.', '2016-01-06', '98', 4, 'videos/METRO.mp4');
=======
(1, 5, 2, 'METRO', 'Una maravillosa fantasía minimalista...', '2012-01-01', '5', NULL, 'videos/METRO.mp4');
>>>>>>> origin/master

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
<<<<<<< HEAD
  MODIFY `codigo_contenido` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE IDENTIFICA DE MANERA UNICA UN CONTENIDO EN ESPECIFICO. ', AUTO_INCREMENT=10;
=======
  MODIFY `codigo_contenido` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE IDENTIFICA DE MANERA UNICA UN CONTENIDO EN ESPECIFICO. ', AUTO_INCREMENT=2;
>>>>>>> origin/master
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

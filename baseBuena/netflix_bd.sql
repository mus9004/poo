-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-05-2017 a las 23:09:44
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
-- Estructura de tabla para la tabla `tbl_audios`
--

CREATE TABLE `tbl_audios` (
  `codigo_audio` int(11) NOT NULL COMMENT 'CAMPO QUE SIRVE PARA IDENTIFICAR DE FORMA UNICA EL AUDIO DE UN IDIOMA.',
  `codigo_idioma` int(11) NOT NULL COMMENT 'codigo que hace refrencia al idioma en que esta el audio.',
  `nombre_audio` varchar(100) NOT NULL COMMENT 'CAMPO QUE ALMACENA EL NOMBRE DEL IDIOMA DEL AUDIO.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_audios_x_contenido`
--

CREATE TABLE `tbl_audios_x_contenido` (
  `codigo_contenido` int(11) NOT NULL COMMENT 'campo que contiene el codigo que hace refrencia a el contenido. ',
  `codigo_audio` int(11) NOT NULL COMMENT 'campo que contiene el codigo que hace referencia al audio. '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_capitulos`
--

CREATE TABLE `tbl_capitulos` (
  `codigo_capitulo` int(11) NOT NULL COMMENT 'CAMPO QUE IDENTIFICA EL CAPITULO DE UN CONTENIDO (SERIE, telenovela...). ',
  `codigo_temporada_serie` int(11) NOT NULL COMMENT 'campo qiue hace referencia a la temporada que pertenece el campitulo. (ejemplo, si el codigo es 1: la temporada seria: "temporada 1")',
  `nombre_capitulo` varchar(100) NOT NULL COMMENT 'CAMPO QUE ALMACENARA EL NOMBRE DEL CAPITUO.',
  `duracion_capitulo` decimal(10,0) NOT NULL COMMENT 'CAMPO QUE ALMACENARA LA DURACION DEL CAPITULO.',
  `url_capitulo` varchar(200) NOT NULL COMMENT 'campo que almacena la url o direccion de el video de un capitulo.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categorias`
--

CREATE TABLE `tbl_categorias` (
  `codigo_categoria` int(11) NOT NULL COMMENT 'CAMPO QUE SIRVE QUE SIRVE PARA IDENTIFICAR DE FORMA UNICA LAS CATEGORIAS DE UNA PELICULA O SERIE.',
  `nombre_categoria` varchar(45) NOT NULL COMMENT 'NOMBRE DE LA CATEGORIA DE UN CONTENIDO.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categorias_x_contenido`
--

CREATE TABLE `tbl_categorias_x_contenido` (
  `codigo_contenido` int(11) NOT NULL COMMENT 'campo que hace referencia al contenido.',
  `codigo_categoria` int(11) NOT NULL COMMENT 'campo que hace referencia a la categoria.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_colaboradores`
--

CREATE TABLE `tbl_colaboradores` (
  `codigo_colaborador` int(11) NOT NULL COMMENT 'campo que identifica de forma unica a un colaborador. Por colaborador entendemos que puede ser un Actor (actriz) o un director. ',
  `codigo_imagen` int(11) NOT NULL COMMENT 'campo que contiene el codigo que hace referencia a la imagen (perfil) del colaborador. ',
  `codigo_tipo_colaborador` int(11) NOT NULL COMMENT 'campo que identifica el tipo de colaborador que es. (actor, actriz o director)',
  `nombre_colaborador` varchar(100) NOT NULL COMMENT 'campo que hace referencia al nombre del colaborador. ',
  `apellido_colaborador` varchar(100) NOT NULL COMMENT 'campo que hace referencia al apellido del colaborador. '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_colaboradores_x_cont`
--

CREATE TABLE `tbl_colaboradores_x_cont` (
  `codigo_colaborador` int(11) NOT NULL COMMENT 'campo que hace referencia al colaborador que actúa o dirige el contenido. ',
  `codigo_contenido` int(11) NOT NULL COMMENT 'campo que hace referencia al contenido.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_comentarios`
--

CREATE TABLE `tbl_comentarios` (
  `codigo_comentario` int(11) NOT NULL COMMENT 'CAMPO QUE SIRVE PARA IDENTIFICAR DE FORMA UNICA UN COMENTARIO.',
  `codigo_usuario` int(11) NOT NULL COMMENT 'campo que hace referencia al usuario que ha realizado el comentario.',
  `codigo_comentario_padre` int(11) NOT NULL COMMENT 'campo que contiene el codigo que hace referencia al comentario padre, es decir, al comentario que se le ha realizado un comentario. ',
  `codigo_contenido` int(11) NOT NULL COMMENT 'campo que contiene el codigo del contenido que ha sido comentado. ',
  `descripcion_comentario` varchar(4000) NOT NULL COMMENT 'CAMPO QUE ALMACENA EL CONTENIDO DE UN COMENTARIO.',
  `calificacion` int(11) NOT NULL COMMENT 'CAMPO QUE ALMACENA EL VALOR DE LA CALIFICACION.',
  `fecha_comentario` date NOT NULL COMMENT 'CAMPO QUE ALMACENA LA FECHA DE UN COMENTARIO.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_comentarios_x_cont`
--

CREATE TABLE `tbl_comentarios_x_cont` (
  `codigo_comentario` int(11) NOT NULL COMMENT 'campo que almacena el codigo que hace referencia al comentario sobre un contenido. ',
  `codigo_contenido` int(11) NOT NULL COMMENT 'campo que almacena el codigo que hace referencia al contenido que ha sido comentado. '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_contenido_x_lista`
--

CREATE TABLE `tbl_contenido_x_lista` (
  `codigo_lista` int(11) NOT NULL COMMENT 'campo que hace referencia a la lista de reproduccion. ',
  `codigo_contenido` int(11) NOT NULL COMMENT 'campo que hace referencia al contenido. Dicho contenido pertenece a una lista.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_contenido_x_region`
--

CREATE TABLE `tbl_contenido_x_region` (
  `codigo_lugares` int(11) NOT NULL COMMENT 'campo que hace referencia al lugar o region donde estara disponble el contenido. ',
  `codigo_contenido` int(11) NOT NULL COMMENT 'campo que contiene el codigo que hace referencia al contenido que esta disponible en cierta region. '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estado_cuenta`
--

CREATE TABLE `tbl_estado_cuenta` (
  `codigo_estado_cuenta` int(11) NOT NULL COMMENT 'CODIGO UNICO QUE IDENTIFICA DE FORMA UNICA UN ESTADO DE CUENTA',
  `nombre_estado_cuenta` varchar(45) NOT NULL COMMENT 'CAMPO QUE EL NOMBRE DEL ESTADO DE CUENTA.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_generos`
--

CREATE TABLE `tbl_generos` (
  `codigo_genero` int(11) NOT NULL COMMENT 'IDENTIFICADOR UNICO PARA EL GENERO DE UNA PERSONA.',
  `nombre_genero` varchar(45) NOT NULL COMMENT 'CAMPO QUE FUNCIONA PARA IDENTIFICAR EL GENERO AL QUE PERTENECE UNA PERSONA.',
  `abreviatura_genero` varchar(45) NOT NULL COMMENT 'CAMPO QUE GUARDA LA ABREVIATURA DEL GENERO.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_historial_pago`
--

CREATE TABLE `tbl_historial_pago` (
  `codigo_usuario` int(11) NOT NULL,
  `fecha_pago` date NOT NULL COMMENT 'CAMPO QUE ALMACENA LA FECHA EN QUE SE REALIZO UN PAGO. ',
  `fecha_fin_servicio` date NOT NULL,
  `descripcion` varchar(1000) NOT NULL COMMENT 'CAMPO QUE SIRVE PARA DESCRIBIR EL SERVICIO A PAGAR.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_idiomas`
--

CREATE TABLE `tbl_idiomas` (
  `codigo_idioma` int(11) NOT NULL COMMENT 'CAMPO QUE SIRVE PARA IDENTIFICAR DE FORMA UNICA UN IDIOMA.',
  `nombre_idioma` varchar(100) NOT NULL COMMENT 'CAMPO QUE SIRVE PARA ALMACENAR EL NOMNRE DE UN IDOMA.',
  `abreviatura_idioma` varchar(10) NOT NULL COMMENT 'CAMPO QUE SIRVE PARA ALMACENAR LA ABREVIATURA DE UN IDOMA.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 'RATED_NC-17', 320, 94),
(2, 'RATED_G', 106, 92),
(3, 'RATED_PG', 175, 92),
(4, 'RATED_PG-13', 332, 93),
(5, 'RATED_R', 106, 92),
(6, 'img/poster/metro.png', 1280, 738);

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
(6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_listas_reproduccion`
--

CREATE TABLE `tbl_listas_reproduccion` (
  `codigo_lista` int(11) NOT NULL COMMENT 'CAMPO QUE IDENTIFICA DE FORMA UNICA UNA LISTA DE REPRODUCCION.',
  `nombre_lista` varchar(100) NOT NULL COMMENT 'CAMPO QUE SIRVE PARA IDENTIFICAR EL NOMBRE DE LA LISTA DE REPRODUCCION.',
  `fecha_creacion_lista` date NOT NULL COMMENT 'almacena la fecha en la que se  creo la lista de reproduccion. '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_lugares`
--

CREATE TABLE `tbl_lugares` (
  `codigo_lugares` int(11) NOT NULL COMMENT 'campo que almacena el codigo que identifica de forma unica un lugar. ',
  `codigo_lugares_padre` int(11) NOT NULL COMMENT 'campo que almacena el codigo del lugar padre de un lugar en especifico. ',
  `codigo_tipo_lugar` int(11) NOT NULL COMMENT 'campo que hace referencia al tipo de lugar que es... por ejemplo (continente, país).. ',
  `nombre_lugar` varchar(200) NOT NULL COMMENT 'Campo que almacena el nombre del lugar. '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_membresia`
--

CREATE TABLE `tbl_membresia` (
  `codigo_membresia` int(11) NOT NULL COMMENT 'campo que identifica de forma unica una membresia. ',
  `nombre_membresia` varchar(45) NOT NULL COMMENT 'campo que almacena el nombre de la membresia',
  `hd_disponible` int(11) NOT NULL COMMENT 'CAMPO QUE HACE REFERENCIA SI LA CALIDAD DE ALTA DEFINICION ESTA DISPONIBLE EN LA MEMBRESIA.',
  `ultra_hd_disponible` int(11) NOT NULL COMMENT 'CAMPO QUE HACE REFERENCIA SI LA CALIDAD DE ALTA DEFINICION ESTA DISPONIBLE EN LA MEMBRESIA.',
  `pantallas_simultaneas` int(11) NOT NULL COMMENT 'CAMPO QUE DETERMINA CUANTAS PERSONAS PUEDEN UTILIZAR LA CUENTA AL MISMO TIEMPO.',
  `dispositivos` int(11) NOT NULL COMMENT 'CAMPO QUE DETERMINA SI SE PUEDE UTILIZAR LA CUENTA EN DIVERSOS DISPOSITIVOS.',
  `contenido_ilimitado` int(11) NOT NULL,
  `cancelar_cuenta` int(11) NOT NULL COMMENT 'CAMPO QUE INDICA SI SE PUEDE CANCELAR LA CUENTA.',
  `mes_gratis` int(11) NOT NULL COMMENT 'CAMPO QUE DETERMINA SI EL PRIMER MES DE SUSCRIPCION ES GRATIS.',
  `precio_membresia` decimal(10,0) NOT NULL COMMENT 'CAMPO QUE SIRVE PARA ALMACENAR EL PRECIO DE LA MEMBRESIA.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_opinion`
--

CREATE TABLE `tbl_opinion` (
  `codigo_opinion` int(11) NOT NULL COMMENT 'CAMPO QUE SIRVE PARA IDENTIFICAR DE FORMA UNICA UNA OPINION SOBRE UN COMENTARIO.',
  `nombre_opinion` varchar(100) NOT NULL COMMENT 'NOMBRE DE LA OPNION SOBRE UN COMENTARIO.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_opiniones_x_coment`
--

CREATE TABLE `tbl_opiniones_x_coment` (
  `codigo_opinion` int(11) NOT NULL COMMENT 'campo que contiene el codigo que hace referencia a la opinion que se le ha dado a un comentario.',
  `codigo_comentario` int(11) NOT NULL COMMENT 'campo que contiene el codigo que hace referencia a el comentario que ha recibido una opinion. ',
  `codigo_usuario` int(11) NOT NULL COMMENT 'campo que hace referencia al usuario que ha realizado la opinion sobre un comentario. '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paypal`
--

CREATE TABLE `tbl_paypal` (
  `codigo_paypal` int(11) NOT NULL COMMENT 'CAMPO UNICO PARA INDENTIFICAR LA CUENTA DE PAYPAL.',
  `correo_electronico` varchar(100) NOT NULL COMMENT 'CORREO ELECTRONICO VINCULADO A LA CUENTA DE PAYPAL',
  `contraseña` varchar(45) NOT NULL COMMENT 'CONTRASENA DE LA CUENTA DE PAYPAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_perfiles`
--

CREATE TABLE `tbl_perfiles` (
  `codigo_perfil` int(11) NOT NULL COMMENT 'CAMPO QUE IDENTIFICA DE FORMA UNICA UN PERFIL',
  `codigo_tipo_perfil` int(11) NOT NULL COMMENT 'campo que hace referencia al tipo de perfil que es (Por ejemplo: Adulto, Niño)',
  `codigo_usuario` int(11) NOT NULL COMMENT 'campo que hace referencia al usuario.  ',
  `codigo_lista` int(11) NOT NULL COMMENT 'campo que contiene el codigo que hace referencia a la lista de reproduccion del perfil. (la lista es unica por perfil).',
  `nombre_perfil` varchar(100) NOT NULL COMMENT 'CAMPO QUE ALMACENA EL NOMBRE DE UN PERFIL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_personas`
--

CREATE TABLE `tbl_personas` (
  `codigo_persona` int(11) NOT NULL COMMENT 'campo que identifica de forma unica el registro d euna persona. ',
  `codigo_genero` int(11) NOT NULL COMMENT 'campo que identifica el genero al que pertenece la persona.',
  `codigo_imagen` int(11) NOT NULL COMMENT 'Campo que identifica la imagen de perfil de la persona. ',
  `codigo_tipo_usuario` int(11) NOT NULL COMMENT 'campo que hace referencia al tipo de usuario que es la persona. (administrador o usuario-cliennte)',
  `nombre_persona` varchar(45) NOT NULL COMMENT 'campo que guarda el nombre de una persona. ',
  `apellido_persona` varchar(45) NOT NULL COMMENT 'este campo almacena el apellido de una persona. ',
  `fecha_nacimiento` date NOT NULL COMMENT 'campo que almacena la fecha en que nacio la persona. ',
  `nombre_usuario` varchar(200) NOT NULL COMMENT 'campo que almacena el nombre de usuario de una persona. ',
  `contrasena` varchar(200) NOT NULL COMMENT 'campo que almacena la contraseña de un usuario. '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_subtitulos`
--

CREATE TABLE `tbl_subtitulos` (
  `codigo_subtitulo` int(11) NOT NULL COMMENT 'CAMPO QUE SIRVE PARA IDENTIFICAR DE FORMA UNICA LOS SUBTITULOS DE UNA PELICULA.',
  `nombre_subtitulo` varchar(45) NOT NULL COMMENT 'CAMPO QUE ALMACENA EL NOMBRE DEL ARCHIVO DE BUSTITULOS.',
  `tbl_idiomas_codigo_idioma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_subtitulos_x_contenido`
--

CREATE TABLE `tbl_subtitulos_x_contenido` (
  `codigo_contenido` int(11) NOT NULL COMMENT 'campo que almacena el codigo que hace referencia al contenido. ',
  `codigo_subtitulo` int(11) NOT NULL COMMENT 'campo que almacena el codigo que hace referencia al subtitulo del contenido. '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tarjeta_credito`
--

CREATE TABLE `tbl_tarjeta_credito` (
  `codigo_tarjeta` int(11) NOT NULL COMMENT 'CAMPO UNICO PARA IDENTIFICAR UN TARJETA.',
  `numero_tarjeta` varchar(100) NOT NULL COMMENT 'NUMERO DE REFERENCIA A LA TARJETA.',
  `fecha_vencimiento` date NOT NULL COMMENT 'CAMPO QUE SIRVE PARA INDICAR LA FECHA DE VENCIMIETO DE UNA TARJETA.',
  `numero_seguridad` varchar(100) NOT NULL COMMENT 'NUMERO DE SEGURIDAD NECESARIO PARA HACER TRASNSACCIONES CON LA TARJETA.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_temporadas`
--

CREATE TABLE `tbl_temporadas` (
  `codigo_temporada` int(11) NOT NULL COMMENT 'CAMPO QUE SIRVE PARA IDENTIFICAR DE FORMA UNICA UNA TEMPORADA DE UNA SERIE.',
  `nombre_temporada` varchar(100) NOT NULL COMMENT 'CAMPO QUE SIRVE PARA ALMACENAR EL NOMBRE DE LA TEMPORADA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_temporada_x_cont`
--

CREATE TABLE `tbl_temporada_x_cont` (
  `codigo_temporada_serie` int(11) NOT NULL COMMENT 'CAMPO QUE IDENTIFICA DE FORMA UNICA LA TEMPORADA PERTENECIENTE A UNA SERIE. ',
  `codigo_temporada` int(11) NOT NULL COMMENT 'codigo que hace referencia a la temporada que pertenece el contenido, por ejemplo (temporada 1, temporada 2, temporada 3...) ',
  `codigo_contenido` int(11) NOT NULL COMMENT 'campo que contiene el codigo del contenido, contenido que pertenece a una temporada. ',
  `fecha_lazamiento_temp` date NOT NULL COMMENT 'CAMPO QUE ALMACENA LA FECHA EN QUE SALIO AL AIRE LA TEMPORADA. ',
  `descripcion_temporada` varchar(4000) NOT NULL COMMENT 'CAMPO QUE ALMACENA LA DESCRIPCION DE LA TEMPORADA.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipos_lugares`
--

CREATE TABLE `tbl_tipos_lugares` (
  `codigo_tipo_lugar` int(11) NOT NULL,
  `nombre_tipo_lugar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipos_usuarios`
--

CREATE TABLE `tbl_tipos_usuarios` (
  `codigo_tipo_usuario` int(11) NOT NULL COMMENT 'campo que identifica de forma unica un tipo de usuario (admin, cliente)',
  `nombre_tipo_usuario` varchar(100) NOT NULL COMMENT 'campo que almacena el nombre del tipo de usuario. '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_colaborador`
--

CREATE TABLE `tbl_tipo_colaborador` (
  `codigo_tipo_colaborador` int(11) NOT NULL COMMENT 'Campo que identifica de forma unica un tipo de colaborador. ',
  `nombre_tipo_colaborador` varchar(100) DEFAULT NULL COMMENT 'campo que almacena el nombre del tipo de colaborador (actor, actriz, director)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_contenido`
--

CREATE TABLE `tbl_tipo_contenido` (
  `codigo_tipo_contenido` int(11) NOT NULL COMMENT 'campo que identifica de forma unica un tipo de contenido, ejemplo (novela, pelicula...).',
  `nombre_tipo_contenido` varchar(100) NOT NULL COMMENT 'campo que almacena el nombre del tipo de contenido. '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_tipo_contenido`
--

INSERT INTO `tbl_tipo_contenido` (`codigo_tipo_contenido`, `nombre_tipo_contenido`) VALUES
(1, 'Película'),
(2, 'Serie'),
(3, 'Telenovela'),
(4, 'Anime'),
(5, 'Cortometraje');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_pago_x_usuario`
--

CREATE TABLE `tbl_tipo_pago_x_usuario` (
  `codigo_usuario` int(11) NOT NULL,
  `codigo_tarjeta` int(11) NOT NULL COMMENT 'campo que identifica si el usuario paga o no por una tarjeta de credito.',
  `codigo_paypal` int(11) NOT NULL COMMENT 'campo que identifica si el usuario reliza pago por medio de paypal.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_perfil`
--

CREATE TABLE `tbl_tipo_perfil` (
  `codigo_tipo_perfil` int(11) NOT NULL COMMENT 'CAMPO QUE IDENTIFICA DE FORMA UNICA CADA TIPO DE PERFIL',
  `nombre_tipo_perfil` varchar(100) NOT NULL COMMENT 'CAMPO QUE ALMACENA ELE NOMBRE DE CADA TIPO DE PERFIL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `codigo_usuario` int(11) NOT NULL COMMENT 'campo que hace referencia de forma unica a un usuario. ',
  `codigo_membresia` int(11) NOT NULL COMMENT 'CAMPO QUE IDENTIFICA EL TIPO DE MEMBRESIA.',
  `codigo_estado_cuenta` int(11) NOT NULL COMMENT 'codigo que identifica el estado de la cuenta. (activa o no activa)',
  `codigo_lugares` int(11) NOT NULL COMMENT 'campo que almacena el codigo del lugar donde vive un usuario.',
  `correo_electronico` varchar(100) NOT NULL COMMENT 'campo que almacena el correo electronico de un usuairo. ',
  `fecha_suscripcion` date NOT NULL COMMENT 'campo que almacena la fecha de suscripcion del usuario en la plataforma netflix. '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_audios`
--
ALTER TABLE `tbl_audios`
  ADD PRIMARY KEY (`codigo_audio`),
  ADD KEY `fk_tbl_audios_tbl_idiomas1_idx` (`codigo_idioma`);

--
-- Indices de la tabla `tbl_audios_x_contenido`
--
ALTER TABLE `tbl_audios_x_contenido`
  ADD PRIMARY KEY (`codigo_contenido`,`codigo_audio`),
  ADD KEY `fk_tbl_contenidos_has_tbl_audios_tbl_audios1_idx` (`codigo_audio`),
  ADD KEY `fk_tbl_contenidos_has_tbl_audios_tbl_contenidos1_idx` (`codigo_contenido`);

--
-- Indices de la tabla `tbl_capitulos`
--
ALTER TABLE `tbl_capitulos`
  ADD PRIMARY KEY (`codigo_capitulo`),
  ADD KEY `fk_tbl_capitulos_tbl_temporada_x_cont1_idx` (`codigo_temporada_serie`);

--
-- Indices de la tabla `tbl_categorias`
--
ALTER TABLE `tbl_categorias`
  ADD PRIMARY KEY (`codigo_categoria`);

--
-- Indices de la tabla `tbl_categorias_x_contenido`
--
ALTER TABLE `tbl_categorias_x_contenido`
  ADD PRIMARY KEY (`codigo_contenido`,`codigo_categoria`),
  ADD KEY `fk_tbl_contenidos_has_tbl_categorias_tbl_categorias1_idx` (`codigo_categoria`),
  ADD KEY `fk_tbl_contenidos_has_tbl_categorias_tbl_contenidos1_idx` (`codigo_contenido`);

--
-- Indices de la tabla `tbl_colaboradores`
--
ALTER TABLE `tbl_colaboradores`
  ADD PRIMARY KEY (`codigo_colaborador`),
  ADD KEY `fk_tbl_colaboradores_tbl_imagen1_idx` (`codigo_imagen`),
  ADD KEY `fk_tbl_colaboradores_tbl_tipo_colaborador1_idx` (`codigo_tipo_colaborador`);

--
-- Indices de la tabla `tbl_colaboradores_x_cont`
--
ALTER TABLE `tbl_colaboradores_x_cont`
  ADD PRIMARY KEY (`codigo_colaborador`,`codigo_contenido`),
  ADD KEY `fk_tbl_colaboradores_has_tbl_contenidos_tbl_contenidos1_idx` (`codigo_contenido`),
  ADD KEY `fk_tbl_colaboradores_has_tbl_contenidos_tbl_colaboradores1_idx` (`codigo_colaborador`);

--
-- Indices de la tabla `tbl_comentarios`
--
ALTER TABLE `tbl_comentarios`
  ADD PRIMARY KEY (`codigo_comentario`),
  ADD KEY `fk_tbl_comentarios_tbl_comentarios1_idx` (`codigo_comentario_padre`),
  ADD KEY `fk_tbl_comentarios_tbl_contenidos1_idx` (`codigo_contenido`);

--
-- Indices de la tabla `tbl_comentarios_x_cont`
--
ALTER TABLE `tbl_comentarios_x_cont`
  ADD PRIMARY KEY (`codigo_comentario`,`codigo_contenido`),
  ADD KEY `fk_tbl_comentarios_has_tbl_contenidos_tbl_contenidos1_idx` (`codigo_contenido`),
  ADD KEY `fk_tbl_comentarios_has_tbl_contenidos_tbl_comentarios1_idx` (`codigo_comentario`);

--
-- Indices de la tabla `tbl_contenidos`
--
ALTER TABLE `tbl_contenidos`
  ADD PRIMARY KEY (`codigo_contenido`),
  ADD KEY `fk_tbl_contenidos_tbl_tipo_contenido1_idx` (`codigo_tipo_contenido`),
  ADD KEY `fk_tbl_contenidos_tbl_esrb1_idx` (`codigo_esrb`);

--
-- Indices de la tabla `tbl_contenido_x_lista`
--
ALTER TABLE `tbl_contenido_x_lista`
  ADD PRIMARY KEY (`codigo_lista`,`codigo_contenido`),
  ADD KEY `fk_tbl_listas_reproduccion_has_tbl_contenidos_tbl_contenido_idx` (`codigo_contenido`),
  ADD KEY `fk_tbl_listas_reproduccion_has_tbl_contenidos_tbl_listas_re_idx` (`codigo_lista`);

--
-- Indices de la tabla `tbl_contenido_x_region`
--
ALTER TABLE `tbl_contenido_x_region`
  ADD PRIMARY KEY (`codigo_lugares`,`codigo_contenido`),
  ADD KEY `fk_tbl_lugares_has_tbl_contenidos_tbl_contenidos1_idx` (`codigo_contenido`),
  ADD KEY `fk_tbl_lugares_has_tbl_contenidos_tbl_lugares1_idx` (`codigo_lugares`);

--
-- Indices de la tabla `tbl_esrb`
--
ALTER TABLE `tbl_esrb`
  ADD PRIMARY KEY (`codigo_esrb`),
  ADD KEY `fk_tbl_esrb_tbl_imagen1_idx` (`codigo_imagen`);

--
-- Indices de la tabla `tbl_estado_cuenta`
--
ALTER TABLE `tbl_estado_cuenta`
  ADD PRIMARY KEY (`codigo_estado_cuenta`);

--
-- Indices de la tabla `tbl_generos`
--
ALTER TABLE `tbl_generos`
  ADD PRIMARY KEY (`codigo_genero`);

--
-- Indices de la tabla `tbl_historial_pago`
--
ALTER TABLE `tbl_historial_pago`
  ADD PRIMARY KEY (`codigo_usuario`,`fecha_pago`),
  ADD KEY `fk_tbl_historial_pago_tbl_usuarios1_idx` (`codigo_usuario`);

--
-- Indices de la tabla `tbl_idiomas`
--
ALTER TABLE `tbl_idiomas`
  ADD PRIMARY KEY (`codigo_idioma`);

--
-- Indices de la tabla `tbl_imagen`
--
ALTER TABLE `tbl_imagen`
  ADD PRIMARY KEY (`codigo_imagen`);

--
-- Indices de la tabla `tbl_imagenes_x_contenido`
--
ALTER TABLE `tbl_imagenes_x_contenido`
  ADD PRIMARY KEY (`codigo_imagen`,`codigo_contenido`),
  ADD KEY `fk_tbl_imagen_has_tbl_contenidos_tbl_contenidos1_idx` (`codigo_contenido`),
  ADD KEY `fk_tbl_imagen_has_tbl_contenidos_tbl_imagen1_idx` (`codigo_imagen`);

--
-- Indices de la tabla `tbl_listas_reproduccion`
--
ALTER TABLE `tbl_listas_reproduccion`
  ADD PRIMARY KEY (`codigo_lista`);

--
-- Indices de la tabla `tbl_lugares`
--
ALTER TABLE `tbl_lugares`
  ADD PRIMARY KEY (`codigo_lugares`),
  ADD KEY `fk_tbl_lugares_tbl_lugares1_idx` (`codigo_lugares_padre`),
  ADD KEY `fk_tbl_lugares_tbl_tipos_lugares1_idx` (`codigo_tipo_lugar`);

--
-- Indices de la tabla `tbl_membresia`
--
ALTER TABLE `tbl_membresia`
  ADD PRIMARY KEY (`codigo_membresia`);

--
-- Indices de la tabla `tbl_opinion`
--
ALTER TABLE `tbl_opinion`
  ADD PRIMARY KEY (`codigo_opinion`);

--
-- Indices de la tabla `tbl_opiniones_x_coment`
--
ALTER TABLE `tbl_opiniones_x_coment`
  ADD PRIMARY KEY (`codigo_opinion`,`codigo_comentario`,`codigo_usuario`),
  ADD KEY `fk_tbl_opinion_has_tbl_comentarios_tbl_comentarios1_idx` (`codigo_comentario`),
  ADD KEY `fk_tbl_opinion_has_tbl_comentarios_tbl_opinion1_idx` (`codigo_opinion`);

--
-- Indices de la tabla `tbl_paypal`
--
ALTER TABLE `tbl_paypal`
  ADD PRIMARY KEY (`codigo_paypal`);

--
-- Indices de la tabla `tbl_perfiles`
--
ALTER TABLE `tbl_perfiles`
  ADD PRIMARY KEY (`codigo_perfil`),
  ADD KEY `fk_tbl_perfiles_tbl_tipo_perfil1_idx` (`codigo_tipo_perfil`),
  ADD KEY `fk_tbl_perfiles_tbl_listas_reproduccion1_idx` (`codigo_lista`);

--
-- Indices de la tabla `tbl_personas`
--
ALTER TABLE `tbl_personas`
  ADD PRIMARY KEY (`codigo_persona`),
  ADD KEY `fk_tbl_personas_tbl_generos1_idx` (`codigo_genero`),
  ADD KEY `fk_tbl_personas_tbl_imagen1_idx` (`codigo_imagen`),
  ADD KEY `fk_tbl_personas_tbl_tipos_usuarios1_idx` (`codigo_tipo_usuario`);

--
-- Indices de la tabla `tbl_subtitulos`
--
ALTER TABLE `tbl_subtitulos`
  ADD PRIMARY KEY (`codigo_subtitulo`),
  ADD KEY `fk_tbl_subtitulos_tbl_idiomas1_idx` (`tbl_idiomas_codigo_idioma`);

--
-- Indices de la tabla `tbl_subtitulos_x_contenido`
--
ALTER TABLE `tbl_subtitulos_x_contenido`
  ADD PRIMARY KEY (`codigo_contenido`,`codigo_subtitulo`),
  ADD KEY `fk_tbl_contenidos_has_tbl_subtitulos_tbl_subtitulos1_idx` (`codigo_subtitulo`),
  ADD KEY `fk_tbl_contenidos_has_tbl_subtitulos_tbl_contenidos1_idx` (`codigo_contenido`);

--
-- Indices de la tabla `tbl_tarjeta_credito`
--
ALTER TABLE `tbl_tarjeta_credito`
  ADD PRIMARY KEY (`codigo_tarjeta`);

--
-- Indices de la tabla `tbl_temporadas`
--
ALTER TABLE `tbl_temporadas`
  ADD PRIMARY KEY (`codigo_temporada`);

--
-- Indices de la tabla `tbl_temporada_x_cont`
--
ALTER TABLE `tbl_temporada_x_cont`
  ADD PRIMARY KEY (`codigo_temporada_serie`),
  ADD UNIQUE KEY `codigo_temporada_UNIQUE` (`codigo_temporada`),
  ADD UNIQUE KEY `codigo_contenido_UNIQUE` (`codigo_contenido`),
  ADD KEY `fk_tbl_temporada_x_cont_tbl_temporadas1_idx` (`codigo_temporada`),
  ADD KEY `fk_tbl_temporada_x_cont_tbl_contenidos1_idx` (`codigo_contenido`);

--
-- Indices de la tabla `tbl_tipos_lugares`
--
ALTER TABLE `tbl_tipos_lugares`
  ADD PRIMARY KEY (`codigo_tipo_lugar`);

--
-- Indices de la tabla `tbl_tipos_usuarios`
--
ALTER TABLE `tbl_tipos_usuarios`
  ADD PRIMARY KEY (`codigo_tipo_usuario`);

--
-- Indices de la tabla `tbl_tipo_colaborador`
--
ALTER TABLE `tbl_tipo_colaborador`
  ADD PRIMARY KEY (`codigo_tipo_colaborador`);

--
-- Indices de la tabla `tbl_tipo_contenido`
--
ALTER TABLE `tbl_tipo_contenido`
  ADD PRIMARY KEY (`codigo_tipo_contenido`);

--
-- Indices de la tabla `tbl_tipo_pago_x_usuario`
--
ALTER TABLE `tbl_tipo_pago_x_usuario`
  ADD PRIMARY KEY (`codigo_usuario`),
  ADD KEY `fk_tbl_tipo_pago_x_usuario_tbl_tarjeta_credito1_idx` (`codigo_tarjeta`),
  ADD KEY `fk_tbl_tipo_pago_x_usuario_tbl_paypal1_idx` (`codigo_paypal`),
  ADD KEY `fk_tbl_tipo_pago_x_usuario_tbl_usuarios1_idx` (`codigo_usuario`);

--
-- Indices de la tabla `tbl_tipo_perfil`
--
ALTER TABLE `tbl_tipo_perfil`
  ADD PRIMARY KEY (`codigo_tipo_perfil`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`codigo_usuario`),
  ADD KEY `fk_tbl_usuarios_tbl_membresia1_idx` (`codigo_membresia`),
  ADD KEY `fk_tbl_usuarios_tbl_estado_cuenta1_idx` (`codigo_estado_cuenta`),
  ADD KEY `fk_tbl_usuarios_tbl_lugares1_idx` (`codigo_lugares`),
  ADD KEY `fk_tbl_usuarios_tbl_personas1_idx` (`codigo_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_audios`
--
ALTER TABLE `tbl_audios`
  MODIFY `codigo_audio` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE SIRVE PARA IDENTIFICAR DE FORMA UNICA EL AUDIO DE UN IDIOMA.';
--
-- AUTO_INCREMENT de la tabla `tbl_capitulos`
--
ALTER TABLE `tbl_capitulos`
  MODIFY `codigo_capitulo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE IDENTIFICA EL CAPITULO DE UN CONTENIDO (SERIE, telenovela...). ';
--
-- AUTO_INCREMENT de la tabla `tbl_categorias`
--
ALTER TABLE `tbl_categorias`
  MODIFY `codigo_categoria` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE SIRVE QUE SIRVE PARA IDENTIFICAR DE FORMA UNICA LAS CATEGORIAS DE UNA PELICULA O SERIE.';
--
-- AUTO_INCREMENT de la tabla `tbl_colaboradores`
--
ALTER TABLE `tbl_colaboradores`
  MODIFY `codigo_colaborador` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo que identifica de forma unica a un colaborador. Por colaborador entendemos que puede ser un Actor (actriz) o un director. ';
--
-- AUTO_INCREMENT de la tabla `tbl_comentarios`
--
ALTER TABLE `tbl_comentarios`
  MODIFY `codigo_comentario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE SIRVE PARA IDENTIFICAR DE FORMA UNICA UN COMENTARIO.';
--
-- AUTO_INCREMENT de la tabla `tbl_contenidos`
--
ALTER TABLE `tbl_contenidos`
  MODIFY `codigo_contenido` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE IDENTIFICA DE MANERA UNICA UN CONTENIDO EN ESPECIFICO. ', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tbl_esrb`
--
ALTER TABLE `tbl_esrb`
  MODIFY `codigo_esrb` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE SIRVE COMO IDENTIFICADOR PARA EL CODIGO DE LA CLASIFICACION.', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tbl_estado_cuenta`
--
ALTER TABLE `tbl_estado_cuenta`
  MODIFY `codigo_estado_cuenta` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CODIGO UNICO QUE IDENTIFICA DE FORMA UNICA UN ESTADO DE CUENTA';
--
-- AUTO_INCREMENT de la tabla `tbl_generos`
--
ALTER TABLE `tbl_generos`
  MODIFY `codigo_genero` int(11) NOT NULL AUTO_INCREMENT COMMENT 'IDENTIFICADOR UNICO PARA EL GENERO DE UNA PERSONA.';
--
-- AUTO_INCREMENT de la tabla `tbl_idiomas`
--
ALTER TABLE `tbl_idiomas`
  MODIFY `codigo_idioma` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE SIRVE PARA IDENTIFICAR DE FORMA UNICA UN IDIOMA.';
--
-- AUTO_INCREMENT de la tabla `tbl_imagen`
--
ALTER TABLE `tbl_imagen`
  MODIFY `codigo_imagen` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE GUARDA LA ABREVIATURA DEL GENERO.', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tbl_listas_reproduccion`
--
ALTER TABLE `tbl_listas_reproduccion`
  MODIFY `codigo_lista` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE IDENTIFICA DE FORMA UNICA UNA LISTA DE REPRODUCCION.';
--
-- AUTO_INCREMENT de la tabla `tbl_lugares`
--
ALTER TABLE `tbl_lugares`
  MODIFY `codigo_lugares` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo que almacena el codigo que identifica de forma unica un lugar. ';
--
-- AUTO_INCREMENT de la tabla `tbl_membresia`
--
ALTER TABLE `tbl_membresia`
  MODIFY `codigo_membresia` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo que identifica de forma unica una membresia. ';
--
-- AUTO_INCREMENT de la tabla `tbl_opinion`
--
ALTER TABLE `tbl_opinion`
  MODIFY `codigo_opinion` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE SIRVE PARA IDENTIFICAR DE FORMA UNICA UNA OPINION SOBRE UN COMENTARIO.';
--
-- AUTO_INCREMENT de la tabla `tbl_paypal`
--
ALTER TABLE `tbl_paypal`
  MODIFY `codigo_paypal` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO UNICO PARA INDENTIFICAR LA CUENTA DE PAYPAL.';
--
-- AUTO_INCREMENT de la tabla `tbl_perfiles`
--
ALTER TABLE `tbl_perfiles`
  MODIFY `codigo_perfil` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE IDENTIFICA DE FORMA UNICA UN PERFIL';
--
-- AUTO_INCREMENT de la tabla `tbl_personas`
--
ALTER TABLE `tbl_personas`
  MODIFY `codigo_persona` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo que identifica de forma unica el registro d euna persona. ';
--
-- AUTO_INCREMENT de la tabla `tbl_subtitulos`
--
ALTER TABLE `tbl_subtitulos`
  MODIFY `codigo_subtitulo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE SIRVE PARA IDENTIFICAR DE FORMA UNICA LOS SUBTITULOS DE UNA PELICULA.';
--
-- AUTO_INCREMENT de la tabla `tbl_tarjeta_credito`
--
ALTER TABLE `tbl_tarjeta_credito`
  MODIFY `codigo_tarjeta` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO UNICO PARA IDENTIFICAR UN TARJETA.';
--
-- AUTO_INCREMENT de la tabla `tbl_temporadas`
--
ALTER TABLE `tbl_temporadas`
  MODIFY `codigo_temporada` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE SIRVE PARA IDENTIFICAR DE FORMA UNICA UNA TEMPORADA DE UNA SERIE.';
--
-- AUTO_INCREMENT de la tabla `tbl_temporada_x_cont`
--
ALTER TABLE `tbl_temporada_x_cont`
  MODIFY `codigo_temporada_serie` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE IDENTIFICA DE FORMA UNICA LA TEMPORADA PERTENECIENTE A UNA SERIE. ';
--
-- AUTO_INCREMENT de la tabla `tbl_tipos_lugares`
--
ALTER TABLE `tbl_tipos_lugares`
  MODIFY `codigo_tipo_lugar` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_tipos_usuarios`
--
ALTER TABLE `tbl_tipos_usuarios`
  MODIFY `codigo_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo que identifica de forma unica un tipo de usuario (admin, cliente)';
--
-- AUTO_INCREMENT de la tabla `tbl_tipo_colaborador`
--
ALTER TABLE `tbl_tipo_colaborador`
  MODIFY `codigo_tipo_colaborador` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Campo que identifica de forma unica un tipo de colaborador. ';
--
-- AUTO_INCREMENT de la tabla `tbl_tipo_contenido`
--
ALTER TABLE `tbl_tipo_contenido`
  MODIFY `codigo_tipo_contenido` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo que identifica de forma unica un tipo de contenido, ejemplo (novela, pelicula...).', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tbl_tipo_perfil`
--
ALTER TABLE `tbl_tipo_perfil`
  MODIFY `codigo_tipo_perfil` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE IDENTIFICA DE FORMA UNICA CADA TIPO DE PERFIL';
--
-- AUTO_INCREMENT de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `codigo_usuario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo que hace referencia de forma unica a un usuario. ';
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_audios`
--
ALTER TABLE `tbl_audios`
  ADD CONSTRAINT `fk_tbl_audios_tbl_idiomas1` FOREIGN KEY (`codigo_idioma`) REFERENCES `tbl_idiomas` (`codigo_idioma`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_audios_x_contenido`
--
ALTER TABLE `tbl_audios_x_contenido`
  ADD CONSTRAINT `fk_tbl_contenidos_has_tbl_audios_tbl_audios1` FOREIGN KEY (`codigo_audio`) REFERENCES `tbl_audios` (`codigo_audio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_contenidos_has_tbl_audios_tbl_contenidos1` FOREIGN KEY (`codigo_contenido`) REFERENCES `tbl_contenidos` (`codigo_contenido`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_capitulos`
--
ALTER TABLE `tbl_capitulos`
  ADD CONSTRAINT `fk_tbl_capitulos_tbl_temporada_x_cont1` FOREIGN KEY (`codigo_temporada_serie`) REFERENCES `tbl_temporada_x_cont` (`codigo_temporada_serie`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_categorias_x_contenido`
--
ALTER TABLE `tbl_categorias_x_contenido`
  ADD CONSTRAINT `fk_tbl_contenidos_has_tbl_categorias_tbl_categorias1` FOREIGN KEY (`codigo_categoria`) REFERENCES `tbl_categorias` (`codigo_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_contenidos_has_tbl_categorias_tbl_contenidos1` FOREIGN KEY (`codigo_contenido`) REFERENCES `tbl_contenidos` (`codigo_contenido`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_colaboradores`
--
ALTER TABLE `tbl_colaboradores`
  ADD CONSTRAINT `fk_tbl_colaboradores_tbl_imagen1` FOREIGN KEY (`codigo_imagen`) REFERENCES `tbl_imagen` (`codigo_imagen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_colaboradores_tbl_tipo_colaborador1` FOREIGN KEY (`codigo_tipo_colaborador`) REFERENCES `tbl_tipo_colaborador` (`codigo_tipo_colaborador`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_colaboradores_x_cont`
--
ALTER TABLE `tbl_colaboradores_x_cont`
  ADD CONSTRAINT `fk_tbl_colaboradores_has_tbl_contenidos_tbl_colaboradores1` FOREIGN KEY (`codigo_colaborador`) REFERENCES `tbl_colaboradores` (`codigo_colaborador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_colaboradores_has_tbl_contenidos_tbl_contenidos1` FOREIGN KEY (`codigo_contenido`) REFERENCES `tbl_contenidos` (`codigo_contenido`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_comentarios`
--
ALTER TABLE `tbl_comentarios`
  ADD CONSTRAINT `fk_tbl_comentarios_tbl_comentarios1` FOREIGN KEY (`codigo_comentario_padre`) REFERENCES `tbl_comentarios` (`codigo_comentario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_comentarios_tbl_contenidos1` FOREIGN KEY (`codigo_contenido`) REFERENCES `tbl_contenidos` (`codigo_contenido`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_comentarios_x_cont`
--
ALTER TABLE `tbl_comentarios_x_cont`
  ADD CONSTRAINT `fk_tbl_comentarios_has_tbl_contenidos_tbl_comentarios1` FOREIGN KEY (`codigo_comentario`) REFERENCES `tbl_comentarios` (`codigo_comentario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_comentarios_has_tbl_contenidos_tbl_contenidos1` FOREIGN KEY (`codigo_contenido`) REFERENCES `tbl_contenidos` (`codigo_contenido`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_contenidos`
--
ALTER TABLE `tbl_contenidos`
  ADD CONSTRAINT `fk_tbl_contenidos_tbl_esrb1` FOREIGN KEY (`codigo_esrb`) REFERENCES `tbl_esrb` (`codigo_esrb`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_contenidos_tbl_tipo_contenido1` FOREIGN KEY (`codigo_tipo_contenido`) REFERENCES `tbl_tipo_contenido` (`codigo_tipo_contenido`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_contenido_x_lista`
--
ALTER TABLE `tbl_contenido_x_lista`
  ADD CONSTRAINT `fk_tbl_listas_reproduccion_has_tbl_contenidos_tbl_contenidos1` FOREIGN KEY (`codigo_contenido`) REFERENCES `tbl_contenidos` (`codigo_contenido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_listas_reproduccion_has_tbl_contenidos_tbl_listas_repr1` FOREIGN KEY (`codigo_lista`) REFERENCES `tbl_listas_reproduccion` (`codigo_lista`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_contenido_x_region`
--
ALTER TABLE `tbl_contenido_x_region`
  ADD CONSTRAINT `fk_tbl_lugares_has_tbl_contenidos_tbl_contenidos1` FOREIGN KEY (`codigo_contenido`) REFERENCES `tbl_contenidos` (`codigo_contenido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_lugares_has_tbl_contenidos_tbl_lugares1` FOREIGN KEY (`codigo_lugares`) REFERENCES `tbl_lugares` (`codigo_lugares`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_esrb`
--
ALTER TABLE `tbl_esrb`
  ADD CONSTRAINT `fk_tbl_esrb_tbl_imagen1` FOREIGN KEY (`codigo_imagen`) REFERENCES `tbl_imagen` (`codigo_imagen`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_historial_pago`
--
ALTER TABLE `tbl_historial_pago`
  ADD CONSTRAINT `fk_tbl_historial_pago_tbl_usuarios1` FOREIGN KEY (`codigo_usuario`) REFERENCES `tbl_usuarios` (`codigo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_imagenes_x_contenido`
--
ALTER TABLE `tbl_imagenes_x_contenido`
  ADD CONSTRAINT `fk_tbl_imagen_has_tbl_contenidos_tbl_contenidos1` FOREIGN KEY (`codigo_contenido`) REFERENCES `tbl_contenidos` (`codigo_contenido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_imagen_has_tbl_contenidos_tbl_imagen1` FOREIGN KEY (`codigo_imagen`) REFERENCES `tbl_imagen` (`codigo_imagen`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_lugares`
--
ALTER TABLE `tbl_lugares`
  ADD CONSTRAINT `fk_tbl_lugares_tbl_lugares1` FOREIGN KEY (`codigo_lugares_padre`) REFERENCES `tbl_lugares` (`codigo_lugares`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_lugares_tbl_tipos_lugares1` FOREIGN KEY (`codigo_tipo_lugar`) REFERENCES `tbl_tipos_lugares` (`codigo_tipo_lugar`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_opiniones_x_coment`
--
ALTER TABLE `tbl_opiniones_x_coment`
  ADD CONSTRAINT `fk_tbl_opinion_has_tbl_comentarios_tbl_comentarios1` FOREIGN KEY (`codigo_comentario`) REFERENCES `tbl_comentarios` (`codigo_comentario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_opinion_has_tbl_comentarios_tbl_opinion1` FOREIGN KEY (`codigo_opinion`) REFERENCES `tbl_opinion` (`codigo_opinion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_perfiles`
--
ALTER TABLE `tbl_perfiles`
  ADD CONSTRAINT `fk_tbl_perfiles_tbl_listas_reproduccion1` FOREIGN KEY (`codigo_lista`) REFERENCES `tbl_listas_reproduccion` (`codigo_lista`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_perfiles_tbl_tipo_perfil1` FOREIGN KEY (`codigo_tipo_perfil`) REFERENCES `tbl_tipo_perfil` (`codigo_tipo_perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_personas`
--
ALTER TABLE `tbl_personas`
  ADD CONSTRAINT `fk_tbl_personas_tbl_generos1` FOREIGN KEY (`codigo_genero`) REFERENCES `tbl_generos` (`codigo_genero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_personas_tbl_imagen1` FOREIGN KEY (`codigo_imagen`) REFERENCES `tbl_imagen` (`codigo_imagen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_personas_tbl_tipos_usuarios1` FOREIGN KEY (`codigo_tipo_usuario`) REFERENCES `tbl_tipos_usuarios` (`codigo_tipo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_subtitulos`
--
ALTER TABLE `tbl_subtitulos`
  ADD CONSTRAINT `fk_tbl_subtitulos_tbl_idiomas1` FOREIGN KEY (`tbl_idiomas_codigo_idioma`) REFERENCES `tbl_idiomas` (`codigo_idioma`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_subtitulos_x_contenido`
--
ALTER TABLE `tbl_subtitulos_x_contenido`
  ADD CONSTRAINT `fk_tbl_contenidos_has_tbl_subtitulos_tbl_contenidos1` FOREIGN KEY (`codigo_contenido`) REFERENCES `tbl_contenidos` (`codigo_contenido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_contenidos_has_tbl_subtitulos_tbl_subtitulos1` FOREIGN KEY (`codigo_subtitulo`) REFERENCES `tbl_subtitulos` (`codigo_subtitulo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_temporada_x_cont`
--
ALTER TABLE `tbl_temporada_x_cont`
  ADD CONSTRAINT `fk_tbl_temporada_x_cont_tbl_contenidos1` FOREIGN KEY (`codigo_contenido`) REFERENCES `tbl_contenidos` (`codigo_contenido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_temporada_x_cont_tbl_temporadas1` FOREIGN KEY (`codigo_temporada`) REFERENCES `tbl_temporadas` (`codigo_temporada`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_tipo_pago_x_usuario`
--
ALTER TABLE `tbl_tipo_pago_x_usuario`
  ADD CONSTRAINT `fk_tbl_tipo_pago_x_usuario_tbl_paypal1` FOREIGN KEY (`codigo_paypal`) REFERENCES `tbl_paypal` (`codigo_paypal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_tipo_pago_x_usuario_tbl_tarjeta_credito1` FOREIGN KEY (`codigo_tarjeta`) REFERENCES `tbl_tarjeta_credito` (`codigo_tarjeta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_tipo_pago_x_usuario_tbl_usuarios1` FOREIGN KEY (`codigo_usuario`) REFERENCES `tbl_usuarios` (`codigo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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

-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2017 a las 06:42:11
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

--
-- Volcado de datos para la tabla `tbl_categorias`
--

INSERT INTO `tbl_categorias` (`codigo_categoria`, `nombre_categoria`) VALUES
(1, 'Romance'),
(2, 'Accion'),
(3, 'Ciencia Ficcion'),
(4, 'Terror'),
(5, 'Animadas'),
(6, 'Aventuras'),
(7, 'Comedia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categorias_x_contenido`
--

CREATE TABLE `tbl_categorias_x_contenido` (
  `codigo_contenido` int(11) NOT NULL COMMENT 'campo que hace referencia al contenido.',
  `codigo_categoria` int(11) NOT NULL COMMENT 'campo que hace referencia a la categoria.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_categorias_x_contenido`
--

INSERT INTO `tbl_categorias_x_contenido` (`codigo_contenido`, `codigo_categoria`) VALUES
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(44, 1),
(12, 2),
(16, 2),
(19, 2),
(21, 2),
(22, 2),
(30, 2),
(31, 2),
(38, 2),
(40, 2),
(41, 2),
(43, 2),
(6, 3),
(7, 3),
(11, 3),
(12, 3),
(13, 3),
(15, 3),
(17, 3),
(18, 3),
(21, 3),
(22, 3),
(30, 3),
(40, 3),
(43, 3),
(15, 4),
(17, 4),
(20, 4),
(24, 4),
(33, 4),
(35, 4),
(36, 4),
(41, 4),
(45, 4),
(10, 5),
(19, 5),
(25, 5),
(26, 5),
(27, 5),
(29, 5),
(31, 5),
(32, 5),
(34, 5),
(37, 5),
(10, 6),
(12, 6),
(14, 6),
(16, 6),
(21, 6),
(22, 6),
(23, 6),
(25, 6),
(26, 6),
(29, 6),
(34, 6),
(37, 6),
(42, 6),
(3, 7),
(5, 7),
(8, 7),
(9, 7),
(16, 7),
(17, 7),
(19, 7),
(27, 7),
(31, 7),
(32, 7),
(34, 7),
(39, 7),
(42, 7);

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
(2, 1, 1, 'Dirty Dancing', 'Dirty Dancing: Havana Nights sigue el amoroso romance de la joven pareja Katey (Romola Garai) y Javier (Diego Luna) con el telón de fondo de la revolución cubana en 1958. Katey es una chica estadounidense que vive en Cuba con sus padres y que conoce a Javier, un local. Javier lleva a Katey a un club nocturno donde le enseña a bailar sucio estilo cubano. Los dos se acercan cada vez más, pero cuando Castro toma el relevo, los padres de Katey deciden huir para los Estados Unidos, dejando a Katey para tomar la decisión final', '2014-02-27', '86', 3, 'videos/METRO.mp4'),
(3, 1, 1, 'Kate & Leopold', 'Kate McKay (Meg Ryan) es una ejecutiva moderna del siglo XXI cuya vida está dirigida a triunfar en el mundo empresarial. Leopold (Hugh Jackman), el tercer Duque de Albany, es un caballero soltero y encantador de finales del siglo XIX. Viven en épocas diferentes pero comparten expectativas sociales y profesionales, además de la forma escéptica a la que se enfrentan a sus relaciones sentimentales. Al producirse una rasgadura en el tejido del tiempo, la casualidad hace que Leopold aparezca en la Nueva York de 2002; allí se cruzarán sus caminos y nacerá un curioso romance.', '2001-12-25', '121', 7, 'videos/METRO.mp4'),
(4, 1, 1, 'Mi Amor', 'Cuando Tony es ingresada en un centro de rehabilitación tras sufrir un grave accidente de esquí, empieza a reflexionar sobre la complicada historia de amor que vivió con Georgio. Entre personal médico y analgésicos, se pregunta por qué se aman y cómo fue capaz de ceder ante una pasión tan sofocante como destructiva. Para Tony empieza un duro proceso de reconstrucción a través de un trabajo físico que quizá le permita liberarse de forma definitiva de ese amor pasado que tanto le hizo sufrir. \r\n\r\nMi amor es una apasionada historia de amor dirigida por la directora y actriz Maïwenn (Polisse, Le bal des actrices, Pardonnez-moi) y protagonizada por Vincent Cassel (La Bella y la Bestia), Emmanuelle Bercot (El viaje de Bettie), Louis Garrel (Saint Laurent) e Isild Le Besco (The Good Heart (Un buen corazón)).', '2016-04-15', '130', 6, 'videos/METRO.mp4'),
(5, 1, 1, 'Story of Us', 'Ben Jordan (Bruce Willis) y su esposa Katie (Michelle Pfeiffer) llevan 15 años de matrimonio y aparentemente tienen una vida perfecta. Comparten con sus dos encantadores hijos, Erin (Colleen Rennison) y Josh (Jake Sandvig), un acogedor y cómodo hogar. Sin embargo, cuando los niños no están, la pareja no tienen más remedio que enfrentarse a la cruda realidad de que a estas alturas ninguno de los dos se soporta.\r\n\r\nCuando se acercan las vacaciones escolares, inscriben a sus muchachos en un campamento de verano y, apenas salen del hogar, la pareja comienzan a hacer todos los arreglos necesarios para oficializar su separación. Durante este proceso, cada uno por su cuenta intentará recordar cuáles fueron las razones por las que se enamoraron. ¿Encontrarán motivos suficientes para permanecer juntos?', '1999-11-28', '95', 13, 'videos/METRO.mp4'),
(6, 1, 1, 'Fallen', 'Luce, de 17 años, es una nueva estudiante de Sword & Cross (Espada y Cruz), un internado/reformatorio ubicado en Savannah, Georgia. El novio de Luce murió en circunstancias sospechosas, y ella carga con la culpa de su muerte mientras se mueve por los pocos amistosos pasillos de Sword & Cross, donde cada estudiante parece tener una historia desagradable.\r\n\r\nPero al conocer a Daniel, un guapo estudiante, Luce siente que hay una razón para estar allí - aunque no sabe cuál es. ¿Y el comportamiento frío y distante de Daniel con ella? Realmente es un mecanismo de defensa al que se ha acostumbrado. Daniel es un ángel caído, condenado a enamorarse de la misma chica cada 17 años y verla morir. Y Luce una chica mortal, que tiende a retornar una y otra vez, y que además no tiene ni idea de quién es en realidad.', '2016-11-10', '92', 9, 'videos/METRO.mp4'),
(7, 1, 1, 'La Bella y La Bestia', 'Una joven soñadora y romántica llamada Bella (Emma Watson) vive en una pequeña aldea junto a su padre, un inventor de artilugios, al que algunos consideran un anciano demente. Un día, su padre viaja a una feria para exponer sus inventos, pero se pierde en el camino y acaba en un viejo y misterioso castillo. Buscando cobijo y un lugar donde pasar la noche, el padre de Bella descubre que el señor de ese castillo es una horrible Bestia (Dan Stevens). Cuando se percata de su presencia, la Bestia le deja encerrado entre rejas. \r\nBella, preocupada por su anciano padre, no duda ni un instante en salir en su busca. Cuando encuentra el castillo, Bella decide hacer un intercambio, y quedarse encerrada a cambio de la libertad del anciano. Durante su estancia, la protagonista conocerá a una serie de peculiares personajes que harán que se sienta mucho más cómoda. Además, poco a poco, irá conociendo la Bestia, y se dará cuenta de que, en su interior, hay un gran corazón. La joven se enamora de él, deshaciendo así el antiguo hechizo de la rosa...\r\n', '2017-03-17', '120', 10, 'videos/METRO.mp4'),
(8, 1, 1, 'Experta en Bodas', 'Nadie entiende tanto de amor como Mary Fiore (Jennifer Lopez). Después de todo, es la más prestigiosa organizadora de bodas de San Francisco. Como se especializa en que los sueños de amor se conviertan en realidad, está demasiado ocupada para tener una vida amorosa propia. Mientras celebra el último y más lucrativo contrato -el de la magnate de Internet Fran Donolly (Bridgette Wilson-Sampras)- Mary es rescatada de un choque casi mortal con un camionero en fuga por el Doctor Steve Edison (Matthew McConaughey). Después de pasar juntos la velada más agradable de sus vidas, Mary cree que por fin ha encontrado un motivo para creer en el amor. Bueno, casi. El mundo de Mary cambia de arriba abajo cuando descubre que Steve es en realidad el futuro marido de Fran Donolly, y ella su organizadora de boda. Su carrera y Cupido acaban de chocar.', '2001-01-26', '114', 9, 'videos/METRO.mp4'),
(9, 1, 1, 'La hija del Patron', 'Vital, de 40 años, es jefe de taller en una fábrica textil. Es elegido como “cobaya” por Alix, la hija de 25 años del jefe de la fábrica, que ha venido para hacer un estudio ergonómico. La hija del jefe se rendirá pronto a los encantos de Vital, quien se irá abriendo poco a poco a Alix.', '2016-01-06', '98', 4, 'videos/METRO.mp4'),
(10, 1, 1, 'Moana: Un mar de aventuras', 'Hace 3000 años, la diosa todopoderosa "Te Fiti" fue la que creó todas las islas del océano Pacífico y con eso la humanidad, la flora y la fauna. El semidiós Maui (Dwayne Johnson) quería el Corazón de Te Fiti, el cual creaba las islas. Así que entró en Te Fiti y robó el corazón de la diosa. Pero Maui no era el único que lo deseaba, pues los monstruos marinos también andaban detrás del corazón, tratando de causar el mal y que todas las islas empiecen a desaparecer.', '2016-11-23', '107', 9, 'videos/METRO.mp4'),
(11, 1, 1, 'Gattaca', 'En un futuro no tan lejano, los padres deciden tener hijos con la ayuda de la ingeniería genética para que tengan más salud y mejores oportunidades de conseguir buenos trabajos, ganar más dinero y tener éxito en la vida, frente a la posibilidad de que tengan que competir contra otras personas que fueron mejoradas al nacer, con los adelantos de la ingeniería genética y poder cumplir sus sueños, con todos los dones necesarios para poder participar incluso en la conquista de otros planetas, para ser seleccionados como astronautas y colonos espaciales, deben tener inteligencia superior, alta resistencia física, buena visión y hasta poder prolongar más su vida, al no tener enfermedades genéticas y problemas cardíacos, con la selección de niños más sanos desde el momento de la concepción, los padres seleccionan como quieren tener a sus hijos, desde el sexo del niño, especificar color de ojos, cabello y piel.', '1997-10-24', '106', 10, 'videos/METRO.mp4'),
(12, 1, 1, 'Doctor Strange', 'Después de que Stephen Strange, un aclamado neurocirujano, se vea involucrado en un accidente automovilístico donde sus manos son dañadas, se embarca en un viaje de sanación, donde se encuentra con un ser misterioso llamado Ancestral, quien le enseñará el mundo de las artes místicas.', '2016-10-13', '115', 11, 'videos/METRO.mp4'),
(13, 1, 1, '2001: Odisea del espacio', 'La secuencia inicial del filme se inicia con la imagen de la Tierra ascendiendo sobre la Luna, mientras que el Sol asciende a su vez sobre la Tierra, todos en alineación. En este momento comienza a escucharse la composición musical Así habló Zaratustra de Richard Strauss, la misma que acompaña, en su mayoría, la primera parte de la película titulada El Amanecer del Hombre.', '1968-04-02', '161', 10, 'videos/METRO.mp4'),
(14, 1, 1, 'El hogar de Miss Peregrine para niños peculiares', 'Jacob Portman (Asa Butterfield) es un muchacho de 16 años que ha hecho un gran descubrimiento. Tras haber hallado una serie de misteriosas pistas que se extienden por diferentes mundos y tiempos, el joven emprende un viaje hacia una isla remota para buscar el orfanato donde creció su abuelo Abraham (Terence Stamp). El anciano murió de manera extraña, pero todas sus aventuras han quedado grabadas en la memoria de su nieto. ', '2016-09-27', '127', 8, 'videos/METRO.mp4'),
(15, 1, 1, 'ALIEN 3', 'Tras conseguir escapar con Newt y Bishop de un planeta alienígena, la teniente Ellen Ripley (Sigourney Weaver) recala accidentalmente en Fiorna 161, una remota cárcel galáctica cuyos peligrosos reclusos están absolutamente abandonados a su suerte. (FILMAFFINITY)', '1992-04-01', '115', 7, 'videos/METRO.mp4'),
(16, 1, 1, 'Kung Fu Panda 3', 'Kung Fu Panda 3 es una película de animada de artes marciales y comedia de acción chino-estadounidense, producida por Dreamworks Animation. Está dirigida por Jennifer Yuh Nelson y Alessandro Carloni, escrita por Jonathan Aibel y Glenn Berger, producida por Melissa Cobb, y con la producción ejecutiva de Guillermo del Toro. Es la secuela de la película de 2011 Kung Fu Panda 2 y la tercera entrega de la franquicia de Kung Fu Panda. Fue distribuida por CJ Entertainment en Corea del Sur y la 20th Century Fox en el resto del mundo.', '2016-01-16', '95', 6, 'videos/METRO.mp4'),
(17, 1, 1, 'Cazafantasmas', 'Cazafantasmas es una película de comedia estadounidense de 2016, reboot del clásico film de 1984. El filme está dirigido por Paul Feig, con guion de Kate Dippold y lo protagonizan Melissa McCarthy, Kristen Wiig, Kate McKinnon y Leslie Jones.', '2016-07-09', '116', 4, 'videos/METRO.mp4'),
(18, 1, 1, 'ARQ', 'Atrapados en un laboratorio y en un bucle temporal, una pareja intenta proteger la nueva fuente de energía que podría salvar a la humanidad.', '2016-06-15', '88', 7, 'videos/METRO.mp4'),
(19, 1, 1, 'The Angry Birds', 'The Angry Birds Movie es una película finlandés-estadounidense en 3D de animación por computadora y comedia de acción dirigida por Clay Kaytis y Fergal Reilly, producida por John Cohen y Catherine Winder y escrita por Jon Vitti. ', '2016-05-11', '97', 5, 'videos/METRO.mp4'),
(20, 1, 1, 'Annabelle', 'El film empieza con la misma secuencia vista en El conjuro donde tres jóvenes eran entrevistados por Ed y Lorraine Warren sobre sus experiencias con una muñeca a la que habían llamado Annabelle y que supuestamente estaba poseída.', '2014-10-03', '98', 8, 'videos/METRO.mp4'),
(21, 1, 1, 'Capitán América: Civil War', '"Capitán América: Civil War", de Marvel, empieza donde lo dejó "Vengadores: La Era de Ultrón" ya que Steve Rogers lidera el nuevo equipo de los Vengadores en su incesante tarea de proteger a la humanidad. Pero, después de que otro incidente internacional en el que se ven envueltos los Vengadores produzca daños colaterales, la presión política obliga a poner en marcha un sistema para depurar responsabilidades y a crear un organismo rector que determine cuándo hay que recurrir a los servicios del equipo. El nuevo status que divide a los Vengadores en dos bandos, uno liderado por Steve Rogers y su deseo de mantener la libertad de actuación de los Vengadores a la hora de defender a la humanidad sin interferencias, y otro liderado por Tony Stark y su sorprendente decisión de apoyar los planes y organismos del Gobierno, mientras intentan proteger al mundo de un nuevo malvado.', '2016-05-06', '148', 9, 'videos/METRO.mp4'),
(22, 1, 1, 'Assassin\'s Creed ', 'Assassin\'s Creed cuenta la historia de Callum Lynch (Michael Fassbender), un criminal encerrado en prisión y condenado a ser ejecutado por sus delitos. Pero Lynch recibirá una nueva oportunidad de la organización Abstergo, entidad dirigida por Alan Rikkin (Jeremy Irons). Así, con la ayuda de Sophia Rikkin (Marion Cotillard) y a través de una tecnología revolucionaria que permite rastrear su ADN y desbloquear sus recuerdos genéticos, Lynch experimentará las aventuras de su antepasado Aguilar de Nerha (originalmente llamado Aguilar de Algarrobo), un asesino miembro de la hermandad secreta de los Asesinos y ascendiente suyo que vivió durante la España del siglo XVI, en pleno auge de la Inquisición Española.', '2016-12-21', '115', 9, 'videos/METRO.mp4'),
(23, 1, 1, 'PAN', 'Pan es una película de aventura y fantasía británico-estadounidense de 2015 dirigida por Joe Wright. Está protagonizada por Hugh Jackman, Garrett Hedlund, Rooney Mara, Amanda Seyfried, y Levi Miller. Es una historia original de Peter Pan y el Capitán Garfio, y se estrenó el 9 de octubre de 2015.', '2019-10-09', '112', 7, 'videos/METRO.mp4'),
(24, 1, 1, 'BITE', ' Poco antes de celebrar su boda y durante su despedida de soltera, la joven Casey sufre la picadura de un insecto hasta ahora desconocido. Lo que parece ser un incidente sin importancia pronto empieza a provocar la lenta transformación de su organismo, que no tardan en aflorar y cambiar radicalmente su cuerpo de forma inimaginable.', '2016-08-17', '88', 5, 'videos/METRO.mp4'),
(25, 1, 1, 'Los Pitufos 2', 'Los Pitufos 2 es una película en 3D que fue lanzada el día miércoles 21 de julio del año 2013. Es una secuela de la película de 2011 Los Pitufos, producida por Sony Pictures Animation y distribuida por Columbia Pictures y basada en la serie de historietas homónima creada por Peyo en 1959.', '2013-07-13', '105', 8, 'videos/METRO.mp4'),
(26, 1, 1, 'Buscando A Dory', 'Buscando a Dory (en inglés, Finding Dory) es una película estadounidense en animación 3D por ordenador. Es la secuela de Buscando a Nemo y también está distribuida por Walt Disney Pictures, producida por Pixar y dirigida por Andrew Stanton, que dirigió la película original, y regresó como escritor y director, junto a Angus MacLane como el codirector.2 3 Su estreno fue el 16 de junio de 2016. Volvieron a aparecer algunos personajes de la película anterior, además de Dory están Nemo, Marlin y la pandilla del acuario.', '2016-06-16', '97', 10, 'videos/METRO.mp4'),
(27, 1, 1, 'Lluvia de hamburguesas 2', 'Lluvia de hamburguesas 2: La venganza de las sobras es una película animada dirigida por Cody Cameron y Kris Pearn. Es la secuela de Lluvia de hamburguesas, basado en un popular libro homónimo norteamericano llamado La Lluvia de las albóndigas.', '2013-08-03', '95', 8, 'videos/METRO.mp4'),
(29, 1, 1, 'The Lego Batman Movie', ' es una comedia de aventuras animada por computadora producida en Estados Unidos para estrenarse el 9 de febrero del 2017, spin-off de The Lego Movie. Será dirigida por Chris McKay y escrita por Seth Grahame-Smith, distribuida por Warner Bros. Pictures y contará con las voces protagonistas de Will Arnett, Rosario Dawson, Ralph Fiennes, Michael Cera, Zach Galifianakis y Mariah Carey. Basada principalmente en la línea de construcción de juguetes LEGO.', '2017-02-10', '106', 4, 'videos/METRO.mp4'),
(30, 1, 1, 'Catástrofe en la tierra', 'Con un brillante haz de luz blanco y sin previo aviso, la Luna ha desaparecido. Tras esto, se produce un segundo haz de luz y eso es lo último que todo el mundo recuerda en la Tierra. Once meses más tarde nos encontramos ante un mundo apocalíptico que ha sido arrastrado a un agujero espacio-temporal provocando grandes desastres y colapsando la civilización tal y como la conocemos. Nuestros héroes deberán encontrar una manera de sobrevivir y ponerse a salvo antes de que sea demasiado tarde.', '2016-07-13', '82', 5, 'videos/METRO.mp4'),
(31, 1, 1, 'The Lego Movie 2', 'The Lego Movie (La gran aventura Lego en Hispanoamérica; La Lego película en España) es una comedia de aventuras animada por computadora producida en Estados Unidos1 en 2014. Fue dirigida y coescrita por Phil Lord y Christopher Miller, distribuida por Warner Bros. Pictures y contó con las voces protagonistas de Chris Pratt, Elizabeth Banks, Will Ferrell, Will Arnett, Nick Offerman, Alison Brie, Charlie Day, Liam Neeson y Morgan Freeman. Basada principalmente en la línea de construcción de juguetes LEGO, la película relata la historia de una minifigura Lego ordinaria cuyo destino es salvar el universo Lego de un malvado tirano.', '2014-02-06', '100', 6, 'videos/METRO.mp4'),
(32, 1, 1, 'Sing', 'Sing (¡Canta! en España y Sing: Ven y canta en Hispanoamérica) es una película de animación por computadora del año 2016 producida por Illumination Entertainment. Fue dirigida y escrita por Garth Jennings y co-dirigida por Christophe Lourdelet, y protagoniza las voces de Matthew McConaughey, Reese Witherspoon, Seth MacFarlane, Scarlett Johansson, John C. Reilly, Taron Egerton y Tori Kelly. La trama involucra a un grupo de animales antropomórficos que entran en una competencia de canto, organizada por un koala con la esperanza de salvar su teatro.', '2016-12-21', '108', 9, 'videos/METRO.mp4'),
(33, 1, 1, 'DEAD STORY', ' Anne y Harold son una pareja que se muda a una nueva casa sin saber que era un sitio de asesinatos horrendos (o no, es una pelicula de esas…), la soledad de Anne y su comportamiento extraño hacen que su relación sea muy complicada. cuando Anne descubre una oscura presencia en la casa, ella no tendra ninguna posibilidad de escapar…', '2017-02-15', '102', 8, 'videos/METRO.mp4'),
(34, 1, 1, 'Ovejas y lobos', 'En una lejana y mágica tierra, vive un rebaño de ovejas tranquilamente y sin preocupaciones entre verdes prados y colinas. Pero su vida pastoral se ve interrumpida cuando una manada de lobos decide establecer su campamento en un barranco cercano. \r\n\r\nMientras que las ovejas tratan de encontrar la manera de convivir con sus nuevos vecinos, la manada de lobos se encuentran en plena elección de su próximo líder, tarea que no será nada fácil.', '2016-04-22', '96', 4, 'videos/METRO.mp4'),
(35, 1, 1, 'Demonios 2 ', 'Demonios 2 (título original Dèmoni 2) es una película italiana de 1986 de terror dirigida por Lamberto Bava y co-escrita y producida por Dario Argento. Se trata de la secuela de la película de 1985 Demonios, está protagonizada por David Edwin Knight, Nancy Brilli y Coralina Cataldi-Tassoni, y supuso el debut en el cine a los 10 años de la hija pequeña de Dario Argento, Asia Argento.', '1986-04-03', '91', 7, 'videos/METRO.mp4'),
(36, 1, 1, 'Devil in the Dark', 'Dos hermanos que han pasado años distanciados, deciden realizar un viaje juntos de caza en un extenso bosque. Sin embargo, una vez allí se ven perseguidos por una presencia sobrenatural. Eso hará que tengan que dejar de lado sus diferencias y trabajar juntos para sobrevivir...', '2017-03-07', '96', 8, 'videos/METRO.mp4'),
(37, 1, 1, 'Mi amigo el dragón ', 'n 1977, Pete, un niño de cinco años de edad, está en un viaje por la carretera con sus padres cuando su coche voltea el lado de la carretera tratando de evitar atropellar a un ciervo. Los padres de Pete mueren al instante, pero Pete sobrevive y es perseguido en el bosque por una manada de lobos, sólo para ser rescatado por un dragón con la piel verde, ojos amarillos y enormes alas. Pete nombra al dragón "Elliot" ,ya que de que su libro favorito es sobre un cachorro del mismo nombre. Y se lleva al dragón como una figura paterna.', '2016-08-12', '102', 8, 'videos/METRO.mp4'),
(38, 1, 1, 'Día del atentado', 'Basada en el atentado de la maratón de Boston, Patriots Day cuenta la historia del oficial de policía Ed Davis, que investiga los acontecimientos que se saldaron con la muerte de un terrorista y la detención de otro, ofreciendo una exhaustiva narración de la persecución que se llevó a cabo por toda la ciudad para dar caza a los causantes del atentado. La película está dirigida por Peter Berg (Battleship) y protagonizada por Mark Wahlberg (El jugador, Ted), Lana Condor (X-Men: Apocalipsis) y Michelle Monaghan (Código fuente, la serie de televisión True Detective).', '2016-11-17', '133', 9, 'videos/METRO.mp4'),
(39, 1, 1, 'Tontos y mas Tontos 2', 'Jim Carrey y Jeff Daniels vuelven a encarnar sus famosos papeles de “Dos tontos muy tontos” como Lloyd y Harry en “Dos tontos todavía más tontos”. Los directores de la primera entrega, los hermanos Peter y Bobby Farrelly, llevan a Lloyd y a Harry de viaje para que este último encuentre a la hija que no sabía que tenía y enfrentarse a la responsabilidad que nunca, bajo ningún concepto, debían darle.', '2014-04-03', '110', 10, 'videos/METRO.mp4'),
(40, 1, 1, 'Jurassic World', '22 años después el parque ya es una realidad, llamado Mundo Jurásico. Todo está yendo bien, la gente llega por miles a la isla. Pero la última gran atracción del parque, un dinosaurio carnívoro modificado genéticamente para atraer más visitantes, escapa de su zona de contención y va matando todo a su paso.', '2015-06-09', '124', 9, 'videos/METRO.mp4'),
(41, 1, 1, 'Drácula: La historia jamás contada', 'se niega a una petición del sultán del Imperio otomano Mehmed II (Dominic Cooper): entregar a mil niños para ser convertidos en jenízaros. Eso implica entrar en guerra con el que antaño fuera su amigo y, para evitar una masacre, decide hacer un pacto con un ser diabólico que está oculto en una cueva: dicho ser (Charles Dance) le entregará su poder durante tres días a cambio de que no pruebe la sangre humana. ', '2014-09-30', '92', 8, 'videos/METRO.mp4'),
(42, 1, 1, 'Shelby', 'Shelby es un perro sin dueño que tiene por costumbre fugarse de la perrera cada vez que tiene la oportunidad para desesperación de Doug, el encargado del centro. Durante una de sus escapadas conoce a Jake, un niño que sueña con ser mago.', '2014-11-07', '92', 5, 'videos/METRO.mp4'),
(43, 1, 1, 'GHOST IN THE SHELL: EL ALMA DE LA MÁQUINA', 'Basada en la internacionalmente aclamada saga de ciencia ficción "Ghost in the Shell”. Narra la historia de "Major", un híbrido cyborg-humano femenino único en su especie, que trabaja en operaciones especiales y dirige un grupo operativo de élite denominado Sección 9. Consagrada a detener a los extremistas y criminales más peligrosos, la Sección 9 se enfrenta a un enemigo cuyo objetivo principal consiste en anular los avances de Hanka Robotic en el campo de la cibertecnología. ', '2017-04-03', '107', 10, 'videos/METRO.mp4'),
(44, 1, 3, 'Bajo su Boca (Below Her Mouth) ', 'Jasmine estÃ¡ a punto de casarse, pero una noche cualquiera decide ir a una discoteca y allÃ­ conoce a Dallas, una joven atractiva que llama su atenciÃ³n. Las dos mujeres viven desde entonces una pequeÃ±a aventura de fin de semana que poco a poco se convierte en una apasionada historia de amor. DespuÃ©s de lo que han vivido, sus vidas cambiarÃ¡n para siempre de forma inevitable.', '2016-09-15', '92', 12, 'videos/METRO.mp4'),
(45, 1, 4, 'The Amityville Horror', 'El 13 de noviembre de 1974, la policÃ­a del condado de Suffolk recibiÃ³ una terrorÃ­fica llamada para que acudieran en cuanto antes al nÃºmero 112 de la Avenida Ocean, en Amityville, Long Island. Al llegar a la casa, descubren una espeluznante masacre que conmocionÃ³ a todo el pueblo. Ronald De Feo Jr confesÃ³ haber matado con una escopeta a sus padres y a sus cuatro hermanos mientras dormÃ­an. Al parecer, unas voces eran las que le impulsaron a cometer el asesinato. Un aÃ±o mÃ¡s tarde, el matrimonio formado por George y Kathy Lutz se muda a esa misma casa con sus hijos con el fin de tener el hogar que siempre habÃ­an soÃ±ado.', '2015-01-30', '89', 9, 'videos/METRO.mp4');

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
  `codigo_imagen` int(11) DEFAULT NULL COMMENT 'campo que identifica la imagen que hace referencia al esrb.',
  `nombre_esrb` varchar(45) NOT NULL COMMENT 'campo que almacena el nombre del esrb. (esrb nos indica el publico al que esta dirigido un contenido, por ejemplo, mayores de 12 años, mayores de 21 años, todo publico, etc...)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_esrb`
--

INSERT INTO `tbl_esrb` (`codigo_esrb`, `codigo_imagen`, `nombre_esrb`) VALUES
(1, NULL, 'G'),
(2, NULL, 'PG'),
(3, NULL, 'PG-13'),
(4, NULL, 'R'),
(5, NULL, 'NC-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estado_cuenta`
--

CREATE TABLE `tbl_estado_cuenta` (
  `codigo_estado_cuenta` int(11) NOT NULL COMMENT 'CODIGO UNICO QUE IDENTIFICA DE FORMA UNICA UN ESTADO DE CUENTA',
  `nombre_estado_cuenta` varchar(45) NOT NULL COMMENT 'CAMPO QUE EL NOMBRE DEL ESTADO DE CUENTA.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_estado_cuenta`
--

INSERT INTO `tbl_estado_cuenta` (`codigo_estado_cuenta`, `nombre_estado_cuenta`) VALUES
(1, 'disponible'),
(2, 'prueba1'),
(3, 'prueba2'),
(4, 'prueba3');

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
(56, 'img/img/72.jpg', 512, 512),
(59, 'img/img/63.jpg', 512, 512);

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
(56, 44),
(59, 45);

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

--
-- Volcado de datos para la tabla `tbl_membresia`
--

INSERT INTO `tbl_membresia` (`codigo_membresia`, `nombre_membresia`, `hd_disponible`, `ultra_hd_disponible`, `pantallas_simultaneas`, `dispositivos`, `contenido_ilimitado`, `cancelar_cuenta`, `mes_gratis`, `precio_membresia`) VALUES
(1, 'prueba', 1, 2, 1, 1, 1, 1, 1, '4'),
(2, 'prueba', 1, 2, 1, 1, 1, 1, 1, '3');

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

--
-- Volcado de datos para la tabla `tbl_tipos_usuarios`
--

INSERT INTO `tbl_tipos_usuarios` (`codigo_tipo_usuario`, `nombre_tipo_usuario`) VALUES
(1, 'usuario prueba');

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
(1, 'Pelicula'),
(2, 'Serie');

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
  MODIFY `codigo_categoria` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE SIRVE QUE SIRVE PARA IDENTIFICAR DE FORMA UNICA LAS CATEGORIAS DE UNA PELICULA O SERIE.', AUTO_INCREMENT=8;
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
  MODIFY `codigo_contenido` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE IDENTIFICA DE MANERA UNICA UN CONTENIDO EN ESPECIFICO. ', AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT de la tabla `tbl_esrb`
--
ALTER TABLE `tbl_esrb`
  MODIFY `codigo_esrb` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE SIRVE COMO IDENTIFICADOR PARA EL CODIGO DE LA CLASIFICACION.', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tbl_estado_cuenta`
--
ALTER TABLE `tbl_estado_cuenta`
  MODIFY `codigo_estado_cuenta` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CODIGO UNICO QUE IDENTIFICA DE FORMA UNICA UN ESTADO DE CUENTA', AUTO_INCREMENT=5;
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
  MODIFY `codigo_imagen` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CAMPO QUE GUARDA LA ABREVIATURA DEL GENERO.', AUTO_INCREMENT=60;
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
  MODIFY `codigo_membresia` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo que identifica de forma unica una membresia. ', AUTO_INCREMENT=3;
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
  MODIFY `codigo_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo que identifica de forma unica un tipo de usuario (admin, cliente)', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tbl_tipo_colaborador`
--
ALTER TABLE `tbl_tipo_colaborador`
  MODIFY `codigo_tipo_colaborador` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Campo que identifica de forma unica un tipo de colaborador. ';
--
-- AUTO_INCREMENT de la tabla `tbl_tipo_contenido`
--
ALTER TABLE `tbl_tipo_contenido`
  MODIFY `codigo_tipo_contenido` int(11) NOT NULL AUTO_INCREMENT COMMENT 'campo que identifica de forma unica un tipo de contenido, ejemplo (novela, pelicula...).', AUTO_INCREMENT=3;
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

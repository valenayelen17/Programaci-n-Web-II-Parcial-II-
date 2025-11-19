-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-11-2025 a las 20:23:42
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `musync`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album`
--

CREATE TABLE `album` (
  `Id` int(11) NOT NULL,
  `Duracion` int(11) DEFAULT NULL,
  `Cantidad_Cancion` int(11) DEFAULT NULL,
  `Fecha_creacion` date DEFAULT NULL,
  `Nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `album`
--

INSERT INTO `album` (`Id`, `Duracion`, `Cantidad_Cancion`, `Fecha_creacion`, `Nombre`) VALUES
(1, 48, 16, '2025-03-13', 'Descartable'),
(2, 32, 10, '2025-06-08', 'YSYSMO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_artista`
--

CREATE TABLE `album_artista` (
  `Artista_Id` int(11) NOT NULL,
  `Album_Id` int(11) NOT NULL,
  `Rol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `album_artista`
--

INSERT INTO `album_artista` (`Artista_Id`, `Album_Id`, `Rol`) VALUES
(1, 1, 'Cantante'),
(2, 2, 'Cantante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_banda`
--

CREATE TABLE `album_banda` (
  `Album_Id` int(11) NOT NULL,
  `Banda_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `album_banda`
--

INSERT INTO `album_banda` (`Album_Id`, `Banda_Id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE `artista` (
  `Id` int(11) NOT NULL,
  `Inicio_Actividad` date DEFAULT NULL,
  `Fecha_Nacimiento` date DEFAULT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Nombre_Artistico` varchar(45) DEFAULT NULL,
  `Nombre_Artistico_Anterior` varchar(45) DEFAULT NULL,
  `Nacionalidad` varchar(45) DEFAULT NULL,
  `Fin_Actividad` date DEFAULT NULL,
  `Imagen` varchar(50) DEFAULT NULL,
  `Descripcion` varchar(500) DEFAULT NULL,
  `Noticia`varchar(500) DEFAULT NULL,
  `Imagen_Not` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`Id`, `Inicio_Actividad`, `Fecha_Nacimiento`, `Nombre`, `Apellido`, `Nombre_Artistico`, `Nombre_Artistico_Anterior`, `Nacionalidad`, `Fin_Actividad`, `Imagen`, `Descripcion`,`Noticia`,`Imagen_Not` ) VALUES
(1, '2015-03-25', '1997-10-10', 'Valentin Oliva', NULL, 'Wos', NULL, 'Argentino', NULL, './Img/Fotos_WOS.pdf.jpg', 'Wos es un rapero, cantante y freestyler argentino reconocido por su potencia vocal, letras introspectivas y compromiso social. Surgió en las batallas de freestyle, ganó la Red Bull Internacional y luego consolidó una exitosa carrera musical con discos que mezclan rap, rock y música alternativa.', 'Wos anunció nuevas fechas para su gira internacional, sumando presentaciones en España y México tras el éxito de su último álbum.', NULL),
(2, '2000-01-25', '1998-05-08', 'Alejo Nahuel Acosta Migliarini', NULL, 'Ysy A', NULL, 'Argentino', NULL, './Img/ysy_foto.jpg', 'Ysy A es un rapero y compositor argentino, fundador del icónico colectivo Modo Diablo. Con un estilo innovador y energético, mezcla trap, rap y electrónica. Es conocido por su creatividad, sus conceptos artísticos y por lanzar música cada 11/11 como parte de su identidad artística.', 'Ysy A confirmó que el próximo 11/11 lanzará un nuevo proyecto conceptual, manteniendo su tradición anual de estrenos en esa fecha.', NULL),
(3, NULL, NULL, 'Mauro', NULL, 'Duki', NULL, 'Argentino', NULL, './Img/duko.jpeg', 'Duki es uno de los artistas más importantes del trap argentino y latino. Su estilo distintivo, flow agresivo y capacidad para crear hits lo llevaron a convertirse en un referente global. Formó parte del movimiento que impulsó el trap en Argentina y sigue liderando la escena.', 'Duki anunció un show histórico en un estadio de Argentina y agotó las entradas en pocas horas, sumando nuevas fechas.','./Img/duki_noti.png'),
(4, NULL, NULL, 'Camilo', NULL, 'Milo J', NULL, 'Argentino', NULL, './Img/miloj.jpeg', 'Milo J es un joven cantante y compositor argentino que fusiona trap, R&B y música urbana con un estilo íntimo y emocional. Su frescura, sensibilidad artística y letras personales lo posicionaron como una de las promesas más fuertes de la nueva generación.', 'Milo J lanzó un videoclip filmado en Buenos Aires que rápidamente se volvió tendencia por su estética cinematográfica.','./Img/Milo_Noticia.jpg'),
(5, NULL, NULL, '', NULL, 'Neo Pistea', NULL, NULL, NULL, './Img/neo_pistea.jpeg', 'Neo Pistea es un rapero y trapero argentino, conocido por su versatilidad vocal y su influencia en el trap nacional. Como miembro de Modo Diablo, aportó un estilo oscuro y experimental que marcó una etapa clave en la escena urbana argentina.', 'Neo Pistea regresó con un adelanto de su próximo EP, en el que explora sonidos más oscuros y electrónicos.', NULL),
(6, NULL, NULL, '', NULL, 'Daddy Yanke', NULL, NULL, NULL, './Img/daddy_yanke_foto.jpg', 'Daddy Yankee es un cantante, productor y pionero del reggaetón. Reconocido mundialmente como uno de los artistas más influyentes del género, popularizó hits globales y ayudó a llevar el reggaetón a audiencias internacionales con su estilo energético y su presencia icónica.', 'Aunque oficializó su retiro, Daddy Yankee volvió a los estudios para colaborar en un tema benéfico junto a varios artistas latinos.','./Img/daddy_noti.jpg'),
(7, NULL, NULL, '', NULL, 'Cro', NULL, NULL, NULL, './Img/cro.jpeg', 'CRO es un cantante y rapero argentino que mezcla trap, rap, R&B y sonidos alternativos. Su estilo melódico, su enfoque sentimental y su sonido relajado lo convirtieron en una figura destacada dentro del movimiento urbano y del colectivo Bardero$.', 'CRO presentó una colaboración con artistas del colectivo Bardero$, marcando su regreso a un sonido más relajado y melódico.', NULL),
(8, NULL, NULL, '', NULL, 'Bizarrap', NULL, NULL, NULL, './Img/bzrp.jpeg', 'Bizarrap es un productor musical argentino reconocido globalmente por sus “BZRP Music Sessions”. Con un estilo basado en la innovación, el sonido electrónico y la colaboración con artistas de todo el mundo, se convirtió en uno de los productores más influyentes del momento.', 'Bizarrap lanzó una nueva Music Session que alcanzó millones de reproducciones en menos de 24 horas, rompiendo otro récord personal.', NULL),
(9, NULL, NULL, '', '', 'Acru', NULL, NULL, NULL, './Img/acru.jpeg', 'Acru es un rapero argentino reconocido por su técnica, métricas complejas y profundidad lírica. Es respetado en la escena del hip hop por su estilo clásico, su habilidad para improvisar y sus proyectos conceptuales que destacan por su calidad poética y musical.', 'Acru sorprendió a sus fans con un nuevo single que mezcla rap clásico y jazz, adelantando parte de su próximo disco.', NULL),
(10, NULL, NULL, '', NULL, 'Cazzu', NULL, NULL, NULL, './Img/cazzu.jpeg', 'Cazzu es una cantante y compositora argentina, considerada una figura clave del trap latino. Con su estética marcada, letras intensas y versatilidad entre lo urbano y lo alternativo, se consolidó como una referente femenina influyente dentro de la música urbana.', 'Cazzu estrenó una producción visual experimental para acompañar una nueva versión en vivo de uno de sus temas más populares.', NULL),
(11, NULL, NULL, '', NULL, 'Lit Killah', NULL, NULL, NULL, './Img/lit.jpeg', 'Lit Killah es un rapero, cantante y freestyler argentino surgido de las competencias de improvisación. Con un estilo melódico y pegadizo, logró destacar en la música urbana gracias a su flow rápido, sus producciones modernas y su presencia en redes.', 'Lit Killah reveló en redes sociales que está trabajando en un nuevo disco, mostrando fragmentos inéditos desde el estudio.', NULL),
(12, NULL, NULL, '', NULL, 'Trueno', NULL, NULL, NULL, './Img/trueno.jpeg', 'Trueno es un rapero y freestyler argentino que combina rap, trap y ritmos latinos. Ganó reconocimiento por su talento en batallas y luego por su música cargada de identidad, mensaje social y energía. Es una de las voces más representativas de la nueva generación urbana.', 'Trueno anunció una gira por Latinoamérica con un show renovado que mezcla rap, folclore y ritmos afro-latinos.', NULL);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banda`
--

CREATE TABLE `banda` (
  `Id` int(11) NOT NULL,
  `Inicio_Actividad` date DEFAULT NULL,
  `Fecha_Creacion` date DEFAULT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  `Fin_Actividad` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `banda`
--

INSERT INTO `banda` (`Id`, `Inicio_Actividad`, `Fecha_Creacion`, `Nombre`, `Estado`, `Fin_Actividad`) VALUES
(1, '2007-02-12', '2007-01-10', 'Wos', 'Activo', NULL),
(2, '2008-07-19', '2008-06-05', 'Ysy a', 'Activo', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banda_compania_sello`
--

CREATE TABLE `banda_compania_sello` (
  `Banda_Id` int(11) NOT NULL,
  `Compania_Sello_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `banda_compania_sello`
--

INSERT INTO `banda_compania_sello` (`Banda_Id`, `Compania_Sello_Id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banda_musico`
--

CREATE TABLE `banda_musico` (
  `Banda_Id` int(11) NOT NULL,
  `Musico_Id` int(11) NOT NULL,
  `Rol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `banda_musico`
--

INSERT INTO `banda_musico` (`Banda_Id`, `Musico_Id`, `Rol`) VALUES
(1, 1, 'Cantante'),
(2, 2, 'Cantante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion`
--

CREATE TABLE `cancion` (
  `Id` int(11) NOT NULL,
  `Duracion` int(11) DEFAULT NULL,
  `Reproduccion` int(11) DEFAULT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Fecha_Lanzamiento` date DEFAULT NULL,
  `Genero_Id` int(11) NOT NULL,
  `Album_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cancion`
--

INSERT INTO `cancion` (`Id`, `Duracion`, `Reproduccion`, `Nombre`, `Fecha_Lanzamiento`, `Genero_Id`, `Album_Id`) VALUES
(1, 3, 40000, 'Arrancarmelo', '2019-05-16', 1, 1),
(2, 4, 20000, 'Lugares que llego', '2021-08-09', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion_artista`
--

CREATE TABLE `cancion_artista` (
  `Cancion_Id` int(11) NOT NULL,
  `Artista_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cancion_artista`
--

INSERT INTO `cancion_artista` (`Cancion_Id`, `Artista_Id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion_banda`
--

CREATE TABLE `cancion_banda` (
  `Cancion_Id` int(11) NOT NULL,
  `Banda_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cancion_banda`
--

INSERT INTO `cancion_banda` (`Cancion_Id`, `Banda_Id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion_productor`
--

CREATE TABLE `cancion_productor` (
  `Cancion_Id` int(11) NOT NULL,
  `Productor_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cancion_productor`
--

INSERT INTO `cancion_productor` (`Cancion_Id`, `Productor_Id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compania_sello`
--

CREATE TABLE `compania_sello` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Fecha_Fundacion` date DEFAULT NULL,
  `Productor_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `compania_sello`
--

INSERT INTO `compania_sello` (`Id`, `Nombre`, `Fecha_Fundacion`, `Productor_Id`) VALUES
(1, 'Doguito Records', '2016-12-07', 1),
(2, 'Sponsor Dios', '2020-11-09', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`Id`, `Nombre`) VALUES
(1, 'Hip Hop'),
(2, 'Trap');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musico`
--

CREATE TABLE `musico` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `musico`
--

INSERT INTO `musico` (`Id`, `Nombre`) VALUES
(1, 'Wos'),
(2, 'Ysy a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `Id` int(11) NOT NULL,
  `Fecha_Creacion` date DEFAULT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  `Duracion_Total` int(11) DEFAULT NULL,
  `Numero_Cancion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`Id`, `Fecha_Creacion`, `Nombre`, `Estado`, `Duracion_Total`, `Numero_Cancion`) VALUES
(1, '2020-12-06', 'Hip Hop', 'Descargada', 500, 170),
(2, '2025-08-09', 'Trap', 'Descargada', 1000, 300);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_cancion`
--

CREATE TABLE `playlist_cancion` (
  `Playlist_Id` int(11) NOT NULL,
  `Cancion_Id` int(11) NOT NULL,
  `Posicion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `playlist_cancion`
--

INSERT INTO `playlist_cancion` (`Playlist_Id`, `Cancion_Id`, `Posicion`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_megusta`
--

CREATE TABLE `playlist_megusta` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  `Duracion_Total_Min` int(11) DEFAULT NULL,
  `Numero_Cancion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `playlist_megusta`
--

INSERT INTO `playlist_megusta` (`Id`, `Nombre`, `Estado`, `Duracion_Total_Min`, `Numero_Cancion`) VALUES
(1, 'Me gusta', 'Descargada', 200, 60),
(2, 'Me gusta', 'No descargada', 400, 120);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productor`
--

CREATE TABLE `productor` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Fecha_Nacimiento` date DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productor`
--

INSERT INTO `productor` (`Id`, `Nombre`, `Fecha_Nacimiento`, `Apellido`) VALUES
(1, 'Facundo', '1995-10-10', 'Yalve'),
(2, 'Oniria', '1990-05-14', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resenia`
--

CREATE TABLE `resenia` (
  `Id` int(11) NOT NULL,
  `Puntuacion` int(11) DEFAULT NULL,
  `Fecha_Creacion` date DEFAULT NULL,
  `Usuario_Id` int(11) NOT NULL,
  `Comentario` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `resenia`
--

INSERT INTO `resenia` (`Id`, `Puntuacion`, `Fecha_Creacion`, `Usuario_Id`, `Comentario`) VALUES
(1, 8, '2025-07-08', 1, 'muy buena'),
(2, 6, '2020-06-04', 2, 'No me gusto mucho');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `id_telefono` int(11) NOT NULL,
  `Numero` bigint(20) DEFAULT NULL,
  `Codigo_Area` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`id_telefono`, `Numero`, `Codigo_Area`) VALUES
(1, 1140582736, 54),
(2, 1175489302, 54);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id` int(11) NOT NULL,
  `Fecha_Alta` date DEFAULT NULL,
  `Fecha_Nacimiento` date DEFAULT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Nombre_Usuario` varchar(45) NOT NULL,
  `Contrasenia` varchar(128) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Playlist_Id` int(11) NOT NULL,
  `Playlist_Megusta_Id` int(11) NOT NULL,
  `Telefono_id_telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id`, `Fecha_Alta`, `Fecha_Nacimiento`, `Nombre`, `Apellido`, `Nombre_Usuario`, `Contrasenia`, `Correo`, `Playlist_Id`, `Playlist_Megusta_Id`, `Telefono_id_telefono`) VALUES
(1, '2025-10-05', '2002-10-27', 'Tomas', 'Fernandez', 'tomifer', 'futbol123', 'tomi@gmail.com', 1, 1, 1),
(2, '2025-07-15', '1993-07-27', 'Joaquin', 'Dalmau', 'joadalmau', 'trap2025', 'joaco@gmail.com', 2, 2, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `album_artista`
--
ALTER TABLE `album_artista`
  ADD PRIMARY KEY (`Artista_Id`,`Album_Id`),
  ADD KEY `idx_album_artista_album` (`Album_Id`);

--
-- Indices de la tabla `album_banda`
--
ALTER TABLE `album_banda`
  ADD PRIMARY KEY (`Album_Id`,`Banda_Id`),
  ADD KEY `idx_ab_banda` (`Banda_Id`);

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `banda`
--
ALTER TABLE `banda`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `banda_compania_sello`
--
ALTER TABLE `banda_compania_sello`
  ADD PRIMARY KEY (`Banda_Id`,`Compania_Sello_Id`),
  ADD KEY `idx_bccs_sello` (`Compania_Sello_Id`);

--
-- Indices de la tabla `banda_musico`
--
ALTER TABLE `banda_musico`
  ADD PRIMARY KEY (`Banda_Id`,`Musico_Id`),
  ADD KEY `idx_bm_musico` (`Musico_Id`);

--
-- Indices de la tabla `cancion`
--
ALTER TABLE `cancion`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `idx_cancion_genero` (`Genero_Id`),
  ADD KEY `idx_cancion_album` (`Album_Id`);

--
-- Indices de la tabla `cancion_artista`
--
ALTER TABLE `cancion_artista`
  ADD PRIMARY KEY (`Cancion_Id`,`Artista_Id`),
  ADD KEY `idx_cca_artista` (`Artista_Id`);

--
-- Indices de la tabla `cancion_banda`
--
ALTER TABLE `cancion_banda`
  ADD PRIMARY KEY (`Cancion_Id`,`Banda_Id`),
  ADD KEY `idx_cb_banda` (`Banda_Id`);

--
-- Indices de la tabla `cancion_productor`
--
ALTER TABLE `cancion_productor`
  ADD PRIMARY KEY (`Cancion_Id`,`Productor_Id`),
  ADD KEY `idx_cp_productor` (`Productor_Id`);

--
-- Indices de la tabla `compania_sello`
--
ALTER TABLE `compania_sello`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `idx_sello_productor` (`Productor_Id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `musico`
--
ALTER TABLE `musico`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `playlist_cancion`
--
ALTER TABLE `playlist_cancion`
  ADD PRIMARY KEY (`Playlist_Id`,`Cancion_Id`),
  ADD KEY `idx_pc_cancion` (`Cancion_Id`);

--
-- Indices de la tabla `playlist_megusta`
--
ALTER TABLE `playlist_megusta`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `productor`
--
ALTER TABLE `productor`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `resenia`
--
ALTER TABLE `resenia`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `idx_resenia_usuario` (`Usuario_Id`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`id_telefono`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `uq_usuario_nombre_usuario` (`Nombre_Usuario`),
  ADD UNIQUE KEY `uq_usuario_correo` (`Correo`),
  ADD KEY `idx_usuario_playlist` (`Playlist_Id`),
  ADD KEY `idx_usuario_playlist_like` (`Playlist_Megusta_Id`),
  ADD KEY `idx_usuario_telefono` (`Telefono_id_telefono`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `album`
--
ALTER TABLE `album`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `banda`
--
ALTER TABLE `banda`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cancion`
--
ALTER TABLE `cancion`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `compania_sello`
--
ALTER TABLE `compania_sello`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `musico`
--
ALTER TABLE `musico`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `playlist_megusta`
--
ALTER TABLE `playlist_megusta`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productor`
--
ALTER TABLE `productor`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `resenia`
--
ALTER TABLE `resenia`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `telefono`
--
ALTER TABLE `telefono`
  MODIFY `id_telefono` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `album_artista`
--
ALTER TABLE `album_artista`
  ADD CONSTRAINT `fk_Artista_has_Album_Album1` FOREIGN KEY (`Album_Id`) REFERENCES `album` (`Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Artista_has_Album_Artista` FOREIGN KEY (`Artista_Id`) REFERENCES `artista` (`Id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `album_banda`
--
ALTER TABLE `album_banda`
  ADD CONSTRAINT `fk_Album_has_Banda_Album1` FOREIGN KEY (`Album_Id`) REFERENCES `album` (`Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Album_has_Banda_Banda1` FOREIGN KEY (`Banda_Id`) REFERENCES `banda` (`Id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `banda_compania_sello`
--
ALTER TABLE `banda_compania_sello`
  ADD CONSTRAINT `fk_Banda_has_Compania_Sellos_Banda1` FOREIGN KEY (`Banda_Id`) REFERENCES `banda` (`Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Banda_has_Compania_Sellos_Compania_Sellos1` FOREIGN KEY (`Compania_Sello_Id`) REFERENCES `compania_sello` (`Id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `banda_musico`
--
ALTER TABLE `banda_musico`
  ADD CONSTRAINT `fk_Banda_has_Musico_Banda1` FOREIGN KEY (`Banda_Id`) REFERENCES `banda` (`Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Banda_has_Musico_Musico1` FOREIGN KEY (`Musico_Id`) REFERENCES `musico` (`Id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `cancion`
--
ALTER TABLE `cancion`
  ADD CONSTRAINT `fk_Cancion_Album1` FOREIGN KEY (`Album_Id`) REFERENCES `album` (`Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Cancion_Genero1` FOREIGN KEY (`Genero_Id`) REFERENCES `genero` (`Id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `cancion_artista`
--
ALTER TABLE `cancion_artista`
  ADD CONSTRAINT `fk_Cancion_has_Artista_Artista1` FOREIGN KEY (`Artista_Id`) REFERENCES `artista` (`Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Cancion_has_Artista_Cancion1` FOREIGN KEY (`Cancion_Id`) REFERENCES `cancion` (`Id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `cancion_banda`
--
ALTER TABLE `cancion_banda`
  ADD CONSTRAINT `fk_Cancion_has_Banda_Banda1` FOREIGN KEY (`Banda_Id`) REFERENCES `banda` (`Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Cancion_has_Banda_Cancion1` FOREIGN KEY (`Cancion_Id`) REFERENCES `cancion` (`Id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `cancion_productor`
--
ALTER TABLE `cancion_productor`
  ADD CONSTRAINT `fk_Cancion_has_Productores_Cancion1` FOREIGN KEY (`Cancion_Id`) REFERENCES `cancion` (`Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Cancion_has_Productores_Productores1` FOREIGN KEY (`Productor_Id`) REFERENCES `productor` (`Id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `compania_sello`
--
ALTER TABLE `compania_sello`
  ADD CONSTRAINT `fk_Compania_Sellos_Productores1` FOREIGN KEY (`Productor_Id`) REFERENCES `productor` (`Id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `playlist_cancion`
--
ALTER TABLE `playlist_cancion`
  ADD CONSTRAINT `fk_Playlist_has_Cancion_Cancion1` FOREIGN KEY (`Cancion_Id`) REFERENCES `cancion` (`Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Playlist_has_Cancion_Playlist1` FOREIGN KEY (`Playlist_Id`) REFERENCES `playlist` (`Id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `resenia`
--
ALTER TABLE `resenia`
  ADD CONSTRAINT `fk_Resenia_Usuario1` FOREIGN KEY (`Usuario_Id`) REFERENCES `usuario` (`Id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_Usuario_Playlist1` FOREIGN KEY (`Playlist_Id`) REFERENCES `playlist` (`Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Usuario_Playlist_Like1` FOREIGN KEY (`Playlist_Megusta_Id`) REFERENCES `playlist_megusta` (`Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Usuario_Telefono1` FOREIGN KEY (`Telefono_id_telefono`) REFERENCES `telefono` (`id_telefono`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

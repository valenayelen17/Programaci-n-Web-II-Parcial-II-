-- phpMyAdmin SQL Dump
-- version 5.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
 /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
 /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 /*!40101 SET NAMES utf8mb4 */;

-- Base de datos: `musync`
CREATE DATABASE IF NOT EXISTS `musync` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `musync`;

-- --------------------------------------------------------
-- Tabla `artista`
-- --------------------------------------------------------

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
  `Noticia` varchar(500) DEFAULT NULL,
  `Imagen_Not` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `artista` (`Id`, `Inicio_Actividad`, `Fecha_Nacimiento`, `Nombre`, `Apellido`, `Nombre_Artistico`, `Nombre_Artistico_Anterior`, `Nacionalidad`, `Fin_Actividad`, `Imagen`, `Descripcion`, `Noticia`, `Imagen_Not`) VALUES
(1, '2015-03-25', '1997-10-10', 'Valentin Oliva', NULL, 'Wos', NULL, 'Argentino', NULL, './Img/Fotos_WOS.pdf.jpg', 'Wos es un rapero, cantante y freestyler argentino reconocido por su potencia vocal, letras introspectivas y compromiso social. Surgió en las batallas de freestyle, ganó la Red Bull Internacional y luego consolidó una exitosa carrera musical con discos que mezclan rap, rock y música alternativa.', 'Wos anunció nuevas fechas para su gira internacional, sumando presentaciones en España y México tras el éxito de su último álbum.', './Img/wos_noti.jpg'),
(2, '2000-01-25', '1998-05-08', 'Alejo Nahuel Acosta Migliarini', NULL, 'Ysy A', NULL, 'Argentino', NULL, './Img/ysy_foto.jpg', 'Ysy A es un rapero y compositor argentino, fundador del icónico colectivo Modo Diablo. Con un estilo innovador y energético, mezcla trap, rap y electrónica. Es conocido por su creatividad, sus conceptos artísticos y por lanzar música cada 11/11 como parte de su identidad artística.', 'Ysy A confirmó que el próximo 11/11 lanzará un nuevo proyecto conceptual, manteniendo su tradición anual de estrenos en esa fecha.', './Img/ysy_noti.jpg'),
(3, NULL, NULL, 'Mauro', NULL, 'Duki', NULL, 'Argentino', NULL, './Img/duko.jpeg', 'Duki es uno de los artistas más importantes del trap argentino y latino. Su estilo distintivo, flow agresivo y capacidad para crear hits lo llevaron a convertirse en un referente global. Formó parte del movimiento que impulsó el trap en Argentina y sigue liderando la escena.', 'Duki anunció un show histórico en un estadio de Argentina y agotó las entradas en pocas horas, sumando nuevas fechas.', './Img/duki_noti.png'),
(4, NULL, NULL, 'Camilo', NULL, 'Milo J', NULL, 'Argentino', NULL, './Img/miloj.jpeg', 'Milo J es un joven cantante y compositor argentino que fusiona trap, R&B y música urbana con un estilo íntimo y emocional. Su frescura, sensibilidad artística y letras personales lo posicionaron como una de las promesas más fuertes de la nueva generación.', 'Milo J lanzó un videoclip filmado en Buenos Aires que rápidamente se volvió tendencia por su estética cinematográfica.', './Img/Milo_Noticia.jpg'),
(5, NULL, NULL, '', NULL, 'Neo Pistea', NULL, NULL, NULL, './Img/neo_pistea.jpeg', 'Neo Pistea es un rapero y trapero argentino, conocido por su versatilidad vocal y su influencia en el trap nacional. Como miembro de Modo Diablo, aportó un estilo oscuro y experimental que marcó una etapa clave en la escena urbana argentina.', 'Neo Pistea regresó con un adelanto de su próximo EP, en el que explora sonidos más oscuros y electrónicos.', './Img/neo_noti.jpg'),
(6, NULL, NULL, '', NULL, 'Daddy Yanke', NULL, NULL, NULL, './Img/daddy_yanke_foto.jpg', 'Daddy Yankee es un cantante, productor y pionero del reggaetón. Reconocido mundialmente como uno de los artistas más influyentes del género, popularizó hits globales y ayudó a llevar el reggaetón a audiencias internacionales con su estilo energético y su presencia icónica.', 'Aunque oficializó su retiro, Daddy Yankee volvió a los estudios para colaborar en un tema benéfico junto a varios artistas latinos.', './Img/daddy_noti.jpg'),
(7, NULL, NULL, '', NULL, 'Cro', NULL, NULL, NULL, './Img/cro.jpeg', 'CRO es un cantante y rapero argentino que mezcla trap, rap, R&B y sonidos alternativos. Su estilo melódico, su enfoque sentimental y su sonido relajado lo convirtieron en una figura destacada dentro del movimiento urbano y del colectivo Bardero$.', 'CRO presentó una colaboración con artistas del colectivo Bardero$, marcando su regreso a un sonido más relajado y melódico.', './Img/cro_noti.jpg'),
(8, NULL, NULL, '', NULL, 'Bizarrap', NULL, NULL, NULL, './Img/bzrp.jpeg', 'Bizarrap es un productor musical argentino reconocido globalmente por sus “BZRP Music Sessions”. Con un estilo basado en la innovación, el sonido electrónico y la colaboración con artistas de todo el mundo, se convirtió en uno de los productores más influyentes del momento.', 'Bizarrap lanzó una nueva Music Session que alcanzó millones de reproducciones en menos de 24 horas, rompiendo otro récord personal.', './Img/biza_noti.jpg'),
(9, NULL, NULL, '', '', 'Acru', NULL, NULL, NULL, './Img/acru.jpeg', 'Acru es un rapero argentino reconocido por su técnica, métricas complejas y profundidad lírica. Es respetado en la escena del hip hop por su estilo clásico, su habilidad para improvisar y sus proyectos conceptuales que destacan por su calidad poética y musical.', 'Acru sorprendió a sus fans con un nuevo single que mezcla rap clásico y jazz, adelantando parte de su próximo disco.', './Img/acru_noti.jpg'),
(10, NULL, NULL, '', NULL, 'Cazzu', NULL, NULL, NULL, './Img/cazzu.jpeg', 'Cazzu es una cantante y compositora argentina, considerada una figura clave del trap latino. Con su estética marcada, letras intensas y versatilidad entre lo urbano y lo alternativo, se consolidó como una referente femenina influyente dentro de la música urbana.', 'Cazzu estrenó una producción visual experimental para acompañar una nueva versión en vivo de uno de sus temas más populares.', './Img/cazzu_noti.jpg'),
(11, NULL, NULL, '', NULL, 'Lit Killah', NULL, NULL, NULL, './Img/lit.jpeg', 'Lit Killah es un rapero, cantante y freestyler argentino surgido de las competencias de improvisación. Con un estilo melódico y pegadizo, logró destacar en la música urbana gracias a su flow rápido, sus producciones modernas y su presencia en redes.', 'Lit Killah reveló en redes sociales que está trabajando en un nuevo disco, mostrando fragmentos inéditos desde el estudio.', './Img/lit_noti.jpg'),
(12, NULL, NULL, '', NULL, 'Trueno', NULL, NULL, NULL, './Img/trueno.jpeg', 'Trueno es un rapero y freestyler argentino que combina rap, trap y ritmos latinos. Ganó reconocimiento por su talento en batallas y luego por su música cargada de identidad, mensaje social y energía. Es una de las voces más representativas de la nueva generación urbana.', 'Trueno anunció una gira por Latinoamérica con un show renovado que mezcla rap, folclore y ritmos afro-latinos.', './Img/trueno_noti.jpg');

-- --------------------------------------------------------
-- Tabla `usuario`
-- --------------------------------------------------------

CREATE TABLE `usuario` (
  `Id` int(11) NOT NULL,
  `Fecha_Alta` date DEFAULT NULL,
  `Fecha_Nacimiento` date DEFAULT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Nombre_Usuario` varchar(45) NOT NULL,
  `Contrasenia` varchar(128) NOT NULL,
  `Correo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `usuario` (`Id`, `Fecha_Alta`, `Fecha_Nacimiento`, `Nombre`, `Apellido`, `Nombre_Usuario`, `Contrasenia`, `Correo`) VALUES
(1, '2025-10-05', '2002-10-27', 'Tomas', 'Fernandez', 'tomifer', 'futbol123', 'tomi@gmail.com'),
(2, '2025-07-15', '1993-07-27', 'Joaquin', 'Dalmau', 'joadalmau', 'trap2025', 'joaco@gmail.com');

-- Índices
ALTER TABLE `artista`
  ADD PRIMARY KEY (`Id`);

ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `uq_usuario_nombre_usuario` (`Nombre_Usuario`),
  ADD UNIQUE KEY `uq_usuario_correo` (`Correo`);

-- AUTO_INCREMENT
ALTER TABLE `artista`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `usuario`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
 /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
 /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

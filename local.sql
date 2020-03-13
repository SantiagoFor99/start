-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-09-2017 a las 05:12:17
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `local`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consola`
--

CREATE TABLE `consola` (
  `id_consola` int(11) NOT NULL,
  `nombre_consola` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `consola`
--

INSERT INTO `consola` (`id_consola`, `nombre_consola`) VALUES
(1, 'xbox'),
(2, 'xbox 360'),
(3, 'play 2'),
(4, 'pc'),
(5, 'wii'),
(6, 'play 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimiento`
--

CREATE TABLE `mantenimiento` (
  `id_mante` int(11) NOT NULL,
  `hdd` varchar(20) NOT NULL,
  `cantidad_memory` int(11) NOT NULL,
  `memory_carac` varchar(50) NOT NULL,
  `procesador` varchar(50) DEFAULT NULL,
  `cargador` varchar(10) DEFAULT NULL,
  `id_marca` int(11) NOT NULL,
  `abono` double NOT NULL,
  `total` double NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `observacion` varchar(100) DEFAULT NULL,
  `id_usu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mantenimiento`
--

INSERT INTO `mantenimiento` (`id_mante`, `hdd`, `cantidad_memory`, `memory_carac`, `procesador`, `cargador`, `id_marca`, `abono`, `total`, `tipo`, `observacion`, `id_usu`) VALUES
(1, '500gb', 2, '1gb ddr2 y 2gb ddr2', 'intel atom', 'si', 10, 0, 100000, 'Todo en uno', 'Disco malo', 2),
(2, '250gb', 1, '2gb ddr3', 'intel atom', 'si', 2, 0, 80000, 'portatil', 'disco malo', 2),
(3, '1tb', 2, '8gb ddr4', 'intel core i7', 'no', 3, 25000, 100000, 'portatil', 'pantalla rota', 5),
(4, '250gb', 3, '2 ddr2', 'intel core2 duo', 'no', 11, 0, 150000, 'pc escritorio', 'Fuente malo', 6),
(6, '500gb', 3, 'ddr2', 'intel core 2 duo', 'no', 10, 0, 100000, 'pc escritorio', 'fallo fuente', 1),
(7, '1tb', 2, 'ddr2', 'intel core 2 duo', 'no', 11, 25000, 50000, 'tablet', 'pantalla rota', 1),
(8, '250gb', 2, 'ddr2', 'intel pentium inside', 'no', 1, 50000, 150000, 'pc escritorio', 'daÃ±o board', 1),
(9, '16gb', 2, 'interna y externa', 'iphone', 'no', 5, 50000, 100000, 'celular', 'pantalla rota', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL,
  `marca` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id_marca`, `marca`) VALUES
(1, 'Samsung'),
(2, 'Acer'),
(3, 'Toshiba'),
(4, 'Hp'),
(5, 'Mac/iphone'),
(6, 'Lenovo'),
(7, 'Dell'),
(8, 'Qbex'),
(9, 'Sony'),
(10, 'Compaq'),
(11, 'Janus');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `precio` double NOT NULL,
  `ult_actualiza` date DEFAULT NULL,
  `imagen` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `descripcion`, `id_tipo`, `precio`, `ult_actualiza`, `imagen`) VALUES
(1, 'Micro sd 64gb', 3, 70000, '2017-08-18', 'foto1.jpg'),
(2, 'Micro sd 32gb', 3, 45000, '2017-08-18', 'foto2.jpg'),
(3, 'Micro sd 16gb', 3, 35000, '2017-08-18', 'foto3.jpg'),
(4, 'Micro sd 8gb', 3, 23000, '2017-08-18', 'foto4.jpg'),
(5, 'Micro sd 4gb', 3, 18000, '2017-08-18', 'foto5.jpg'),
(6, 'Cargador samsung', 2, 12000, '2017-08-18', 'foto6.jpg'),
(7, 'Dvd', 5, 1000, '2017-08-18', 'foto7.jpg'),
(8, 'Cd', 5, 1000, '2017-08-18', 'foto8.jpg'),
(9, 'Cable v8 datos', 2, 8000, '2017-08-18', 'foto9.jpg'),
(10, 'Cable v8 datos grueso', 2, 10000, '2017-08-18', 'foto10.jpg'),
(11, 'Cargador universal', 2, 7000, '2017-08-08', 'foto11.jpg'),
(12, 'Memoria flash usb 64gb', 3, 70000, '2017-08-18', 'foto12.jpg'),
(13, 'Memoria flash usb 32gb', 3, 45000, '2017-08-18', 'foto13.jpg'),
(14, 'Memoria flash usb 16gb', 3, 24000, '2017-08-18', 'foto14.jpg'),
(15, 'Memoria flash usb 8gb', 3, 20000, '2017-08-18', 'foto15.jpg'),
(16, 'Memoria flash usb 4gb', 3, 15000, '2017-08-18', 'foto16.jpg'),
(17, 'Audifonos genericos', 4, 12000, '2017-08-18', 'foto17.jpg'),
(18, 'Audifonos universales', 4, 15000, '2017-08-18', 'foto18.jpg'),
(19, 'Cargador tablet sencillo', 2, 25000, '2017-08-18', 'foto19.jpg'),
(20, 'Cargador sencillo', 2, 7000, '2017-08-18', 'foto20.jpg'),
(21, 'Cable de poder fuente', 1, 7000, '2017-08-18', 'foto21.jpg'),
(22, 'Cable de poder trebol', 1, 10000, '2017-08-18', 'foto22.jpg'),
(23, 'Regulador ', 1, 50000, '2017-08-18', 'foto23.jpg'),
(24, 'Adaptador inalambrico wireless', 1, 30000, '2017-08-18', 'foto24.jpg'),
(25, 'Forro tablet', 5, 20000, '2017-08-18', 'foto25.jpg'),
(26, 'Forro tablet y teclado', 5, 30000, '2017-08-18', 'foto26.jpg'),
(27, 'Cooler portatil', 1, 50000, '2017-08-18', 'foto27.jpg'),
(28, 'Disco duro 500gb', 1, 170000, '2017-08-18', 'foto28.jpg'),
(29, 'Disco duro 1Tb', 1, 200000, '2017-08-18', 'foto29.jpg'),
(30, 'Audifonos de diadema', 4, 25000, '2017-08-18', 'foto30.jpg'),
(31, 'Memoria ddr1 512 mb', 1, 15000, '2017-08-18', 'foto31.jpg'),
(32, 'Memoria ddr2 1gb', 1, 40000, '2017-08-18', 'foto32.jpg'),
(33, 'Memoria ddr2 2gb', 1, 80000, '2017-08-18', 'foto33.jpg'),
(34, 'Memoria ddr3 2gb', 1, 70000, '2017-08-18', 'foto34.jpg'),
(35, 'Memoria ddr3 4gb', 1, 130000, '2017-08-18', 'foto35.jpg'),
(36, 'Memoria ddr3 8gb', 1, 220000, '2017-08-18', 'foto36.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id_tipo` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id_tipo`, `tipo`) VALUES
(1, 'computador'),
(2, 'cargadores'),
(3, 'memorias'),
(4, 'audifonos'),
(5, 'otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usu` int(11) NOT NULL,
  `nom1_usu` varchar(20) NOT NULL,
  `nom2_usu` varchar(20) DEFAULT NULL,
  `ape1_usu` varchar(20) NOT NULL,
  `ape2_usu` varchar(20) DEFAULT NULL,
  `telefono` decimal(10,0) DEFAULT NULL,
  `celular` decimal(10,0) DEFAULT NULL,
  `correo` varchar(20) DEFAULT NULL,
  `pass` varchar(20) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usu`, `nom1_usu`, `nom2_usu`, `ape1_usu`, `ape2_usu`, `telefono`, `celular`, `correo`, `pass`, `tipo`) VALUES
(1, 'Jose', 'orlando', 'paez', 'macias', '7222222', '3217966442', 'jaro@gmail.com', 'j053', 'admin'),
(2, 'Julian', 'Santiago', 'Forero', 'Valbuena', '7111111', '3173337449', 'santhyzfova@gmail.co', 'ju114n', 'admin'),
(3, 'Carlos', 'Arturo', 'PatiÃ±o', 'BareÃ±o', '7333333', '3333333333', 'capa@gmail.com', 'pass', 'user '),
(4, 'Karla', 'Fernandez', 'Sanchez', 'Marquez', '7444444', '344444444', 'kasa@gmail.com', 'pass', 'user'),
(5, 'Danna', 'Valentina', 'Pinzon', 'Ramirez', '7555555', '3555555555', 'dapi@gmail.com', 'pass', 'user'),
(6, 'Alejandra', 'valentina', 'Hurtado', 'Garcia', '7666666', '366666666', 'alhu@gmail.com', 'pass', 'user '),
(7, 'natalia', '', 'cotrino', '', '7777777', '3777777777', 'naco@gmail.com', 'pass', 'user '),
(8, 'rafael', '', 'cardenaz', '', '7888888', '388888888', 'raca@gmail.com', 'pass', 'user'),
(9, 'arturo', '', 'barreto', '', '7999999', '3999999999', 'arba@gmail.com', 'pass', 'user'),
(10, 'sofia', '', 'cortes', '', '7211111', '3211111111', 'soco@gmail.com', 'pass', 'user'),
(11, 'laura', '', 'alfonso', '', '7322222', '3311111111', 'laal@gmail.com', 'pass', 'user'),
(13, 'Jose', 'orlando', 'paez', 'macias', '7222222', '3217966442', 'jaro@gmail.com', 'j053', 'admin'),
(14, 'Julian', 'Santiago', 'Forero', 'Valbuena', '7111111', '3173337449', 'santhyzfova@gmail.co', 'ju114n', 'admin'),
(15, 'Carlos', 'Arturo', 'Patiño', 'Bareño', '7333333', '3333333333', 'capa@gmail.com', 'pass', 'user'),
(16, 'Karla', 'Fernandez', 'Sanchez', 'Marquez', '7444444', '344444444', 'kasa@gmail.com', 'pass', 'user'),
(17, 'Danna', 'Valentina', 'Pinzon', 'Ramirez', '7555555', '3555555555', 'dapi@gmail.com', 'pass', 'user'),
(18, 'Alejandra', '', 'Hurtado', 'Garcia', '7666666', '366666666', 'alhu@gmail.com', 'pass', 'user'),
(19, 'natalia', '', 'cotrino', '', '7777777', '3777777777', 'naco@gmail.com', 'pass', 'user'),
(20, 'rafael', '', 'cardenaz', '', '7888888', '388888888', 'raca@gmail.com', 'pass', 'user'),
(21, 'arturo', '', 'barreto', '', '7999999', '3999999999', 'arba@gmail.com', 'pass', 'user'),
(22, 'sofia', '', 'cortes', '', '7211111', '3211111111', 'soco@gmail.com', 'pass', 'user'),
(24, 'calos', 'alberto', 'garzon', 'rodriguez', '7344555', '3217962440', 'cagr@gmail.com', 'pass', 'user'),
(25, 'juan', 'carlos', 'escamilla', 'rodriguez', '321334345', '23434525', 'cjer@gmail.com', 'pass', 'user '),
(26, 'Jose', 'orlando', 'paez', 'macias', '7222222', '3217966442', 'jaro@gmail.com', 'j053', 'admin'),
(27, 'Julian', 'Santiago', 'Forero', 'Valbuena', '7111111', '3173337449', 'santhyzfova@gmail.co', 'ju114n', 'admin'),
(28, 'Carlos', 'Arturo', 'Patiño', 'Bareño', '7333333', '3333333333', 'capa@gmail.com', 'pass', 'user'),
(29, 'Karla', 'Fernandez', 'Sanchez', 'Marquez', '7444444', '344444444', 'kasa@gmail.com', 'pass', 'user'),
(30, 'Danna', 'Valentina', 'Pinzon', 'Ramirez', '7555555', '3555555555', 'dapi@gmail.com', 'pass', 'user'),
(31, 'Alejandra', '', 'Hurtado', 'Garcia', '7666666', '366666666', 'alhu@gmail.com', 'pass', 'user'),
(32, 'natalia', '', 'cotrino', '', '7777777', '3777777777', 'naco@gmail.com', 'pass', 'user'),
(33, 'rafael', '', 'cardenaz', '', '7888888', '388888888', 'raca@gmail.com', 'pass', 'user'),
(34, 'arturo', '', 'barreto', '', '7999999', '3999999999', 'arba@gmail.com', 'pass', 'user'),
(35, 'sofia', '', 'cortes', '', '7211111', '3211111111', 'soco@gmail.com', 'pass', 'user'),
(36, 'laura', '', 'alfonso', '', '7322222', '3311111111', 'laal@gmail.com', 'pass', 'user'),
(37, 'calos', 'alberto', 'garzon', 'rodriguez', '7344555', '3217962440', 'cagr@gmail.com', 'pass', 'user');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuegos`
--

CREATE TABLE `videojuegos` (
  `id_juego` int(11) NOT NULL,
  `nombre_juego` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_consola` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `videojuegos`
--

INSERT INTO `videojuegos` (`id_juego`, `nombre_juego`, `cantidad`, `id_consola`) VALUES
(1, 'Assasins creed rogue act5.0', 2, 2),
(2, 'Borderlands the pre-sequel act3.0', 1, 2),
(3, 'Darksider 2 act3.0', 1, 2),
(4, 'Watch Dogs 2 discos act3.0', 1, 2),
(5, 'Sacred 3 act3.0', 1, 2),
(6, 'Dead space 3 2 discos act3.0', 1, 2),
(7, 'Dead to rights retribution live act3.0', 1, 2),
(8, 'Metal gear solid 5 phantom pain 2 discos act3.0', 1, 2),
(9, 'Screamride act5.0', 1, 2),
(10, 'Falling skies the game act3.0', 2, 2),
(11, 'Under defeat hd deluxe edition act5.0', 1, 2),
(12, 'Naruto shippuden ultimate ninja storm generations ', 2, 2),
(13, 'Fable 3 act3.0', 1, 2),
(14, 'Lego harry potter act3.0', 1, 2),
(15, 'Fear act3.0', 1, 2),
(16, 'Pacific rim the video game act5.0', 1, 2),
(17, 'lego pirates of the caribean the video game act3.0', 1, 2),
(18, 'Rise of the tomb rider act3.0', 2, 2),
(19, '2014 Fifa world cup Brazil act5.0', 4, 2),
(20, 'Resident evil zero act5.0', 2, 2),
(21, 'Never Dead act3.0', 1, 2),
(22, 'Ben 10 omniverse 2 act3.0', 1, 2),
(23, 'Ice age continental drift kinect act3.0', 1, 2),
(24, 'Lego batman 3 beyonds gotham act3.0', 1, 2),
(25, 'Csi crime scene investigation intento mortal act3.', 1, 2),
(26, 'Drift showdown act3.0', 1, 2),
(27, 'Escape dead island act3.0', 1, 2),
(28, 'Deadpool act5.0', 1, 2),
(29, 'Saints row gat out of hell act3.0', 1, 2),
(30, 'Hunted demons forge act3.0', 1, 2),
(31, 'Golden eye reloaded 007 act3.0', 1, 2),
(32, 'Prototype act5.0', 1, 2),
(33, 'Metro 2033 live act3.0', 1, 2),
(34, 'Dantes inferno live act5.0', 1, 2),
(35, 'Lego avengers act5.0', 2, 2),
(36, 'Red faction guerrilla live act3.0', 1, 2),
(37, 'Naruto rise of ninja live act3.0', 1, 2),
(38, 'Grand theft auto 5 act5.0', 1, 2),
(39, 'Crisis 3 act5.0', 1, 2),
(40, 'Hitman hd 2 discos act3.0', 2, 2),
(41, 'Lego star wars 3 act3.0', 1, 2),
(42, 'Formula 1 2011 act3.0', 1, 2),
(43, 'Ghost recon act5.0', 1, 2),
(44, 'Fast and furious showdown act3.0', 1, 2),
(45, 'Moto gp 14 act3.0', 1, 2),
(46, 'Aliens colonial marines act5.0', 1, 2),
(47, 'Pes 2015 act5.0', 1, 2),
(48, 'Lego hobbit act3.0', 1, 2),
(49, 'Madden NFL 11 live act3.0', 1, 2),
(50, 'Lego batman 2 dc super heroes act3.0', 1, 2),
(51, 'Remember me act3.0', 1, 2),
(52, 'Dirt 3 act3.0', 1, 2),
(53, 'The evil within act3.0', 1, 2),
(54, 'Halo wars act5.0', 1, 2),
(55, 'Pes 2017 act3.0', 1, 2),
(56, 'Pes 2017 act5.0', 2, 2),
(57, 'Dead space 2 live act3.0', 1, 2),
(58, 'Max payne 2 discos act3.0', 1, 2),
(59, 'Crimes punishments sherlock holmes act3.0', 1, 2),
(60, 'Mfc 3 disputed act5.0', 1, 2),
(61, 'The walking dead survival instinc live act3.0', 1, 2),
(62, 'Fifa 13 act5.0', 1, 2),
(63, 'Icon def jam act3.0', 1, 2),
(64, 'Resident evil 2 revelations act3.0', 1, 2),
(65, 'Rainbowsix vegas 2 act5.0', 1, 2),
(66, 'Dragon ball ranging blast 2 act3.0', 1, 2),
(67, 'Nascar 14 act3.0', 1, 2),
(68, 'Pes 2016 act3.0', 1, 2),
(69, 'The wolf among us act3.0', 1, 2),
(70, 'Pes 2014 act5.0', 1, 2),
(71, '2010 fifa world cup south africa', 1, 5),
(72, 'Tony howks down hill jam', 1, 5),
(73, 'Planes-Aviones', 1, 5),
(74, 'Lego batman the video game', 1, 5),
(75, 'Pes 2013', 1, 5),
(76, 'Wii sports resort', 1, 5),
(77, 'Ride or die', 1, 3),
(78, 'Hard rock casino', 1, 3),
(79, 'Devil may cry', 1, 3),
(80, 'Fifa street 2 live', 1, 4),
(81, 'Minecraft', 1, 4),
(82, 'wheels of steel extreme trucker', 1, 4),
(83, 'Cars 2', 1, 4),
(84, 'Flight simulator 2 discos', 2, 4),
(85, 'Call of duty 2', 1, 4),
(86, 'Grand theft auto 4 2 discos', 3, 4),
(87, 'Bomber mario', 1, 4),
(88, 'Saints row 2', 1, 4),
(89, 'Saints row 3 the third 2 discos', 1, 4),
(90, 'The hell in vietnam', 1, 4),
(91, 'Conflict vietnam', 1, 4),
(92, 'Need for speed carbon', 1, 4),
(93, 'Winning eleven 9', 1, 4),
(94, 'Pes 2014 2 discos', 1, 4),
(95, 'Pes 2015 2 discos', 1, 4),
(96, 'Pes 2016 2 discos', 1, 4),
(97, 'Pes 2017', 1, 4),
(98, 'Assasins creed 4 black flag 2 discos', 1, 4),
(99, 'Fifa 08', 1, 4),
(100, 'Euro uefa 2012 2 discos', 1, 4),
(101, 'Microsoft Flight', 1, 4),
(102, 'Miasmata', 1, 4),
(103, 'How to survive', 1, 4),
(104, 'Mortal kombat arcade collection', 1, 4),
(105, 'Fifa 2015', 1, 4),
(106, 'Mark of the ninja special edition', 3, 4),
(107, 'Moto gp8', 1, 4),
(108, 'Virtua tennis 3', 1, 4),
(109, 'Game of thrones', 1, 4),
(110, 'Mortal kombat complete edition 2 discos', 1, 4),
(111, 'Alan wake 2 discos', 1, 4),
(112, 'Shift 2 unleashed 2 discos', 1, 4),
(113, 'Need for speed rivals 2 discos', 1, 4),
(114, 'Formula 1 2012 2 discos', 1, 4),
(115, 'Dirt showdown 2 discos', 1, 4),
(116, 'Formula 1 2011 2 discos', 2, 4),
(117, 'Resident evil operation raccoon city 2 discos', 1, 4),
(118, 'Formula 1 2015 2 discos', 1, 4),
(119, 'Alan wake american nightmare', 1, 4),
(120, 'Street fighter x tekken 2 discos', 1, 4),
(121, 'Need fot speed hot persuit 2 discos', 1, 4),
(122, 'Burnout paradise', 1, 4),
(123, 'Crysis 2 2 discos', 1, 4),
(124, 'Grid 2', 1, 4),
(125, 'Puzzle y board games 2010', 1, 4),
(126, 'Of orcs and men', 1, 4),
(127, 'Forsaken', 4, 4),
(128, 'Need for speed collection', 2, 4),
(129, 'Need for speed collector underground 1 y 2', 2, 4),
(130, 'Batman arkham asylum', 1, 4),
(131, 'Nba 2k11', 1, 4),
(132, 'Sniper the manhunter', 1, 4),
(133, 'Star wars the force unleshed', 1, 4),
(134, 'Hour of victory 2 discos', 1, 4),
(135, 'Inversion', 1, 4),
(136, 'Crysis 2 discos', 2, 4),
(137, 'Outlast', 2, 4),
(138, 'Angry birds seasons', 1, 4),
(139, 'Grand theft auto san andreas', 2, 4),
(140, '7554', 1, 4),
(141, 'Tmnt', 1, 4),
(142, 'Cities in motion', 1, 4),
(143, 'Dark', 1, 4),
(144, 'Syndicate 2 discos', 1, 4),
(145, 'The Sims', 1, 4),
(146, 'Tracto mulas colombianas', 1, 4),
(147, 'Comandos collection', 1, 4),
(148, 'Gears of war', 1, 4),
(149, 'Frontline fileds of thunder', 1, 4),
(150, 'Cold war', 1, 4),
(151, 'Farcry 2', 1, 4),
(152, 'Top gun hard lock', 1, 4),
(153, 'Fireburst', 1, 4),
(154, 'Las cronicas de Riddick asalto en drak athena', 1, 4),
(155, 'vietcong', 1, 4),
(156, 'Rogue warrior', 1, 4),
(157, 'Need for speed underground 2', 1, 4),
(158, 'Duke nukem forever 2 discos', 1, 4),
(159, 'pool nation', 1, 4),
(160, 'Comandos 3 destination berlin', 1, 4),
(161, 'Remember me', 1, 4),
(162, 'diablo 2', 1, 4),
(163, 'Comandos 2', 1, 4),
(164, 'Splinter cell conviction 2 discos', 2, 4),
(165, 'Hitman collection', 1, 4),
(166, 'Sniper elite', 1, 4),
(167, 'Outlast whistleblower 2 discos', 1, 4),
(168, 'Battle LA los angeles', 1, 4),
(169, 'Hitman sniper challenge', 1, 4),
(170, 'Valiente', 1, 4),
(171, 'The amazing spiderman 2 discos', 1, 4),
(172, 'Mercenaries 2 world in the flames 2 discos', 1, 4),
(173, 'Swat 4 gold edition', 1, 4),
(174, 'The Sims 3 2 discos', 1, 4),
(175, 'Age empires 3', 1, 4),
(176, 'War in colombia', 1, 4),
(177, 'The elder scrolls 5 skyrim', 1, 4),
(178, 'StarCraft 2 2 discos', 1, 4),
(179, 'Just Cause 2', 1, 4),
(180, 'w2c fia world rally championship', 1, 4),
(181, 'Point black', 2, 4),
(182, 'Need for speed most wanted', 1, 4),
(183, 'Prototype', 1, 4),
(184, 'spec ops the line 2 discos', 1, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `consola`
--
ALTER TABLE `consola`
  ADD PRIMARY KEY (`id_consola`);

--
-- Indices de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  ADD PRIMARY KEY (`id_mante`),
  ADD KEY `id_marca` (`id_marca`),
  ADD KEY `id_usu` (`id_usu`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usu`);

--
-- Indices de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  ADD PRIMARY KEY (`id_juego`),
  ADD KEY `id_consola` (`id_consola`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `consola`
--
ALTER TABLE `consola`
  MODIFY `id_consola` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  MODIFY `id_mante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  MODIFY `id_juego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  ADD CONSTRAINT `mantenimiento_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`),
  ADD CONSTRAINT `mantenimiento_ibfk_2` FOREIGN KEY (`id_usu`) REFERENCES `usuario` (`id_usu`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`id_tipo`);

--
-- Filtros para la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  ADD CONSTRAINT `videojuegos_ibfk_1` FOREIGN KEY (`id_consola`) REFERENCES `consola` (`id_consola`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

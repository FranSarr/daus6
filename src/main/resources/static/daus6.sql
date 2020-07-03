-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 03-07-2020 a las 11:41:04
-- Versión del servidor: 5.7.30-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `daus6`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `game`
--

CREATE TABLE `game` (
  `id_game` int(11) NOT NULL,
  `dice1` int(1) NOT NULL,
  `dice2` int(1) NOT NULL,
  `dice3` int(1) NOT NULL,
  `dice4` int(1) NOT NULL,
  `dice5` int(1) NOT NULL,
  `dice6` int(1) NOT NULL,
  `won` tinyint(1) NOT NULL,
  `player_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `game`
--

INSERT INTO `game` (`id_game`, `dice1`, `dice2`, `dice3`, `dice4`, `dice5`, `dice6`, `won`, `player_id`) VALUES
(133, 3, 5, 0, 0, 0, 0, 0, 7),
(134, 4, 6, 0, 0, 0, 0, 0, 7),
(135, 6, 3, 0, 0, 0, 0, 0, 7),
(136, 5, 6, 0, 0, 0, 0, 0, 7),
(137, 4, 1, 0, 0, 0, 0, 0, 7),
(138, 2, 6, 0, 0, 0, 0, 0, 7),
(139, 4, 2, 0, 0, 0, 0, 0, 7),
(140, 5, 6, 0, 0, 0, 0, 0, 7),
(141, 6, 6, 0, 0, 0, 0, 0, 7),
(142, 6, 5, 0, 0, 0, 0, 0, 7),
(143, 4, 1, 0, 0, 0, 0, 0, 7),
(144, 1, 5, 0, 0, 0, 0, 0, 7),
(145, 4, 1, 0, 0, 0, 0, 0, 7),
(146, 6, 3, 0, 0, 0, 0, 0, 7),
(147, 1, 6, 0, 0, 0, 0, 1, 7),
(148, 1, 6, 0, 0, 0, 0, 1, 7),
(149, 6, 3, 0, 0, 0, 0, 0, 7),
(150, 3, 5, 0, 0, 0, 0, 0, 7),
(151, 4, 3, 0, 0, 0, 0, 1, 7),
(152, 2, 5, 0, 0, 0, 0, 1, 7),
(153, 4, 6, 0, 0, 0, 0, 0, 7),
(154, 6, 3, 0, 0, 0, 0, 0, 8),
(155, 1, 1, 0, 0, 0, 0, 0, 8),
(156, 3, 1, 0, 0, 0, 0, 0, 8),
(157, 4, 5, 0, 0, 0, 0, 0, 8),
(158, 2, 5, 0, 0, 0, 0, 1, 8),
(159, 1, 3, 0, 0, 0, 0, 0, 8),
(160, 5, 6, 0, 0, 0, 0, 0, 8),
(161, 1, 3, 0, 0, 0, 0, 0, 8),
(162, 1, 6, 0, 0, 0, 0, 1, 8),
(163, 5, 5, 0, 0, 0, 0, 0, 8),
(164, 5, 5, 3, 4, 5, 6, 0, 4),
(165, 1, 6, 2, 4, 5, 5, 1, 4),
(166, 4, 6, 2, 2, 3, 1, 0, 4),
(167, 4, 5, 5, 2, 6, 2, 0, 4),
(168, 2, 3, 5, 1, 4, 1, 0, 4),
(169, 5, 1, 4, 3, 6, 3, 0, 4),
(170, 2, 5, 5, 2, 2, 2, 0, 4),
(171, 2, 1, 5, 6, 5, 4, 0, 4),
(172, 1, 4, 4, 6, 4, 4, 0, 4),
(173, 6, 5, 6, 2, 2, 5, 1, 4),
(174, 4, 2, 3, 1, 1, 4, 0, 1),
(175, 5, 2, 2, 1, 2, 6, 0, 1),
(176, 3, 2, 6, 4, 5, 4, 0, 1),
(177, 6, 3, 1, 5, 2, 4, 0, 1),
(178, 2, 6, 3, 6, 2, 1, 0, 1),
(179, 2, 5, 6, 3, 3, 4, 0, 1),
(180, 6, 6, 5, 3, 4, 3, 1, 1),
(181, 2, 5, 5, 2, 6, 3, 0, 1),
(182, 3, 3, 1, 6, 1, 2, 0, 1),
(183, 1, 3, 3, 1, 5, 3, 0, 3),
(184, 6, 2, 4, 5, 5, 4, 0, 3),
(185, 3, 4, 4, 5, 1, 6, 0, 3),
(186, 6, 3, 2, 6, 2, 5, 0, 3),
(187, 2, 4, 2, 1, 1, 1, 0, 3),
(188, 1, 6, 4, 1, 6, 5, 0, 3),
(189, 1, 3, 5, 1, 4, 1, 0, 3),
(190, 2, 3, 2, 4, 3, 4, 0, 3),
(191, 6, 2, 3, 1, 2, 3, 0, 3),
(192, 5, 2, 4, 4, 4, 3, 0, 3),
(193, 1, 2, 4, 2, 5, 1, 0, 3),
(194, 1, 6, 6, 1, 6, 2, 0, 3),
(195, 1, 5, 6, 2, 5, 3, 0, 3),
(196, 4, 3, 5, 1, 1, 3, 0, 3),
(197, 2, 1, 1, 6, 3, 5, 0, 3),
(198, 4, 5, 1, 2, 6, 4, 0, 3),
(199, 6, 6, 4, 3, 4, 1, 0, 3),
(200, 3, 3, 6, 3, 4, 4, 0, 3),
(201, 6, 5, 1, 6, 4, 5, 0, 3),
(202, 5, 5, 1, 4, 6, 2, 0, 3),
(203, 5, 6, 2, 1, 4, 4, 0, 3),
(204, 1, 5, 6, 1, 3, 5, 0, 3),
(205, 4, 2, 4, 3, 4, 6, 0, 3),
(206, 2, 1, 4, 1, 3, 5, 0, 3),
(207, 2, 2, 6, 2, 6, 3, 0, 3),
(208, 1, 5, 2, 5, 5, 3, 0, 3),
(209, 6, 4, 6, 4, 5, 2, 0, 3),
(210, 5, 2, 3, 4, 6, 4, 0, 3),
(211, 6, 4, 1, 4, 1, 2, 0, 3),
(212, 4, 6, 6, 3, 5, 2, 0, 3),
(213, 5, 2, 6, 1, 2, 6, 0, 3),
(214, 4, 2, 6, 6, 3, 1, 0, 3),
(215, 1, 4, 5, 5, 4, 6, 0, 3),
(216, 6, 1, 1, 6, 5, 1, 0, 3),
(217, 1, 2, 1, 1, 3, 6, 0, 3),
(218, 5, 6, 6, 4, 3, 5, 0, 3),
(219, 2, 5, 6, 3, 3, 4, 0, 3),
(220, 2, 4, 5, 4, 3, 2, 0, 3),
(221, 2, 1, 1, 6, 2, 4, 0, 3),
(222, 5, 4, 4, 1, 1, 2, 0, 3),
(223, 1, 5, 2, 1, 5, 5, 0, 3),
(224, 5, 5, 2, 4, 3, 1, 0, 3),
(225, 3, 5, 3, 6, 3, 6, 0, 3),
(226, 6, 4, 5, 2, 3, 2, 0, 3),
(227, 3, 5, 2, 1, 1, 3, 0, 3),
(228, 3, 3, 4, 5, 6, 6, 0, 3),
(229, 2, 6, 1, 6, 3, 3, 0, 3),
(230, 3, 1, 4, 3, 4, 4, 0, 3),
(231, 1, 6, 4, 4, 1, 4, 0, 3),
(232, 2, 1, 4, 1, 5, 2, 0, 3),
(233, 5, 2, 2, 1, 1, 5, 0, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player`
--

CREATE TABLE `player` (
  `id_player` int(11) NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT 'anonymous',
  `date` date NOT NULL,
  `wins` int(10) NOT NULL DEFAULT '0',
  `played` int(20) NOT NULL DEFAULT '0',
  `rate` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `player`
--

INSERT INTO `player` (`id_player`, `name`, `date`, `wins`, `played`, `rate`) VALUES
(1, 'choni', '2020-06-02', 1, 9, 11.1111),
(3, 'anonymous', '2020-07-01', 0, 51, 0),
(4, 'anonymous', '2020-06-16', 3, 11, 27.2727),
(7, 'juanito', '2020-06-19', 4, 21, 19.0476),
(8, 'jorgito', '2020-06-30', 2, 10, 20),
(11, 'juan', '2020-07-02', 0, 0, 0),
(12, '', '2020-07-02', 0, 0, 0),
(13, 'ruben', '2020-07-02', 0, 0, 0),
(14, 'anonymous', '2020-07-02', 0, 0, 0),
(15, 'anonymous', '2020-07-02', 0, 0, 0),
(16, 'ruben', '2020-07-02', 0, 0, 0),
(17, 'anonymous', '2020-07-02', 0, 0, 0),
(18, 'javi', '2020-07-02', 0, 0, 0),
(19, 'felipa', '2020-07-02', 0, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id_game`),
  ADD KEY `player_id` (`player_id`);

--
-- Indices de la tabla `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id_player`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `game`
--
ALTER TABLE `game`
  MODIFY `id_game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT de la tabla `player`
--
ALTER TABLE `player`
  MODIFY `id_player` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`id_player`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

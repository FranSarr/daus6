-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 03-07-2020 a las 10:22:20
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
-- Base de datos: `daus`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `game`
--

CREATE TABLE `game` (
  `id_game` int(11) NOT NULL,
  `dice1` int(1) NOT NULL,
  `dice2` int(1) NOT NULL,
  `won` tinyint(1) NOT NULL,
  `player_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `game`
--

INSERT INTO `game` (`id_game`, `dice1`, `dice2`, `won`, `player_id`) VALUES
(107, 1, 1, 0, 3),
(108, 2, 4, 0, 3),
(109, 3, 3, 0, 3),
(110, 2, 2, 0, 3),
(111, 3, 3, 0, 3),
(112, 6, 1, 1, 3),
(113, 1, 3, 0, 3),
(114, 1, 5, 0, 3),
(115, 1, 3, 0, 3),
(116, 4, 2, 0, 3),
(117, 3, 4, 1, 3),
(118, 2, 1, 0, 3),
(119, 4, 4, 0, 3),
(120, 6, 3, 0, 3),
(121, 4, 6, 0, 3),
(122, 4, 2, 0, 3),
(123, 2, 5, 1, 3),
(124, 2, 2, 0, 1),
(125, 5, 2, 1, 1),
(126, 2, 5, 1, 1),
(127, 3, 6, 0, 1),
(128, 4, 1, 0, 1),
(129, 4, 6, 0, 1),
(130, 3, 6, 0, 1),
(131, 1, 4, 0, 1),
(132, 6, 5, 0, 1),
(133, 3, 5, 0, 7),
(134, 4, 6, 0, 7),
(135, 6, 3, 0, 7),
(136, 5, 6, 0, 7),
(137, 4, 1, 0, 7),
(138, 2, 6, 0, 7),
(139, 4, 2, 0, 7),
(140, 5, 6, 0, 7),
(141, 6, 6, 0, 7),
(142, 6, 5, 0, 7),
(143, 4, 1, 0, 7),
(144, 1, 5, 0, 7),
(145, 4, 1, 0, 7),
(146, 6, 3, 0, 7),
(147, 1, 6, 1, 7),
(148, 1, 6, 1, 7),
(149, 6, 3, 0, 7),
(150, 3, 5, 0, 7),
(151, 4, 3, 1, 7),
(152, 2, 5, 1, 7),
(153, 4, 6, 0, 7),
(154, 6, 3, 0, 8),
(155, 1, 1, 0, 8),
(156, 3, 1, 0, 8),
(157, 4, 5, 0, 8),
(158, 2, 5, 1, 8),
(159, 1, 3, 0, 8),
(160, 5, 6, 0, 8),
(161, 1, 3, 0, 8),
(162, 1, 6, 1, 8),
(163, 5, 5, 0, 8);

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
(1, 'choni', '2020-06-02', 2, 9, 22.2222),
(3, 'anonymous', '2020-07-01', 3, 17, 17.6471),
(4, 'anonymous', '2020-06-16', 0, 0, 0),
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
  MODIFY `id_game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

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

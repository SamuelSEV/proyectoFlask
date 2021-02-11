-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-02-2021 a las 03:00:57
-- Versión del servidor: 8.0.22
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vuelosflask`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelos`
--

CREATE TABLE `vuelos` (
  `id` int NOT NULL,
  `Vuelo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Compañia` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `vuelos`
--

INSERT INTO `vuelos` (`id`, `Vuelo`, `Compañia`, `Hora`) VALUES
(2, 'Sevilla - Barcelona', 'Airbuss', '2021-12-05 22:00:00'),
(3, 'Sevilla - Madrid', 'Airbuss', '2021-12-04 12:00:00'),
(4, 'Madrid - Sevilla', 'Airbuss', '2021-12-04 12:00:00'),
(5, 'Sevilla - Madrid', 'Airbu', '2021-12-04 13:00:00'),
(6, 'Sevilla - Madrid', 'Airbu', '2021-12-04 13:00:00'),
(7, 'mallorca -sevilla', 'air europa', '2021-03-25 18:00:00'),
(8, 'mallorca -sevilla', 'air europa', '2021-03-25 18:00:00'),
(9, 'Sevilla - Madrid', 'Airbuss', '2021-03-25 18:00:00'),
(29, 'Sevilla - Madrid', 'Airbuss', '2021-12-04 12:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2024 a las 19:41:58
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `becleverpersonal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `businesslocations`
--

CREATE TABLE `businesslocations` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `businesslocations`
--

INSERT INTO `businesslocations` (`id`, `name`, `country`) VALUES
(1, 'beClever España', 'España'),
(2, 'beClever Argentina', 'Argentina'),
(3, 'beClever Brasil', 'Brasil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `Gender` enum('Masculino','Femenino') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `employee`
--

INSERT INTO `employee` (`id`, `firstName`, `lastName`, `Gender`) VALUES
(1, 'Juan', 'González', 'Masculino'),
(2, 'María', 'Rodríguez', 'Femenino'),
(3, 'Pedro', 'Martínez', 'Masculino'),
(4, 'Ana', 'López', 'Femenino'),
(5, 'José', 'Pérez', 'Masculino'),
(6, 'Laura', 'García', 'Femenino'),
(7, 'Carlos', 'Sánchez', 'Masculino'),
(8, 'Sofía', 'Díaz', 'Femenino'),
(9, 'Miguel', 'Romero', 'Masculino'),
(10, 'Elena', 'Fernández', 'Femenino'),
(11, 'Francisco', 'Ruiz', 'Masculino'),
(12, 'Isabel', 'Navarro', 'Femenino'),
(13, 'Alejandro', 'Gómez', 'Masculino'),
(14, 'Carmen', 'Moreno', 'Femenino'),
(15, 'Javier', 'Jiménez', 'Masculino'),
(16, 'Raquel', 'Torres', 'Femenino'),
(17, 'David', 'Ortega', 'Masculino'),
(18, 'Patricia', 'Ruiz', 'Femenino'),
(19, 'Manuel', 'Hernández', 'Masculino'),
(20, 'Sara', 'Serrano', 'Femenino'),
(21, 'Jorge', 'Vargas', 'Masculino'),
(22, 'Natalia', 'Medina', 'Femenino'),
(23, 'Rubén', 'Iglesias', 'Masculino'),
(24, 'Lucía', 'Molina', 'Femenino'),
(25, 'Adrián', 'Santos', 'Masculino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employeecontrol`
--

CREATE TABLE `employeecontrol` (
  `id` int(11) NOT NULL,
  `employeeId` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `registerType` enum('Ingreso','Egreso') NOT NULL,
  `businessLocationId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `employeecontrol`
--

INSERT INTO `employeecontrol` (`id`, `employeeId`, `date`, `registerType`, `businessLocationId`) VALUES
(106, 1, '2022-03-15 00:00:00', 'Ingreso', 1),
(107, 2, '2022-04-20 00:00:00', 'Egreso', 2),
(108, 3, '2022-05-10 00:00:00', 'Ingreso', 3),
(109, 4, '2022-06-25 00:00:00', 'Egreso', 1),
(110, 5, '2022-07-03 00:00:00', 'Ingreso', 2),
(111, 6, '2022-08-12 00:00:00', 'Egreso', 3),
(112, 7, '2022-09-17 00:00:00', 'Ingreso', 1),
(113, 8, '2022-10-22 00:00:00', 'Egreso', 2),
(114, 9, '2022-11-08 00:00:00', 'Ingreso', 3),
(115, 10, '2022-12-05 00:00:00', 'Egreso', 1),
(116, 11, '2023-01-30 00:00:00', 'Ingreso', 2),
(117, 12, '2023-03-08 00:00:00', 'Egreso', 3),
(118, 13, '2023-04-14 00:00:00', 'Ingreso', 1),
(119, 14, '2023-06-02 00:00:00', 'Egreso', 2),
(120, 15, '2023-07-19 00:00:00', 'Ingreso', 3),
(121, 16, '2023-09-04 00:00:00', 'Egreso', 1),
(122, 17, '2023-10-11 00:00:00', 'Ingreso', 2),
(123, 18, '2023-11-28 00:00:00', 'Egreso', 3),
(124, 19, '2024-01-05 00:00:00', 'Ingreso', 1),
(125, 20, '2024-02-20 00:00:00', 'Egreso', 2),
(126, 21, '2024-04-10 00:00:00', 'Ingreso', 3),
(127, 22, '2023-12-25 00:00:00', 'Egreso', 1),
(128, 23, '2023-09-15 00:00:00', 'Ingreso', 2),
(129, 24, '2022-12-01 00:00:00', 'Egreso', 3),
(130, 25, '2023-07-20 00:00:00', 'Ingreso', 1),
(131, 1, '2022-05-28 00:00:00', 'Egreso', 2),
(132, 2, '2024-01-15 00:00:00', 'Ingreso', 3),
(133, 3, '2023-08-05 00:00:00', 'Egreso', 1),
(134, 4, '2024-03-18 00:00:00', 'Ingreso', 2),
(135, 5, '2023-01-10 00:00:00', 'Egreso', 3),
(136, 6, '2022-11-30 00:00:00', 'Ingreso', 1),
(137, 7, '2024-02-22 00:00:00', 'Egreso', 2),
(138, 8, '2023-06-12 00:00:00', 'Ingreso', 3),
(139, 9, '2022-09-05 00:00:00', 'Egreso', 1),
(140, 10, '2023-04-25 00:00:00', 'Ingreso', 2),
(141, 11, '2024-01-05 00:00:00', 'Egreso', 3),
(142, 12, '2022-10-15 00:00:00', 'Ingreso', 1),
(143, 13, '2023-12-08 00:00:00', 'Egreso', 2),
(144, 14, '2022-08-20 00:00:00', 'Ingreso', 3),
(145, 15, '2024-03-30 00:00:00', 'Egreso', 1),
(146, 16, '2023-10-02 00:00:00', 'Ingreso', 2),
(147, 17, '2024-05-12 00:00:00', 'Egreso', 3),
(148, 18, '2023-08-18 00:00:00', 'Ingreso', 1),
(149, 19, '2024-02-01 00:00:00', 'Egreso', 2),
(150, 20, '2023-06-25 00:00:00', 'Ingreso', 3),
(151, 21, '2022-11-08 00:00:00', 'Egreso', 1),
(152, 22, '2024-04-20 00:00:00', 'Ingreso', 2),
(153, 23, '2023-09-15 00:00:00', 'Egreso', 3),
(154, 24, '2022-12-05 00:00:00', 'Ingreso', 1),
(155, 25, '2024-01-30 00:00:00', 'Egreso', 2),
(156, 1, '2023-04-14 00:00:00', 'Ingreso', 3),
(157, 2, '2022-06-02 00:00:00', 'Egreso', 1),
(158, 3, '2024-03-19 00:00:00', 'Ingreso', 2),
(159, 4, '2023-05-08 00:00:00', 'Egreso', 3),
(160, 5, '2022-07-20 00:00:00', 'Ingreso', 1),
(161, 6, '2024-02-22 00:00:00', 'Egreso', 2),
(162, 7, '2023-08-12 00:00:00', 'Ingreso', 3),
(163, 8, '2022-09-05 00:00:00', 'Egreso', 1),
(164, 9, '2024-01-25 00:00:00', 'Ingreso', 2),
(165, 10, '2023-03-01 00:00:00', 'Egreso', 3),
(166, 3, '2024-05-17 16:51:03', 'Ingreso', 3),
(167, 1, '2024-04-01 00:00:00', 'Ingreso', 2),
(168, 2, '2024-04-02 00:00:00', 'Ingreso', 2),
(169, 3, '2024-04-03 00:00:00', 'Ingreso', 2),
(170, 4, '2024-04-04 00:00:00', 'Ingreso', 2),
(171, 5, '2024-04-05 00:00:00', 'Ingreso', 2),
(172, 6, '2024-04-06 00:00:00', 'Ingreso', 2),
(173, 7, '2024-04-07 00:00:00', 'Ingreso', 2),
(174, 8, '2024-04-08 00:00:00', 'Ingreso', 2),
(175, 9, '2024-04-09 00:00:00', 'Ingreso', 2),
(176, 10, '2024-04-10 00:00:00', 'Ingreso', 2),
(177, 11, '2024-04-11 00:00:00', 'Ingreso', 2),
(178, 12, '2024-04-12 00:00:00', 'Ingreso', 2),
(179, 13, '2024-04-13 00:00:00', 'Ingreso', 2),
(180, 14, '2024-04-14 00:00:00', 'Ingreso', 2),
(181, 15, '2024-04-15 00:00:00', 'Ingreso', 2),
(182, 16, '2024-04-16 00:00:00', 'Ingreso', 2),
(183, 17, '2024-04-17 00:00:00', 'Ingreso', 2),
(184, 18, '2024-04-18 00:00:00', 'Ingreso', 2),
(185, 19, '2024-04-19 00:00:00', 'Ingreso', 2),
(186, 20, '2024-04-20 00:00:00', 'Ingreso', 2),
(187, 21, '2024-04-21 00:00:00', 'Ingreso', 2),
(188, 22, '2024-04-22 00:00:00', 'Ingreso', 2),
(189, 23, '2024-04-23 00:00:00', 'Ingreso', 2),
(190, 24, '2024-04-24 00:00:00', 'Ingreso', 2),
(191, 25, '2024-04-25 00:00:00', 'Ingreso', 2),
(192, 1, '2024-04-26 00:00:00', 'Ingreso', 2),
(193, 2, '2024-04-27 00:00:00', 'Ingreso', 2),
(194, 3, '2024-04-28 00:00:00', 'Ingreso', 2),
(195, 4, '2024-04-29 00:00:00', 'Ingreso', 2),
(196, 5, '2024-04-30 00:00:00', 'Ingreso', 2),
(197, 1, '2024-04-01 00:00:00', 'Egreso', 2),
(198, 2, '2024-04-02 00:00:00', 'Egreso', 2),
(199, 3, '2024-04-03 00:00:00', 'Egreso', 2),
(200, 4, '2024-04-04 00:00:00', 'Egreso', 2),
(201, 5, '2024-04-05 00:00:00', 'Egreso', 2),
(202, 6, '2024-04-06 00:00:00', 'Egreso', 2),
(203, 7, '2024-04-07 00:00:00', 'Egreso', 2),
(204, 8, '2024-04-08 00:00:00', 'Egreso', 2),
(205, 9, '2024-04-09 00:00:00', 'Egreso', 2),
(206, 10, '2024-04-10 00:00:00', 'Egreso', 2),
(207, 11, '2024-04-11 00:00:00', 'Egreso', 2),
(208, 12, '2024-04-12 00:00:00', 'Egreso', 2),
(209, 13, '2024-04-13 00:00:00', 'Egreso', 2),
(210, 14, '2024-04-14 00:00:00', 'Egreso', 2),
(211, 15, '2024-04-15 00:00:00', 'Egreso', 2),
(212, 16, '2024-04-16 00:00:00', 'Egreso', 2),
(213, 17, '2024-04-17 00:00:00', 'Egreso', 2),
(214, 18, '2024-04-18 00:00:00', 'Egreso', 2),
(215, 19, '2024-04-19 00:00:00', 'Egreso', 2),
(216, 20, '2024-04-20 00:00:00', 'Egreso', 2),
(217, 21, '2024-04-21 00:00:00', 'Egreso', 2),
(218, 22, '2024-04-22 00:00:00', 'Egreso', 2),
(219, 23, '2024-04-23 00:00:00', 'Egreso', 2),
(220, 24, '2024-04-24 00:00:00', 'Egreso', 2),
(221, 25, '2024-04-25 00:00:00', 'Egreso', 2),
(222, 1, '2024-04-26 00:00:00', 'Egreso', 2),
(223, 2, '2024-04-27 00:00:00', 'Egreso', 2),
(224, 3, '2024-04-28 00:00:00', 'Egreso', 2),
(225, 4, '2024-04-29 00:00:00', 'Egreso', 2),
(226, 5, '2024-04-30 00:00:00', 'Egreso', 2),
(227, 13, '2024-04-17 19:09:22', 'Ingreso', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `businesslocations`
--
ALTER TABLE `businesslocations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `employeecontrol`
--
ALTER TABLE `employeecontrol`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employeeId` (`employeeId`),
  ADD KEY `bussinesLocationId` (`businessLocationId`);

--
-- Indices de la tabla `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `businesslocations`
--
ALTER TABLE `businesslocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `employeecontrol`
--
ALTER TABLE `employeecontrol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `employeecontrol`
--
ALTER TABLE `employeecontrol`
  ADD CONSTRAINT `employeecontrol_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `employeecontrol_ibfk_2` FOREIGN KEY (`businessLocationId`) REFERENCES `businesslocations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

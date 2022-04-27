-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-04-2022 a las 19:20:15
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examen_lascano_frattini`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `Clave_Depto` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Presupuesto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`Clave_Depto`, `Nombre`, `Presupuesto`) VALUES
(1, 'Personal', 80000),
(2, 'Almacen', 70000),
(3, 'Contbilidad', 60000),
(4, 'Manufactura', 50000),
(5, 'Empaque', 30000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `clave_empleado` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellidos` varchar(30) NOT NULL,
  `Clave_Depto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`clave_empleado`, `Nombre`, `Apellidos`, `Clave_Depto`) VALUES
(1, 'Armando', 'López', 2),
(2, 'Tatiana', 'Vargas', 1),
(3, 'Laura', 'Iturria', 3),
(4, 'Juan', 'Perez', 4),
(5, 'Iván', 'López', 4),
(6, 'Margarita', 'Hernandez', 1),
(7, 'Jesus', 'Pérez', 3),
(8, 'Tonatiuh', 'Flores', 2),
(9, 'Juan', 'Lopez', 4),
(10, 'José', 'Hernandez', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`Clave_Depto`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`clave_empleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `Clave_Depto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `clave_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

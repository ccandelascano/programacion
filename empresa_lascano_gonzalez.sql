-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-04-2022 a las 19:58:19
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
-- Base de datos: `empresa_lascano_gonzalez`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `T#` varchar(30) NOT NULL,
  `TNombre` varchar(30) NOT NULL,
  `Ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`T#`, `TNombre`, `Ciudad`) VALUES
('T1', 'Clasificadora', 'Madrid'),
('T1', 'Perforadora', 'Malaga'),
('T3', 'Lectora', 'Caceres'),
('T4', 'consola', 'Caceres'),
('T5', 'Mezcladora', 'Sevilla'),
('T6', 'Terminal', 'Barcelona'),
('T7', 'Cinta', 'Sevilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentes`
--

CREATE TABLE `componentes` (
  `C#` varchar(30) NOT NULL,
  `CNombre` varchar(30) NOT NULL,
  `Color` varchar(30) NOT NULL,
  `Peso` int(11) NOT NULL,
  `Ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `componentes`
--

INSERT INTO `componentes` (`C#`, `CNombre`, `Color`, `Peso`, `Ciudad`) VALUES
('C1', 'X3A', 'ROJO', 12, 'SEVILLA'),
('C2', 'B85', 'VERDE', 17, 'MADRID'),
('C3', 'C4B', 'AZUL', 17, 'MALAGA'),
('C4', 'C4B', 'ROJO', 14, 'SEVILLA'),
('C5', 'VT8', 'AZUL', 12, 'MADIRD'),
('C6', 'C30', 'ROJO', 19, 'SEVILLA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `P#` int(30) NOT NULL,
  `C#` int(30) NOT NULL,
  `T#` int(30) NOT NULL,
  `Cantidad` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`P#`, `C#`, `T#`, `Cantidad`) VALUES
(0, 0, 0, 200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `categoria` int(11) NOT NULL,
  `ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `nombre`, `categoria`, `ciudad`) VALUES
('P1', 'Carlos', 20, 'Sevilla'),
('P2', 'Juan', 10, 'Madrid'),
('P3', 'Jose', 30, 'Sevilla'),
('P4', 'Inma', 20, 'Sevilla'),
('P5', 'Eva', 30, 'Caceres');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

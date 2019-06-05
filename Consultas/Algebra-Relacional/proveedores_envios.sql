-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 04-06-2019 a las 20:25:00
-- Versión del servidor: 5.7.25-0ubuntu0.16.04.2
-- Versión de PHP: 7.0.33-0ubuntu0.16.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proveedores_envios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `T#` varchar(3) NOT NULL,
  `TNOMBRE` varchar(40) NOT NULL,
  `CIUDAD` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`T#`, `TNOMBRE`, `CIUDAD`) VALUES
('T1', 'CLASIFICADORA', 'MADRID'),
('T2', 'PERFORADORA', 'MALAGA'),
('T3', 'LECTORA', 'CACERES'),
('T4', 'CONSOLA', 'CACERES'),
('T5', 'MEZCLADORA', 'SEVILLA'),
('T6', 'TERMINAL', 'BARCELONA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentes`
--

CREATE TABLE `componentes` (
  `C#` varchar(3) NOT NULL,
  `CNOMBRE` varchar(40) NOT NULL,
  `COLOR` varchar(30) NOT NULL,
  `PESO` int(11) NOT NULL,
  `CIUDAD` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `componentes`
--

INSERT INTO `componentes` (`C#`, `CNOMBRE`, `COLOR`, `PESO`, `CIUDAD`) VALUES
('C1', 'X3A', 'ROJO', 12, 'SEVILLA'),
('C2', 'B85', 'VERDE', 17, 'MADRID'),
('C3', 'C4B', 'AZUL', 17, 'MALAGA'),
('C4', 'C4B', 'ROJO', 14, 'SEVILLA'),
('C5', 'VT8', 'AZUL', 12, 'MADRID'),
('C6', 'C30', 'ROJO', 19, 'SEVILLA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `P#` varchar(3) NOT NULL,
  `C#` varchar(3) NOT NULL,
  `T#` varchar(3) NOT NULL,
  `CANTIDAD` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `P#` varchar(3) NOT NULL,
  `PNOMBRE` varchar(40) NOT NULL,
  `CATEGORIA` int(11) NOT NULL,
  `CIUDAD` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`P#`, `PNOMBRE`, `CATEGORIA`, `CIUDAD`) VALUES
('P1', 'CARLOS', 20, 'SEVILLA'),
('P2', 'JUAN', 10, 'MADRID'),
('P3', 'JOSE', 30, 'SEVILLA'),
('P4', 'INMA', 20, 'SEVILLA'),
('P5', 'EVA', 30, 'CACERES');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`T#`);

--
-- Indices de la tabla `componentes`
--
ALTER TABLE `componentes`
  ADD PRIMARY KEY (`C#`);

--
-- Indices de la tabla `envios`
--
ALTER TABLE `envios`
  ADD PRIMARY KEY (`P#`,`T#`,`C#`),
  ADD KEY `P#` (`P#`),
  ADD KEY `C#` (`C#`),
  ADD KEY `T#` (`T#`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`P#`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `envios`
--
ALTER TABLE `envios`
  ADD CONSTRAINT `envios_ibfk_1` FOREIGN KEY (`C#`) REFERENCES `componentes` (`C#`) ON UPDATE CASCADE,
  ADD CONSTRAINT `envios_ibfk_2` FOREIGN KEY (`T#`) REFERENCES `articulos` (`T#`) ON UPDATE CASCADE,
  ADD CONSTRAINT `envios_ibfk_3` FOREIGN KEY (`P#`) REFERENCES `proveedores` (`P#`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

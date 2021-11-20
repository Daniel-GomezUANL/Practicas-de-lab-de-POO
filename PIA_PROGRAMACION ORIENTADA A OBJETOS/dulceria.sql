-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2021 a las 07:07:13
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dulceria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(15) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `telefono`) VALUES
(1, 'Alberto Gomez Rocha', '8112465988'),
(3, 'Ramon Cruz Gutierrez', '8255664912'),
(7, 'Abigail Rivera Flores', '8064123994'),
(8, 'Armando', '81245789152');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `clave` int(6) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `nombre` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `precio` float NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`clave`, `cantidad`, `nombre`, `precio`, `estado`) VALUES
(12458, 80, 'Agua Potable Chica (600 mL)', 12, 1),
(12459, 48, 'Capuchino', 23, 1),
(15426, 80, 'Refresco Chico (500 mL)', 34, 1),
(15428, 190, 'Palomitas Chicas', 40, 1),
(15448, 50, 'Agua Potable Grande (1L)', 20, 1),
(16498, 18, 'Papas Fritas Naturales', 30, 1),
(16847, 64, 'Hot Dog Tradicional ', 35, 1),
(16872, 69, 'Hot Dog Jumbo', 48, 1),
(18854, 90, 'Palomitas Grandes', 50, 1),
(21457, 90, 'Refresco Grande (1L)', 50, 1),
(32154, 13, 'Dulces m&m chicos (50 gr)', 20, 1),
(32155, 12, 'Dulces m&m grandes (120 gr)', 46, 1),
(32784, 15, 'Dulces Skittles (54 gr)', 25, 1),
(48594, 0, 'Churros', 34, 0),
(78645, 80, 'Nachos', 44, 1),
(98145, 22, 'Helado Holanda Napolitano (1L)', 52, 1),
(98187, 30, 'Cono de Helado Cornneto (82g)', 25, 1),
(98188, 7, 'Paleta Magnum (72g)', 26, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID` int(100) NOT NULL,
  `NOMBRE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CONTRASEÑA` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `PUESTO` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SUELDO` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CELULAR` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `ESTADO` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID`, `NOMBRE`, `CONTRASEÑA`, `PUESTO`, `SUELDO`, `CELULAR`, `ESTADO`) VALUES
(2, 'Jose Julian Rivas Hiracheta', 'pass1234', 'Administrador', '3000', '8117426299', 1),
(3, 'Juan Manuel Rivera Reyna', 'cine754', 'Vendedor', '2500', '8145928456', 1),
(4, 'Angel Jared Gonzalez Castillo', 'password88', 'Vendedor', '2800', '8145264899', 1),
(6, 'Angel Emiliano Ibarra Soto', 'con898', 'Vendedor', '2500', '8145264985', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `clave` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`clave`) VALUES
(3733),
(1636),
(1011);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

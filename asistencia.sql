-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-08-2024 a las 01:58:13
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `asistencia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `cedula` varchar(50) NOT NULL,
  `curso` varchar(255) NOT NULL,
  `turno` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `comentario` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `cedula`, `curso`, `turno`, `email`, `telefono`, `comentario`) VALUES
(1, 'Rolando', 'Barrios', '3502861', 'Matemáticas', 'Mañana', 'rolando.barrios.utic.dgvs@gmail.com', '9876 541 2345', 'Presente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `cedula` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`cedula`, `nombre`, `apellido`, `foto`) VALUES
(19115211, 'Petra', 'Larez', '910246.jpg'),
(19115217, 'Santiago', 'Urdaneta', '478324.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcados`
--

CREATE TABLE `marcados` (
  `id` int(11) NOT NULL,
  `cedula` int(11) NOT NULL,
  `fecha_hora` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tipo` varchar(255) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `marcados`
--

INSERT INTO `marcados` (`id`, `cedula`, `fecha_hora`, `tipo`, `fecha`) VALUES
(49, 19115217, '2017-06-18 16:35:23', 'Entrada', '2017-06-18'),
(50, 19115211, '2017-06-18 16:48:45', 'Entrada', '2017-06-18'),
(51, 19115217, '2017-06-18 16:48:58', 'Salida', '2017-06-18'),
(52, 19115211, '2017-06-18 18:39:57', 'Salida', '2017-06-18'),
(53, 19115217, '2017-06-18 19:15:24', 'Entrada', '2017-06-18'),
(54, 19115217, '2017-06-18 19:19:12', 'Salida', '2017-06-18'),
(55, 19115217, '2017-06-18 19:19:39', 'Entrada', '2017-06-18'),
(56, 19115211, '2017-06-18 19:19:45', 'Entrada', '2017-06-18'),
(57, 19115211, '2017-06-18 19:24:25', 'Salida', '2017-06-18'),
(58, 19115217, '2017-06-18 19:25:31', 'Salida', '2017-06-18'),
(59, 19115211, '2017-06-18 19:27:13', 'Entrada', '2017-06-18'),
(60, 19115217, '2017-06-18 19:27:27', 'Entrada', '2017-06-18'),
(61, 19115211, '2017-06-18 19:27:57', 'Salida', '2017-06-18'),
(62, 19115217, '2017-06-18 19:28:01', 'Salida', '2017-06-18'),
(63, 19115217, '2017-06-18 19:29:17', 'Entrada', '2017-06-18'),
(64, 19115211, '2017-06-18 19:29:21', 'Entrada', '2017-06-18'),
(65, 19115217, '2017-06-18 19:34:08', 'Salida', '2017-06-18'),
(66, 19115211, '2017-06-18 19:34:12', 'Salida', '2017-06-18'),
(67, 19115217, '2017-06-18 19:35:50', 'Entrada', '2017-06-18'),
(68, 19115211, '2017-06-18 19:35:54', 'Entrada', '2017-06-18'),
(69, 19115211, '2017-06-18 19:36:02', 'Salida', '2017-06-18'),
(70, 19115217, '2017-09-16 18:57:37', 'Salida', '2017-09-16'),
(71, 19115217, '2017-09-16 18:57:44', 'Entrada', '2017-09-16'),
(72, 19115217, '2017-09-16 19:02:56', 'Salida', '2017-09-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `clave` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre_usuario`, `clave`) VALUES
(3, 'Rolando', '1234567');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `marcados`
--
ALTER TABLE `marcados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `marcados`
--
ALTER TABLE `marcados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

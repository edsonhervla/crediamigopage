-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2023 a las 09:28:20
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prestamista`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `id_caja` int(200) NOT NULL,
  `monto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caserio`
--

CREATE TABLE `caserio` (
  `caserio_id` int(11) NOT NULL,
  `nombre_cas` varchar(100) NOT NULL,
  `estado_cas` enum('ACTIVO','INACTIVO') NOT NULL,
  `departamento_id` int(11) NOT NULL,
  `municipio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `caserio`
--

INSERT INTO `caserio` (`caserio_id`, `nombre_cas`, `estado_cas`, `departamento_id`, `municipio_id`) VALUES
(3, 'Camanchaj', 'ACTIVO', 17, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientespf`
--

CREATE TABLE `clientespf` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `fechanac` date NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `cui` char(25) NOT NULL,
  `telefono` char(12) NOT NULL,
  `departamento_id` int(11) NOT NULL,
  `municipio_id` int(11) NOT NULL,
  `caserio_id` int(11) NOT NULL,
  `Referencias` varchar(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `cuenta` varchar(20) NOT NULL,
  `fecha` date NOT NULL,
  `estado` enum('ACTIVO','INACTIVO') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientespf`
--

INSERT INTO `clientespf` (`id_cliente`, `nombre`, `apellido`, `fechanac`, `sexo`, `cui`, `telefono`, `departamento_id`, `municipio_id`, `caserio_id`, `Referencias`, `usuario`, `cuenta`, `fecha`, `estado`) VALUES
(2, 'sdasd', 'asdas', '2022-12-05', 'M', '312312312', '21312312', 17, 12, 3, 'sdasd', 'Miguel Miranda', '3123123122023', '2023-05-15', 'ACTIVO'),
(3, 'SDAD', 'DASDA', '1986-01-15', 'M', '516516516', '1651651651', 17, 12, 3, 'SAD', 'Miguel Miranda', '5165165162023', '2023-05-15', 'ACTIVO'),
(4, 'HGF', 'GFDG', '1985-12-08', 'M', '54651651651', '1541541515', 17, 12, 3, 'DASD', 'Miguel Miranda', '546516516512023', '2023-05-15', 'ACTIVO'),
(5, 'dasdas', 'dasda', '2023-05-23', 'M', '45}4}7', '74}74}74', 17, 12, 3, 'dsdada', 'Miguel Miranda', '45}4}72023', '2023-05-23', 'ACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `departamento_id` int(11) NOT NULL,
  `nombre_dep` varchar(100) NOT NULL,
  `estado_dep` enum('ACTIVO','INACTIVO') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`departamento_id`, `nombre_dep`, `estado_dep`) VALUES
(17, 'El Quiché', 'ACTIVO'),
(18, 'Sololá', 'ACTIVO'),
(19, 'Quetzaltenango', 'ACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eliminar_ingresos`
--

CREATE TABLE `eliminar_ingresos` (
  `id_ingresos` int(200) NOT NULL,
  `fecha` date NOT NULL,
  `transaccion` varchar(255) NOT NULL,
  `deposito` decimal(10,2) DEFAULT NULL,
  `interes` decimal(10,2) DEFAULT NULL,
  `suma` decimal(10,2) DEFAULT NULL,
  `id_cliente` int(11) NOT NULL,
  `usuario` varchar(200) DEFAULT NULL,
  `retiro` decimal(10,2) DEFAULT NULL,
  `saldo` decimal(10,2) NOT NULL,
  `fecha_deposito` date DEFAULT NULL,
  `fecha_retiro` date DEFAULT NULL,
  `fechae` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id_empresa` int(100) NOT NULL,
  `empresa` varchar(200) NOT NULL,
  `ruc` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `descripcion` varchar(2000) NOT NULL,
  `imagen` varchar(2000) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `simbolo_moneda` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `empresa`, `ruc`, `direccion`, `telefono`, `descripcion`, `imagen`, `correo`, `simbolo_moneda`) VALUES
(1, 'CrediAmigo', '113843437', 'Barrio Central Joyabaj, Quiché', '242432334', 'Empresa de préstamos', 'logo.png', 'crediamigosa@gmail.com', 'Q.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `id_ingresos` int(200) NOT NULL,
  `fecha` date NOT NULL,
  `transaccion` varchar(255) NOT NULL,
  `deposito` decimal(10,2) DEFAULT NULL,
  `interes` decimal(10,2) DEFAULT NULL,
  `suma` decimal(10,2) DEFAULT NULL,
  `id_cliente` int(11) NOT NULL,
  `usuario` varchar(200) DEFAULT NULL,
  `retiro` decimal(10,2) DEFAULT NULL,
  `saldo` decimal(10,2) NOT NULL,
  `fecha_deposito` date DEFAULT NULL,
  `fecha_retiro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`id_ingresos`, `fecha`, `transaccion`, `deposito`, `interes`, `suma`, `id_cliente`, `usuario`, `retiro`, `saldo`, `fecha_deposito`, `fecha_retiro`) VALUES
(16, '2023-05-15', 'interes', NULL, '3.00', '16.80', 4, '', NULL, '576.80', '0000-00-00', '0000-00-00'),
(17, '2023-05-15', 'retiro', NULL, NULL, NULL, 3, 'Miguel Miranda', '50.00', '102.25', NULL, '2023-05-15'),
(19, '2023-05-15', 'retiro', NULL, NULL, NULL, 2, 'Miguel Miranda', '100.00', '104.00', NULL, '2023-05-15'),
(122, '2023-05-22', 'interes', NULL, '2.00', '2.08', 2, NULL, NULL, '106.08', NULL, NULL),
(123, '2023-05-22', 'interes', NULL, '1.50', '1.53', 3, NULL, NULL, '103.78', NULL, NULL),
(124, '2023-05-22', 'interes', NULL, '3.00', '17.30', 4, NULL, NULL, '594.10', NULL, NULL),
(127, '2023-05-23', 'interes', NULL, '2.00', '2.12', 2, NULL, NULL, '108.20', NULL, NULL),
(129, '2023-05-23', 'interes', NULL, '3.00', '17.82', 4, NULL, NULL, '611.92', NULL, NULL),
(130, '2023-05-23', 'interes', NULL, '1.50', '1.56', 3, NULL, NULL, '105.34', NULL, NULL),
(132, '2023-05-23', 'deposito', '50.00', '2.00', NULL, 2, 'Miguel Miranda', NULL, '158.20', '2023-05-23', NULL),
(133, '2023-05-23', 'apertura', '120.00', '1.00', NULL, 5, 'Miguel Miranda', NULL, '120.00', '2023-05-23', NULL),
(134, '2023-05-28', 'interes', NULL, '1.00', '1.58', 2, NULL, NULL, '159.78', NULL, NULL),
(135, '2023-05-28', 'interes', NULL, '1.00', '1.05', 3, NULL, NULL, '106.39', NULL, NULL),
(136, '2023-05-28', 'interes', NULL, '1.00', '6.12', 4, NULL, NULL, '618.04', NULL, NULL),
(137, '2023-05-28', 'interes', NULL, '1.00', '1.20', 5, NULL, NULL, '121.20', NULL, NULL),
(138, '2023-05-29', 'interes', NULL, '1.00', '1.60', 2, NULL, NULL, '161.38', NULL, NULL),
(139, '2023-05-29', 'interes', NULL, '1.00', '1.06', 3, NULL, NULL, '107.45', NULL, NULL),
(140, '2023-05-29', 'interes', NULL, '1.00', '6.18', 4, NULL, NULL, '624.22', NULL, NULL),
(141, '2023-05-29', 'interes', NULL, '1.00', '1.21', 5, NULL, NULL, '122.41', NULL, NULL),
(142, '2023-06-01', 'interes', NULL, '1.00', '1.61', 2, NULL, NULL, '162.99', NULL, NULL),
(143, '2023-06-01', 'interes', NULL, '1.00', '1.07', 3, NULL, NULL, '108.52', NULL, NULL),
(144, '2023-06-01', 'interes', NULL, '1.00', '6.24', 4, NULL, NULL, '630.46', NULL, NULL),
(145, '2023-06-01', 'interes', NULL, '1.00', '1.22', 5, NULL, NULL, '123.63', NULL, NULL),
(146, '2023-06-06', 'interes', NULL, '1.00', '1.63', 2, NULL, NULL, '164.62', NULL, NULL),
(147, '2023-06-06', 'interes', NULL, '1.00', '1.09', 3, NULL, NULL, '109.61', NULL, NULL),
(148, '2023-06-06', 'interes', NULL, '1.00', '6.30', 4, NULL, NULL, '636.76', NULL, NULL),
(149, '2023-06-06', 'interes', NULL, '1.00', '1.24', 5, NULL, NULL, '124.87', NULL, NULL);

--
-- Disparadores `ingresos`
--
DELIMITER $$
CREATE TRIGGER `reciclaje_i` BEFORE DELETE ON `ingresos` FOR EACH ROW INSERT INTO eliminar_ingresos VALUES(old.id_ingresos, old.fecha, old.transaccion, old.deposito, old.interes, old.suma, old.id_cliente, old.usuario, old.retiro, old.saldo, old.fecha_deposito, old.fecha_retiro,now())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `municipio_id` int(11) NOT NULL,
  `nombre_mu` varchar(100) NOT NULL,
  `estado_mu` enum('ACTIVO','INACTIVO') NOT NULL,
  `departamento_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`municipio_id`, `nombre_mu`, `estado_mu`, `departamento_id`) VALUES
(12, 'Chichicastenango', 'ACTIVO', 17),
(13, 'Joyabaj', 'ACTIVO', 17),
(14, 'Los Encuentros', 'ACTIVO', 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporal`
--

CREATE TABLE `temporal` (
  `id_temporal` int(200) NOT NULL,
  `id_cliente` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `tipo` varchar(200) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `apellido` varchar(200) DEFAULT NULL,
  `telefono` varchar(200) DEFAULT NULL,
  `correo` varchar(200) NOT NULL,
  `id_zonas` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `password`, `imagen`, `tipo`, `nombre`, `apellido`, `telefono`, `correo`, `id_zonas`) VALUES
(5, 'admin', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'miguel.jpg', 'administrador', 'Miguel', 'Miranda', '54345', 'tusolutionweb@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioc`
--

CREATE TABLE `usuarioc` (
  `id` int(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `con` varchar(100) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `tipo` varchar(200) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `id_zonas` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuarioc`
--

INSERT INTO `usuarioc` (`id`, `usuario`, `password`, `con`, `imagen`, `tipo`, `nombre`, `apellido`, `telefono`, `correo`, `id_zonas`) VALUES
(3, '3123123122023', 'a1Bz20ydqelm8m1wql827ccb0eea8a706c4c34a16891f84e7b', '12345', '', 'usuario', 'sdasd', 'asdas', '21312312', 'prueba@gmail.com', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caserio`
--
ALTER TABLE `caserio`
  ADD PRIMARY KEY (`caserio_id`),
  ADD KEY `municipio_id` (`municipio_id`),
  ADD KEY `departamento_id` (`departamento_id`);

--
-- Indices de la tabla `clientespf`
--
ALTER TABLE `clientespf`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `cliente_departamento` (`departamento_id`),
  ADD KEY `cliente municicpio` (`municipio_id`),
  ADD KEY `cliente_caserio` (`caserio_id`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`departamento_id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Indices de la tabla `history_log`
--
ALTER TABLE `history_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`id_ingresos`),
  ADD KEY `clientes_transacciones` (`id_cliente`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`municipio_id`),
  ADD KEY `departamento_id` (`departamento_id`);

--
-- Indices de la tabla `temporal`
--
ALTER TABLE `temporal`
  ADD PRIMARY KEY (`id_temporal`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarioc`
--
ALTER TABLE `usuarioc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caserio`
--
ALTER TABLE `caserio`
  MODIFY `caserio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clientespf`
--
ALTER TABLE `clientespf`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `departamento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_empresa` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `id_ingresos` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `municipio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `temporal`
--
ALTER TABLE `temporal`
  MODIFY `id_temporal` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `usuarioc`
--
ALTER TABLE `usuarioc`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `caserio`
--
ALTER TABLE `caserio`
  ADD CONSTRAINT `caserio_ibfk_1` FOREIGN KEY (`municipio_id`) REFERENCES `municipio` (`municipio_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `caserio_ibfk_2` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`departamento_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `clientespf`
--
ALTER TABLE `clientespf`
  ADD CONSTRAINT `cliente municicpio` FOREIGN KEY (`municipio_id`) REFERENCES `municipio` (`municipio_id`),
  ADD CONSTRAINT `cliente_caserio` FOREIGN KEY (`caserio_id`) REFERENCES `caserio` (`caserio_id`),
  ADD CONSTRAINT `cliente_departamento` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`departamento_id`);

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`departamento_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

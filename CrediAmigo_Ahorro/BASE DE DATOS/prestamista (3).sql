-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-01-2023 a las 21:59:49
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

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

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`id_caja`, `monto`) VALUES
(1, '452904.14008572');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caserio`
--

CREATE TABLE `caserio` (
  `caserio_id` int(200) NOT NULL,
  `nombre_cas` varchar(200) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL,
  `estado_cas` enum('ACTIVO','INACTIVO') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `municipio_id` int(200) NOT NULL,
  `fechareg_cas` date NOT NULL,
  `fechaact_cas` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `caserio`
--

INSERT INTO `caserio` (`caserio_id`, `nombre_cas`, `estado_cas`, `municipio_id`, `fechareg_cas`, `fechaact_cas`) VALUES
(22, 'El temal', 'ACTIVO', 4, '0000-00-00', '0000-00-00'),
(23, 'Boquerron', 'ACTIVO', 4, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(200) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `fechanac` date NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `cui` char(25) NOT NULL,
  `estadocivil` varchar(200) NOT NULL,
  `telefono` char(8) NOT NULL,
  `leer` varchar(200) NOT NULL,
  `firmar` varchar(200) NOT NULL,
  `remesas` varchar(200) NOT NULL,
  `profesion` varchar(200) NOT NULL,
  `perdep` char(200) NOT NULL,
  `nom2` varchar(200) NOT NULL,
  `cel2` char(200) NOT NULL,
  `nom3` varchar(200) NOT NULL,
  `cel3` char(200) NOT NULL,
  `nom4` varchar(200) NOT NULL,
  `cel4` char(200) NOT NULL,
  `nom5` varchar(200) NOT NULL,
  `cel5` char(200) NOT NULL,
  `cocina` varchar(200) NOT NULL,
  `sala` varchar(200) NOT NULL,
  `comedor` varchar(200) NOT NULL,
  `jardin` varchar(200) NOT NULL,
  `Constru` varchar(200) NOT NULL,
  `vivienda` varchar(200) NOT NULL,
  `niveles` char(200) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL,
  `dormitorios` char(200) NOT NULL,
  `vivdom` varchar(200) NOT NULL,
  `fotoviv` varchar(200) NOT NULL,
  `municipio_id` int(200) NOT NULL,
  `caserio_id` int(200) NOT NULL,
  `Referencias` varchar(200) NOT NULL,
  `camion` varchar(200) NOT NULL,
  `carro` varchar(200) NOT NULL,
  `moto` varchar(200) NOT NULL,
  `tipocalle` varchar(200) NOT NULL,
  `tiposolicitante` varchar(200) NOT NULL,
  `monto` char(200) NOT NULL,
  `destinofondos` varchar(200) NOT NULL,
  `especificaciondes` varchar(200) NOT NULL,
  `plazo` int(200) NOT NULL,
  `cuota` char(200) NOT NULL,
  `fechainicio` date NOT NULL,
  `estado_cli` varchar(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `codigo_cliente` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `apellido`, `foto`, `fechanac`, `sexo`, `cui`, `estadocivil`, `telefono`, `leer`, `firmar`, `remesas`, `profesion`, `perdep`, `nom2`, `cel2`, `nom3`, `cel3`, `nom4`, `cel4`, `nom5`, `cel5`, `cocina`, `sala`, `comedor`, `jardin`, `Constru`, `vivienda`, `niveles`, `dormitorios`, `vivdom`, `fotoviv`, `municipio_id`, `caserio_id`, `Referencias`, `camion`, `carro`, `moto`, `tipocalle`, `tiposolicitante`, `monto`, `destinofondos`, `especificaciondes`, `plazo`, `cuota`, `fechainicio`, `estado_cli`, `usuario`, `codigo_cliente`) VALUES
(2, 'Ricardo', 'urbiola', '', '0000-00-00', 'M', '23456789', '', '21312', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 4, 23, 'Parque', '', '', '', '', '', '', '', '', 0, '', '0000-00-00', 'Aprobado', 'Miguel Miranda', ''),
(29, 'Carlos', 'Canil', '', '2023-01-18', 'M', '85285285', '', '25463158', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 4, 23, 'Tienda la bendición', '', '', '', '', '', '', '', '', 0, '', '0000-00-00', 'Aprobado', 'Miguel Miranda', ''),
(30, 'Ana', 'Xiloj', 'maxresdefault.jpg', '2023-01-03', 'F', '4567890', 'Casada', '4567890', 'Si', 'Si', 'Si', 'Secretaria', '6', 'tomas1', 'numero1', 'tomas2', 'numero2', 'tomas3', 'numero3', 'tomas4', 'numero5', 'si', 'si', 'si', 'si', 'block', 'casa', ' 4', '5', 'Padres', '60017-casas.jpg', 4, 23, 'Taquería El mexicano', 'si', 'si', 'SI', 'Asfaltado', 'Empresaria', '50000', 'Empresa', 'Gastos de Empresa', 12, '1000', '2023-01-01', 'Proceso', 'Miguel Miranda', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuotas`
--

CREATE TABLE `cuotas` (
  `id_cuota` int(200) NOT NULL,
  `codigo_prestamo` varchar(200) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `monto` varchar(200) NOT NULL,
  `estado_pago` varchar(200) NOT NULL,
  `fecha_pagada` date NOT NULL,
  `mora` float NOT NULL,
  `interes_cuotas` varchar(200) NOT NULL,
  `cuota_sin_interes` varchar(200) NOT NULL,
  `agente` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `cuotas`
--

INSERT INTO `cuotas` (`id_cuota`, `codigo_prestamo`, `fecha_inicio`, `fecha_fin`, `monto`, `estado_pago`, `fecha_pagada`, `mora`, `interes_cuotas`, `cuota_sin_interes`, `agente`) VALUES
(190, '15', '2023-01-11', '2023-02-10', '801.99', 'debe', '0000-00-00', 0, '69.42', '833.00', ''),
(191, '15', '2023-02-10', '2023-03-12', '807.56', 'debe', '0000-00-00', 0, '63.85', '766.19', ''),
(192, '15', '2023-03-12', '2023-04-11', '813.17', 'debe', '0000-00-00', 0, '58.24', '698.92', ''),
(193, '15', '2023-04-11', '2023-05-11', '818.81', 'debe', '0000-00-00', 0, '52.60', '631.19', ''),
(194, '15', '2023-05-11', '2023-06-10', '824.49', 'debe', '0000-00-00', 0, '46.92', '562.98', ''),
(195, '15', '2023-06-10', '2023-07-10', '830.22', 'debe', '0000-00-00', 0, '41.19', '494.30', ''),
(196, '15', '2023-07-10', '2023-08-09', '835.98', 'debe', '0000-00-00', 0, '35.43', '425.14', ''),
(197, '15', '2023-08-09', '2023-09-08', '841.78', 'debe', '0000-00-00', 0, '29.63', '355.51', ''),
(198, '15', '2023-09-08', '2023-10-08', '847.63', 'debe', '0000-00-00', 0, '23.78', '285.39', ''),
(199, '15', '2023-10-08', '2023-11-07', '853.51', 'debe', '0000-00-00', 0, '17.90', '214.78', ''),
(200, '15', '2023-11-07', '2023-12-07', '859.44', 'debe', '0000-00-00', 0, '11.97', '143.68', ''),
(201, '15', '2023-12-07', '2024-01-06', '865.40', 'debe', '0000-00-00', 0, '6.01', '72.09', ''),
(202, '135', '2023-01-11', '2023-02-10', '801.99', 'debe', '0000-00-00', 0, '69.42', '833.00', ''),
(203, '135', '2023-02-10', '2023-03-12', '807.56', 'debe', '0000-00-00', 0, '63.85', '766.19', ''),
(204, '135', '2023-03-12', '2023-04-11', '813.17', 'debe', '0000-00-00', 0, '58.24', '698.92', ''),
(205, '135', '2023-04-11', '2023-05-11', '818.81', 'debe', '0000-00-00', 0, '52.60', '631.19', ''),
(206, '135', '2023-05-11', '2023-06-10', '824.49', 'debe', '0000-00-00', 0, '46.92', '562.98', ''),
(207, '135', '2023-06-10', '2023-07-10', '830.22', 'debe', '0000-00-00', 0, '41.19', '494.30', ''),
(208, '135', '2023-07-10', '2023-08-09', '835.98', 'debe', '0000-00-00', 0, '35.43', '425.14', ''),
(209, '135', '2023-08-09', '2023-09-08', '841.78', 'debe', '0000-00-00', 0, '29.63', '355.51', ''),
(210, '135', '2023-09-08', '2023-10-08', '847.63', 'debe', '0000-00-00', 0, '23.78', '285.39', ''),
(211, '135', '2023-10-08', '2023-11-07', '853.51', 'debe', '0000-00-00', 0, '17.90', '214.78', ''),
(212, '135', '2023-11-07', '2023-12-07', '859.44', 'debe', '0000-00-00', 0, '11.97', '143.68', ''),
(213, '135', '2023-12-07', '2024-01-06', '865.40', 'debe', '0000-00-00', 0, '6.01', '72.09', ''),
(214, '145', '2023-01-11', '2023-02-10', '801.99', 'pagado', '2023-01-11', 0, '69.42', '833.00', 'Miguel Miranda'),
(215, '145', '2023-02-10', '2023-03-12', '807.56', 'pagado', '2023-01-11', 0, '63.85', '766.19', 'Miguel Miranda'),
(216, '145', '2023-03-12', '2023-04-11', '813.17', 'pagado', '2023-01-11', 0, '58.24', '698.92', 'Miguel Miranda'),
(217, '145', '2023-04-11', '2023-05-11', '818.81', 'pagado', '2023-01-11', 0, '52.60', '631.19', 'Miguel Miranda'),
(218, '145', '2023-05-11', '2023-06-10', '824.49', 'pagado', '2023-01-11', 0, '46.92', '562.98', 'Miguel Miranda'),
(219, '145', '2023-06-10', '2023-07-10', '830.22', 'pagado', '2023-01-11', 0, '41.19', '494.30', 'Miguel Miranda'),
(220, '145', '2023-07-10', '2023-08-09', '835.98', 'pagado', '2023-01-11', 0, '35.43', '425.14', 'Miguel Miranda'),
(221, '145', '2023-08-09', '2023-09-08', '841.78', 'pagado', '2023-01-11', 0, '29.63', '355.51', 'Miguel Miranda'),
(222, '145', '2023-09-08', '2023-10-08', '847.63', 'pagado', '2023-01-11', 0, '23.78', '285.39', 'Miguel Miranda'),
(223, '145', '2023-10-08', '2023-11-07', '853.51', 'pagado', '2023-01-11', 0, '17.90', '214.78', 'Miguel Miranda'),
(224, '145', '2023-11-07', '2023-12-07', '859.44', 'pagado', '2023-01-11', 0, '11.97', '143.68', 'Miguel Miranda'),
(225, '145', '2023-12-07', '2024-01-06', '865.40', 'pagado', '2023-01-11', 0, '6.01', '72.09', 'Miguel Miranda'),
(226, '155', '2023-01-11', '2023-02-10', '801.99', 'pagado', '2023-01-11', 0, '69.42', '833.00', 'Miguel Miranda'),
(227, '155', '2023-02-10', '2023-03-12', '807.56', 'pagado', '2023-01-11', 0, '63.85', '766.19', 'Miguel Miranda'),
(228, '155', '2023-03-12', '2023-04-11', '813.17', 'pagado', '2023-01-11', 0, '58.24', '698.92', 'Miguel Miranda'),
(229, '155', '2023-04-11', '2023-05-11', '818.81', 'pagado', '2023-01-11', 0, '52.60', '631.19', 'Miguel Miranda'),
(230, '155', '2023-05-11', '2023-06-10', '824.49', 'pagado', '2023-01-11', 0, '46.92', '562.98', 'Miguel Miranda'),
(231, '155', '2023-06-10', '2023-07-10', '830.22', 'pagado', '2023-01-11', 0, '41.19', '494.30', 'Miguel Miranda'),
(232, '155', '2023-07-10', '2023-08-09', '835.98', 'pagado', '2023-01-11', 0, '35.43', '425.14', 'Miguel Miranda'),
(233, '155', '2023-08-09', '2023-09-08', '841.78', 'pagado', '2023-01-11', 0, '29.63', '355.51', 'Miguel Miranda'),
(234, '155', '2023-09-08', '2023-10-08', '847.63', 'pagado', '2023-01-12', 0, '23.78', '285.39', 'Miguel Miranda'),
(235, '155', '2023-10-08', '2023-11-07', '853.51', 'pagado', '2023-01-12', 0, '17.90', '214.78', 'Miguel Miranda'),
(236, '155', '2023-11-07', '2023-12-07', '859.44', 'pagado', '2023-01-12', 0, '11.97', '143.68', 'Miguel Miranda'),
(237, '155', '2023-12-07', '2024-01-06', '865.40', 'pagado', '2023-01-12', 0, '6.01', '72.09', 'Miguel Miranda'),
(238, '165', '2023-01-12', '2023-02-11', '801.99', 'debe', '0000-00-00', 0, '69.42', '871.41084047748', ''),
(239, '165', '2023-02-11', '2023-03-13', '807.56', 'debe', '0000-00-00', 0, '63.85', '871.41084047748', ''),
(240, '165', '2023-03-13', '2023-04-12', '813.17', 'debe', '0000-00-00', 0, '58.24', '871.41084047748', ''),
(241, '165', '2023-04-12', '2023-05-12', '818.81', 'debe', '0000-00-00', 0, '52.60', '871.41084047748', ''),
(242, '165', '2023-05-12', '2023-06-11', '824.49', 'debe', '0000-00-00', 0, '46.92', '871.41084047748', ''),
(243, '165', '2023-06-11', '2023-07-11', '830.22', 'debe', '0000-00-00', 0, '41.19', '871.41084047748', ''),
(244, '165', '2023-07-11', '2023-08-10', '835.98', 'debe', '0000-00-00', 0, '35.43', '871.41084047748', ''),
(245, '165', '2023-08-10', '2023-09-09', '841.78', 'debe', '0000-00-00', 0, '29.63', '871.41084047748', ''),
(246, '165', '2023-09-09', '2023-10-09', '847.63', 'debe', '0000-00-00', 0, '23.78', '871.41084047748', ''),
(247, '165', '2023-10-09', '2023-11-08', '853.51', 'debe', '0000-00-00', 0, '17.90', '871.41084047748', ''),
(248, '165', '2023-11-08', '2023-12-08', '859.44', 'debe', '0000-00-00', 0, '11.97', '871.41084047748', ''),
(249, '165', '2023-12-08', '2024-01-07', '865.40', 'debe', '0000-00-00', 0, '6.01', '871.41084047748', ''),
(250, '175', '2023-01-12', '2023-02-11', '871.41084047748', 'pagado', '2023-01-12', 0, '69.42', '833.00', 'Miguel Miranda'),
(251, '175', '2023-02-11', '2023-03-13', '871.41084047748', 'pagado', '2023-01-12', 0, '63.85', '766.19', 'Miguel Miranda'),
(252, '175', '2023-03-13', '2023-04-12', '871.41084047748', 'pagado', '2023-01-12', 0, '58.24', '698.92', 'Miguel Miranda'),
(253, '175', '2023-04-12', '2023-05-12', '871.41084047748', 'pagado', '2023-01-12', 0, '52.60', '631.19', 'Miguel Miranda'),
(254, '175', '2023-05-12', '2023-06-11', '871.41084047748', 'pagado', '2023-01-12', 0, '46.92', '562.98', 'Miguel Miranda'),
(255, '175', '2023-06-11', '2023-07-11', '871.41084047748', 'pagado', '2023-01-12', 0, '41.19', '494.30', 'Miguel Miranda'),
(256, '175', '2023-07-11', '2023-08-10', '871.41084047748', 'pagado', '2023-01-12', 0, '35.43', '425.14', 'Miguel Miranda'),
(257, '175', '2023-08-10', '2023-09-09', '871.41084047748', 'pagado', '2023-01-12', 0, '29.63', '355.51', 'Miguel Miranda'),
(258, '175', '2023-09-09', '2023-10-09', '871.41084047748', 'pagado', '2023-01-12', 0, '23.78', '285.39', 'Miguel Miranda'),
(259, '175', '2023-10-09', '2023-11-08', '871.41084047748', 'pagado', '2023-01-12', 0, '17.90', '214.78', 'Miguel Miranda'),
(260, '175', '2023-11-08', '2023-12-08', '871.41084047748', 'pagado', '2023-01-12', 0, '11.97', '143.68', 'Miguel Miranda'),
(261, '175', '2023-12-08', '2024-01-07', '871.41084047748', 'pagado', '2023-01-12', 0, '6.01', '72.09', 'Miguel Miranda');

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
(1, 'CrediAmigo', '113843437', 'Barrio Central Joyabaj, Quiché', '242432334', 'Empresa de préstamos', 'logo.png', 'crediamigosa@gmail.com', 'Q. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `id_gastos` int(200) NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `cantidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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

--
-- Volcado de datos para la tabla `history_log`
--

INSERT INTO `history_log` (`log_id`, `user_id`, `action`, `date`) VALUES
(1, 1, 'has logged in the system at ', '2018-11-27 07:58:26'),
(2, 1, 'has logged out the system at ', '2018-11-27 07:59:03'),
(3, 1, 'has logged in the system at ', '2018-11-30 22:32:20'),
(4, 6, 'has logged in the system at ', '2018-12-01 20:28:15'),
(13, 1, 'has logged out the system at ', '2018-11-30 22:42:36'),
(14, 1, 'has logged in the system at ', '2018-12-04 11:12:37'),
(15, 1, 'has logged in the system at ', '2018-12-19 10:16:00'),
(16, 1, 'has logged in the system at ', '2018-12-19 10:21:46'),
(17, 1, 'has logged in the system at ', '2018-12-19 10:27:32'),
(18, 1, 'has logged in the system at ', '2018-12-19 10:33:11'),
(19, 1, 'se ha desconectado el sistema en ', '2018-12-19 10:39:49'),
(20, 1, 'has logged in the system at ', '2018-12-19 10:40:01'),
(21, 1, 'se ha desconectado el sistema en ', '2018-12-19 10:40:04'),
(22, 1, 'has logged in the system at ', '2018-12-19 10:42:35'),
(23, 1, 'se ha desconectado el sistema en ', '2018-12-19 10:42:44'),
(24, 1, 'has logged in the system at ', '2018-12-19 10:43:07'),
(25, 1, 'se ha desconectado el sistema en ', '2018-12-19 10:44:35'),
(26, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-14 10:55:46'),
(27, 1, 'se ha desconectado el sistema en ', '2019-01-14 11:02:35'),
(28, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-14 11:02:41'),
(29, 1, 'se ha desconectado el sistema en ', '2019-01-14 11:09:15'),
(30, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-16 21:05:23'),
(31, 1, 'se ha desconectado el sistema en ', '2019-01-16 21:05:32'),
(32, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-16 21:06:19'),
(33, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-16 21:09:39'),
(34, 1, 'se ha desconectado el sistema en ', '2019-01-16 21:12:48'),
(35, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-16 21:12:52'),
(36, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-16 22:33:53'),
(37, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-17 08:50:57'),
(38, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-17 22:37:23'),
(39, 1, 'se ha desconectado el sistema en ', '2019-01-18 01:25:04'),
(40, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-18 03:35:56'),
(41, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-18 08:25:58'),
(42, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-18 20:31:12'),
(43, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-19 06:39:38'),
(44, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-20 01:27:24'),
(45, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-20 01:43:21'),
(46, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-20 02:56:46'),
(47, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-20 10:44:05'),
(48, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-20 11:13:20'),
(49, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-21 11:27:47'),
(50, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-23 01:38:33'),
(51, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-23 07:15:31'),
(52, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-23 10:39:09'),
(53, 1, 'ha iniciado sesiÃ³n en el sistema en ', '2019-01-23 20:39:13'),
(54, 1, 'se ha desconectado el sistema en ', '2019-01-24 01:32:13'),
(55, 1, 'se ha desconectado el sistema en ', '2019-01-24 01:46:48'),
(56, 1, 'se ha desconectado el sistema en ', '2019-01-24 01:48:41'),
(57, 1, 'se ha desconectado el sistema en ', '2019-01-24 01:48:52'),
(58, 1, 'se ha desconectado el sistema en ', '2019-01-24 01:49:01'),
(59, 1, 'se ha desconectado el sistema en ', '2019-01-24 01:52:37'),
(60, 1, 'se ha desconectado el sistema en ', '2019-01-24 01:55:52'),
(61, 1, 'se ha desconectado el sistema en ', '2019-01-24 02:50:25'),
(62, 1, 'se ha desconectado el sistema en ', '2019-01-25 18:59:42'),
(63, 1, 'se ha desconectado el sistema en ', '2019-01-26 12:13:01'),
(64, 1, 'se ha desconectado el sistema en ', '2019-01-26 12:39:03'),
(65, 1, 'se ha desconectado el sistema en ', '2019-01-26 21:34:43'),
(66, 1, 'se ha desconectado el sistema en ', '2019-01-26 21:35:05'),
(67, 1, 'se ha desconectado el sistema en ', '2019-01-26 21:36:18'),
(68, 1, 'se ha desconectado el sistema en ', '2019-01-26 21:37:19'),
(69, 1, 'se ha desconectado el sistema en ', '2019-01-26 21:40:18'),
(70, 1, 'se ha desconectado el sistema en ', '2019-01-26 21:42:37'),
(71, 2, 'se ha desconectado el sistema en ', '2019-01-26 21:53:27'),
(72, 3, 'se ha desconectado el sistema en ', '2019-01-26 23:53:55'),
(73, 2, 'se ha desconectado el sistema en ', '2019-01-27 00:02:46'),
(74, 3, 'se ha desconectado el sistema en ', '2019-01-27 00:26:04'),
(75, 3, 'se ha desconectado el sistema en ', '2019-01-27 00:27:37'),
(76, 4, 'se ha desconectado el sistema en ', '2019-01-27 00:28:53'),
(77, 0, 'se ha desconectado el sistema en ', '2019-02-01 10:49:35'),
(78, 1, 'se ha desconectado el sistema en ', '2019-02-02 01:10:46'),
(79, 1, 'se ha desconectado el sistema en ', '2019-02-08 13:27:52'),
(80, 1, 'se ha desconectado el sistema en ', '2019-02-08 13:29:04'),
(81, 1, 'se ha desconectado el sistema en ', '2019-02-11 12:13:25'),
(82, 1, 'se ha desconectado el sistema en ', '2019-02-17 23:59:49'),
(83, 1, 'se ha desconectado el sistema en ', '2019-02-19 22:06:23'),
(84, 1, 'se ha desconectado el sistema en ', '2019-02-25 00:30:32'),
(85, 1, 'se ha desconectado el sistema en ', '2019-02-27 11:45:10'),
(86, 1, 'se ha desconectado el sistema en ', '2019-02-28 05:20:10'),
(87, 1, 'se ha desconectado el sistema en ', '2019-03-04 01:08:23'),
(88, 1, 'se ha desconectado el sistema en ', '2019-03-04 07:27:54'),
(89, 3, 'se ha desconectado el sistema en ', '2019-03-04 07:28:35'),
(90, 1, 'se ha desconectado el sistema en ', '2019-03-04 07:37:53'),
(91, 3, 'se ha desconectado el sistema en ', '2019-03-04 10:41:27'),
(92, 1, 'se ha desconectado el sistema en ', '2019-03-05 10:17:44'),
(93, 3, 'se ha desconectado el sistema en ', '2019-03-05 10:17:54'),
(94, 1, 'se ha desconectado el sistema en ', '2019-03-05 12:54:15'),
(95, 3, 'se ha desconectado el sistema en ', '2019-03-05 12:56:25'),
(96, 3, 'se ha desconectado el sistema en ', '2019-03-05 13:15:01'),
(97, 1, 'se ha desconectado el sistema en ', '2019-03-05 21:34:11'),
(98, 1, 'se ha desconectado el sistema en ', '2019-03-05 22:56:40'),
(99, 1, 'se ha desconectado el sistema en ', '2019-03-06 09:09:23'),
(100, 1, 'se ha desconectado el sistema en ', '2019-03-06 09:19:54'),
(101, 3, 'se ha desconectado el sistema en ', '2019-03-06 09:32:54'),
(102, 1, 'se ha desconectado el sistema en ', '2019-03-07 08:06:32'),
(103, 1, 'se ha desconectado el sistema en ', '2019-03-08 13:47:16'),
(104, 3, 'se ha desconectado el sistema en ', '2019-03-08 14:13:56'),
(105, 1, 'se ha desconectado el sistema en ', '2019-03-08 14:32:58'),
(106, 1, 'se ha desconectado el sistema en ', '2019-03-08 23:57:14'),
(107, 1, 'se ha desconectado el sistema en ', '2019-03-09 03:23:22'),
(108, 6, 'se ha desconectado el sistema en ', '2019-03-09 04:49:54'),
(109, 1, 'se ha desconectado el sistema en ', '2019-03-09 04:53:28'),
(110, 6, 'se ha desconectado el sistema en ', '2019-03-09 05:07:58'),
(111, 1, 'se ha desconectado el sistema en ', '2019-03-09 05:10:25'),
(112, 6, 'se ha desconectado el sistema en ', '2019-03-09 05:12:26'),
(113, 1, 'se ha desconectado el sistema en ', '2019-03-09 07:41:10'),
(114, 1, 'se ha desconectado el sistema en ', '2019-03-09 12:58:12'),
(115, 1, 'se ha desconectado el sistema en ', '2019-03-09 23:58:32'),
(116, 1, 'se ha desconectado el sistema en ', '2019-03-09 23:59:19'),
(117, 1, 'se ha desconectado el sistema en ', '2019-03-09 23:59:27'),
(118, 1, 'se ha desconectado el sistema en ', '2019-03-10 00:00:22'),
(119, 1, 'se ha desconectado el sistema en ', '2019-03-10 00:00:34'),
(120, 1, 'se ha desconectado el sistema en ', '2019-03-10 01:33:16'),
(121, 5, 'se ha desconectado el sistema en ', '2019-03-10 01:46:17'),
(122, 5, 'se ha desconectado el sistema en ', '2019-03-10 05:54:18'),
(123, 5, 'se ha desconectado el sistema en ', '2019-03-11 12:37:07'),
(124, 5, 'se ha desconectado el sistema en ', '2019-03-11 13:12:30'),
(125, 1, 'se ha desconectado el sistema en ', '2019-03-12 04:02:11'),
(126, 1, 'se ha desconectado el sistema en ', '2019-03-12 08:26:01'),
(127, 3, 'se ha desconectado el sistema en ', '2019-03-12 08:38:10'),
(128, 1, 'se ha desconectado el sistema en ', '2019-03-12 09:10:43'),
(129, 5, 'se ha desconectado el sistema en ', '2019-03-12 12:33:46'),
(130, 0, 'se ha desconectado el sistema en ', '2019-03-12 12:51:49'),
(131, 5, 'se ha desconectado el sistema en ', '2019-03-31 19:59:15'),
(132, 5, 'se ha desconectado el sistema en ', '2019-04-02 11:38:59'),
(133, 5, 'se ha desconectado el sistema en ', '2019-04-04 11:41:47'),
(134, 5, 'se ha desconectado el sistema en ', '2019-04-04 16:01:10'),
(135, 0, 'se ha desconectado el sistema en ', '2019-04-05 18:15:40'),
(136, 5, 'se ha desconectado el sistema en ', '2019-04-06 10:36:44'),
(137, 5, 'se ha desconectado el sistema en ', '2019-04-13 12:32:33'),
(138, 5, 'se ha desconectado el sistema en ', '2019-04-15 11:45:20'),
(139, 5, 'se ha desconectado el sistema en ', '2019-04-15 21:55:45'),
(140, 5, 'se ha desconectado el sistema en ', '2019-04-15 22:13:42'),
(141, 5, 'se ha desconectado el sistema en ', '2019-04-16 11:58:00'),
(142, 5, 'se ha desconectado el sistema en ', '2019-04-16 18:48:57'),
(143, 5, 'se ha desconectado el sistema en ', '2019-04-16 22:39:40'),
(144, 5, 'se ha desconectado el sistema en ', '2019-04-16 23:41:18'),
(145, 5, 'se ha desconectado el sistema en ', '2019-04-17 21:20:15'),
(146, 5, 'se ha desconectado el sistema en ', '2019-04-17 21:28:21'),
(147, 5, 'se ha desconectado el sistema en ', '2019-04-18 09:40:21'),
(148, 5, 'se ha desconectado el sistema en ', '2019-04-18 20:00:53'),
(149, 0, 'se ha desconectado el sistema en ', '2019-04-18 20:00:59'),
(150, 5, 'se ha desconectado el sistema en ', '2019-04-18 23:16:01'),
(151, 5, 'se ha desconectado el sistema en ', '2019-04-18 23:16:38'),
(152, 5, 'se ha desconectado el sistema en ', '2019-04-19 07:47:43'),
(153, 5, 'se ha desconectado el sistema en ', '2019-04-21 09:08:54'),
(154, 5, 'se ha desconectado el sistema en ', '2019-04-21 19:56:32'),
(155, 7, 'se ha desconectado el sistema en ', '2019-04-21 22:30:24'),
(156, 5, 'se ha desconectado el sistema en ', '2019-04-22 23:02:23'),
(157, 5, 'se ha desconectado el sistema en ', '2019-04-22 23:37:21'),
(158, 5, 'se ha desconectado el sistema en ', '2019-04-23 11:40:35'),
(159, 5, 'se ha desconectado el sistema en ', '2019-05-01 12:04:50'),
(160, 5, 'se ha desconectado el sistema en ', '2019-05-02 10:12:30'),
(161, 5, 'se ha desconectado el sistema en ', '2019-05-02 12:30:32'),
(162, 5, 'se ha desconectado el sistema en ', '2019-05-04 12:10:46'),
(163, 5, 'se ha desconectado el sistema en ', '2019-05-04 22:20:56'),
(164, 5, 'se ha desconectado el sistema en ', '2019-05-07 22:22:45'),
(165, 5, 'se ha desconectado el sistema en ', '2019-05-07 22:24:13'),
(166, 8, 'se ha desconectado el sistema en ', '2019-05-08 12:37:35'),
(167, 8, 'se ha desconectado el sistema en ', '2019-05-08 12:37:46'),
(168, 5, 'se ha desconectado el sistema en ', '2019-06-06 19:55:16'),
(169, 5, 'se ha desconectado el sistema en ', '2019-06-06 20:04:23'),
(170, 5, 'se ha desconectado el sistema en ', '2019-06-06 21:29:35'),
(171, 5, 'se ha desconectado el sistema en ', '2019-06-08 01:49:35'),
(172, 5, 'se ha desconectado el sistema en ', '2019-06-15 01:41:48'),
(173, 5, 'se ha desconectado el sistema en ', '2019-06-15 20:17:22'),
(174, 5, 'se ha desconectado el sistema en ', '2019-06-17 12:26:46'),
(175, 5, 'se ha desconectado el sistema en ', '2019-06-17 12:40:53'),
(176, 5, 'se ha desconectado el sistema en ', '2019-06-17 12:45:34'),
(177, 5, 'se ha desconectado el sistema en ', '2019-06-17 13:10:45'),
(178, 5, 'se ha desconectado el sistema en ', '2019-06-18 00:09:22'),
(179, 5, 'se ha desconectado el sistema en ', '2019-06-18 12:58:27'),
(180, 5, 'se ha desconectado el sistema en ', '2019-06-19 01:00:17'),
(181, 5, 'se ha desconectado el sistema en ', '2019-06-19 01:36:36'),
(182, 5, 'se ha desconectado el sistema en ', '2019-06-20 00:29:38'),
(183, 5, 'se ha desconectado el sistema en ', '2019-06-21 16:38:12'),
(184, 5, 'se ha desconectado el sistema en ', '2019-06-21 21:00:10'),
(185, 9, 'se ha desconectado el sistema en ', '2019-06-21 21:10:28'),
(186, 5, 'se ha desconectado el sistema en ', '2019-06-22 01:24:14'),
(187, 5, 'se ha desconectado el sistema en ', '2019-06-22 01:30:22'),
(188, 5, 'se ha desconectado el sistema en ', '2019-06-28 22:44:04'),
(189, 5, 'se ha desconectado el sistema en ', '2019-07-02 12:41:06'),
(190, 0, 'se ha desconectado el sistema en ', '2019-07-03 12:05:34'),
(191, 5, 'se ha desconectado el sistema en ', '2019-07-03 15:27:59'),
(192, 5, 'se ha desconectado el sistema en ', '2019-07-03 23:35:23'),
(193, 5, 'se ha desconectado el sistema en ', '2019-07-04 23:14:59'),
(194, 5, 'se ha desconectado el sistema en ', '2019-07-04 23:44:59'),
(195, 5, 'se ha desconectado el sistema en ', '2019-07-09 15:49:09'),
(196, 5, 'se ha desconectado el sistema en ', '2019-07-09 16:04:46'),
(197, 5, 'se ha desconectado el sistema en ', '2019-07-09 16:14:12'),
(198, 5, 'se ha desconectado el sistema en ', '2019-07-10 22:56:59'),
(199, 5, 'se ha desconectado el sistema en ', '2019-07-15 00:22:34'),
(200, 5, 'se ha desconectado el sistema en ', '2019-07-15 13:00:29'),
(201, 5, 'se ha desconectado el sistema en ', '2019-07-15 20:42:58'),
(202, 5, 'se ha desconectado el sistema en ', '2019-07-16 12:43:53'),
(203, 5, 'se ha desconectado el sistema en ', '2019-07-16 15:50:45'),
(204, 5, 'se ha desconectado el sistema en ', '2019-07-16 22:51:21'),
(205, 5, 'se ha desconectado el sistema en ', '2019-07-18 21:25:32'),
(206, 5, 'se ha desconectado el sistema en ', '2019-07-21 11:18:10'),
(207, 5, 'se ha desconectado el sistema en ', '2019-07-21 22:52:24'),
(208, 9, 'se ha desconectado el sistema en ', '2019-07-21 22:52:46'),
(209, 5, 'se ha desconectado el sistema en ', '2019-07-21 23:03:12'),
(210, 5, 'se ha desconectado el sistema en ', '2019-07-25 16:46:23'),
(211, 5, 'se ha desconectado el sistema en ', '2019-07-26 20:01:45'),
(212, 5, 'se ha desconectado el sistema en ', '2019-07-27 01:07:23'),
(213, 5, 'se ha desconectado el sistema en ', '2019-07-27 11:21:48'),
(214, 5, 'se ha desconectado el sistema en ', '2019-07-29 00:43:00'),
(215, 5, 'se ha desconectado el sistema en ', '2019-07-29 12:53:32'),
(216, 5, 'se ha desconectado el sistema en ', '2019-07-29 13:09:16'),
(217, 5, 'se ha desconectado el sistema en ', '2019-07-30 12:53:43'),
(218, 5, 'se ha desconectado el sistema en ', '2019-07-31 13:05:23'),
(219, 5, 'se ha desconectado el sistema en ', '2019-07-31 18:46:29'),
(220, 6, 'se ha desconectado el sistema en ', '2019-07-31 19:10:21'),
(221, 0, 'se ha desconectado el sistema en ', '2019-07-31 22:19:09'),
(222, 5, 'se ha desconectado el sistema en ', '2019-08-04 14:47:19'),
(223, 0, 'se ha desconectado el sistema en ', '2019-08-05 21:37:13'),
(224, 5, 'se ha desconectado el sistema en ', '2019-08-06 11:34:12'),
(225, 5, 'se ha desconectado el sistema en ', '2019-08-06 18:02:23'),
(226, 5, 'se ha desconectado el sistema en ', '2019-08-06 18:44:28'),
(227, 5, 'se ha desconectado el sistema en ', '2019-08-07 15:41:21'),
(228, 5, 'se ha desconectado el sistema en ', '2019-08-07 15:54:13'),
(229, 5, 'se ha desconectado el sistema en ', '2019-08-07 16:00:37'),
(230, 5, 'se ha desconectado el sistema en ', '2019-08-07 16:00:56'),
(231, 5, 'se ha desconectado el sistema en ', '2019-08-17 08:25:50'),
(232, 5, 'se ha desconectado el sistema en ', '2019-08-17 22:20:47'),
(233, 5, 'se ha desconectado el sistema en ', '2019-08-18 10:45:47'),
(234, 5, 'se ha desconectado el sistema en ', '2019-08-19 11:53:35'),
(235, 5, 'se ha desconectado el sistema en ', '2019-08-26 11:23:37'),
(236, 5, 'se ha desconectado el sistema en ', '2019-08-26 12:07:40'),
(237, 5, 'se ha desconectado el sistema en ', '2019-08-26 17:18:28'),
(238, 5, 'se ha desconectado el sistema en ', '2019-08-26 17:20:46'),
(239, 5, 'se ha desconectado el sistema en ', '2019-08-27 03:19:39'),
(240, 5, 'se ha desconectado el sistema en ', '2019-08-28 00:03:52'),
(241, 5, 'se ha desconectado el sistema en ', '2019-08-31 20:42:52'),
(242, 5, 'se ha desconectado el sistema en ', '2019-08-31 20:43:32'),
(243, 5, 'se ha desconectado el sistema en ', '2019-09-02 23:45:54'),
(244, 5, 'se ha desconectado el sistema en ', '2019-09-03 12:18:08'),
(245, 5, 'se ha desconectado el sistema en ', '2019-09-03 17:56:36'),
(246, 9, 'se ha desconectado el sistema en ', '2019-09-03 17:58:54'),
(247, 5, 'se ha desconectado el sistema en ', '2019-09-03 18:04:48'),
(248, 0, 'se ha desconectado el sistema en ', '2019-09-03 18:08:32'),
(249, 5, 'se ha desconectado el sistema en ', '2019-09-03 18:08:45'),
(250, 5, 'se ha desconectado el sistema en ', '2019-09-03 18:34:26'),
(251, 5, 'se ha desconectado el sistema en ', '2019-09-03 19:37:46'),
(252, 5, 'se ha desconectado el sistema en ', '2019-09-04 09:36:00'),
(253, 5, 'se ha desconectado el sistema en ', '2019-09-04 12:13:15'),
(254, 5, 'se ha desconectado el sistema en ', '2019-09-04 12:59:07'),
(255, 5, 'se ha desconectado el sistema en ', '2019-09-05 10:19:27'),
(256, 5, 'se ha desconectado el sistema en ', '2019-09-05 11:07:48'),
(257, 5, 'se ha desconectado el sistema en ', '2019-09-05 12:50:47'),
(258, 5, 'se ha desconectado el sistema en ', '2019-09-05 15:49:34'),
(259, 5, 'se ha desconectado el sistema en ', '2020-10-24 19:39:44'),
(260, 5, 'se ha desconectado el sistema en ', '2020-10-26 22:20:44'),
(261, 5, 'se ha desconectado el sistema en ', '2020-10-28 16:54:00'),
(262, 5, 'se ha desconectado el sistema en ', '2020-10-28 16:54:29'),
(263, 9, 'se ha desconectado el sistema en ', '2020-10-28 16:57:47'),
(264, 5, 'se ha desconectado el sistema en ', '2020-10-29 09:54:05'),
(265, 5, 'se ha desconectado el sistema en ', '2022-03-14 15:37:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `id_ingresos` int(200) NOT NULL,
  `fecha` date NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `cuenta` int(25) NOT NULL,
  `valor` varchar(100) NOT NULL,
  `plazo` int(8) NOT NULL,
  `interes` decimal(10,2) NOT NULL,
  `fecha_v` varchar(100) NOT NULL,
  `beneficiario` varchar(200) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `cuenta_interes` decimal(10,2) NOT NULL,
  `usuario` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`id_ingresos`, `fecha`, `cantidad`, `cuenta`, `valor`, `plazo`, `interes`, `fecha_v`, `beneficiario`, `id_cliente`, `cuenta_interes`, `usuario`) VALUES
(17, '2023-01-16', '1000.00', 3123, 'mil quetzales', 2, '25.00', '2024-01-16', 'dadas', 26, '2500.00', 'Miguel Miranda'),
(18, '2023-01-01', '250000.00', 3456789, 'Veinticinco mil Quetzales exactos', 24, '25.00', '2023-01-31', 'Petronila', 29, '7500000.00', 'Miguel Miranda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `municipio_id` int(200) NOT NULL,
  `nombre_mu` varchar(200) NOT NULL,
  `fechareg` date NOT NULL,
  `estado` enum('ACTIVO','INACTIVO') NOT NULL,
  `fecha_act` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`municipio_id`, `nombre_mu`, `fechareg`, `estado`, `fecha_act`) VALUES
(1, 'Zacualpa', '0000-00-00', 'ACTIVO', '0000-00-00'),
(4, 'Joyabaj', '0000-00-00', 'ACTIVO', '0000-00-00'),
(5, 'Cunen', '0000-00-00', 'ACTIVO', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago_libre`
--

CREATE TABLE `pago_libre` (
  `id_pago_libre` int(200) NOT NULL,
  `monto` double NOT NULL,
  `fecha_pagada` date NOT NULL,
  `mora` float NOT NULL,
  `codigo_prestamo` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `pago_libre`
--

INSERT INTO `pago_libre` (`id_pago_libre`, `monto`, `fecha_pagada`, `mora`, `codigo_prestamo`) VALUES
(1, 300, '2020-10-28', 5, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `id_prestamo` int(200) NOT NULL,
  `id_cliente` int(200) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `cantidad_interes` decimal(10,2) NOT NULL,
  `fecha` date NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `relacion_garante` varchar(200) NOT NULL,
  `nombre_garante` varchar(200) NOT NULL,
  `telefono_garante` varchar(200) NOT NULL,
  `direccion_garante` varchar(200) NOT NULL,
  `estado` varchar(200) NOT NULL,
  `saldo_actual` varchar(200) NOT NULL,
  `monto_prestado` varchar(200) NOT NULL,
  `monto_pagar` varchar(200) NOT NULL,
  `meses` int(200) NOT NULL,
  `interes` varchar(200) NOT NULL,
  `observaciones_pago` varchar(200) NOT NULL,
  `codigo_prestamo` varchar(200) NOT NULL,
  `cuota` varchar(200) NOT NULL,
  `fecha_prestamo` varchar(200) NOT NULL,
  `tipo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`id_prestamo`, `id_cliente`, `descripcion`, `cantidad_interes`, `fecha`, `usuario`, `relacion_garante`, `nombre_garante`, `telefono_garante`, `direccion_garante`, `estado`, `saldo_actual`, `monto_prestado`, `monto_pagar`, `meses`, `interes`, `observaciones_pago`, `codigo_prestamo`, `cuota`, `fecha_prestamo`, `tipo`) VALUES
(12, 4, '', '0.00', '2023-01-11', 'Miguel Miranda', '', '', '', '', 'aprobado', '0.02', '10000', '10456.93008573', 12, '8.33', '', '15', '865.40', '2023-01-11', 'por_mes'),
(13, 4, '', '0.00', '2023-01-11', 'Miguel Miranda', '', '', '', '', 'aprobado', '-9999.98', '10000', '10456.93008573', 12, '8.33', '', '135', '865.40', '2023-01-11', 'por_mes'),
(14, 4, '', '0.00', '2023-01-11', 'Miguel Miranda', '', '', '', '', 'aprobado', '72.13008573000275', '10000', '10456.93008573', 12, '8.33', '', '145', '865.40', '2023-01-11', 'por_mes'),
(15, 2, '', '0.00', '2023-01-11', 'Miguel Miranda', '', '', '', '', 'aprobado', '-384.79999999999814', '10000', '10456.93008573', 12, '8.33', '', '155', '865.40', '2023-01-11', 'por_mes'),
(16, 2, '', '0.00', '2023-01-12', 'Miguel Miranda', '', '', '', '', 'aprobado', '10000', '10000', '10456.93008573', 12, '8.33', '', '165', '865.40', '2023-01-11', 'por_mes'),
(17, 4, '', '0.00', '2023-01-12', 'Miguel Miranda', '', '', '', '', 'aprobado', '0.00000000024306245904881507', '10000', '10456.93008573', 12, '8.33', '', '175', '865.40', '2023-01-11', 'por_mes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporal`
--

CREATE TABLE `temporal` (
  `id_temporal` int(200) NOT NULL,
  `id_cliente` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `temporal`
--

INSERT INTO `temporal` (`id_temporal`, `id_cliente`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `tipo` varchar(200) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `id_zonas` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `password`, `imagen`, `tipo`, `nombre`, `apellido`, `telefono`, `correo`, `id_zonas`) VALUES
(5, 'admin', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'miguel.jpg', 'administrador', 'Miguel', 'Miranda', '54345', 'tusolutionweb@gmail.com', 1),
(10, 'sergio', 'a1Bz20ydqelm8m1wql3bffa4ebdf4874e506c2b12405796aa5', '', 'administrador', 'sergio', 'bumburi', '2432432', 'sergio@gmail.com', 2),
(11, 'magno', 'a1Bz20ydqelm8m1wqlda64c7daf16c4687b0b8686147448223', '', 'administrador', 'alejandro', 'magno', '42344', 'ricardocorazondeleon2018@gmail.com', 1),
(12, 'Cecilia', 'a1Bz20ydqelm8m1wql3b948865c68fbebbdfce382e5eb95169', 'pexels-visually-us-1643403.jpg', 'empleado', 'Cecilia', 'Cecilia', '3424', 'Cecilia@gmail.com', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE `zonas` (
  `id_zonas` int(200) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `zonas`
--

INSERT INTO `zonas` (`id_zonas`, `descripcion`) VALUES
(1, 'cali'),
(2, 'bogota'),
(3, 'cucuta'),
(4, 'lima');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caserio`
--
ALTER TABLE `caserio`
  ADD PRIMARY KEY (`caserio_id`),
  ADD KEY `municipio_id` (`municipio_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `municipio_id` (`municipio_id`,`caserio_id`);

--
-- Indices de la tabla `cuotas`
--
ALTER TABLE `cuotas`
  ADD PRIMARY KEY (`id_cuota`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`id_gastos`);

--
-- Indices de la tabla `history_log`
--
ALTER TABLE `history_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`id_ingresos`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`municipio_id`);

--
-- Indices de la tabla `pago_libre`
--
ALTER TABLE `pago_libre`
  ADD PRIMARY KEY (`id_pago_libre`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id_prestamo`);

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
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`id_zonas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caserio`
--
ALTER TABLE `caserio`
  MODIFY `caserio_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `cuotas`
--
ALTER TABLE `cuotas`
  MODIFY `id_cuota` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_empresa` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `id_gastos` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `id_ingresos` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `municipio_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `pago_libre`
--
ALTER TABLE `pago_libre`
  MODIFY `id_pago_libre` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id_prestamo` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `temporal`
--
ALTER TABLE `temporal`
  MODIFY `id_temporal` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `zonas`
--
ALTER TABLE `zonas`
  MODIFY `id_zonas` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

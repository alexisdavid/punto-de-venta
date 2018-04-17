-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 15-04-2018 a las 06:38:16
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Silenciadores Universales', '2018-03-12 14:39:14'),
(2, 'Silenciadores Chevrolet', '2018-03-12 14:39:58'),
(3, 'Silenciadores Nissan', '2018-03-12 14:43:08'),
(4, 'Silenciadores Volkswagen', '2018-03-12 14:44:50'),
(5, 'Silenciadores Dodge', '2018-03-12 14:45:48'),
(6, 'Silenciadores Peugeot', '2018-03-12 14:46:16'),
(7, 'Balas y Resonadores Catalíticos', '2018-03-12 14:49:04'),
(8, 'Catalizadores', '2018-03-12 14:49:32'),
(9, 'Flexibles', '2018-03-12 14:49:47'),
(10, 'Deportivos', '2018-03-15 00:39:54'),
(13, 'SILENCIADORES FORD', '2018-04-02 00:06:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish2_ci NOT NULL,
  `rfc` text COLLATE utf8_spanish2_ci NOT NULL,
  `email` text COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish2_ci NOT NULL,
  `codigopostal` text COLLATE utf8_spanish2_ci NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `rfc`, `email`, `telefono`, `direccion`, `codigopostal`, `compras`, `ultima_compra`, `fecha`) VALUES
(7, 'alexis', 'duga911215clrr', 'alexisduarte1512@gmail.com', '(998) 166-2004', 'jsjsjsj', '99192', 4, '2018-04-08 18:28:27', '2018-04-08 23:28:27'),
(8, 'jesus duarte', 'DUGJ971213MD', 'sjdjdf@jjfjf.com', '(111) 111-1111', 'sdf333', '77560', 2, '2018-04-08 21:49:32', '2018-04-09 02:49:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id` int(11) NOT NULL,
  `id_proveedor` text COLLATE utf8_spanish2_ci NOT NULL,
  `folio` text COLLATE utf8_spanish2_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `abono` int(11) NOT NULL,
  `saldo` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id`, `id_proveedor`, `folio`, `cantidad`, `abono`, `saldo`, `fecha`) VALUES
(1, 'DAVALOS', '11122', 3000, 1000, 0, '2018-04-09 02:43:40'),
(2, 'emsa', 's2344', 1000, 500, 0, '2018-04-09 02:44:10'),
(3, 'infra', 'd245544', 2000, 1000, 0, '2018-04-14 15:51:29'),
(4, 'DAVALOS', '2344556', 4594, 594, 0, '2018-04-15 03:00:03'),
(5, 'DAVALOS', '35557754', 5000, 1000, 0, '2018-04-15 03:02:49'),
(6, 'DAVALOS', '35557754', 5000, 1000, 0, '2018-04-15 03:02:55'),
(7, 'emsa', '233445', 2000, 300, 0, '2018-04-15 03:03:21'),
(13, 'DAVALOS', '232334', 8500, 6000, 2500, '2018-04-15 04:33:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish2_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `codigo_proveedor` text COLLATE utf8_spanish2_ci NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `codigo_proveedor`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '101', 'SIL UNIVERSAL  REDONDO 4 CILINDROS', 'vistas/img/productos/default/anonymous.png', 8, 's-614', 253, 600, 4, '2018-04-09 02:49:32'),
(2, 1, '102', 'SIL UNIVERSAL  REDONDO 6  CILINDROS', 'vistas/img/productos/default/anonymous.png', 0, 'S-618', 253, 700, 0, '2018-04-07 16:31:43'),
(3, 1, '103', 'SIL UNIVERSAL  REDONDO 6 CILINDROS', 'vistas/img/productos/default/anonymous.png', 5, 'S-621', 283, 396, 0, '2018-04-07 16:35:21'),
(4, 1, '104', 'SIL UNIVERSAL  REDONDO 8 CILINDROS', 'vistas/img/productos/default/anonymous.png', 18, 'S-624', 302, 422, 0, '2018-04-06 04:59:34'),
(5, 1, '105', 'SIL UNIVERSAL  REDONDO 8 CILINDROS', 'vistas/img/productos/default/anonymous.png', 7, 'S-626', 321, 449, 0, '2018-04-06 04:59:29'),
(6, 1, '106', 'SIL UNIVERSAL  REDONDO 8 CILINDROS', 'vistas/img/productos/default/anonymous.png', 5, 'S-628', 382, 534, 0, '2018-04-06 04:59:26'),
(7, 1, '107', 'SIL UNIVERSAL  REDONDO LINEA 600', 'vistas/img/productos/default/anonymous.png', 5, 'S-631', 383, 536, 1, '2018-04-07 01:44:34'),
(8, 1, '108', 'SIL UNIVERSAL  ECONOMICO', 'vistas/img/productos/default/anonymous.png', 8, 'S-3614-LL', 208, 291, 0, '2018-04-06 04:59:18'),
(9, 1, '109', 'SIL UNIVERSAL HUECO 18', 'vistas/img/productos/default/anonymous.png', 6, 'S-3618-H', 236, 330, 0, '2018-04-06 04:59:13'),
(10, 1, '110', 'SIL UNIVERSAL ECONOMICO', 'vistas/img/productos/default/anonymous.png', 4, 'S-3618-LL', 228, 319, 0, '2018-04-06 04:59:05'),
(11, 1, '111', 'SIL OVALADO UNIVERSAL  4 CILINDROS', 'vistas/img/productos/default/anonymous.png', 0, 'S-713-LC', 237.03, 237.03, 0, '2018-03-14 01:29:48'),
(12, 1, '112', 'SIL OVALADO UNIVERSAL  4 CILINDROS', 'vistas/img/productos/default/anonymous.png', 0, 'S-713-LL', 237.03, 237.03, 0, '2018-03-14 01:29:48'),
(13, 1, '113', 'SIL OVALADO UNIVERSAL  6 CILINDROS', 'vistas/img/productos/default/anonymous.png', 0, 'S-718-LC', 258.2, 258.2, 0, '2018-03-14 01:29:48'),
(14, 1, '114', 'SIL OVALADO UNIVERSAL  6 CILINDROS', 'vistas/img/productos/default/anonymous.png', 0, 'S-718-LL', 258.2, 258.2, 0, '2018-03-14 01:29:48'),
(15, 1, '115', 'SIL OVALADO UNIVERSAL  8 CILINDROS', 'vistas/img/productos/default/anonymous.png', 0, 'S-918-LC', 279, 279, 0, '2018-03-14 01:29:48'),
(16, 1, '116', 'SIL OVALADO UNIVERSAL  8 CILINDROS', 'vistas/img/productos/default/anonymous.png', 0, 'S-918-LL', 279, 279, 0, '2018-03-14 01:29:48'),
(17, 1, '117', 'SIL OVALADO UNIVERSAL  8 CILINDROS', 'vistas/img/productos/default/anonymous.png', 0, 'S-921-LC', 310.07, 310.07, 0, '2018-03-14 01:29:48'),
(18, 1, '118', 'SIL OVALADO UNIVERSAL  8 CILINDROS', 'vistas/img/productos/default/anonymous.png', 0, 'S-921-LL', 310.07, 310.07, 0, '2018-03-14 01:29:48'),
(19, 2, '201', 'SILENCIADOR  CHEVROLET', 'vistas/img/productos/default/anonymous.png', 0, 'SA-726-2.5', 408.67, 408.67, 0, '2018-03-14 01:29:48'),
(20, 2, '202', 'SILENCIADOR CAMIONETA  CHEVROLET  2 ENTRA', 'vistas/img/productos/default/anonymous.png', 0, 'SA-924 1X2', 531.56, 531.56, 0, '2018-03-14 01:29:48'),
(21, 2, '203', 'SILENCIADOR CAMIONETA  SUBURBAN  LC', 'vistas/img/productos/default/anonymous.png', 0, 'SA-924-LC', 505.25, 505.25, 0, '2018-03-14 01:29:48'),
(22, 2, '204', 'SILENCIADOR ASTRA', 'vistas/img/productos/default/anonymous.png', 0, 'SA-ASTRA', 501.38, 501.38, 0, '2018-03-14 01:29:48'),
(23, 2, '205', 'SILENCIADOR CHEVROLET  AVEO', 'vistas/img/productos/default/anonymous.png', 0, 'SA-AVEO', 613.09, 613.09, 0, '2018-03-14 01:29:48'),
(24, 2, '206', 'SILENCIADOR CHEVROLET  AVEO SIN ENSAMBLE', 'vistas/img/productos/default/anonymous.png', 0, 'SA-AVEO-SE', 544.34, 544.34, 0, '2018-03-14 01:29:48'),
(25, 2, '207', 'SILENCIADOR CAMARO', 'vistas/img/productos/default/anonymous.png', 0, 'SA-CAMARO', 387.74, 387.74, 0, '2018-03-14 01:29:48'),
(26, 2, '208', 'SILENCIADOR TIPO ORIGINAL CAPTIVA (2 SALIDA', 'vistas/img/productos/default/anonymous.png', 0, 'SA-CAPTIVA', 813.07, 813.07, 0, '2018-03-14 01:29:48'),
(27, 2, '209', 'SILENCIADOR CAPTIVA 4 CIL (1 SALIDA)', 'vistas/img/productos/default/anonymous.png', 0, 'SA-CAPTIVA-1S', 813.07, 813.07, 0, '2018-03-14 01:29:48'),
(28, 2, '210', 'SILENCIADOR CAVALIER ORIGINAL', 'vistas/img/productos/default/anonymous.png', 0, 'SA-CAV96-98-ORG', 464.53, 464.53, 0, '2018-03-14 01:29:48'),
(29, 2, '211', 'SILENCIADOR CAVALIER 96-98', 'vistas/img/productos/default/anonymous.png', 0, 'SA-CAVAL 96-98', 374.59, 374.59, 0, '2018-03-14 01:29:48'),
(30, 2, '212', 'SILENCIADOR CAVALIER 2 SALIDAS, Z24', 'vistas/img/productos/default/anonymous.png', 0, 'SA-CAVAL Z24', 402.52, 402.52, 0, '2018-03-14 01:29:48'),
(31, 2, '213', 'SILENCIADOR CAVALIER', 'vistas/img/productos/default/anonymous.png', 0, 'SA-CAVALIER', 382.86, 382.86, 0, '2018-03-14 01:29:48'),
(32, 2, '214', 'SILENCIADOR CELEBRITY  2 SALIDAS', 'vistas/img/productos/default/anonymous.png', 0, 'SA-CELEBRITY', 438.22, 438.22, 0, '2018-03-14 01:29:48'),
(33, 2, '215', 'SILENCIADOR CHEVROLET  6 TNS', 'vistas/img/productos/default/anonymous.png', 0, 'SA-CHEV 6T', 862.43, 862.43, 0, '2018-03-14 01:29:48'),
(34, 2, '216', 'SILENCIADOR CHEVROLET  DOBLE RODADO', 'vistas/img/productos/default/anonymous.png', 0, 'SA-CHEV-2  R', 461.29, 461.29, 0, '2018-03-14 01:29:48'),
(35, 2, '217', 'SILENCIADR  CHEVROLET  DOBLE RODADO BOQUI', 'vistas/img/productos/default/anonymous.png', 0, 'SA-CHEV-2R-3', 0, 0, 0, '2018-03-14 01:29:48'),
(36, 2, '218', 'SILENCIADOR CHEVROLETO DOBLE RODADO', 'vistas/img/productos/default/anonymous.png', 0, 'SA-CHEV-2R-ORIG', 641.93, 641.93, 0, '2018-03-14 01:29:48'),
(37, 2, '219', 'SILENCIADOR CHEVY PICK-UP', 'vistas/img/productos/default/anonymous.png', 0, 'SA-CHEVY-CTA', 498.12, 498.12, 0, '2018-03-14 01:29:48'),
(38, 2, '220', 'SILENCIADOR CHEVY JOY REDONDO MODELO 20', 'vistas/img/productos/default/anonymous.png', 0, 'SA-CHEVY-JOY-03', 334.87, 334.87, 0, '2018-03-14 01:29:48'),
(39, 2, '230', 'SILENCIADOR CAMIONETA  CHEYENNE', 'vistas/img/productos/default/anonymous.png', 0, 'SA-CHEYENE', 376.59, 376.59, 0, '2018-03-14 01:29:48'),
(40, 2, '231', 'SILENCIADOR CORSA TRIANGULAR', 'vistas/img/productos/default/anonymous.png', 0, 'SA-CORSA-03', 491.35, 491.35, 0, '2018-03-14 01:29:48'),
(41, 2, '232', 'SILENCIADOR CORSA 2004', 'vistas/img/productos/default/anonymous.png', 0, 'SA-CORSA-04', 421.31, 421.31, 0, '2018-03-14 01:29:48'),
(42, 2, '233', 'SILENCIADOR CAMIONETA  CHEVROLET  PICK-UP', 'vistas/img/productos/default/anonymous.png', 0, 'SA-CTA-PICK-UP', 361.56, 361.56, 0, '2018-03-14 01:29:48'),
(43, 2, '234', 'SILENCIADOR CUTLAS DE 1 COLILLA', 'vistas/img/productos/default/anonymous.png', 0, 'SA-CUTLAS', 420.06, 420.06, 0, '2018-03-14 01:29:48'),
(44, 2, '235', 'SILENCIADOR CHEVY JOY TRIANGULAR', 'vistas/img/productos/default/anonymous.png', 0, 'SA-JOY-TRI', 326.73, 326.73, 0, '2018-03-14 01:29:48'),
(45, 2, '236', 'SILENCIADOR CAMIONETA  LUV', 'vistas/img/productos/default/anonymous.png', 0, 'SA-LUV', 400.52, 400.52, 0, '2018-03-14 01:29:48'),
(46, 2, '237', 'SILENCIADOR MALIBU 1 SALIDA', 'vistas/img/productos/default/anonymous.png', 0, 'SA-MALIBU-08-S', 855.41, 855.41, 0, '2018-03-14 01:29:48'),
(47, 2, '238', 'SILENCIADOR MALIBU 2009 SALIDA MISMO LADO', 'vistas/img/productos/default/anonymous.png', 0, 'SA-MALIBU-09', 669.99, 669.99, 0, '2018-03-14 01:29:48'),
(48, 2, '239', 'SILENCIADOR MALIBU 2 SALIDAS', 'vistas/img/productos/default/anonymous.png', 0, 'SA-MALIBU-2S', 855.41, 855.41, 0, '2018-03-14 01:29:48'),
(49, 2, '240', 'CHEVROLET  MATIZ', 'vistas/img/productos/default/anonymous.png', 0, 'SA-MATIZ', 460.78, 460.78, 0, '2018-03-14 01:29:48'),
(50, 2, '241', 'SILENCIADOR MATIZ 2006', 'vistas/img/productos/default/anonymous.png', 0, 'SA-MATIZ 06', 631.28, 631.28, 0, '2018-03-14 01:29:48'),
(51, 2, '242', 'SILENCIADORE CHEVROLET  MERIVA', 'vistas/img/productos/default/anonymous.png', 0, 'SA-MERIVA', 481.08, 481.08, 0, '2018-03-14 01:29:48'),
(52, 2, '243', 'SILENCIADOR MONZA REDONDO MODELO 2003', 'vistas/img/productos/default/anonymous.png', 0, 'SA-MONZA-03', 388, 388, 0, '2018-03-14 01:29:48'),
(53, 2, '244', 'SILENCIADOR MONZA TRIANGULAR', 'vistas/img/productos/default/anonymous.png', 0, 'SA-MONZA-TRI', 341.64, 341.64, 0, '2018-03-14 01:29:48'),
(54, 2, '245', 'SILENCIADOR OPTRA', 'vistas/img/productos/default/anonymous.png', 0, 'SA-OPTRA', 612.49, 612.49, 0, '2018-03-14 01:29:48'),
(55, 2, '246', 'RESONADOR  ASTRA 06', 'vistas/img/productos/default/anonymous.png', 0, 'SA-RES-ASTRA', 291.28, 291.28, 0, '2018-03-14 01:29:48'),
(56, 2, '247', 'SILENCIADOR RESONADOR  CHEVY', 'vistas/img/productos/default/anonymous.png', 0, 'SA-RES-CHEVY', 286.64, 286.64, 0, '2018-03-14 01:29:48'),
(57, 2, '248', 'RESONADOR  CORSA', 'vistas/img/productos/default/anonymous.png', 0, 'SA-RES-CORSA', 417.68, 417.68, 0, '2018-03-14 01:29:48'),
(58, 2, '249', 'SILENCIADOR RESONADOR  G.M.', 'vistas/img/productos/default/anonymous.png', 0, 'SA-RES-GM', 243.67, 243.67, 0, '2018-03-14 01:29:48'),
(59, 2, '250', 'SILENCIADOR CAMIONETA  SILVERADO', 'vistas/img/productos/default/anonymous.png', 0, 'SA-SILVERADO', 477.19, 477.19, 0, '2018-03-14 01:29:48'),
(60, 2, '251', 'SILENCIADOR CAMIONETA  SUBURBAN', 'vistas/img/productos/default/anonymous.png', 0, 'SA-SUBURBAN', 640.55, 640.55, 0, '2018-03-14 01:29:48'),
(61, 2, '252', 'SILENCIADOR ORIGINAL SUNFIRE', 'vistas/img/productos/default/anonymous.png', 0, 'SA-SUNFIRE', 450.51, 450.51, 0, '2018-03-14 01:29:48'),
(62, 2, '253', 'SILENCIADOR CAMIONETA  TORNADO', 'vistas/img/productos/default/anonymous.png', 0, 'SA-TORNADO', 491.35, 491.35, 0, '2018-03-14 01:29:48'),
(63, 2, '254', 'SILENCIADOR CAMIONETA  TRAIL-BLAZER', 'vistas/img/productos/default/anonymous.png', 0, 'SA-TRAIL-BLAZER', 491.72, 491.72, 0, '2018-03-14 01:29:48'),
(64, 3, '301', 'SILENCIADOR RESONADOR  DATSUN', 'vistas/img/productos/default/anonymous.png', 0, 'SE-3607-CC', 171.89, 171.89, 0, '2018-03-14 01:29:48'),
(65, 3, '302', 'SILENCIADOR RESONADOR  TSURU II', 'vistas/img/productos/default/anonymous.png', 0, 'SE-3612-CC', 206.21, 206.21, 0, '2018-03-14 01:29:48'),
(66, 3, '303', 'SILENCIADOR CAMIONETA  NISSAN DATSUN', 'vistas/img/productos/default/anonymous.png', 0, 'SE-418', 247.93, 247.93, 0, '2018-03-14 01:29:48'),
(67, 3, '304', 'SILENCIADOR CAMIONETA  ESTAQUITAS  CON ENS', 'vistas/img/productos/default/anonymous.png', 0, 'SE-418 ENS', 376.34, 376.34, 0, '2018-03-14 01:29:48'),
(68, 3, '305', 'SILENCIADOR ALTIMA', 'vistas/img/productos/default/anonymous.png', 0, 'SE-ALTIMA', 441.87, 441.87, 0, '2018-03-14 01:29:48'),
(69, 3, '306', 'SILENCIADOR ALTIMA 2 SALIDAS', 'vistas/img/productos/default/anonymous.png', 0, 'SE-ALTIMA-2S', 488.59, 488.59, 0, '2018-03-14 01:29:48'),
(70, 3, '307', 'SILENCIADOR MURANO', 'vistas/img/productos/default/anonymous.png', 0, 'SE-MURANO', 820.71, 820.71, 0, '2018-03-14 01:29:48'),
(71, 3, '308', 'SILENCIADOR PICK-UP NISSAN CON ENSAMBLE', 'vistas/img/productos/default/anonymous.png', 0, 'SE-NISSAN  613', 376.34, 376.34, 0, '2018-03-14 01:29:48'),
(72, 3, '309', 'SILENCIADOR CAMIONETA  NISSAN', 'vistas/img/productos/default/anonymous.png', 0, 'SE-NISSAN  96-99', 350.78, 350.78, 0, '2018-03-14 01:29:48'),
(73, 3, '310', 'SILENCIADOR PLATINA MODELO 2003', 'vistas/img/productos/default/anonymous.png', 0, 'SE-PLATINA-03', 500.62, 500.62, 0, '2018-03-14 01:29:48'),
(74, 3, '311', 'SILENCIADOR RESONADOR  NISSAN', 'vistas/img/productos/default/anonymous.png', 0, 'SE-RES-NISSAN', 272.36, 272.36, 0, '2018-03-14 01:29:48'),
(75, 3, '312', 'SILENCIADOR SENTRA', 'vistas/img/productos/default/anonymous.png', 0, 'SE-SENTRA', 422.19, 422.19, 0, '2018-03-14 01:29:48'),
(76, 3, '313', 'SILENCIADOR SENTRA MODELO 2003', 'vistas/img/productos/default/anonymous.png', 0, 'SE-SENTRA-03', 510.77, 510.77, 0, '2018-03-14 01:29:48'),
(77, 3, '314', 'SILENCIADOR SENTRA 2007', 'vistas/img/productos/default/anonymous.png', 0, 'SE-SENTRA-07', 496.86, 496.86, 0, '2018-03-14 01:29:48'),
(78, 3, '315', 'SILENCIADOR NISSAN TIIDA', 'vistas/img/productos/default/anonymous.png', 0, 'SE-TIIDA', 497.99, 497.99, 0, '2018-03-14 01:29:48'),
(79, 3, '316', 'SILENCIADOR TSURU I', 'vistas/img/productos/default/anonymous.png', 0, 'SE-TSU-I', 322.34, 322.34, 0, '2018-03-14 01:29:48'),
(80, 3, '317', 'SILENCIADOR TSURU II OVALADO', 'vistas/img/productos/default/anonymous.png', 0, 'SE-TSU-II', 340.89, 340.89, 0, '2018-03-14 01:29:48'),
(81, 3, '318', 'SILENCIADOR TSURU III OVALADO', 'vistas/img/productos/default/anonymous.png', 0, 'SE-TSU-III', 382.86, 382.86, 0, '2018-03-14 01:29:48'),
(82, 3, '319', 'SILENCIADOR CAMIONETA  URBAN', 'vistas/img/productos/default/anonymous.png', 0, 'SE-URBAN', 510.77, 510.77, 0, '2018-03-14 01:29:48'),
(83, 3, '320', 'SILENCIADOR CAMIONETA  X-TRAIL', 'vistas/img/productos/default/anonymous.png', 0, 'SE-XTRAIL-ORG', 605.47, 605.47, 0, '2018-03-14 01:29:48'),
(84, 4, '401', 'SILENCIADOR ATLANTIC', 'vistas/img/productos/default/anonymous.png', 0, 'SG-ATLANTIC', 352.79, 352.79, 0, '2018-03-14 01:29:48'),
(85, 4, '402', 'SILENCIADOR CARIBE', 'vistas/img/productos/default/anonymous.png', 0, 'SG-CARIBE', 361.43, 361.43, 0, '2018-03-14 01:29:48'),
(86, 4, '403', 'SILENCIADOR COMBI', 'vistas/img/productos/default/anonymous.png', 0, 'SG-COMBI', 404.03, 404.03, 0, '2018-03-14 01:29:48'),
(87, 4, '404', 'SILENCIADOR DERBY', 'vistas/img/productos/default/anonymous.png', 0, 'SG-DERBY', 487.08, 487.08, 0, '2018-03-14 01:29:48'),
(88, 4, '405', 'SILENCIADOR DERBY MODELO 2000-2002', 'vistas/img/productos/default/anonymous.png', 0, 'SG-DERBY-00-02', 537.95, 537.95, 0, '2018-03-14 01:29:48'),
(89, 4, '406', 'SILENCIADOR GOLF', 'vistas/img/productos/default/anonymous.png', 0, 'SG-GOLF', 323.85, 323.85, 0, '2018-03-14 01:29:48'),
(90, 4, '407', 'SILENCIADOR GOLF CL', 'vistas/img/productos/default/anonymous.png', 0, 'SG-GOLF CL', 332.25, 332.25, 0, '2018-03-14 01:29:48'),
(91, 4, '408', 'SILENCIADOR GOLF GL', 'vistas/img/productos/default/anonymous.png', 0, 'SG-GOLF GL', 436.47, 436.47, 0, '2018-03-14 01:29:48'),
(92, 4, '409', 'SILENCIADOR GOLF 2 SALIDAS', 'vistas/img/productos/default/anonymous.png', 0, 'SG-GOLF GTI', 464.53, 464.53, 0, '2018-03-14 01:29:48'),
(93, 4, '410', 'SILENCIADOR JETTA', 'vistas/img/productos/default/anonymous.png', 0, 'SG-JETTA', 335.25, 335.25, 0, '2018-03-14 01:29:48'),
(94, 4, '411', 'SILENCIADOR JETTA GL', 'vistas/img/productos/default/anonymous.png', 0, 'SG-JETTA GL', 555.12, 555.12, 0, '2018-03-14 01:29:48'),
(95, 4, '412', 'SILENCIADOR JETTA GENERACION 4', 'vistas/img/productos/default/anonymous.png', 0, 'SG-JETTA-G4', 779.87, 779.87, 0, '2018-03-14 01:29:48'),
(96, 4, '413', 'SILENCIADOR JETTA GLS', 'vistas/img/productos/default/anonymous.png', 0, 'SG-JETTA-GLS', 378.97, 378.97, 0, '2018-03-14 01:29:48'),
(97, 4, '414', 'SILENCIADOR POINTER', 'vistas/img/productos/default/anonymous.png', 0, 'SG-POINTER', 430.96, 430.96, 0, '2018-03-14 01:29:48'),
(98, 4, '415', 'SILENCIADOR POINTER MODELO 2001-2003', 'vistas/img/productos/default/anonymous.png', 0, 'SG-POINTER01-03', 433.6, 433.6, 0, '2018-03-14 01:29:48'),
(99, 4, '416', 'SILENCIADOR RESONADOR  GOLF-JETTA', 'vistas/img/productos/default/anonymous.png', 0, 'SG-RES-G-J', 412.43, 412.43, 0, '2018-03-14 01:29:48'),
(100, 4, '417', 'SILENCIADOR RESONADOR  GOLF', 'vistas/img/productos/default/anonymous.png', 0, 'SG-RES-GOLF', 408.54, 408.54, 0, '2018-03-14 01:29:48'),
(101, 4, '418', 'SILENCIADOR RESONADOR  JETTA 4X7', 'vistas/img/productos/default/anonymous.png', 0, 'SG-RES-JETTA', 348.02, 348.02, 0, '2018-03-14 01:29:48'),
(102, 4, '419', 'SILENCIADOR VOLKSWAGEN LARGO', 'vistas/img/productos/default/anonymous.png', 0, 'SG-VW', 518.4, 518.4, 0, '2018-03-14 01:29:48'),
(103, 4, '420', 'SILECIADOR  VOLKSWAGEN CORTO', 'vistas/img/productos/default/anonymous.png', 0, 'SG-VW-C', 312.83, 312.83, 0, '2018-03-14 01:29:48'),
(104, 5, '501', 'SILENCIADOR ATOS', 'vistas/img/productos/default/anonymous.png', 0, 'SB-ATOS', 406.79, 406.79, 0, '2018-03-14 01:29:48'),
(105, 5, '502', 'SILENCIADOR AVENGER', 'vistas/img/productos/default/anonymous.png', 0, 'SB-AVENGER', 624.78, 624.78, 0, '2018-03-14 01:29:48'),
(106, 5, '503', 'SILENCIADOR DART K', 'vistas/img/productos/default/anonymous.png', 0, 'SB-DART K', 412.67, 412.67, 0, '2018-03-14 01:29:48'),
(107, 5, '504', 'SILENCIADOR NEON', 'vistas/img/productos/default/anonymous.png', 0, 'SB-NEON', 456.39, 456.39, 0, '2018-03-14 01:29:48'),
(108, 5, '506', 'SILENCIADOR NEON MODELO 2002', 'vistas/img/productos/default/anonymous.png', 0, 'SB-NEON-02', 537.2, 537.2, 0, '2018-03-14 01:29:48'),
(109, 5, '507', 'SILENCIADOR NEON DE 2 SALIDAS', 'vistas/img/productos/default/anonymous.png', 0, 'SB-NEON-2S', 666.36, 666.36, 0, '2018-03-14 01:29:48'),
(110, 5, '508', 'SILENCIADOR PATRIOT', 'vistas/img/productos/default/anonymous.png', 0, 'SB-PATRIOT', 563.13, 563.13, 0, '2018-03-14 01:29:48'),
(111, 5, '509', 'SILENCIADOR DODGE RAM MODELO 94-95', 'vistas/img/productos/default/anonymous.png', 0, 'SB-RAM 7X9', 477.32, 477.32, 0, '2018-03-14 01:29:48'),
(112, 5, '510', 'SILENCIADOR RAM 4000 5 TN', 'vistas/img/productos/default/anonymous.png', 0, 'SB-RAM-4000-05', 740.4, 740.4, 0, '2018-03-14 01:29:48'),
(113, 5, '511', 'SILENCIADOR DODGE RAM MODELO 97', 'vistas/img/productos/default/anonymous.png', 0, 'SB-RAM-7X9-97', 674.51, 674.51, 0, '2018-03-14 01:29:48'),
(114, 5, '512', 'SILENCIADOR RESONADOR  STRATUS', 'vistas/img/productos/default/anonymous.png', 0, 'SB-RES-STRATUS', 216.86, 216.86, 0, '2018-03-14 01:29:48'),
(115, 5, '513', 'SILENCIADOR SHADOW', 'vistas/img/productos/default/anonymous.png', 0, 'SB-SHADOW', 361.69, 361.69, 0, '2018-03-14 01:29:48'),
(116, 5, '514', 'SILENCIADOR SPIRIT', 'vistas/img/productos/default/anonymous.png', 0, 'SB-SPIRIT', 368.82, 368.82, 0, '2018-03-14 01:29:48'),
(117, 5, '515', 'SILENCIADOR STRATUS ECONOMICO', 'vistas/img/productos/default/anonymous.png', 0, 'SB-STRATUS-ECO', 435.6, 435.6, 0, '2018-03-14 01:29:48'),
(118, 5, '516', 'SILENCIADOR STRATUS ORIGINAL', 'vistas/img/productos/default/anonymous.png', 0, 'SB-STRATUS-ORIG', 614.37, 614.37, 0, '2018-03-14 01:29:48'),
(119, 5, '517', 'SILENCIADOR STRATUS CON ENSAMBLE', 'vistas/img/productos/default/anonymous.png', 0, 'SB-STRATUS/ENS', 735.89, 735.89, 0, '2018-03-14 01:29:48'),
(120, 6, '601', 'SILENCIADOR PEUGEOT MODELO 2002', 'vistas/img/productos/default/anonymous.png', 0, 'SF-PEUGEOT-02', 437.98, 437.98, 0, '2018-03-14 01:29:48'),
(121, 6, '602', 'SILENCIADOR PEUGEOT MODELO 2003', 'vistas/img/productos/default/anonymous.png', 0, 'SF-PEUGEOT-03', 484.96, 484.96, 0, '2018-03-14 01:29:48'),
(122, 7, '701', 'SIL BALA DE PLATA 12 EN 3', 'vistas/img/productos/default/anonymous.png', 0, 'PL-3012', 114.26, 114.26, 0, '2018-03-14 01:29:48'),
(123, 7, '702', 'SIL BALA DE PLATA 15 EN 3', 'vistas/img/productos/default/anonymous.png', 0, 'PL-3015', 124.03, 124.03, 0, '2018-03-14 01:29:48'),
(124, 7, '703', 'SIL BALA DE PLATA 18 EN 3', 'vistas/img/productos/default/anonymous.png', 0, 'PL-3018', 138.56, 138.56, 0, '2018-03-14 01:29:48'),
(125, 7, '704', 'SIL BALA DE PLATA 22 EN 3', 'vistas/img/productos/default/anonymous.png', 0, 'PL-3022', 170.25, 170.25, 0, '2018-03-14 02:16:43'),
(126, 7, '705', 'SILENCIADOR UNIVERSAL  TIPO BALA DE PLATA 2', 'vistas/img/productos/default/anonymous.png', 0, 'PL-3024', 199.32, 199.32, 0, '2018-03-14 01:29:48'),
(127, 7, '706', 'SIL BALA DE PLATA 12 EN 3', 'vistas/img/productos/default/anonymous.png', 0, 'PL-3512', 119.14, 119.14, 0, '2018-03-14 02:01:39'),
(128, 7, '707', 'SIL BALA DE PLATA 15 EN 3', 'vistas/img/productos/default/anonymous.png', 0, 'PL-3515', 133.68, 133.68, 0, '2018-03-14 02:01:44'),
(129, 7, '708', 'SIL BALA DE PLATA 18 EN 3', 'vistas/img/productos/default/anonymous.png', 0, 'PL-3518', 150.71, 150.71, 0, '2018-03-14 02:01:49'),
(130, 7, '709', 'SIL BALA DE PLATA 22 EN 3', 'vistas/img/productos/default/anonymous.png', 0, 'PL-3522', 177.53, 177.53, 0, '2018-03-14 02:01:55'),
(131, 7, '710', 'SIL BALA DE PLATA 30 EN 3', 'vistas/img/productos/default/anonymous.png', 0, 'PL-3530', 211.47, 211.47, 0, '2018-03-14 02:02:02'),
(132, 8, '801', 'catalizador con sensor', 'vistas/img/productos/default/anonymous.png', 0, 'cat34', 211.47, 211.47, 0, '2018-03-14 01:29:48'),
(133, 9, '901', 'FLEXIBLE DE 1 3/4 X 6 B/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-1-3/4X6 CB', 209.7, 209.7, 0, '2018-03-14 02:02:21'),
(134, 9, '902', 'FLEXIBLE DE 1 3/4 X 6 S/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-1-3/4X6 SB', 169.92, 169.92, 0, '2018-03-14 02:04:38'),
(135, 9, '903', 'FLEXIBLE DE 1 3/4 X 8 C/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-1-3/4X8 CB', 250.62, 250.62, 0, '2018-03-14 02:02:30'),
(136, 9, '904', 'FLEXIBLE DE 1 3/4 X 8 S/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-1-3/4X8 SB', 210.84, 210.84, 0, '2018-03-14 02:02:40'),
(137, 9, '905', 'FLEXIBLE DE 21/2 X 4 C/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-2-1/2X4 CB', 253.01, 253.01, 0, '2018-03-14 02:02:49'),
(138, 9, '906', 'FLEXIBLE DE 2 1/2 X 4 S/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-2-1/2X4 SB', 205.26, 205.26, 0, '2018-03-14 02:02:58'),
(139, 9, '907', 'FLEXIBLE DE 2 1/2 X 6 C/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-2-1/2X6 CB', 259.16, 259.16, 0, '2018-03-14 02:03:08'),
(140, 9, '908', 'FLEXIBLE DE 2 1/2 X 6 S/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-2-1/2X6 SB', 219.37, 219.37, 0, '2018-03-14 02:03:16'),
(141, 9, '909', 'FLEXIBLE DE 2 1/2 X 8 C/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-2-1/2X8 CB', 316.55, 316.55, 0, '2018-03-14 02:03:25'),
(142, 9, '910', 'FLEXIBLE DE 2 1/2 X 8 S/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-2-1/2X8 SB', 276.76, 276.76, 0, '2018-03-14 02:03:37'),
(143, 9, '911', 'FLEXIBLE DE 21/4 X 4 C/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-2-1/4X4 CB', 210.84, 210.84, 0, '2018-03-14 02:03:54'),
(144, 9, '912', 'FLEXIBLE DE 2 1/4 X 4 S/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-2-1/4X4 SB', 171.05, 171.05, 0, '2018-03-14 02:04:02'),
(145, 9, '913', 'FLEXIBLE DE 21/4 X 6 C/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-2-1/4X6 CB', 257.45, 257.45, 0, '2018-03-14 02:04:10'),
(146, 9, '914', 'FLEXIBLE DE 2 1/4 X 6 S/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-2-1/4X6 SB', 217.66, 217.66, 0, '2018-03-14 02:04:23'),
(147, 9, '915', 'FLEXIBLE DE 21/4 X 8 C/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-2-1/4X8 CB', 302.91, 302.91, 0, '2018-03-14 02:04:49'),
(148, 9, '916', 'FLEXIBLE DE 2 1/4X 8 S/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-2-1/4X8 SB', 263.12, 263.12, 0, '2018-03-14 02:05:06'),
(149, 9, '917', 'FLEXIBLE DE 2 X 4 C/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-2X4 CB', 185.26, 185.26, 0, '2018-03-14 02:05:16'),
(150, 9, '918', 'FLEXIBLE DE 2 X 4 S/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-2X4 SB', 145.49, 145.49, 0, '2018-03-14 01:29:48'),
(151, 9, '920', 'FLEXIBLE DE 2 X 6 C/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-2X6 CB', 229.02, 229.02, 0, '2018-03-14 02:17:05'),
(152, 9, '921', 'FLEXIBLE DE 2 X 6 S/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-2X6 SB', 189.24, 189.24, 0, '2018-03-14 01:29:48'),
(153, 9, '922', 'FLEXIBLE DE 2 X 8 C/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-2X8 CB', 276.76, 276.76, 0, '2018-03-14 02:05:35'),
(154, 9, '923', 'FLEXIBLE DE 2 X 8 S/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-2X8 SB', 236.99, 236.99, 0, '2018-03-14 01:29:48'),
(155, 9, '924', 'FLEXIBLE DE 3 X 6 C/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-3X6 CB', 318.83, 318.83, 0, '2018-03-14 02:16:35'),
(156, 9, '925', 'FLEXIBLE DE 3 X 6 S/BOQ', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-3X6 SB', 279.04, 279.04, 0, '2018-03-14 01:29:48'),
(157, 9, '926', 'FLEXIBLE PARA STRATUS', 'vistas/img/productos/default/anonymous.png', 0, 'FLX-STRATUS', 376, 1000, 0, '2018-04-02 00:20:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish2_ci NOT NULL,
  `email` text COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `nombre`, `email`, `telefono`) VALUES
(2, 'DAVALOS', 'davalos@gmail.com', '(222) 222-2222'),
(7, 'emsa', 'emsa@gmail.com', '(998) 876-5443'),
(9, 'infra', 'infra@gmil.com', '(092) 829-1828');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/718.jpg', 1, '2018-04-14 23:14:01', '2018-04-15 04:14:02'),
(59, 'Ana Gonzalez', 'ana', '$2a$07$asxx54ahjppf45sd87a5auzGfz9GaOjSPJ5jEDpHii9vSQEEqY1Zm', 'Vendedor', 'vistas/img/usuarios/ana/260.png', 1, '2018-04-08 11:27:34', '2018-04-08 16:27:34'),
(60, 'alexis', 'alex', '$2a$07$asxx54ahjppf45sd87a5auNvGRBP67HwteI1werOGGwt8t1BsO7QW', 'Especial', 'vistas/img/usuarios/alex/924.jpg', 1, '2018-04-08 11:28:17', '2018-04-08 16:28:17'),
(61, 'vendedor', 'vendedor', '$2a$07$asxx54ahjppf45sd87a5au5.7VFyYe8OhcuclH1FmEkVdrpavH75m', 'Vendedor', 'vistas/img/usuarios/vendedor/256.jpg', 1, '2018-04-08 21:51:38', '2018-04-09 02:51:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish2_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(45, 10001, 7, 59, '[{\"id\":\"1\",\"descripcion\":\"SIL UNIVERSAL  REDONDO 4 CILINDROS\",\"cantidad\":\"1\",\"stock\":\"10\",\"precio\":\"600\",\"total\":\"600\"}]', 96, 600, 696, 'Efectivo', '2018-04-06 05:21:00'),
(47, 10003, 7, 59, '[{\"id\":\"1\",\"descripcion\":\"SIL UNIVERSAL  REDONDO 4 CILINDROS\",\"cantidad\":\"1\",\"stock\":\"9\",\"precio\":\"600\",\"total\":\"600\"}]', 0, 600, 600, 'CH-22344', '2018-04-06 13:52:24'),
(50, 10004, 8, 1, '[{\"id\":\"7\",\"descripcion\":\"SIL UNIVERSAL  REDONDO LINEA 600\",\"cantidad\":\"1\",\"stock\":\"5\",\"precio\":\"536\",\"total\":\"536\"}]', 85.76, 536, 621.76, 'Efectivo', '2018-04-07 01:44:34'),
(53, 10005, 7, 1, '[{\"id\":\"1\",\"descripcion\":\"SIL UNIVERSAL  REDONDO 4 CILINDROS\",\"cantidad\":\"1\",\"stock\":\"9\",\"precio\":\"600\",\"total\":\"600\"}]', 0, 600, 600, 'Efectivo', '2018-04-08 23:28:27'),
(54, 10006, 8, 1, '[{\"id\":\"1\",\"descripcion\":\"SIL UNIVERSAL  REDONDO 4 CILINDROS\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"600\",\"total\":\"600\"}]', 0, 600, 600, 'Efectivo', '2018-04-09 02:49:32');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

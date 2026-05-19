-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.32-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.16.0.7229
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para ekomarket
CREATE DATABASE IF NOT EXISTS `ekomarket` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci */;
USE `ekomarket`;

-- Volcando estructura para tabla ekomarket.auditoria_pedidos
CREATE TABLE IF NOT EXISTS `auditoria_pedidos` (
  `id_pedido` int(11) NOT NULL,
  `fecha_evento` date DEFAULT NULL,
  PRIMARY KEY (`id_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla ekomarket.auditoria_pedidos: ~0 rows (aproximadamente)
DELETE FROM `auditoria_pedidos`;

-- Volcando estructura para tabla ekomarket.categoria_producto
CREATE TABLE IF NOT EXISTS `categoria_producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla ekomarket.categoria_producto: ~0 rows (aproximadamente)
DELETE FROM `categoria_producto`;

-- Volcando estructura para tabla ekomarket.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nif` varchar(12) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `nif` (`nif`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla ekomarket.cliente: ~46 rows (aproximadamente)
DELETE FROM `cliente`;
INSERT INTO `cliente` (`id_cliente`, `nif`, `nombre`, `telefono`, `ciudad`, `email`, `fecha_alta`) VALUES
	(0, '24234234', 'Juan', '666777888', 'Almería', 'juan@dealmeria.com', NULL),
	(1, '11111111A', 'Ana Beltrán', '600111111', 'Sevilla', 'ana@mail.es', NULL),
	(2, '22222222B', 'Luis Ortega', '600222222', 'Málaga', 'luis@mail.es', NULL),
	(3, '33333333C', 'Marta Pérez', '600333333', 'Sevilla', 'marta@mail.es', NULL),
	(4, '44444444D', 'Javier Gómez', '600444444', 'Cádiz', 'javier@mail.es', NULL),
	(5, '76054573S', 'Laura Pérez Gómez', '941865457', 'Granada', 'lpg@mail.net', NULL),
	(101, '50000000T', 'Ana García Torres', '601000000', 'Sevilla', 'ana.garcia101@mail.es', NULL),
	(102, '50000001R', 'Luis Pérez Jiménez', '611000027', 'Granada', 'luis.perez102@mail.es', NULL),
	(103, '50000002W', 'Marta López Castro', '621000054', 'Córdoba', 'marta.lopez103@mail.es', NULL),
	(104, '50000003A', 'Javier Sánchez Vega', '631000081', 'Jaén', 'javier.sanchez104@mail.es', NULL),
	(105, '50000004G', 'Carmen Romero García', '641000108', 'Madrid', 'carmen.romero105@mail.es', NULL),
	(106, '50000005M', 'Pablo Torres Jiménez', '651000135', 'Sevilla', 'pablo.torres106@mail.es', NULL),
	(107, '50000006Y', 'Lucía Ruiz Castro', '661000162', 'Granada', 'lucia.ruiz107@mail.es', NULL),
	(108, '50000007F', 'Diego Moreno Vega', '671000189', 'Córdoba', 'diego.moreno108@mail.es', NULL),
	(109, '50000008P', 'Elena Jiménez García', '681000216', 'Jaén', 'elena.jimenez109@mail.es', NULL),
	(110, '50000009D', 'Sergio Navarro Jiménez', '691000243', 'Madrid', 'sergio.navarro110@mail.es', NULL),
	(111, '50000010X', 'Laura Molina Castro', '601000270', 'Sevilla', 'laura.molina111@mail.es', NULL),
	(112, '50000011B', 'Raúl Castro Vega', '611000297', 'Granada', 'raul.castro112@mail.es', NULL),
	(113, '50000012N', 'Beatriz Ortega García', '621000324', 'Córdoba', 'beatriz.ortega113@mail.es', NULL),
	(114, '50000013J', 'Álvaro Vega Jiménez', '631000351', 'Jaén', 'álvaro.vega114@mail.es', NULL),
	(115, '50000014Z', 'Nuria Reyes Castro', '641000378', 'Madrid', 'nuria.reyes115@mail.es', NULL),
	(116, '50000015S', 'David Suárez Vega', '651000405', 'Sevilla', 'david.suarez116@mail.es', NULL),
	(117, '50000016Q', 'Paula Márquez García', '661000432', 'Granada', 'paula.marquez117@mail.es', NULL),
	(118, '50000017V', 'Adrián Campos Jiménez', '671000459', 'Córdoba', 'adrian.campos118@mail.es', NULL),
	(119, '50000018H', 'Irene Gil Castro', '681000486', 'Jaén', 'irene.gil119@mail.es', NULL),
	(120, '50000019L', 'Manuel Herrera Vega', '691000513', 'Madrid', 'manuel.herrera120@mail.es', NULL),
	(121, '50000020C', 'Ana García Torres', '601000540', 'Sevilla', 'ana.garcia121@mail.es', NULL),
	(122, '50000021K', 'Luis Pérez Jiménez', '611000567', 'Granada', 'luis.perez122@mail.es', NULL),
	(123, '50000022E', 'Marta López Castro', '621000594', 'Córdoba', 'marta.lopez123@mail.es', NULL),
	(124, '50000023T', 'Javier Sánchez Vega', '631000621', 'Jaén', 'javier.sanchez124@mail.es', NULL),
	(125, '50000024R', 'Carmen Romero García', '641000648', 'Madrid', 'carmen.romero125@mail.es', NULL),
	(126, '50000025W', 'Pablo Torres Jiménez', '651000675', 'Sevilla', 'pablo.torres126@mail.es', NULL),
	(127, '50000026A', 'Lucía Ruiz Castro', '661000702', 'Granada', 'lucia.ruiz127@mail.es', NULL),
	(128, '50000027G', 'Diego Moreno Vega', '671000729', 'Córdoba', 'diego.moreno128@mail.es', NULL),
	(129, '50000028M', 'Elena Jiménez García', '681000756', 'Jaén', 'elena.jimenez129@mail.es', NULL),
	(130, '50000029Y', 'Sergio Navarro Jiménez', '691000783', 'Madrid', 'sergio.navarro130@mail.es', NULL),
	(131, '50000030F', 'Laura Molina Castro', '601000810', 'Sevilla', 'laura.molina131@mail.es', NULL),
	(132, '50000031P', 'Raúl Castro Vega', '611000837', 'Granada', 'raul.castro132@mail.es', NULL),
	(133, '50000032D', 'Beatriz Ortega García', '621000864', 'Córdoba', 'beatriz.ortega133@mail.es', NULL),
	(134, '50000033X', 'Álvaro Vega Jiménez', '631000891', 'Jaén', 'álvaro.vega134@mail.es', NULL),
	(135, '50000034B', 'Nuria Reyes Castro', '641000918', 'Madrid', 'nuria.reyes135@mail.es', NULL),
	(136, '50000035N', 'David Suárez Vega', '651000945', 'Sevilla', 'david.suarez136@mail.es', NULL),
	(137, '50000036J', 'Paula Márquez García', '661000972', 'Granada', 'paula.marquez137@mail.es', NULL),
	(138, '50000037Z', 'Adrián Campos Jiménez', '671000999', 'Córdoba', 'adrian.campos138@mail.es', NULL),
	(139, '50000038S', 'Irene Gil Castro', '681001026', 'Jaén', 'irene.gil139@mail.es', NULL),
	(140, '50000039Q', 'Manuel Herrera López', '691001056', 'Madrid', 'manuel.herrera140@mail.es', NULL);

-- Volcando estructura para tabla ekomarket.detalle_pedido
CREATE TABLE IF NOT EXISTS `detalle_pedido` (
  `id_detalle` int(11) NOT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `fk_detalle_pedido` (`id_pedido`),
  KEY `fk_detalle_producto` (`id_producto`),
  CONSTRAINT `fk_detalle_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`) ON UPDATE CASCADE,
  CONSTRAINT `fk_detalle_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla ekomarket.detalle_pedido: ~87 rows (aproximadamente)
DELETE FROM `detalle_pedido`;
INSERT INTO `detalle_pedido` (`id_detalle`, `id_pedido`, `id_producto`, `cantidad`, `precio_unitario`) VALUES
	(0, 201, 101, 85, 25.30),
	(1, 1, 1, 2, 8.90),
	(2, 1, 3, 1, 3.80),
	(3, 2, 2, 3, 6.50),
	(4, 3, 1, 1, 8.90),
	(5, 3, 4, 2, 4.20),
	(6, 4, 2, 1, 6.50),
	(101, 101, 101, 1, 2.65),
	(102, 101, 108, 3, 12.54),
	(103, 102, 103, 2, 5.69),
	(104, 102, 110, 4, 14.98),
	(105, 103, 105, 3, 8.43),
	(106, 103, 112, 1, 18.02),
	(107, 104, 107, 4, 10.87),
	(108, 104, 114, 2, 20.76),
	(109, 105, 109, 5, 13.91),
	(110, 105, 116, 3, 23.20),
	(111, 106, 111, 1, 16.65),
	(112, 106, 118, 4, 26.24),
	(113, 107, 113, 2, 19.09),
	(114, 107, 120, 1, 28.98),
	(115, 108, 115, 3, 22.13),
	(116, 108, 122, 2, 4.02),
	(117, 109, 117, 4, 24.87),
	(118, 109, 124, 3, 7.06),
	(119, 110, 119, 5, 27.31),
	(120, 110, 126, 4, 9.80),
	(121, 111, 121, 1, 2.95),
	(122, 111, 128, 1, 12.24),
	(123, 112, 123, 2, 5.69),
	(124, 112, 130, 2, 15.28),
	(125, 113, 125, 3, 8.13),
	(126, 113, 132, 3, 18.02),
	(127, 114, 127, 4, 11.17),
	(128, 114, 134, 4, 20.46),
	(129, 115, 129, 5, 13.91),
	(130, 115, 136, 1, 23.50),
	(131, 116, 131, 1, 16.35),
	(132, 116, 138, 2, 26.24),
	(133, 117, 133, 2, 19.39),
	(134, 117, 140, 3, 28.68),
	(135, 118, 135, 3, 22.13),
	(136, 118, 102, 4, 4.32),
	(137, 119, 137, 4, 24.57),
	(138, 119, 104, 1, 6.76),
	(139, 120, 139, 5, 27.61),
	(140, 120, 106, 2, 9.80),
	(141, 121, 101, 1, 2.65),
	(142, 121, 108, 3, 12.54),
	(143, 122, 103, 2, 5.69),
	(144, 122, 110, 4, 14.98),
	(145, 123, 105, 3, 8.43),
	(146, 123, 112, 1, 18.02),
	(147, 124, 107, 4, 10.87),
	(148, 124, 114, 2, 20.76),
	(149, 125, 109, 5, 13.91),
	(150, 125, 116, 3, 23.20),
	(151, 126, 111, 1, 16.65),
	(152, 126, 118, 4, 26.24),
	(153, 127, 113, 2, 19.09),
	(154, 127, 120, 1, 28.98),
	(155, 128, 115, 3, 22.13),
	(156, 128, 122, 2, 4.02),
	(157, 129, 117, 4, 24.87),
	(158, 129, 124, 3, 7.06),
	(159, 130, 119, 5, 27.31),
	(160, 130, 126, 4, 9.80),
	(161, 131, 121, 1, 2.95),
	(162, 131, 128, 1, 12.24),
	(163, 132, 123, 2, 5.69),
	(164, 132, 130, 2, 15.28),
	(165, 133, 125, 3, 8.13),
	(166, 133, 132, 3, 18.02),
	(167, 134, 127, 4, 11.17),
	(168, 134, 134, 4, 20.46),
	(169, 135, 129, 5, 13.91),
	(170, 135, 136, 1, 23.50),
	(171, 136, 131, 1, 16.35),
	(172, 136, 138, 2, 26.24),
	(173, 137, 133, 2, 19.39),
	(174, 137, 140, 3, 28.68),
	(175, 138, 135, 3, 22.13),
	(176, 138, 102, 4, 4.32),
	(177, 139, 137, 4, 24.57),
	(178, 139, 104, 1, 6.76),
	(179, 140, 139, 5, 27.61),
	(180, 140, 106, 2, 9.80);

-- Volcando estructura para tabla ekomarket.pedido
CREATE TABLE IF NOT EXISTS `pedido` (
  `id_pedido` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `fecha_pedido` date DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fk_pedido_cliente` (`id_cliente`),
  CONSTRAINT `fk_pedido_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla ekomarket.pedido: ~46 rows (aproximadamente)
DELETE FROM `pedido`;
INSERT INTO `pedido` (`id_pedido`, `id_cliente`, `fecha_pedido`, `estado`) VALUES
	(0, 101, '2026-04-23', 'Pendiente'),
	(1, 1, '2026-02-10', 'Enviado'),
	(2, 2, '2026-02-12', 'Enviado'),
	(3, 1, '2026-02-14', 'Entregado'),
	(4, 3, '2026-02-15', 'Pendiente'),
	(101, 101, '2026-01-05', 'Enviado'),
	(102, 104, '2026-01-07', 'Preparando'),
	(103, 107, '2026-01-09', 'Enviado'),
	(104, 110, '2026-01-11', 'Entregado'),
	(105, 113, '2026-01-13', 'Pendiente'),
	(106, 116, '2026-01-15', 'Preparando'),
	(107, 119, '2026-01-17', 'Enviado'),
	(108, 122, '2026-01-19', 'Entregado'),
	(109, 125, '2026-01-21', 'Pendiente'),
	(110, 128, '2026-01-23', 'Preparando'),
	(111, 131, '2026-01-25', 'Enviado'),
	(112, 134, '2026-01-27', 'Entregado'),
	(113, 137, '2026-01-29', 'Pendiente'),
	(114, 140, '2026-01-31', 'Preparando'),
	(115, 103, '2026-02-02', 'Enviado'),
	(116, 106, '2026-02-04', 'Entregado'),
	(117, 109, '2026-02-06', 'Pendiente'),
	(118, 112, '2026-02-08', 'Preparando'),
	(119, 115, '2026-02-10', 'Enviado'),
	(120, 118, '2026-02-12', 'Entregado'),
	(121, 121, '2026-02-14', 'Pendiente'),
	(122, 124, '2026-02-16', 'Preparando'),
	(123, 127, '2026-02-18', 'Enviado'),
	(124, 130, '2026-02-20', 'Entregado'),
	(125, 133, '2026-02-22', 'Pendiente'),
	(126, 136, '2026-02-24', 'Preparando'),
	(127, 139, '2026-02-26', 'Enviado'),
	(128, 102, '2026-02-28', 'Entregado'),
	(129, 105, '2026-03-02', 'Pendiente'),
	(130, 108, '2026-03-04', 'Preparando'),
	(131, 111, '2026-03-06', 'Enviado'),
	(132, 114, '2026-03-08', 'Entregado'),
	(133, 117, '2026-03-10', 'Pendiente'),
	(134, 120, '2026-03-12', 'Preparando'),
	(135, 123, '2026-03-14', 'Enviado'),
	(136, 126, '2026-03-16', 'Entregado'),
	(137, 129, '2026-03-18', 'Pendiente'),
	(138, 132, '2026-03-20', 'Preparando'),
	(139, 135, '2026-03-22', 'Enviado'),
	(140, 138, '2026-03-24', 'Entregado'),
	(201, 1, '2026-04-23', 'Pendiente');

-- Volcando estructura para tabla ekomarket.producto
CREATE TABLE IF NOT EXISTS `producto` (
  `id_producto` int(11) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `categoria` varchar(40) DEFAULT NULL,
  `precio` decimal(8,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  UNIQUE KEY `codigo` (`codigo`),
  KEY `fk_producto_proveedor` (`id_proveedor`),
  CONSTRAINT `fk_producto_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla ekomarket.producto: ~45 rows (aproximadamente)
DELETE FROM `producto`;
INSERT INTO `producto` (`id_producto`, `codigo`, `nombre`, `categoria`, `precio`, `stock`, `id_proveedor`) VALUES
	(0, '0', 'copa bohemia', 'Hogar', 2.75, 90, 101),
	(1, 'P001', 'Aceite ecológico', 'Alimentación', 8.90, 40, 1),
	(2, 'P002', 'Miel artesanal', 'Alimentación', 6.50, 25, 2),
	(3, 'P003', 'Jabón natural', 'Higiene', 3.80, 60, 3),
	(4, 'P004', 'Infusión bio', 'Alimentación', 4.20, 23, 2),
	(101, 'P101', 'Aceite de oliva virgen eco', 'Alimentación', 2.65, 207, 101),
	(102, 'P102', 'Miel de romero ecológica', 'Alimentación', 4.32, 194, 102),
	(103, 'P103', 'Jabón natural de lavanda', 'Higiene', 5.69, 21, 103),
	(104, 'P104', 'Infusión digestiva bio', 'Bebidas', 7.10, 28, 104),
	(105, 'P105', 'Crema corporal de aloe', 'Cosmética', 8.43, 35, 105),
	(106, 'P106', 'Detergente ecológico', 'Limpieza', 9.80, 42, 106),
	(107, 'P107', 'Galletas integrales bio', 'Alimentación', 10.87, 49, 107),
	(108, 'P108', 'Zumo de naranja natural', 'Bebidas', 13.17, 56, 108),
	(109, 'P109', 'Champú sólido herbal', 'Higiene', 13.91, 63, 109),
	(110, 'P110', 'Velas de soja aromáticas', 'Hogar', 14.98, 70, 110),
	(111, 'P111', 'Arroz integral eco', 'Alimentación', 16.65, 77, 111),
	(112, 'P112', 'Pasta artesanal de espelta', 'Alimentación', 18.02, 84, 112),
	(113, 'P113', 'Vinagre de manzana bio', 'Alimentación', 19.09, 91, 113),
	(114, 'P114', 'Té verde ecológico', 'Bebidas', 21.80, 98, 114),
	(115, 'P115', 'Gel de ducha natural', 'Higiene', 22.13, 105, 115),
	(116, 'P116', 'Crema facial nutritiva', 'Cosmética', 23.20, 112, 116),
	(117, 'P117', 'Leche de avena bio', 'Bebidas', 26.11, 119, 117),
	(118, 'P118', 'Café molido de comercio justo', 'Bebidas', 27.55, 126, 118),
	(119, 'P119', 'Ambientador natural', 'Hogar', 27.31, 133, 119),
	(120, 'P120', 'Papel reciclado premium', 'Hogar', 28.98, 140, 120),
	(121, 'P121', 'Aceite de oliva virgen eco', 'Alimentación', 2.95, 147, 121),
	(122, 'P122', 'Miel de romero ecológica', 'Alimentación', 4.02, 154, 122),
	(123, 'P123', 'Jabón natural de lavanda', 'Higiene', 5.69, 161, 123),
	(124, 'P124', 'Infusión digestiva bio', 'Bebidas', 7.41, 168, 124),
	(125, 'P125', 'Crema corporal de aloe', 'Cosmética', 8.13, 175, 125),
	(126, 'P126', 'Detergente ecológico', 'Limpieza', 9.80, 182, 126),
	(127, 'P127', 'Galletas integrales bio', 'Alimentación', 11.17, 189, 127),
	(128, 'P128', 'Zumo de naranja natural', 'Bebidas', 12.85, 196, 128),
	(129, 'P129', 'Champú sólido herbal', 'Higiene', 13.91, 23, 129),
	(130, 'P130', 'Velas de soja aromáticas', 'Hogar', 15.28, 30, 130),
	(131, 'P131', 'Arroz integral eco', 'Alimentación', 16.35, 37, 131),
	(132, 'P132', 'Pasta artesanal de espelta', 'Alimentación', 18.02, 44, 132),
	(133, 'P133', 'Vinagre de manzana bio', 'Alimentación', 19.39, 51, 133),
	(134, 'P134', 'Té verde ecológico', 'Bebidas', 21.48, 58, 134),
	(135, 'P135', 'Gel de ducha natural', 'Higiene', 22.13, 65, 135),
	(136, 'P136', 'Crema facial nutritiva', 'Cosmética', 23.50, 72, 136),
	(137, 'P137', 'Leche de avena bio', 'Bebidas', 25.80, 79, 137),
	(138, 'P138', 'Café molido de comercio justo', 'Bebidas', 27.55, 86, 138),
	(139, 'P139', 'Ambientador natural', 'Hogar', 27.61, 93, 139),
	(140, 'P140', 'Papel reciclado premium', 'Hogar', 28.68, 100, 140);

-- Volcando estructura para tabla ekomarket.proveedor
CREATE TABLE IF NOT EXISTS `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla ekomarket.proveedor: ~45 rows (aproximadamente)
DELETE FROM `proveedor`;
INSERT INTO `proveedor` (`id_proveedor`, `nombre`, `telefono`, `ciudad`, `email`) VALUES
	(0, 'Jorge Santos', '451875450', 'Bérchules', 'jsantos@mail.net'),
	(1, 'Verde Sur', '950111111', 'Almería', 'contacto@verdesur.es'),
	(2, 'BioHuerta', '958222222', 'Granada', 'info@biohuerta.es'),
	(3, 'EcoSierra', '957333333', 'Córdoba', 'ventas@ecosierra.es'),
	(4, 'AgroNatura', '959444444', 'Huelva', 'contacto@agronatura.es'),
	(101, 'Eco Sur', '950100000', 'Sevilla', 'ecosur101@proveedor.es'),
	(102, 'Bio Selecto', '951100137', 'Málaga', 'bioselecto102@proveedor.es'),
	(103, 'Verde Puro', '952100274', 'Granada', 'verdepuro103@proveedor.es'),
	(104, 'Natural Directo', '953100411', 'Cádiz', 'naturaldirecto104@proveedor.es'),
	(105, 'Sierra Andaluz', '954100548', 'Córdoba', 'sierraandaluz105@proveedor.es'),
	(106, 'Huerta Vivo', '955100685', 'Almería', 'huertavivo106@proveedor.es'),
	(107, 'Campo Esencial', '956100822', 'Jaén', 'campoesencial107@proveedor.es'),
	(108, 'Origen Verde', '957100959', 'Huelva', 'origenverde108@proveedor.es'),
	(109, 'Raíz Selecto', '958101096', 'Madrid', 'raízselecto109@proveedor.es'),
	(110, 'Monte Puro', '959101233', 'Valencia', 'montepuro110@proveedor.es'),
	(111, 'Eco Directo', '950101370', 'Sevilla', 'ecodirecto111@proveedor.es'),
	(112, 'Bio Andaluz', '951101507', 'Málaga', 'bioandaluz112@proveedor.es'),
	(113, 'Verde Vivo', '952101644', 'Granada', 'verdevivo113@proveedor.es'),
	(114, 'Natural Esencial', '953101781', 'Cádiz', 'naturalesencial114@proveedor.es'),
	(115, 'Sierra Verde', '954101918', 'Córdoba', 'sierraverde115@proveedor.es'),
	(116, 'Huerta Puro', '955102055', 'Almería', 'huertapuro116@proveedor.es'),
	(117, 'Campo Directo', '956102192', 'Jaén', 'campodirecto117@proveedor.es'),
	(118, 'Origen Andaluz', '957102329', 'Huelva', 'origenandaluz118@proveedor.es'),
	(119, 'Raíz Vivo', '958102466', 'Madrid', 'raízvivo119@proveedor.es'),
	(120, 'Monte Esencial', '959102603', 'Valencia', 'monteesencial120@proveedor.es'),
	(121, 'Eco Verde', '950102740', 'Sevilla', 'ecoverde121@proveedor.es'),
	(122, 'Bio Puro', '951102877', 'Málaga', 'biopuro122@proveedor.es'),
	(123, 'Verde Directo', '952103014', 'Granada', 'verdedirecto123@proveedor.es'),
	(124, 'Natural Andaluz', '953103151', 'Cádiz', 'naturalandaluz124@proveedor.es'),
	(125, 'Sierra Vivo', '954103288', 'Córdoba', 'sierravivo125@proveedor.es'),
	(126, 'Huerta Esencial', '955103425', 'Almería', 'huertaesencial126@proveedor.es'),
	(127, 'Campo Verde', '956103562', 'Jaén', 'campoverde127@proveedor.es'),
	(128, 'Origen Puro', '957103699', 'Huelva', 'origenpuro128@proveedor.es'),
	(129, 'Raíz Directo', '958103836', 'Madrid', 'raízdirecto129@proveedor.es'),
	(130, 'Monte Andaluz', '959103973', 'Valencia', 'monteandaluz130@proveedor.es'),
	(131, 'Eco Vivo', '950104110', 'Sevilla', 'ecovivo131@proveedor.es'),
	(132, 'Bio Esencial', '951104247', 'Málaga', 'bioesencial132@proveedor.es'),
	(133, 'Verde Verde', '952104384', 'Granada', 'verdeverde133@proveedor.es'),
	(134, 'Natural Puro', '953104521', 'Cádiz', 'naturalpuro134@proveedor.es'),
	(135, 'Sierra Directo', '954104658', 'Córdoba', 'sierradirecto135@proveedor.es'),
	(136, 'Huerta Andaluz', '955104795', 'Almería', 'huertaandaluz136@proveedor.es'),
	(137, 'Campo Vivo', '956104932', 'Jaén', 'campovivo137@proveedor.es'),
	(138, 'Origen Esencial', '957105069', 'Huelva', 'origenesencial138@proveedor.es'),
	(139, 'Raíz Verde', '958105206', 'Madrid', 'raízverde139@proveedor.es'),
	(140, 'Monte Puro', '959105343', 'Valencia', 'montepuro140@proveedor.es');

-- Volcando estructura para vista ekomarket.vista_ventas_resumen
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vista_ventas_resumen` (
	`id_pedido` INT(11) NULL,
	`fecha_pedido` DATE NULL,
	`cliente` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_spanish_ci',
	`producto` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_spanish_ci',
	`cantidad` INT(11) NULL,
	`importe` DECIMAL(8,2) NULL
);

-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vista_ventas_resumen`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vista_ventas_resumen` AS SELECT 
	d_p.id_pedido, 
	p.fecha_pedido, 
	c.nombre AS "cliente",
	pr.nombre AS "producto", 
	pr.stock AS "cantidad", 
	pr.precio AS "importe"
FROM detalle_pedido d_p
JOIN producto pr
ON pr.id_producto=d_p.id_producto
JOIN pedido p
ON d_p.id_pedido=p.id_pedido
JOIN cliente c
ON c.id_cliente=p.id_cliente 
;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

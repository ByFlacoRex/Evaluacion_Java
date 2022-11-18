-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2022 a las 04:07:11
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `evaluacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `idCiudad` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`idCiudad`, `name`) VALUES
(1, 'Bogota'),
(2, 'Medellin'),
(3, 'Cali'),
(4, 'Barranquilla'),
(5, 'Cartagena'),
(6, 'Soacha'),
(7, 'Cúcuta'),
(8, 'Soledad'),
(9, 'Bucaramanga'),
(10, 'Bello'),
(11, 'Villavicencio'),
(12, 'Santa Marta'),
(13, 'Valledupar'),
(14, 'Ibagué'),
(15, 'Monteria'),
(16, 'Pereira'),
(17, 'Manizales'),
(18, 'Pasto'),
(19, 'Neiva'),
(20, 'Palmira'),
(21, 'Popayán'),
(22, 'Buenaventura'),
(23, 'Floridablanca'),
(24, 'Armenia'),
(25, 'Sincelejo'),
(26, 'Itagui'),
(27, 'Tumaco'),
(28, 'Envigado'),
(29, 'Dosquebradas'),
(30, 'Tulua'),
(31, 'Barrancabermeja'),
(32, 'Riohacha'),
(33, 'Uribia'),
(34, 'Maicao'),
(35, 'Piedecuesta'),
(36, 'Tunja'),
(37, 'Yopal'),
(38, 'Florencia'),
(39, 'Girón'),
(40, 'Jamundi'),
(41, 'Facatativa'),
(42, 'Fusagasuga'),
(43, 'Mosquera'),
(44, 'Chia'),
(45, 'Zipaquira'),
(46, 'Rionergro'),
(47, 'Malambo'),
(48, 'Magangué'),
(49, 'Cartago'),
(50, 'Madrid'),
(51, 'Turbo'),
(52, 'Quibdo'),
(53, 'Sogamoso'),
(54, 'Ocaña'),
(55, 'Apartado'),
(56, 'Pitalito'),
(57, 'Buga'),
(58, 'Duitama'),
(59, 'Cienga'),
(60, 'Aguachica'),
(61, 'Girardot'),
(62, 'Lorica'),
(63, 'Turbaco'),
(64, 'Ipiales'),
(65, 'Santander de quilichao'),
(66, 'Villa del rosario'),
(67, 'Funza'),
(68, 'Sahagun'),
(69, 'Yumbo'),
(70, 'Cerete'),
(71, 'Sabanalarga'),
(72, 'Arauca'),
(73, 'Los Patios'),
(74, 'Caucasia'),
(75, 'Tierraalta'),
(76, 'Candelaria'),
(77, 'Manaure'),
(78, 'Cajica'),
(79, 'Acacías'),
(80, 'Sabaneta'),
(81, 'Montelibano'),
(82, 'Caldas'),
(83, 'Copacabana'),
(84, 'Santa Rosa De Cabal'),
(85, 'Cumaribo'),
(86, 'La Estrella'),
(87, 'Calarca'),
(88, 'Garzon'),
(89, 'La Dorada'),
(90, 'Zona Bananera'),
(91, 'Arjona'),
(92, 'El Carmen De Bolivar'),
(93, 'Espinal'),
(94, 'Corozal'),
(95, 'Granada'),
(96, 'Fundacion'),
(97, 'El Banco'),
(98, 'La Ceja'),
(99, 'Marinilla'),
(100, 'Villamaria'),
(101, 'Puerto Asis'),
(102, 'Baranoa'),
(103, 'Galapa'),
(104, 'Planeta Rica'),
(105, 'Agustin Codazzi'),
(106, 'Plato'),
(107, 'Saravena'),
(108, 'El Carmen De Viboral'),
(109, 'La Plata'),
(110, 'San Marcos'),
(111, 'Cienaga De Oro'),
(112, 'Chigorodo'),
(113, 'San Gil'),
(114, 'Mocoa'),
(115, 'Tibu'),
(116, 'Guarane'),
(117, 'Florida'),
(118, 'Chiquinquira'),
(119, 'San Andres'),
(120, 'El Cerrito'),
(121, 'Barbacoas'),
(122, 'Arauquita'),
(123, 'San Jose Del Guaviare'),
(124, 'Riosucio'),
(125, 'Tuchin'),
(126, 'Girardota'),
(127, 'Barbosa'),
(128, 'Pamplona'),
(129, 'El Bagre'),
(130, 'El Tambo'),
(131, 'Puerto Colombia'),
(132, 'San Pëlayo'),
(133, 'San Vicente Del Caguan'),
(134, 'Chinchina'),
(135, 'Riosucio'),
(136, 'Carepa'),
(137, 'San Onofre'),
(138, 'La Jaula de Ibirico'),
(139, 'Chaparral');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `documento` bigint(20) NOT NULL,
  `apellido` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `fechaCumpelanos` date DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `idCiudad` bigint(20) DEFAULT NULL,
  `idOcupacion` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`documento`, `apellido`, `email`, `fechaCumpelanos`, `nombre`, `telefono`, `idCiudad`, `idOcupacion`) VALUES
(1030697211, 'Moreno Neira', 'stivensonm519@gmail.com', '1999-06-19', 'Stivenson', '3017518636', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocupaciones`
--

CREATE TABLE `ocupaciones` (
  `idOcupacion` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `ocupaciones`
--

INSERT INTO `ocupaciones` (`idOcupacion`, `name`) VALUES
(1, 'Empleado'),
(2, 'Independiente'),
(3, 'Pensionado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`idCiudad`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`documento`),
  ADD KEY `FK3sh7f4c5bemx2lte1yviaht2y` (`idCiudad`),
  ADD KEY `FKqrodqgq3uplx58ocgqhvgwilb` (`idOcupacion`);

--
-- Indices de la tabla `ocupaciones`
--
ALTER TABLE `ocupaciones`
  ADD PRIMARY KEY (`idOcupacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `idCiudad` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT de la tabla `ocupaciones`
--
ALTER TABLE `ocupaciones`
  MODIFY `idOcupacion` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `FK3sh7f4c5bemx2lte1yviaht2y` FOREIGN KEY (`idCiudad`) REFERENCES `ciudades` (`idCiudad`),
  ADD CONSTRAINT `FKqrodqgq3uplx58ocgqhvgwilb` FOREIGN KEY (`idOcupacion`) REFERENCES `ocupaciones` (`idOcupacion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

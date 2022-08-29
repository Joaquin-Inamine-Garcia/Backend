-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 29-08-2022 a las 15:25:41
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `joaquin garage`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(250) NOT NULL,
  `Subtitulo` text NOT NULL,
  `Cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`Id`, `Titulo`, `Subtitulo`, `Cuerpo`, `img_id`) VALUES
(2, 'La nueva Amarok base: así sería la versión más barata de la pick up de Volkswagen', 'La segunda generación de la Amarok se prepara para salir al mercado.', 'Volkswagen ya presentó la nueva generación de la Amarok, su pick up mediana, pero no mostró fotos de la versión de entrada de gama. El sitio australiano CarsGuide decidió arriesgarla con una proyección que imagina cómo sería su diseño definitivo.', 'kndbxyccjuncetzfbwcl'),
(3, 'Volkswagen registró el nuevo Virtus que llegará a la Argentina para competir contra el Fiat Cronos', 'Es un sedán compacto que también lucha contra Yaris, Versa y Onix Plus.', 'Volkswagen patentó el nuevo Virtus en el Instituto Nacional de la Propiedad Intelectual. El sitio Autoweb filtró las imágenes del registro que la marca alemana realizó en dicha entidad para habilitar su comercialización en el mercado argentino.\r\n\r\nLa novedad más importante es que su diseño no será idéntico al del Polo. Hasta ahora, compartían la propuesta visual en el frente y los laterales, con la lógica excepción del tercer volumen, ya que el Virtus es un sedán con el baúl “alargado”.\r\n\r\n', 'ckhaodbqfpcq8vauzeve'),
(4, 'Fiat presentó el Fastback, un nuevo SUV con estilo coupé que llegará a la Argentina en 2023', 'Tendrá motores turbo y equipamiento full, además de elementos compartidos con Pulse y Cronos', 'Fiat publicó las primeras fotos del diseño exterior a cara lavada del Fastback, el nuevo SUV con estilo coupé que se desarrolló para los mercados de Sudamérica y se pondrá a la venta en los concesionarios de la Argentina durante la primera mitad de 2023.\r\n\r\nEl Fiat Fastback luce un diseño frontal similar al Pulse, otro SUV de la marca. Comparten el etilo de los faros, del capot y el formato de la parrilla, aunque en el caso del coupé cuenta con la superficie tipo panal de abeja.\r\n\r\n', 'k8ijaypzmnx90tnhgx6f'),
(34, 'La Peugeot Landtrek se lanzará en 2023 para competir contra Hilux, Amarok y Ranger', 'Su arribo al país estaba programado para este año, pero se postergó hasta inicios del próximo.', 'Peugeot Argentina postergó el lanzamiento de la Landtrek, su nueva pick up mediana y rival directa de Toyota Hilux, Volkswagen Amarok, Ford Ranger, Chevrolet S10, Renault Alaskan y Nissan Frontier, entre otros modelos.\r\n\r\nTras su presentación en 2020 se lanzó en algunos países, pero a los concesionarios del país llegará recién el año que viene. Desde la marca francesa aseguran que la intención es tenerla a la venta a comienzos de 2023.\r\n\r\n\r\n', 'flftuhotqocmklrqlrye');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

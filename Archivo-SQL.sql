-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 23-08-2022 a las 19:40:14
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
CREATE DATABASE IF NOT EXISTS `joaquin garage` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `joaquin garage`;

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
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`Id`, `Titulo`, `Subtitulo`, `Cuerpo`, `img_id`) VALUES
(2, 'La nueva Amarok base: así sería la versión más barata de la pick up de Volkswagen', 'La segunda generación de la Amarok se prepara para salir al mercado.', 'Volkswagen ya presentó la nueva generación de la Amarok, su pick up mediana, pero no mostró fotos de la versión de entrada de gama. El sitio australiano CarsGuide decidió arriesgarla con una proyección que imagina cómo sería su diseño definitivo.\r\n\r\nEn base a este dibujo (no es oficial, pues Volkswagen no tuvo absolutamente nada que ver en su diseño), la nueva Volkswagen Amarok base tendrá llantas de chapa, protecciones de plástico negro en toda la zona baja de la carrocería y perderá las barras de techo y los detalles cromados en la parrilla que muestran las variantes full.\r\n\r\nLa Amarok 2023 muestra novedades en términos de diseño, plataforma, motorización y equipamiento. Como se esperaba, no es una versión “gemela” de la Ranger, pick up en la que está basada fruto de un acuerdo histórico entre Volkswagen y Ford.\r\n\r\nAl mercado global se lanzará en cinco versiones: Amarok, Life, Style, PanAmericana y Aventura. Estas dos últimas tienen un estilo bien off-road. Las tres primeras se pueden conseguir con cabina simple o doble.\r\n\r\nCon 5,35 metros de largo, la nueva Amarok es casi 10 centímetros más larga que su predecesora. Una distancia entre ejes de 3,27 metros representa un aumento de 17,3 cm. Eso proporciona más espacio, especialmente en la segunda fila de asientos de la cabina doble. Y también acorta los voladizos de la carrocería. El resultado: proporciones más nítidas y mejor capacidad todoterreno gracias a mejores ángulos de aproximación, dice Volkswagen.\r\n\r\nLas capacidades todoterreno de la Amarok, que tendrá tracción en las cuatro ruedas como equipamiento estándar en muchos mercados, también se ven mejoradas por una profundidad de vadeo superior para conducir a través del agua. Antes era de 50 centímetros, ahora es de 800 cm.\r\n\r\nLa caja de carga alcanzó una capacidad de 1,16 toneladas. Allí hay numerosos accesorios para llevar distintos tipos de objetos e incluso una tapa rígida para transformarla en “un SUV con la capacidad de carga de una camioneta”, según el fabricante.\r\n\r\nEl interior promete más funcionalidad y alta calidad que el modelo anterior. Viene con un instrumental digital de 8 o 12 pulgadas, según la versión, y con una pantalla táctil central de 10 o 12 pulgadas, también de acuerdo a la variante elegida. Ojo: en la consola hay varios botones físicos que se combinan con las funciones digitales.\r\n\r\nHay cinco motorizaciones disponibles según el país: turbodiésel 2.0 litros de 150 CV, turbodiésel 2.0 litros de 170 CV, bi-turbodiésel 2.0 litros de 204 CV, turbodiésel 3.0 litros V6 de 250 CV y naftero 2.3 litros turbo de 302 CV.\r\n\r\nTodas las versiones Amarok saldrán al mercado de serie con una nueva caja de cambios automática de 10 velocidades. Además, habrá caja de cambios automática de 6 velocidades y cajas de cambios manuales de 5 o 6 velocidades para varias motorizaciones.\r\n\r\nEn muchos mercados, la Amarok se suministra con tracción total (4MOTION) de serie. Dependiendo de la región y el motor, habrá dos sistemas 4MOTION diferentes: uno con tracción total seleccionable según la situación dada y otro con tracción total permanente.\r\n\r\nLa nueva generación contará con más de veinte sistemas de asistencia a la conducción, entre los que se destacarán el control de velocidad crucero adaptativo y el lector de señales de tránsito.\r\n\r\nLa nueva generación de la Volkswagen Amarok no se fabricará en la Argentina. En la planta de Pacheco, Buenos Aires, seguirá produciéndose para el mercado local y regional la primera generación; es decir, aquella que debutó en 2010', NULL),
(3, 'Volkswagen registró el nuevo Virtus que llegará a la Argentina para competir contra el Fiat Cronos', 'Es un sedán compacto que también lucha contra Yaris, Versa y Onix Plus.', 'Volkswagen patentó el nuevo Virtus en el Instituto Nacional de la Propiedad Intelectual. El sitio Autoweb filtró las imágenes del registro que la marca alemana realizó en dicha entidad para habilitar su comercialización en el mercado argentino.\r\n\r\nLa novedad más importante es que su diseño no será idéntico al del Polo. Hasta ahora, compartían la propuesta visual en el frente y los laterales, con la lógica excepción del tercer volumen, ya que el Virtus es un sedán con el baúl “alargado”.\r\n\r\nLos registros revelan que el nuevo Virtus exhibirá los mismos faros delanteros que el Nivus. Además, mostrará cambios en los paragolpes y los faros antiniebla, que a su vez tienen un estilo parecido al del SUV coupé.\r\n\r\nEl nuevo Volkswagen Virtus fue presentado días atrás en la India con su versión GT, que se caracteriza por su aspecto deportivo. Muestra cambios en la parrilla, los faros, los paragolpes y las llantas de aleación, con un estilo que podría asemejarse al Vento. También adopta detalles en cromo y nuevos faros antiniebla.\r\n\r\nLeé también: Volkswagen le puso precio al Polo Trend, la versión base que reemplaza al Gol Trend\r\n\r\nPuertas adentro, las novedades del sedán pasan por el formato de las salidas de aire delanteras, la ausencia de algunos botones, el acabado de los asientos y el nuevo diseño del volante, que cuenta con levas y comandos para distintas funciones.\r\n\r\nEl equipamiento del nuevo Virtus para el mercado asiático incluye instrumental digital de 8 pulgadas, seis airbags, ocho parlantes, central multimedia con Android Auto y Apple CarPlay, cargador inalámbrico para celulares, techo solar, aire acondicionado digital y faros full Led.\r\n\r\nEl motor en la India será un naftero 1.5 litros turbo de 150 caballos de potencia, pero en Sudamérica conservará el naftero 1.4 litros turbo para las versiones GTS e incorporará un naftero 1.0 litros turbo de 115 caballos de potencia para las más económicas. En todos los casos la transmisión sería manual o automática de seis velocidades.\r\n\r\nDe acuerdo a lo publicado por medios del país vecino, la producción del nuevo Virtus sudamericano comenzaría en el segundo semestre de este año. Así, podría llegar a la Argentina en la primera parte de 2023.\r\n\r\nEl Volkswagen Virtus es un sedán compacto que compite en el segmento de Fiat Cronos, Nissan Versa, Chevrolet Onix Plus y Toyota Yaris 4 Puertas, entre otros modelos.\r\n\r\nEl Volkswagen Virtus actual llega en cinco versiones: Virtus base Manual, por 3,86 millones; Virtus base automático, por 4,27; Virtus Comfortline automático, por 4,29 millones; Virtus Highline automático, por 4,29 millones; y Virtus GTS automático, por 7,04 millones. Esta última versión, de corte deportivo, está afectada por el impuesto interno a los autos “de lujo”.\r\n\r\nVolkswagen Virtus MSI manual: $3.863.500\r\nVolkswagen Virtus MSI automático: $4.272.050\r\nVolkswagen Virtus Comfortline automático: $4.292.250\r\nVolkswagen Virtus Highline automático: $4.292.250\r\nVolkswagen Virtus GTS automático: $7.045.850', NULL),
(4, 'Fiat presentó el Fastback, un nuevo SUV con estilo coupé que llegará a la Argentina en 2023', 'Tendrá motores turbo y equipamiento full, además de elementos compartidos con Pulse y Cronos', 'Fiat publicó las primeras fotos del diseño exterior a cara lavada del Fastback, el nuevo SUV con estilo coupé que se desarrolló para los mercados de Sudamérica y se pondrá a la venta en los concesionarios de la Argentina durante la primera mitad de 2023.\r\n\r\nEl Fiat Fastback luce un diseño frontal similar al Pulse, otro SUV de la marca. Comparten el etilo de los faros, del capot y el formato de la parrilla, aunque en el caso del coupé cuenta con la superficie tipo panal de abeja.\r\n\r\nDesde la marca italiana resaltaron sus “superficies musculosas”, las llantas deportivas en acabado diamante, los faros delanteros y traseros Full Led, y la inclinación del pilar C para darle forma de coupé en combinación con el descenso del techo.\r\n\r\nCómo será el Fiat Fastback\r\n\r\nAl compartir estructura con el Pulse, tendrán en común un alto porcentaje de elementos exteriores e interiores, y la diferencia entre ambos radicará exclusivamente en el formato de la silueta. En el coupé, lógicamente, el techo tiene una caída bien pronunciada.\r\n\r\nEl rival del Fastback sería el Volkswagen Nivus, que se puede considerar una versión “SUV Coupé” del T-Cross, aunque el de Fiat sería unos centímetros más grande. Se trata de una nueva tendencia cada vez más vista en los mercados no solo de América Latina sino del mundo.\r\n\r\nEl motor de este modelo será el naftero 1.3 litros turbo de 175 caballos de potencia que hizo su debut en la nueva Fiat Toro. Es una motorización novedosa, perteneciente a la familia GSE, que promete un mejor rendimiento en relación con los actuales impulsores nafteros que utilizan los autos de la marca italiana. La gama ofrecería únicamente versiones automáticas y con tracción simple.\r\n\r\nBautizado internamente como Proyecto 376, se estima que las versiones de entrada ofrecerán el motor naftero 1.0 litros de 120 caballos de potencia ya visto en el Pulse. En este caso la caja sería automática CVT.\r\n\r\nEn base a los rumores (por ahora, Fiat no reveló detalles de este producto ni confirmó abiertamente su producción), tendrá 4,36 metros de largo y 1,72 de ancho, con una distancia entre ejes superior a la del Fiat Cronos (2,52 metros). Las llantas serán de aleación, de 17 pulgadas y con neumáticos 205/65 R17.\r\n\r\nEn cuanto al equipamiento, se sabe que contará con llave con reconocimiento con arranque por botón, y lo que se supone que son materiales de mejor calidad, entre otros elementos de seguridad y confort.', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(250) NOT NULL,
  `Password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `Usuario`, `Password`) VALUES
(1, 'Joaquin', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Pablo ', '81dc9bdb52d04dc20036dbd8313ed055');
--
-- Base de datos: `utn 1`
--
CREATE DATABASE IF NOT EXISTS `utn 1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `utn 1`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

DROP TABLE IF EXISTS `empleados`;
CREATE TABLE IF NOT EXISTS `empleados` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  `apellido` varchar(80) NOT NULL,
  `trabajo` varchar(80) NOT NULL,
  `edad` int(70) NOT NULL,
  `salario` int(200) NOT NULL,
  `email` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `apellido`, `trabajo`, `edad`, `salario`, `email`) VALUES
(1, 'Juan', 'Hagan', 'Programador Senior', 32, 120000, 'juan_hagan@bignet.com'),
(2, 'Gonzalo ', 'Pillai', 'Programador Senior', 32, 110000, 'g_pillai@bignet.com'),
(3, 'Ana ', 'Dharma', 'Desarrollador Web', 27, 90000, 'ana@bignet.com'),
(4, 'Maria ', 'Anchor', 'Desarrollador Web ', 26, 85000, 'mary@bignet.com'),
(5, 'Alfred', 'Fernandez', 'Programador', 31, 75000, 'af@bignet.com'),
(6, 'Juan ', 'Agüero', 'Programador', 36, 85000, 'juan@bignet.com'),
(7, 'Eduardo', 'Sacan', 'Programador', 25, 85000, 'eddi@bignet.com'),
(8, 'Alejandro', 'Nanda', 'Programador', 32, 70000, 'alenanda@bignet.com'),
(23, 'Juan', 'Lopez', 'Docente', 38, 1500, 'juanlopez@gmail.com'),
(10, 'Pablo ', 'Simon', 'Especialista Multimedia ', 43, 85000, 'ps@bignet.com'),
(11, 'Arturo ', 'Hernandez', 'Especialista Multimedia', 32, 75000, 'arturo@bignet.com'),
(12, 'Jimena', 'Cazado', 'Diseñador Web', 32, 110000, 'jimena@bignet.com'),
(13, 'Roberto', 'Luis', 'Administrador de sistemas', 35, 100000, 'roberto@bignet.com'),
(14, 'Daniel', 'Gutierrez', 'Administrador de sistemas', 34, 90000, 'daniel@bignet.com'),
(15, 'Miguel', 'Harper', 'Ejecutivo de Ventas Senior', 36, 120000, 'miguel@bignet.com'),
(16, 'Monica', 'Sanchez', 'Ejecutivo de ventas', 30, 90000, 'monica@bignet.com'),
(17, 'Alicia ', 'Simlai', 'Ejecutivo de ventas', 27, 72000, 'alicia@bignet.com'),
(18, 'Jose ', 'Iriarte', 'Ejecutivo de ventas', 27, 72000, 'jose@bignet.com'),
(19, 'Sabrina', 'Allende', 'Gerente de Soporte tecnico', 32, 200000, 'sabrina@bignet.com'),
(20, 'Pedro ', 'Campeon', 'Gerente de finanzas', 36, 220000, 'pedro@bignet.com'),
(21, 'Mariano ', 'Dharma', 'Presidente ', 28, 300000, 'mariano@bignet.com'),
(22, 'Francisco', 'Perez', 'Programador', 26, 90000, 'francisco@bignet.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

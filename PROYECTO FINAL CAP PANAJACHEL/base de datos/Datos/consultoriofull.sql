-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-03-2017 a las 22:20:14
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `consultoriofull`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja_tmp`
--

CREATE TABLE IF NOT EXISTS `caja_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paciente` varchar(255) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `cant` varchar(255) NOT NULL,
  `usu` varchar(255) NOT NULL,
  `id_consulta` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajero`
--

CREATE TABLE IF NOT EXISTS `cajero` (
  `usu` varchar(255) NOT NULL,
  `consultorio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cajero`
--

INSERT INTO `cajero` (`usu`, `consultorio`) VALUES
('112233444', '1'),
('017835432', '1'),
('026352271', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas_medicas`
--

CREATE TABLE IF NOT EXISTS `citas_medicas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` varchar(255) NOT NULL,
  `id_medico` varchar(15) NOT NULL,
  `consultorio` varchar(255) NOT NULL,
  `fechai` date NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `horario` time NOT NULL,
  `status` varchar(255) NOT NULL,
  `consulta` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas_medicas`
--

CREATE TABLE IF NOT EXISTS `consultas_medicas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` varchar(15) NOT NULL,
  `id_medico` varchar(15) NOT NULL,
  `consultorio` int(11) NOT NULL,
  `sintomas` text NOT NULL,
  `diagnostico` text NOT NULL,
  `tratamiento` text NOT NULL,
  `observaciones` text NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `status` varchar(255) NOT NULL,
  `tipo` varchar(12) NOT NULL,
  `consul` varchar(50) NOT NULL,
  `ant_per` text NOT NULL,
  `ant_fm` text NOT NULL,
  `peso` varchar(25) NOT NULL,
  `talla` varchar(25) NOT NULL,
  `ta` varchar(25) NOT NULL,
  `sc` varchar(25) NOT NULL,
  `pc` varchar(25) NOT NULL,
  `exlab` text NOT NULL,
  `vista` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultorios`
--

CREATE TABLE IF NOT EXISTS `consultorios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `encargado` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `consultorios`
--

INSERT INTO `consultorios` (`id`, `nombre`, `direccion`, `telefono`, `encargado`, `estado`) VALUES
(1, 'PEDIATRA Y NEFRÓLOGA PEDIATRA', 'HOSPITAL SAN FRANCISCO. 3? NIVEL LOCAL # 37', '(503)719-0918', 'DRA. JACKELINE JENNIFER SOSA DE GALD?MEZ', 's');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE IF NOT EXISTS `departamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE IF NOT EXISTS `detalle` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `factura` varchar(255) NOT NULL,
  `codigo` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `importe` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `consultorio` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `id` int(255) NOT NULL,
  `empresa` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nit` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `pais` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `web` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `moneda` varchar(22) COLLATE utf8_spanish_ci NOT NULL,
  `anno` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `empresa`, `nit`, `direccion`, `pais`, `ciudad`, `tel`, `fax`, `web`, `correo`, `fecha`, `moneda`, `anno`) VALUES
(1, 'CLÍNICA PEDIÁTRICA ', '123111-4565-455', 'HOSPITAL SAN FRANCISCO. 3', 'EL SALVADOR', 'SAN MIGUEL', '7190-9187', '2637-0374', 'www.cl', 'drasosa96@hotmail.com', '2017-03-10', '$', '2014');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE IF NOT EXISTS `eventos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `body` text COLLATE utf8_spanish_ci NOT NULL,
  `url` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `class` varchar(45) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'event-important',
  `start` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `end` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE IF NOT EXISTS `factura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factura` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(255) NOT NULL,
  `consultorio` int(11) NOT NULL,
  `usu` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamentos`
--

CREATE TABLE IF NOT EXISTS `medicamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consulta` varchar(11) NOT NULL,
  `paciente` varchar(11) NOT NULL,
  `med1` text NOT NULL,
  `indi1` text NOT NULL,
  `med2` text NOT NULL,
  `indi2` text NOT NULL,
  `med3` text NOT NULL,
  `indi3` text NOT NULL,
  `med4` text NOT NULL,
  `indi4` text NOT NULL,
  `med5` text NOT NULL,
  `indi5` text NOT NULL,
  `med6` text NOT NULL,
  `indi6` text NOT NULL,
  `med7` text NOT NULL,
  `indi7` text NOT NULL,
  `med8` text NOT NULL,
  `indi8` text NOT NULL,
  `med9` text NOT NULL,
  `indi9` text NOT NULL,
  `med10` text NOT NULL,
  `indi10` text NOT NULL,
  `med11` text NOT NULL,
  `indi11` text NOT NULL,
  `med12` text NOT NULL,
  `indi12` text NOT NULL,
  `med13` text NOT NULL,
  `indi13` text NOT NULL,
  `med14` text NOT NULL,
  `indi14` text NOT NULL,
  `med15` text NOT NULL,
  `indi15` text NOT NULL,
  `fecha` date NOT NULL,
  `consultorio` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

CREATE TABLE IF NOT EXISTS `medicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(25) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `departamento` varchar(255) NOT NULL,
  `municipio` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `estado` varchar(250) NOT NULL,
  `consultorio` int(11) NOT NULL,
  `especialidad` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `medicos`
--

INSERT INTO `medicos` (`id`, `documento`, `nombre`, `direccion`, `departamento`, `municipio`, `telefono`, `sexo`, `email`, `estado`, `consultorio`, `especialidad`) VALUES
(3, '', 'Mauricio Pineda Cruz', 'col. las buenas nuevas casa #23', '', '', '4329-4792', 'm', 'prueba@hotmail.com', 's', 1, 'prueba de datos'),
(4, '', 'Carlos Guevara Ponce', 'col. las pruebas de datos', '', '', '7327-9173', 'm', 'carlos@gamil.com', 's', 1, 'General');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE IF NOT EXISTS `municipios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `departamento` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE IF NOT EXISTS `pacientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(25) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `nomp` varchar(255) NOT NULL,
  `nomm` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `edad` date NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `refpor` varchar(255) NOT NULL,
  `estado` varchar(250) NOT NULL,
  `consultorio` int(11) NOT NULL,
  `control` varchar(25) NOT NULL,
  `feccita` date NOT NULL,
  `seguro` varchar(25) NOT NULL,
  `alergia` text NOT NULL,
  `enf_cro` text NOT NULL,
  `cuadro_vac` text NOT NULL,
  `ant_quir` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=459 ;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id`, `documento`, `nombre`, `direccion`, `nomp`, `nomm`, `telefono`, `edad`, `sexo`, `refpor`, `estado`, `consultorio`, `control`, `feccita`, `seguro`, `alergia`, `enf_cro`, `cuadro_vac`, `ant_quir`) VALUES
(1, '', 'ASLHEY NICOLE DE LA O SANCHEZ', 'COL. JARDINES DE SAN MIGUEL C.PRINCIPAL', 'JUAN FRANCISCO DE LA O SARAVIA', 'HILDA YANIRA DE LA O', '7288-3169', '2006-07-31', 'f', 'NADIE', 's', 1, '', '2016-06-03', 'rpn', '', '', '', ''),
(2, '', 'ASHLY SARAY MONTOLA MENJIVAR', 'B.EL CALVARIO 6AV. SUR S.M', 'NOE ABRAHAM MONTOYA CRUZ', 'ROXANA SARAY MENJIVAR CASTRO', '7471-2404', '2012-10-25', 'f', 'NADIE', 's', 1, '', '2016-03-14', 'sg', '', '', '', ''),
(3, '', 'ALICIA MICHEL RIVERA MACHADO', 'SAN LUIS DE LA REYNA', 'ROBERTO IVAN RIVERA RUIZ', 'MARINA ELIZABETH MACHADO MARQUEZ', '2680-1691', '2013-11-28', 'f', 'BESSY GISSELL VISTA EN EMERGENCIA', 's', 1, '', '2014-05-09', 'rpn', '', '', '', ''),
(4, '', 'ADELINE NAOMY MENJIVAR PENADO', 'URBANIZACION VIAS PJ 2', 'CARLOS EDUARDO MENJIVAR', 'JESSICA ELIZABETH PENADO', '7106-7953', '2000-02-11', 'f', 'NADIE', 's', 1, '', '2017-02-14', 'vivir', '', '', '', ''),
(5, '', 'ALYSSON MORELY UMANZOR GUZMAN', 'B. ROMA 3.CALLE ORIENTE CASA #11 CIUDAD BARRIOS', 'JUAN FRANCISCO UMANZOR', 'ZULMA YAMILETH GUZMAN FUENTES', '7573-7857', '2008-08-16', 'f', 'ROSARIO FLORES', 's', 1, '', '2015-11-11', 'vivir', '', '', '', ''),
(6, '', 'ALICIA MICHELLE VILLALOBOS VILLALOBOS', 'AV. LAS ROSAS C.LAS ORQUIDEAS LA TORRE CHINAMECA', 'JOSE RODOLFO VILLALOBOS', 'ROSA ALICIA ZELAYA VILLALOBOS', '7874-5798', '2008-09-06', 'f', 'NADIE', 's', 1, '', '2016-03-22', 'vivir', '', '', '', ''),
(7, '', 'AARON ESTEBAN TURCIOS MARQUEZ', 'RECIDENCIAL OBRAJUELO CASA # 8', 'AARON ESTEBAN TURCIOS', 'ROSIBEL MARQUEZ', '7596-6874', '2014-04-01', 'm', 'NADIE', 's', 1, '', '2016-03-08', 'sg', '', '', '', ''),
(8, '', 'ANA CRISTINA RIOS REYES', 'CASERIO EL AMATE INTIPUCA LA UNION', 'JOSE SAUL RIOS BAUTISTA', 'NUBIA YAMILETH REYES DE RIOS', '7602-7171', '2011-01-09', 'f', 'DRA; REBECA', 's', 1, '', '2016-12-16', 'rpn', '', '', '', ''),
(9, '', 'ALLISSON LISBETH MONTOYA MENJIVAR', 'B: EL CALVARIO 6 AV SUR S.M', 'NOE ABRAHAN MONTOYA CRUZ', 'ROXANA SARAY MENJIVAR CASTRO', '7471-2404', '2015-03-13', 'f', 'NADIE', 's', 1, '', '2016-03-14', 'sg', '', '', '', ''),
(10, '', 'ASHLY ADRIANA CHAVEZ MEJIA', 'CTON CONACASTE CASERIO LA CRUZ CHINAMECA', 'EDGARDO ELENILSON CHAVEZ RAMIREZ', 'ROXANA EMPERATRIZ MEJIA DE CHAVEZ', '7203-5992', '2015-07-20', 'f', 'UNIDAD DE SALUD DE LA PLACITA', 's', 1, '', '2016-02-02', 'vivir', '', '', '', ''),
(11, '', 'ASHLY NICOLL MARTINEZ QUINTANILLA', 'COL.CIUDAD JARDINES C. PONIENTE BLOK 2  S.M', 'JORGE LUIS MARTINEZ GUANDIQUE', 'ANA MARICELA QUINTANILLA DE MARTINEZ', '7574-4630', '2016-06-22', 'f', 'NADIE', 's', 1, '', '2016-08-23', 'sg', '', '', '', ''),
(12, '', 'ANA JACKELINE REYES FERMAN', 'SANTA ROSA DE LIMA', 'JOSE SANTOS BLANCOS', 'MARTHA LIDIA GARCIA DE BLANCO', '7586-8553', '1989-11-17', 'f', 'EDWIN ROMERO PEREZ', 's', 1, '', '2014-07-04', 'ninguno', '', '', '', ''),
(13, '', 'ANGELA ABIGAIL MEDRANO RODRIGUEZ', 'CTON.CHILANGUERA HACIENDA VIEJA MUNICIPIO DE CHIRILAGUA', 'JOSE JUAN MEDRANO PORTILLO', 'SARA NOHEMY RODRIGUEZ', '7883-9115', '2003-08-21', 'f', 'DR. DE OSTORGA', 's', 1, '', '2016-08-20', 'ninguno', '', '', '', ''),
(14, '', 'ARIANA ISABELLA BONILLA ALVARENGA', 'COLONIA BRISAS DEL EDEN S.M', 'JOSE ERIBERTO ALVARENGA', 'EVELYN PATRICIA ALVARENGA', '7554-4279', '2013-04-29', 'f', 'DIEGO JOSE ALVARENGA', 's', 1, '', '2013-07-18', 'ninguno', '', '', '', ''),
(15, '', 'ALEJANDRA ELIZABETH ZELAYA FLAMENTO', 'SANTIAGO DE MARIA', 'JUAN CARLOS FLAMENCO', 'ALEJANDRA MARIA FLAMENCO', '7722-1528', '2011-12-05', 'f', 'MADRE TRABAJA EN EL BANCO', 's', 1, '', '2016-06-11', 'ninguno', '', '', '', ''),
(16, '', 'ASTRID RENE GOMEZ VASQUEZ', 'B.SAN JOSE BERLYN', 'BRAYAN EMANUEL GOMEZ HERNANDEZ', 'YESSENIA LISETH VASQUEZ', '7041-0871', '2013-08-25', 'f', 'NORMA CECILIA VILLALOBOS', 's', 1, '', '2016-09-30', 'ninguno', '', '', '', ''),
(17, '', 'ARIANA BELEN RODRIGUEZ GONZALES', 'B. EL CENTRO JUCUAPA', 'WILBER SANTIAGO RODRIGUEZ', 'ESTER ELIZABETH GONZALES', '7222-6463', '2016-01-27', 'f', 'NADIE', 's', 1, '', '2016-09-07', 'ninguno', '', '', '', ''),
(18, '', 'ASRTID SARAY VIERA RODRIGUEZ', 'COL. EL TOSESA AV. BENEZUELA ', 'CESAR EMILIO VIERA TREJO', 'MAIRA YESSENIA RODRIGUEZ VIERA', '7943-0860', '2015-05-12', 'f', 'REBECA ESPERANZA LOPEZ', 's', 1, '', '2016-05-04', 'ninguno', '', '', '', ''),
(19, '', 'ALYSON MICHELLE MENDOZA MORENO', '2AV.NORTE CSA 4 JOCORO MORAZAN', 'LUIS ALONSO MENDOZA URQUIA', 'MARIA MAUDALENA MORENO MONTIEL', '7880-0316', '2011-02-11', 'f', 'NINGUNO', 's', 1, '', '2017-02-25', 'ninguno', '', '', '', ''),
(20, '', 'ASHLY MICHEL HERNANDEZ CAMPOS', 'MERCEDEZ UMANA', 'JUNIOR HERNANDEZ HERNANDEZ', 'ANDREA LORENA CAMPOS', '6026-2724', '2012-02-20', 'f', 'DR.CAMPOS', 's', 1, '', '2016-05-07', 'ninguno', '', '', '', ''),
(21, '', 'ASHY STACY HERNANDEZ ALVARADO,GENESIS FABIANA, HNAS', 'COL. EL MOLINO CALLE AL RIO 48 S.M', 'OSCAR RENE HERNANDEZ', 'JESSICA ALVARADO', '7921-5656', '2009-09-21', 'f', 'DRA.AVILES', 's', 1, '', '2010-11-12', 'ninguno', '', '', '', ''),
(22, '', 'ADRIANA CRISTINA GARCIA ALVARENGA', 'COL. BRISAS DEL EDEN PASAJE LOS NARANJOS # 6', 'SAUL ALFREDO GARCIA', 'KEREN ELIZABETH ALVARENGA', '7730-0219', '2013-01-23', 'f', 'DIEGO ALVARENGA', 's', 1, '', '2013-02-19', 'ninguno', '', '', '', ''),
(23, '', 'ASHLY NICOLL GUEVARA GRANADOS', 'COL.LA GLORIA CTON LLANO GRANDE JUCUAPA', 'JOSE GUEVARA', 'LAURA BEATRIZ GRANADOS CHAVEZ', '7595-1960', '2012-05-16', 'f', 'NADIE', 's', 1, '', '2015-06-01', 'ninguno', '', '', '', ''),
(24, '', 'ANDERSON ALEJANDRO GRANADOS GUZMAN', 'CTON TAPETATE DE NUEVA ESPARSA', 'JOSE GRANDOS', 'SONIA JESSENIA GUZMAN', '7266-1135', '2013-06-16', 'm', 'DR.ELIAS', 's', 1, '', '2013-10-04', 'ninguno', '', '', '', ''),
(25, '', 'ASHLY SOHANY CASTRO VASQUEZ', 'CTON MONTE FRESCO CALLE CEMENTERIO USULUTAN', 'OSCAR RENE VASQUEZ', 'LORENA LISSETH CASTRO', '7802-4942', '2012-11-03', 'f', 'DRA. AZALEA VASQUEZ', 's', 1, '', '2015-09-18', 'ninguno', '', '', '', ''),
(26, '', 'ALLISON DANIELA CARRANZA', 'CASERIO PUNTA JOCOTE, CANTON GUISQUIL, LA UNION', 'OSCAR ANTONIO CARRANZA', 'IRIS IVANIA CARRANZA', '7202-5867', '2016-04-05', 'f', 'NADIE', 's', 1, '', '2017-01-27', 'NINGUNO', '', '', '', ''),
(27, '', 'ANDERSON MATEO MARTINEZ ARAGON', 'CIUDAD EL TRIUNFO CTON. LAS FLORES DTO. USULUTAN', 'JOSE MIXTO MARTINEZ', 'CLAUDIA ROXANA ARAGON MARTINEZ', '7483-5162', '2013-12-13', 'm', 'DR. LUIS MIGUEL CARRANZA', 's', 1, '', '2016-08-08', 'ninguno', '', '', '', ''),
(28, '', 'ADRIANA AZUCENA ROMERO RODRIGUEZ', 'PLAYA EL ESPINO', 'DAVID ROMERO ', 'JACKELINE AZUCENA RODRIGUEZ ORELLANA', '7247-1714', '2015-02-10', 'f', 'NADIE', 's', 1, '', '2016-02-25', 'ninguno', '', '', '', ''),
(29, '', 'ASIER ISAIAS MARAVILLA RAMIREZ', 'COL. SANTA EMILIA PJE # 2 S.M', 'MELVIN DE JESUS MARAVILLA GRANADOS', 'WENDY MARISOL RAMIREZ DE MARAVILLA', '7503-5285', '2015-11-12', 'm', 'NADIE', 's', 1, '', '2015-11-18', 'ninguno', '', '', '', ''),
(30, '', 'ALLISON EUNICE ABARCA VILLACORTA', 'COL. PRADO DE S.M CALLE RIO GRANDE', 'JONATHAN JOSUE ABARCA', 'SONIA ESTELA VILLACORTA', '7214-7566', '2015-03-13', 'f', 'GENESSIS ALYEEN HNA', 's', 1, '', '2015-03-31', 'ninguno', '', '', '', ''),
(31, '', 'ANTONY ALEXIS DEL CID MORENO', 'COL. VILLA  SATELITE FINAL C. ESPAÑA', 'RONAL ALEXIS DEL CID', 'NANCY CAROLINA MORENO', '7681-0995', '2015-12-31', 'm', 'JUAN ANTONIO', 's', 1, '', '2016-04-01', 'ninguno', '', '', '', ''),
(32, '', 'ANDREA BERENICE DURAN CRUZ', 'B. SAN ANTONIO OXANTLAN USULUTAN', 'ENMANUEL ALEXANDER BERMUDEZ', 'LILIAN MARISO CRUZ', '7894-5639', '2011-12-02', 'f', 'DR. MUNOZ', 's', 1, '', '2016-08-27', 'ninguno', '', '', '', ''),
(33, '', 'ADRIANA XIMENA PORTILLO HERNANDEZ', 'COL. CIUDAD PASIFICA P.D53 C. LOS LAURELES', 'ERIK ODIR PORTILLO', 'VERONICA LISETH HERNANDEZ PORTILLO', '7842-4595', '2014-10-07', 'f', 'JUAN ISAAC CORTEZ MARADIAGA', 's', 1, '', '2016-10-06', 'ninguno', '', '', '', ''),
(34, '', 'ASHLY RAQUEL GUZMAN CENTENO', 'EGIDOS MONCAGUA', 'NELSON GUZMAN', 'ANA RUTH CENTENO DE GUZMAN', '7732-2175', '2010-12-21', 'f', 'NADIE', 's', 1, '', '2013-05-15', 'ninguno', '', '', '', ''),
(35, '', 'ALISON DEL ROSARIO SALAMANCA DIAZ', 'CTON EL NINO S.M', 'GERMAN ANTONIO RIVAS', 'MIRNA DEL CARMEN RIVAS', '7334-4718', '2013-06-14', 'f', 'DR. ZULETA', 's', 1, '', '2013-07-23', 'ninguno', '', '', '', ''),
(36, '', 'MILICA ARGELIA PADILLA', 'COL. CONDE MUNOZ', 'HENRRY PADILLA', 'MILICA HERNANDEZ', '7854-4643', '2008-03-26', 'f', 'AZUCENA AREVALO', 's', 1, '', '2015-08-29', 'ninguno', '', '', '', ''),
(37, '', 'AMANDA GISSEL TREJO ESCOBAR', 'CIUDAD BARRIOS AV. GERARDO BARRIOS 3 78 S.M', 'DAVID TREJO', 'MARIA CONCHITA ESCOBAR DE TREJO', '7037-6619', '2016-04-15', 'f', 'VALERY TREJO HNA', 's', 1, '', '2016-08-11', 'ninguno', '', '', '', ''),
(38, '', 'ALLISON MERARY ESPINOSA AMAYA', 'COL.MILAGRO DE LA PAZ AV. COMUNAL CALLE ORIENTE #12 S.M', 'SALVADOR ESPINAL', 'MIRNA MARIBEL AMAYA', '7554-3307', '2011-10-26', 'f', 'DRA. CUBIAS', 's', 1, '', '2015-01-06', 'ninguno', '', '', '', ''),
(39, '', 'ALYSSA ELIEH ZULETA FUENTES', 'URBANIZACION LOS PINOS PJE BOU BLOK 2 # 9 S.M', 'MARIO ZULETA', 'KAREN PATRICIA FUENTES DE ZULETA', '7921-6680', '2011-10-23', 'f', 'ES PRIMO DRA', 's', 1, '', '2011-10-24', 'paligmed', '', '', '', ''),
(40, '', 'ANDREA ESMERALDA BARAHONA FUNES', 'JIQUILISCO B. LA MERCED', 'DAVID BARAHONA BARAHONA', 'MARLENY ESMERALDA FUNES RIVERA', '7742-6010', '2011-06-11', 'f', 'CARLA DANIELA BARAHONA', 's', 1, '', '2017-02-21', 'ninguno', '', '', '', ''),
(41, '', 'AXELL BRAYDEN AYALA BERMUDEZ', 'COL. SOLOMA MERCEDEZ UMANA', 'MIGUEL AYALA', 'MARICELA BERMUDEZ', '7267-1140', '2016-07-07', 'f', 'HNO DE KINBERLY VALENTINA', 's', 1, '', '2016-08-19', 'acsa', '', '', '', ''),
(42, '', 'ANDREA ELIZABETH LARA COREA', 'CTON SANTA ANITA MERCEDES UMANA', 'CARLOS ANTONIO LARA', 'CRISTINA ISABEL COREA', '6132-5333', '1997-05-15', 'f', 'DR. MARIO LOPEZ ELIAS', 's', 1, '', '2015-06-10', 'ninguno', '', '', '', ''),
(43, '', 'ANGELA SARAHI SEPEDA SALAMANCA', 'CO. MILAGRO DE LA PAZ. C. CARDENAS S.M', 'NO TIENE', 'SANDRA NOHEMY SALAMANCA', '7879-3050', '2010-02-12', 'f', 'SECRETARIA DE LA DRA LEYVA', 's', 1, '', '2017-01-23', 'ninguno', '', '', '', ''),
(44, '', 'ANA MARILYN RODRIGUEZ HERNANDEZ', 'FINAL 4C. PONIENTE LOTIFICACION JUCUAPA # 1', 'JOSUE ISAI RODRIGUEZ', 'ANA MIRIAM HERNANDEZ', '1111-1111', '2001-11-19', 'f', 'DR. MUNOZ', 's', 1, '', '2015-11-17', 'ninguno', '', '', '', ''),
(45, '', 'ALFONSO JOSE MARTINEZ MAGANA', 'COL. PRADO DE SAN MIGUEL', 'JOSE MARTINEZ CASTRO', 'MIREYA YAMILETH MAGANA SALAZAR', '7745-2990', '2012-12-20', 'm', 'MADRE TRABAJA EN ELHOSPITAL NACIONAL', 's', 1, '', '2016-07-07', 'ninguno', '', '', '', ''),
(46, '', 'ANGEL FARID CANAS', 'COL. SATELITE DE ORIENTE AV. CAPRICORNIO POLIG E CASA # 35', 'NO TIENE', 'JAQUELINE XIOMARA CANAS', '7234-1073', '2000-08-13', 'm', 'JAQUELINE ANESTESISTA', 's', 1, '', '2016-08-23', 'ninguno', '', '', '', ''),
(47, '', 'AZUCENA DEL CARMEN POSADA HERNANDEZ', 'CASERIO PLANON SAMURIA MUNICIPIO DE JUCUARAN', 'JOSE SANTOS POSADA CRUZ', 'MARIA DE LA PAZ HERNANDEZ DIAZ', '7514-2010', '2001-12-24', 'f', 'ZULEIMA SAN JUAN', 's', 1, '', '2013-08-14', 'ninguno', '', '', '', ''),
(48, '', 'ANGEL JOSUE RAMOS MENBRENO', 'CTON EL GIOTE CHAPELTIQUE S.M', 'ANGEL BALBINO RAMOS', 'GLORIA MARIBEL MEMBREÑO', '7848-9432', '2000-12-23', 'm', 'B.M', 's', 1, '', '2015-06-01', 'otros', '', '', '', ''),
(49, '', 'ANDERSON RAFAEL CHICAS MARTINEZ', 'PERQUIN B. EL POR VENIR', 'JOSUE RAFAEL CHICAS NOLASCO', 'KATIA MARIA MUNEZ MARTINEZ', '7923-8222', '2013-06-26', 'm', 'MAGALY', 's', 1, '', '2014-06-11', 'ninguno', '', '', '', ''),
(50, '', 'ARIEL ESAU REYES IGLESIAS', 'CTON EL MANSAL SANTA ELENA USULUTAN', 'MOISES ESAU REYES', 'MORENA YAMILETH IGLESIAS MARTINEZ', '7242-4839', '2008-02-18', 'm', 'DR. MENDOZA', 's', 1, '', '2016-08-15', 'ninguno', '', '', '', ''),
(51, '', 'ANGEL RENE HESKE SOLORZANO', '18C. PONIENTE #307 B. SAN FRANCISCO', 'LUIS ENRRIQUE', 'RAYSA PAOLA HESKE', '7892-0027', '2002-06-17', 'm', 'PAPA TRABAJA EN EL LABORATORIO ', 's', 1, '', '2016-06-20', 'ninguno', '', '', '', ''),
(52, '', 'ARIANA MAKENCY SERRANO MENBRENO', 'SANTA ELENA', 'RAUL ERNESTO SERRANO', 'KARINA LISSETH MENBRENO', '7376-3597', '2015-10-03', 'f', 'SE VE EN USULUTAN', 's', 1, '', '2016-08-26', 'ninguno', '', '', '', ''),
(53, '', 'ARLY VALERIA AGUILAR', 'B. EL CALVARIO MERCEDEZ UMANA', 'NO TIENE', 'LILIAN MARICELA AGUILAR', '7497-0588', '2001-12-02', 'f', 'DR. MUNOZ', 's', 1, '', '2016-01-23', 'ninguno', '', '', '', ''),
(54, '', 'ASHLY GISELL GONZALES ALVAREZ', 'PLAYAS LAS TUNAS MUNICIPIO CONCHAGUA LA UINON', 'BLANCA ANABEL ALVAREZ', 'ULISES GONZALEZ', '7922-8356', '2000-10-17', 'f', 'NADIE', 's', 1, '', '2016-01-02', 'ninguno', '', '', '', ''),
(55, '', 'ALICE NICOLL SEGOVIA VILLACORTA', 'CTON EL BORBOLLON EL TRANCITO S.M', 'ROBERTO ANTONIO SEGOVIA', 'JOSELYN VILLACORTA', '7849-8023', '2014-05-18', 'f', 'NADIE', 's', 1, '', '2014-10-27', 'ninguno', '', '', '', ''),
(56, '', 'AARON EZEQUIEL FLORES FLORES', 'NUEVA GUADALUPE COL. ESPERANZA # 2 C. #6', 'JOSE RENE FLORES', 'ERIKA JOHANA FLORES', '7051-2774', '2015-03-02', 'm', 'MADRE ENFERMERA DEL SAN FRANCISCO', 's', 1, '', '2015-08-24', 'ninguno', '', '', '', ''),
(57, '', 'ASHLY MELISSA MARQUEZ ANDRADES', 'EL CARMEN LA UNION', 'ALEXIS ANDRADES', 'BRENDA ARACELY MARQUEZ', '7270-7596', '2015-03-13', 'f', 'DRA. EDITH MARTINEZ', 's', 1, '', '2015-08-20', 'ninguno', '', '', '', ''),
(58, '', 'ANTONY JOSE URIAS VARGAS', 'CASERIO CTON LAS LOMITAS S.M', 'JOSE FERNANDO URIAS', 'GLORIA MELISSA VARGAS', '7694-4736', '2013-05-03', 'm', 'ESTUBO INGRESADA', 's', 1, '', '2016-04-27', 'ninguno', '', '', '', ''),
(59, '', 'ANA ISABEL ROMERO', 'COL. VIA SATELITE C. SAN PABLO CASA #4 S.M', 'NO TIENE', 'GLORIA ISABEL ROMERO', '7939-7442', '2008-02-14', 'f', 'NADIE', 's', 1, '', '2010-09-23', 'ninguno', '', '', '', ''),
(60, '', 'ANDERSON STEVEN VENTURA SANCHEZ', 'CTON HATONUEVO', 'EDILBERTO VENTURA', 'ROSA EVELIN SERPAS', '7227-9957', '0000-00-00', 'm', 'SOBRINO DE JOSE ILMER', 's', 1, '', '2013-12-26', 'ninguno', '', '', '', ''),
(61, '', 'ANGEY PAOLA RIVERA BOQUIN', 'CO.AURORA S.M', 'CARLOS JONATHAN RIVERA', 'KATHERIN ESTEFANY BOQUIN', '7224-8204', '2016-10-07', 'f', 'JADE', 's', 1, '', '2016-10-14', 'ninguno', '', '', '', ''),
(62, '', 'ALICIA MARISOL RUBIO PINEDA', 'CTON EL ALGODON LA UNION', 'OSCAR PEDRO RUBIO', 'YESSENIA DEL CARMEN PINEDA', '7961-9806', '2009-04-24', 'f', ' OSCAR DANIEL RUBIO', 's', 1, '', '2015-06-11', 'ninguno', '', '', '', ''),
(63, '', 'ASHLY NICOLL MARTINEZ PORTILLO', 'CITIO CALLEO ANTIGUO QUELEPA CASA #3 S.M', 'LEOPOLDO MARTINEZ DE LA O', 'ZUMILDA DEL CARMEN PORTILO MARTINEZ', '7849-9980', '2006-05-15', 'f', 'HNA DE LEONARDO', 's', 1, '', '2015-08-26', 'ninguno', '', '', '', ''),
(64, '', 'ARIEL ISAAC ROMERO CHAVEZ', 'B. EL CENTRO JOCORO MORAZAN', 'CRISTOBAL ISAAC ROMERO', 'ELBA ROCIO CHEVEZ DE ROMERO', '7940-6375', '2003-06-02', 'm', 'DRA. EVELYN LIZZETTE GRANADOS', 's', 1, '', '2015-09-09', 'ninguno', '', '', '', ''),
(65, '', 'ALEXA DANIELA CRUZ CRUZ', 'CTON EL JICARO LA UNION', 'JAVIER ENRRIQUE CRUZ REYES', 'YOLANDA ESTELA CRUZ', '7189-6631', '2014-06-02', 'f', 'DR. VILLACORTA', 's', 1, '', '2015-07-20', 'ninguno', '', '', '', ''),
(66, '', 'ASHLY VANESSA PAIZ ESPINOSA', 'CTON MIRAFLORES KILOMETROS 15 CARRETERA LA UNION', 'JUAN ANTONIO PAIZ GUEVARA', 'BERTHA VANESSA ESPINOSA DE PAZ', '7112-1353', '2006-11-06', 'f', 'TRABAJA EN UNIDAD DE SALUD PROMOTORA', 's', 1, '', '2015-09-05', 'ninguno', '', '', '', ''),
(67, '', 'ARIEL ADONIAS SALAMANCA HERNANDEZ', 'CTON YANO GRANDE DE JUCUAPA  CASERIO EL CRUSERO', 'EVER BENJAMIN SALAMANCA PORTILLO', 'SONIA MABEL HERNANDEZ VILLACORTA', '7930-5305', '2015-12-15', 'f', 'DR.LUIS MIGUEL CAERANZA', 's', 1, '', '2016-01-20', 'ninguno', '', '', '', ''),
(68, '', 'ASHLY JIMENA HERNANDEZ HERRERA', 'RECIDENCIAL PORTAL DE BARCELONA', 'WILSON ANTONIO HERNANDEZ', 'ROSA DINA HERRERA', '7527-9835', '2009-09-26', 'f', 'DRA. KAREN LORENA ELIAS FONES SEGURO SOCIAL', 's', 1, '', '2016-05-14', 'ninguno', '', '', '', ''),
(69, '', 'ANA PATRICIA GARCIA CHICAS', 'URBANIZACION LAS PALMAS', 'JUAN GARCIA SERRANO', 'MARIA PATRICIA CHICAS', '7516-7283', '2015-04-23', 'f', 'DR.CRUZ', 's', 1, '', '2016-11-08', 'ninguno', '', '', '', ''),
(70, '', 'ALISSON ALEJANDRA CHAVEZ GOMEZ', 'CTON EL VOLCAN CASERIO LA MIANGUERA', 'VICTOR ALEXANDER CHAVEZ CHAVEZ', 'ELSY NOHEMY GOMEZ SEGOVIA', '7507-9358', '2010-02-15', 'f', 'NICOLL', 's', 1, '', '2016-02-02', 'ninguno', '', '', '', ''),
(71, '', 'ARIANA YARELY VELASQUEZ', 'CTON SAN FELIPE CASERIO SALMON', 'JOSE OMAR VELASQUEZ', 'MARGARITA ABIGAIL GOMEZ', '7500-9212', '0000-00-00', 'f', 'MUNOZ', 's', 1, '', '2015-02-25', 'ninguno', '', '', '', ''),
(72, '', 'ANDREA LISSETH DEL CID VILLACORTA', 'B. EL CALVARIO GUAGIAGUA MORAZON', 'ELMER JOSE DEL CID', 'KENIA ELIZABETH VILLACORTA', '7526-1621', '2014-02-13', 'f', 'ESTUBO INGRESADO SAN FRANCISCO', 's', 1, '', '2015-02-14', 'ninguno', '', '', '', ''),
(73, '', 'ASHLY YANETH LOPEZ ESCOBAR', 'COMACARAN CTON PLATAMURILLO S.M', 'EDGAR LOPEZ', 'SANTOS ISABEL ESCOBAR', '7676-9432', '2012-05-16', 'f', 'BRAYAN SAUL', 's', 1, '', '2016-06-29', 'ninguno', '', '', '', ''),
(74, '', 'ANGELA GABRIELA REYES GARCIA', 'PALO BLANCO S.M', 'SANTOS REYES', 'SANDRA ARELY GARCIA RIVERA', '7559-1604', '2010-11-22', 'f', 'SOBRINA DE LA SECRETARIA DE LA DR. BRIZUELA', 's', 1, '', '2015-06-09', 'ninguno', '', '', '', ''),
(75, '', 'ALLISON NAHOMY  GOMEZ FUNES', 'CTON YANO DE SANTIAGO EL DIVISADERO', 'MANUEL ANTONIO GOMEZ CONTRERA', 'BESSY MAGALI FUNES', '6009-9869', '2004-09-17', 'f', 'NADIE', 's', 1, '', '2015-08-25', 'rpn', '', '', '', ''),
(76, '', 'ABBY REBECA CHICAS HERNANDEZ', 'B. ROJAS CIUDAD BARRIOS', 'JOVEL ISAI CHICAS', 'MARIA LOURDES HERNANDEZ', '7529-2914', '2014-07-02', 'f', 'NIÑA FATIMA', 's', 1, '', '2015-08-24', 'ninguno', '', '', '', ''),
(77, '', 'ASHLY AZUCENA CAMPOS OCHOA', 'CTON PRIMAVERA EL TRANCITO', 'DOUGLAS BLADIMIR CAMPOS ROMERO', 'ANA BEATRIZ OCHOA CHAVEZ', '7206-0952', '2016-03-31', 'f', 'SE VE EN USULUTAN', 's', 1, '', '2017-03-04', 'ninguno', '', '', '', ''),
(78, '', 'AXEL SANTIAGO MANZANO CHAVEZ', 'BARRIO EL CALVARIO SAN ALEJO LA UNION', 'WILLIAN ERNESTO MANZANO', 'EDITH MAGDALENA MANZANO CHAVEZ', '7483-8689', '2016-07-27', 'm', 'WILIAN ALEXIS HNO', 's', 1, '', '2017-03-06', 'ninguno', '', '', '', ''),
(79, '', 'BETANY EUNICE FIALLOS', 'CTON EL ROSARIO CASERIO LAS CONCHAS', 'MARCOS JOSE MARINEZ', 'ERIKA MARISOL FIALLOS', '7926-3416', '2012-06-19', 'f', 'ODALIS', 's', 1, '', '2013-01-25', 'ninguno', '', '', '', ''),
(80, '', 'BRENDA LUCIA GALDAMEZ', 'B.EL CENTRO CESORI S.M', 'JOSE ISAIAS GALDAMEZ', 'ROSA MIRIAM CRUZ', '7939-2721', '2007-04-16', 'f', 'DR. MUNOZ MARQUEZ', 's', 1, '', '2016-06-22', 'ninguno', '', '', '', ''),
(81, '', 'BRITANY NAHOMY RODRIGUEZ CHICAS', 'CASERIO STA FIDELIA CTON LA CANOA', 'LUIS ALCIDEZ RODRIGUEZ', 'TANIA ESTEFANY CHICAS', '7252-1196', '2016-07-01', 'f', 'FUE VISTO EN EMERGENCIA', 's', 1, '', '2017-01-13', 'ninguno', '', '', '', ''),
(82, '', 'BRAYAN ALEJANDRO JOVEL GUZMAN', 'CTON LA CANOA HACIENDA LOS LLANITOS', 'JOSE HUMBERTO JOVEL', 'MARIA MAUDALENA', '7543-2035', '2009-07-21', 'm', 'KIMBERLY SAMALY HNO', 's', 1, '', '2015-05-28', 'ninguno', '', '', '', ''),
(83, '', 'BASTIAN ANDRES GUERRERO', 'COL.CIUDAD PASIFICA POLG 19.C CASA #52', 'MARIO ARMANDO GUERRERO', 'ALBA LUZ TELLES CHAVEZ', '7285-4396', '2014-07-11', 'm', 'SE VIO EN EMERGENCIA', 's', 1, '', '2016-06-23', 'ninguno', '', '', '', ''),
(84, '', 'BESSY GISELL RIVERA MACHADOS', 'SAN LUIS DE LA REYNA', 'ROBERTO IVAN RIVERA RUIUZ', 'MARINA ELIZABETH MACHADO MARQUEZ', '2680-1691', '2010-01-23', 'f', 'SE VIO EN EMERGENCIA', 's', 1, '', '2014-08-12', 'rpn', '', '', '', ''),
(85, '', 'BRITANY NAHOMY RODRIGUZ CHICAS', 'CASERIO STA FIDELIA CTON LA CANOA', 'LUIS ALCIDEZ RODRIGUEZ', 'TANIA ESTEFANY RODRIGUZ', '7252-1196', '2015-07-01', 'f', 'FUE VISTO EN EMERGENCIA', 's', 1, '', '2017-01-13', 'ninguno', '', '', '', ''),
(86, '', 'BRAYAN SAUL AMAYA ', 'CTON PLATANILLO COMARAN', 'JOSE ALCIDEZ AMAYA', 'REYNA MARINA SIERRA', '6116-7276', '2008-11-07', 'm', 'DIEGO ALESSANDRO', 's', 1, '', '2016-04-02', 'ninguno', '', '', '', ''),
(87, '', 'BRITANY VIOLETA CERON ', 'RECIDENCIAL SAN ANDRES PJE # 31', 'OSCAR ARMANDO SEGOVIA', 'CAROLINA ESMERALDA GOMEZ', '7927-9265', '2011-09-15', 'f', 'ESTUBO INGRESADO', 's', 1, '', '2016-08-19', 'ninguno', '', '', '', ''),
(88, '', 'BERTHA MELISSA MARTINEZ', 'LAS GUATERAS JOCOARAN', 'NO SABE', 'IRIS YAMILETH MARTINEZ', '7995-8458', '2002-02-26', 'f', 'DRA. MOLINA', 's', 1, '', '2012-04-17', 'ninguno', '', '', '', ''),
(89, '', 'BERENICE GUADALUPE CERRITOS', 'RECEDENCIAL SAN ANDRES', 'SALOMON CERRITOS GRANILLOS', 'MIRIAM ANTONIA DE CERRITOS', '7450-3741', '2016-03-08', 'f', 'DR. PRADO', 's', 1, '', '2017-02-17', 'ninguno', '', '', '', ''),
(90, '', 'BRAYAN ERNESTO BOLAÑOS GUTIERREZ', 'B. EL CALVARIO GUATAJIAGUA', 'SAMUEL ERNESTO BOLANOS', 'RUTH ESTEFANY', '7538-1214', '2014-03-04', 'm', 'SE VE EN EL SAN JUAN', 's', 1, '', '2017-02-01', 'ninguno', '', '', '', ''),
(91, '', 'BRANDO JOSUE VILLEGA FERNANDEZ', 'COL. SAN JOSE AV. SAN ANTONIO #21-A S.M', 'SAUL VILLEGA ', 'MIRIAN DEL CARMEN FERNANDEZ', '7727-6787', '2015-06-24', 'm', 'NADIE', 's', 1, '', '2016-10-21', 'ninguno', '', '', '', ''),
(92, '', 'BRAYAN STIVEN RIVAS MEDRANO', 'CTON EL RODEO DE PETRON SAN RAFAEL ORIENTE', 'GEBER ALEXANDER RIVAS', 'GERARDA MEDRANO SARAVIA', '7588-2996', '2010-09-25', 'm', 'DR. CASTILLO', 's', 1, '', '2014-02-28', 'ninguno', '', '', '', ''),
(93, '', 'BRITAY ESTEFANY GONZALES ENRRIQUEZ', 'CASERIO EL TERNERO CTON COMACARAN S.M', 'JOSE NOEL ENRRIQUEZ', 'ALICIA NOHEMY GONZALES', '7410-9928', '2008-05-13', 'f', 'NADIE', 's', 1, '', '2016-10-26', 'ninguno', '', '', '', ''),
(94, '', 'BETANY EUNICE FIALLOS', 'CTON EL ROSARIO CASERIO LAS CONCHAS', 'MARCOS JOSE MARTINEZ', 'ERIKA MARISOL FIALLOS', '7926-3416', '2012-06-19', 'f', 'ODALIS', 's', 1, '', '2013-01-25', 'ninguno', '', '', '', ''),
(95, '', 'CARLOS ALESSANDRO PORTILLO REYES', 'COL. URBEZA PJ P.B # 15', 'CARLOS ROBERTO PORTILLOS', 'GABRIELA VANESSA REYES CHICAS', '7584-6900', '2016-01-23', 'm', 'DAYANA CAMILA', 's', 1, '', '2017-02-01', 'ninguno', '', '', '', ''),
(96, '', 'CARLOS EDENILSON BERMUDEZ FLORES', 'COL. EL CARMEN CIUDAD EL TRIUNFO', 'JUAN CARLOS MEJIA BERMUDEZ', 'MARYORY ELIZABETH FLORE DE BERMUDEZ', '7939-4333', '2003-04-22', 'm', 'DR. JAIME ARTURO CARDENAS', 's', 1, '', '2015-05-19', 'ninguno', '', '', '', ''),
(97, '', 'CECIA ELIZABETH BARAHONA', 'CAROLINA B. EL CENTRO', 'JOSE NELSON ORELLANA', 'ANA ELIZABETH BARAHONA', '6198-2963', '2010-06-16', 'f', 'JOSUE AMADEO BARAHONA', 's', 1, '', '2014-06-10', 'ninguno', '', '', '', ''),
(98, '', 'CARLOS DAVID MEJIA PORTILLO', 'CAROLINA', 'JUAN CARLOS MEJIA', 'MARILYN JUDITH PORTILLO', '7264-3742', '2011-07-29', 'm', 'NADIE', 's', 1, '', '2017-03-23', 'ninguno', '', '', '', ''),
(99, '', 'CINDY ELIZABETH CHAVEZ MAJANO', 'URB. BARCELONA C. CATALINA POL.# 1# 14', 'ALBERTO CHAVEZ', 'MARTA ALICIA MAJANO', '7582-1196', '2005-08-07', 'f', 'NADIE', 's', 1, '', '2013-07-09', 'ninguno', '', '', '', ''),
(100, '', 'CLAUDIA DANIELA AGUIRRE CRUZ', 'CTON PLANES 2. CHINAMECA', 'RICARDO BONILLA', 'CECILIA AGUIRRE', '7160-0127', '2007-09-26', 'f', 'NADIE', 's', 1, '', '2016-07-04', 'ninguno', '', '', '', ''),
(101, '', 'CRISTIAN JEOVANY MARTINEZ', 'SAN ALEJO', 'DANI RYNADLDO SOSA', 'MEYBI LORENA MARTINEZ', '7252-0609', '2005-01-04', 'm', 'JUANA SANCHEZ DE OSTORGA', 's', 1, '', '2015-05-25', 'ninguno', '', '', '', ''),
(102, '', 'CARLOS JAVIER PEREZ SARAVIA', 'COL. SANTA MARIA C. PRINCIPAL CASA # 33', 'CARLOS ROBERTO PEREZ MARTINEZ', 'SILVIA LORENA SARAVIA APARICIO', '7213-6118', '2002-03-25', 'm', 'NADIE', 's', 1, '', '2012-07-13', 'ninguno', '', '', '', ''),
(103, '', 'CESAR EDUARDO SEGOVIA', 'FINAL 8. C. PTE PJ.1 CASA # 4 C.CURY S.M', 'JOSE HECTOR RODRIGUEZ', 'MARTINA DEL ROSARIO SEGOVIA BERMUDEZ', '7251-0787', '2001-10-14', 'm', 'NADIE', 's', 1, '', '2013-10-16', 'ninguno', '', '', '', ''),
(104, '', 'CARLOS EDUARDO JIMENEZ REYES', 'COL. SANTA MONICA ANTES DEL CENTRO PENAL DE CONCHAGUA', 'NO TIENE', 'JUANA AZUCENA JIMENEZ REYES', '7683-1143', '2006-09-20', 'm', 'OVIDEO CRUZ LOPEZ', 's', 1, '', '2015-12-03', 'rpn', '', '', '', ''),
(105, '', 'CARLA DANIELA BARAHONA FUNES', 'JIQUILISCO B. LA MERCED #10', 'DAVID BARAHONA MARROQUIN', 'MARLENY ESMERALDA FUNES RIVERA', '7258-2155', '2012-08-23', 'm', 'DRA. CUBIAS', 's', 1, '', '2014-04-11', 'ninguno', '', '', '', ''),
(106, '', 'CARLOS ERNESTO GONZALES PEREIRA', 'RECIDENCIAL SATELITE DE ORIENTE', 'CARLOS ERNESTO GONZALES', 'FABIOLA EDITH PEREIRA', '7923-6628', '2013-07-05', 'm', 'FABIOLA GONZALES PEREIRA', 's', 1, '', '2015-11-11', 'ninguno', '', '', '', ''),
(107, '', 'CLAUDIA MARIELA ZELAYA ZELAYA', 'CTON CANAIRES EL SAUCE', 'ADRIAN ZELAYA', 'GLORIA ALICIA ZELAYA', '7770-3978', '1997-06-06', 'f', 'NADIE', 's', 1, '', '2011-04-16', 'ninguno', '', '', '', ''),
(108, '', 'CRISTOFER JERET BATRES GALAN', 'COL. SANTA EMILIA PJE #10', 'RUDI RAFAEL BATRES', 'MARIA ELENA GALAN', '7202-9474', '2015-01-02', 'm', 'FUE VISTO EN EMERGENCIA', 's', 1, '', '2016-07-27', 'ninguno', '', '', '', ''),
(109, '', 'CRISTIAN EMILIANO UMANZOR VELASQUEZ', 'COL. TERRA NUEVA CENDA LABRADOR POL. 12 CASA # 1', 'MANUEL DE JESUS UMANZOR', 'NORY EMPERATRIZ VELASQUEZ', '7534-3123', '2009-01-21', 'm', 'SE VIO EN CLINA CERCA DE LA RETE', 's', 1, '', '2016-04-23', 'ninguno', '', '', '', ''),
(110, '', 'CARLOS DANIEL PORTILLOÑ BONILLA ', 'SAN FCO GOTERA COL. MORAZAN 5. PJ', 'GERONIMO PORTILLO', 'GLORIA BONILLA', '7673-0748', '2004-09-09', 'm', 'NADIE', 's', 1, '', '2016-12-05', 'ninguno', '', '', '', ''),
(111, '', 'CARLOS MARTIN ORELLANA GUEVARA', 'RESIDENCIAL VILLA MONTECARLOS S.M', 'JUAN CARLOS ORELLANA', 'FABIOLA ARACELI GUEVARA DE ORELLANA', '7841-3502', '2010-08-28', 'm', 'NADIE', 's', 1, '', '2010-12-14', 'ninguno', '', '', '', ''),
(112, '', 'CRISTIAN JESE ROMERO', 'COL. DIVINA ASUNCION PJ. ANTONIO ROSALES S.M', 'CRISTIAN DANIEL ROMERO', 'JENNIFER MELENDEZ', '7548-7664', '2016-09-10', 'm', 'DR. MUNOZ', 's', 1, '', '2017-01-16', 'ninguno', '', '', '', ''),
(113, '', 'CAMILA IVANIA MEJIA RAMIREZ', 'B. EL CENTRO LOLOTIQUILLO MORAZAN', 'HENRRY MEJIA', 'JULI RAMIREZ', '7531-4541', '2015-10-23', 'f', 'NADIE', 's', 1, '', '2016-08-24', 'ninguno', '', '', '', ''),
(114, '', 'CARLOS ALEJANDRO BONILLA RIVERA', 'KILOMETRO 158 CTON GUANACASTE CIUDAD BARRIOS', 'JUAN ANTONIO BONILA AYALA', 'EVELYN CAROLINA RIVERA', '7600-5616', '2003-12-22', 'm', 'VISTO EN EMERGENCIA', 's', 1, '', '2016-02-01', 'rpn', '', '', '', ''),
(115, '', 'CRISTIAN FERNANDO GUTIERREZ CRUZ', 'URNANIZACION EL MOLINO P.G CSAA # 5 S.M', 'CRISTIAN ALEXANDER GUTIERREZ', 'MILAGRO CORINA CRUZ CANALES', '7924-4316', '2012-04-23', 'm', 'NADIE', 's', 1, '', '2014-10-22', 'ninguno', '', '', '', ''),
(116, '', 'CARLOS JOSUE MEJIA DUENA', 'B. SAN JOSE 6 AV. ENTRE 10 Y 12 C. ORIENTE BERLYN', 'JOSUE ALBERTO MEJIA MARQUEZ', 'KEYLA RAQUEL DUENA DE MEJIA', '7271-4465', '2008-10-17', 'm', 'NADIE', 's', 1, '', '2016-09-17', 'ninguno', '', '', '', ''),
(117, '', 'CRISTIAN BLADIMIR RUBIO VENTURA', 'CASERIO EL GUACIMO CTON EL GICARO LA UNION', 'OSMAR ARISTIDES RUBIO', 'SANDRA JANETH VENTURA', '2664-5532', '2002-12-05', 'm', 'NADIE', 's', 1, '', '2012-10-03', 'ninguno', '', '', '', ''),
(118, '', 'CARLOS ARIEL FLORE MARTINEZ', 'B. EL CENTRO EL DIVISADERO MORAZAN', 'CARLOS HUMBER FLORES TOBAR', 'GLADIS MARICELA MARTINEZ', '7255-8570', '2010-05-18', 'm', 'ELIZABETH MARICELA', 's', 1, '', '2016-08-24', 'ninguno', '', '', '', ''),
(119, '', 'CARLOS ALBERTO ALVAREZ GOMEZ', 'ZAMORAN', 'NO TIENE', 'GUADALUPE GOMEZ', '7559-1009', '2000-09-29', 'm', 'HNO ZORAYA SAN F.CO', 's', 1, '', '2016-10-07', 'ninguno', '', '', '', ''),
(120, '', 'CESAR OMAR ESPINAL GOMEZ', 'CASERIO LA GUACA MAYERA CTON BOVADIA SAN ALEJO', 'ANDREA ALONSO GOMEZ', 'SILVIA ESTER ESPINAL', '7157-8954', '2001-07-10', 'm', 'ANDERSON ULISES REYES', 's', 1, '', '2016-09-07', 'ninguno', '', '', '', ''),
(121, '', 'CECILIA ALEXANDRA PEREZ ROMERO', 'CTON MARGUESA SANTIAGO DE MARIA', 'DAVID HERNANDEZ', 'MONICA ROMERO', '7726-9656', '2007-06-03', 'f', 'NADIE', 's', 1, '', '2014-05-30', 'ninguno', '', '', '', ''),
(122, '', 'CESAR ANTONIO LAZO ZAMORA', 'CANTON CANDELARIA, SOCIEDAD MORAZAN', 'ELMO', 'MARIA GLORIBEL GUZMAN ABUELA', '7522-0182', '2008-07-02', 'm', 'ABUELA DE GABRIELA', 'n', 1, '', '2012-04-05', 'ninguno', '', '', '', ''),
(123, '', 'CINDY PAOLA VELASQUEZ HERNANDEZ', 'CASERIO LA BRION C. LOS PATOS CONCHAGUA LA UNION', 'NO TIENE', 'ZULMA LETICIA HERNANDEZ', '7724-6180', '2004-06-20', 'f', 'KARLA MARIA ESCOBAR PROFAMILIA', 's', 1, '', '2015-07-07', 'ninguno', '', '', '', ''),
(124, '', 'CRISTIAN RAFAEL GONZALES RODRIGUEZ', 'COL. CIUDAD PASIFICA POL. D57 4 ETAPA #42 S.M', 'RAEL GONZALES', 'CATALINA ARABELA RODRIGUEZ', '7233-6371', '2011-04-12', 'm', 'ENFERMERA DE B.M', 's', 1, '', '2011-05-13', 'ninguno', '', '', '', ''),
(125, '', 'CRISTOPHER ALFREDO GUZMAN SOSA', 'CANTON CANDELARIA', 'ELMO ANIBAL SOSA', 'OLDEMIA ESTEY LAZO GUZMAN', '6003-3005', '2006-11-27', 'm', 'NADIE', 'n', 1, '', '2013-04-03', 'ninguno', '', '', '', ''),
(126, '', 'CRISTEL JUDITH BARAHONA RIVERA', 'C. JOSE SIMON CANAS CIUDAD PASIFICA', 'OSCAR RENE BARAHONA', 'JUDITH LÑORENA RIVERA', '7230-1311', '2011-01-11', 'f', 'HNA DE LUIS RENE BARAHONA', 's', 1, '', '2014-12-14', 'ninguno', '', '', '', ''),
(127, '', 'CESAR ADIEL ROMERO VILORIIO', 'CTON EL MOLINO CASERIO LA PUERTA CONCEPCION DE ORIENTE', 'MIGUEL ANGEL ROMERO', 'MAXIMINA VILORIO', '1111-1111', '2006-02-11', 'm', 'DR. CAMPOS', 's', 1, '', '2015-06-26', 'ninguno', '', '', '', ''),
(128, '', 'DANIELA SOFIA RIVAS RENDERO', 'LOTIFICACION VILLERIAS CHAPELTIQUE', 'FRANCISCO RIVAS', 'KARLA PATRICIA RENDERO', '7278-0779', '2012-12-24', 'f', 'DR. VANESSA VENTURA', 's', 1, '', '2013-11-15', 'ninguno', '', '', '', ''),
(129, '', 'DARLYN ESTRELLA BARAHONA', 'CAROLINA B. EL CENTRO ', 'NOEL LUNA', 'MARITZA YAMILETH BARAHONA', '7826-6507', '2014-02-25', 'f', 'SOFIA BARAHONA ', 's', 1, '', '2017-02-01', 'ninguno', '', '', '', ''),
(130, '', 'DIEGO ENRRIQUE PENALVA GRANADOS', 'COL. 15 DE SEPTIEMBRE  53. C. ORIENTE # 33 S.M', 'DAVID JONATHAN PENALVA', 'ROXANA XIOMARA GRANADOS DE PENALVA', '7039-7303', '2015-02-02', 'f', 'ESTUBO INGRESADO SAN .F.CO', 's', 1, '', '2015-02-18', 'vivir', '', '', '', ''),
(131, '', 'DAYEN NICOLL CENTENO RAMOS', 'CTON LA MONTANITA CIUDAD BARRIOS', 'NICOLAS RAMOS', 'SONIA RAMOS', '7447-7636', '2014-10-01', 'f', 'DR. JOSE FRANCISCO FUENTES VARELA', 's', 1, '', '2017-01-10', 'ninguno', '', '', '', ''),
(132, '', 'DENISSE EUGENIA DIAZ MORALES', 'SAN CARLOS SANTA ROSA DE LIMA LA  UNION', 'DENIS ARMANDO MORALES', 'MATHA ARELY MORALES', '7885-0069', '2013-02-07', 'f', 'DENIS RAMANDO', 's', 1, '', '2013-02-23', 'ninguno', '', '', '', ''),
(133, '', 'DIEGO JOSUE BONILLA', 'SAN ANTONIO SILVA  CASERIO LA PIEDAD LA UNION', 'FRANKLIN ARISTIDE HERNANDEZ', 'MABEL BONILLA QUINTANILLA', '7686-9591', '2008-12-23', 'm', 'NADIE', 's', 1, '', '2012-05-18', 'ninguno', '', '', '', ''),
(134, '', 'DIEGO JOSE ARIAS FLORES', 'RESIDENCIAL ALTOS DE SAN FRANCISCO CENDA QUELEPA POLIGONO #12', 'JOSE SALVADOR ARIAS PORTILLO', 'PATRICIA YAMILETH FLORES DE ARIAS', '7730-5167', '2013-01-10', 'm', 'RODRIGO', 's', 1, '', '2013-01-14', 'ninguno', '', '', '', ''),
(135, '', 'DENIS ARMANDO DIAZ MORALES', 'COL. SAN CARLOS SANTA ROSA DE LIMA', 'DENIS ARMANDO MORALES', 'MARTHA ARELY MORALES', '7910-2150', '2006-07-26', 'm', 'NADIE', 's', 1, '', '2010-11-01', 'ninguno', '', '', '', ''),
(136, '', 'DOMINIC EZEQUIEL FUNES VASQUEZ', 'DIVISADERO', 'JUAN PABLO GRANADOS', 'JULIETA SORAHI FUNES VASQUEZ', '7299-0006', '2015-03-14', 'm', 'ARIANA ISABELLA', 's', 1, '', '2016-08-31', 'ninguno', '', '', '', ''),
(137, '', 'DELMY SOFIA ROBLES FUNES', 'HACIENDA OBRAJUELO MONCAGUA', 'LUIS ALEXIS ROBLES MEDRANO', 'CLAUDIA YAMILETH FUNES', '7592-0493', '2010-04-04', 'f', 'HNA DE GENESIS RUBY', 's', 1, '', '2016-01-02', 'vivir', '', '', '', ''),
(138, '', 'DIEGO ALEJANDRO SORTO HERNANDEZ', '2. AV. NORTE #301 S.M', 'ARISTIDES GOMEZ', 'IRMA GUADALUPE HERNANDEZ', '7069-7055', '2011-11-13', 'm', 'NADIE', 's', 1, '', '2017-02-06', 'ninguno', '', '', '', ''),
(139, '', 'DIEGO CANDELARIO GOMEZ MOREJON', 'USULUTAN P.#2 CASA #18 VILLAS TERRANOVA', 'HENRRY EDUARDO GOMEZ', 'ROSA EMILIA MOREJON DE GOMEZ', '7902-3597', '2013-04-06', 'm', 'NADIE', 's', 1, '', '2014-10-22', 'otros', '', '', '', ''),
(140, '', 'DALIA NATALY MARQUEZ RAMOS', 'COL. LA PAZ SANFRANCISCO GOTERA', 'SANTOS ADONIS MARQUEZ RAMIREZ', 'HILDA DE JESUS RAMOS MARQUEZ', '7391-9432', '2013-05-11', 'f', 'DR. EVER  MAURICIO RECINO', 's', 1, '', '2016-09-20', 'ninguno', '', '', '', ''),
(141, '', 'DANMARCO ALEXANDRO HERNADEZ ROMERO', 'CTON MARQUESADO SANTIAGO DE MARIA', 'DAVID HENANDEZ', 'MONICA ROMERO', '6145-2359', '2013-09-25', 'm', 'DR. MAGANA', 's', 1, '', '2013-10-24', 'ninguno', '', '', '', ''),
(142, '', 'DIEGO DE JESUS HERNANDEZ SANCHEZ', 'CASERIO LA ARENERA CTON MIRAFLORES LA UNION', 'GERMAN ALEXANDER HERNANDEZ', 'TOMASA SANCHEZ', '6163-5023', '2007-02-27', 'm', 'DR, LIZAMA RODRIGUEZ', 's', 1, '', '2013-02-27', 'ninguno', '', '', '', ''),
(143, '', 'DIEGO FERNANDO CHAVARRIA ', 'SATELITE DE ORIENTE S.M ', 'NO TIENE', 'WENDY CHAVARRIA', '1111-1111', '2006-12-12', 'm', 'DR.TRABAJA EN SAN JUAN', 's', 1, '', '2016-05-02', 'ninguno', '', '', '', ''),
(144, '', 'DILAN JOSE VENTURA GARCIA', 'CTON HATO NUEVO JURIDICCION SAN ALEJO', 'ERIK VENTURA', 'ADELA DEL CAMEN GARCIA', '7272-4549', '2013-10-08', 'm', 'DR. MUNOZ', 's', 1, '', '2016-06-09', 'ninguno', '', '', '', ''),
(145, '', 'DIDIER ALEXANDER CASTILLO CHICAS', 'CIUDAD BARRIOS', 'WILL ALEXANDER CASTILLO', 'LUZ NAHOMY CHICAS', '7509-0438', '2015-05-23', 'm', 'HNSJD.SM', 's', 1, '', '2016-10-03', 'ninguno', '', '', '', ''),
(146, '', 'DAMARY BEATRIZ CARDENAS RAMOS', 'COL. VILLA SATELITE  AVE 3 DE MAYO # 6. SAN MIGUEL', 'RICARDO CARDENAS', 'FLORIDA IDALIA RAMOS', '7219-5944', '2015-07-16', 'f', 'GENESIS ABARCA', 's', 1, '', '2015-07-28', 'ninguno', '', '', '', ''),
(147, '', 'DIEGO ALEJANDRO ESCOBAR MARQUEZ', 'CANTON PLANARILLO. SAN MIGUEL', 'JOSE ELIAS ESCOBAR', 'YANCY MARQUEZ', '6137-2900', '2015-07-03', 'm', 'NICOLL RAMIREZ', 's', 1, '', '2016-10-15', 'ninguno', '', '', '', ''),
(148, '', 'DANIEL ALEXANDER CABRERA GARAY', 'AV. LAS ACEITUNAS CASA # 22. COLONIA AURORA. SAN MIGUEL', 'JOSE DANIEL BONILLA', 'JACQUELINE CABRERA', '6023-1900', '2015-06-21', 'm', 'JADE', 's', 1, '', '2015-09-19', 'ninguno', '', '', '', ''),
(149, '', 'DIEGO ALEXIS RODRIGUEZ BENAVIDES', 'CANTON SAN ANDRES SAN MIGUEL', 'CARLOS ALEXIS RODRIGUEZ', 'LOURDES FRANCISCA BENAVIDES', '1111-1111', '2010-10-21', 'm', 'DR LIZAMA', 's', 1, '', '2016-10-14', 'ninguno', '', '', '', ''),
(150, '', 'DANILO ANTONIO FLORES ', 'MONCAGUA. SAN MIGUEL', 'ESAU BONILLA', 'LOURDES FLORES', '7464-2648', '2015-10-11', 'm', 'HNSJD.SM', 's', 1, '', '2016-05-20', 'ninguno', '', '', '', ''),
(151, '', 'DOUGLAS ASAEL CAMPOS AMAYA', 'BARRIO EL CALVARIO JIQUILISCO. USULUTAN', 'DOUGLAS CAMPOS', 'ADA LEIDY AMAYA', '7735-0289', '2010-07-23', 'm', 'DR. MITJAVILA', 's', 1, '', '2016-04-30', 'ninguno', '', '', '', ''),
(152, '', 'DARIANA ELIZABETH ALMENDAREZ ROMERO', 'PASAQUINA. LA UNION', 'ALEXANDER ALMENDAREZ', 'JOHANA ROMERO', '7670-8926', '2015-08-26', 'f', 'SARA BERENICE CARCAMO', 's', 1, '', '2015-11-25', 'ninguno', '', '', '', ''),
(153, '', 'DEISY SARAHI RODRIGUEZ HERNANDEZ', 'FINAL 4 CALLE ORIENTE LOTIFICACION JUCUAPA # 1 CASA # 2. SAN MIGUEL', 'JOSUE RODRIGUEZ', 'ANA MIRIAM HERNANDEZ', '7535-4983', '1994-03-07', 'f', 'ANA MARILIN HERNANDEZ', 's', 1, '', '2016-04-09', 'ninguno', '', '', '', ''),
(154, '', 'DENIS ESAU MUÑOZ GOMEZ', 'SANTA ROSA DE LIMA. LA UNION', 'OMAR MUÑOZ', 'FLOR DE MARIA GOMEZ', '7292-6399', '2003-02-07', 'm', 'DR ALVAREZ', 's', 1, '', '2012-05-25', 'ninguno', '', '', '', ''),
(155, '', 'DIEGO ALESSANDRO FUNES HERNANDEZ', 'CANTON EL NUEVO PORVENIR. CIUDAD BARRIOS ,SAN MIGUEL', 'ESAU FUNES', 'NANCY HERNANDEZ', '6144-6868', '2008-06-01', 'm', 'ANDRES ELI DUBON NOLASO', 's', 1, '', '2015-01-31', 'ninguno', '', '', '', ''),
(156, '', 'DEISY MONSERRATH CASTELLON ROMERO. ', 'JUCUAPA. USULUTAN', 'FRANCISCO CASTELLON', 'YESICA ROMERO', '7434-3060', '2014-11-06', 'f', 'DR MUNOZ', 's', 1, '', '2015-08-20', 'ninguno', '', '', '', ''),
(157, '', 'DAYANA ELIANETH TORRES MATA', 'BARRIO SAN JUAN. SAN MIGUEL', 'JOEL TORRES', 'JONEIDA MATA', '7992-1052', '2007-04-08', 'f', 'DR CAZARES', 's', 1, '', '2013-09-11', 'ninguno', '', '', '', ''),
(158, '', 'DIEGO ENMANUEL GRANADOS ROMERO', 'COL. SAN PABLO C. LOS GEMELOS CASA #34 S.M', 'DANNI JOSUE RODRIGUEZ ', 'JACKELINE NOHEMY GRANADOS ROMERO', '7566-3847', '2015-11-16', 'm', 'WILLIAM ALEXIS ', 's', 1, '', '2015-12-26', 'ninguno', '', '', '', ''),
(159, '', 'DENIS JAVIER GOMEZ HERNANDEZ', 'COL. CIUDAD PASIFICA P.A-12#3 S.M', 'OMAR PASTOR GOMEZ CHEVEZ', 'ANGELICA ESPERANZA HERNANDEZ DE GOMEZ', '7787-8518', '2001-05-03', 'm', 'DR. CAMPOS', 's', 1, '', '2015-03-17', 'rpn', '', '', '', ''),
(160, '', 'DANIELA ESTEFANY MURILLO', 'ESTANZUELA B. BELEN ', 'JUAN CARLOS MURILLO', 'LORENA CONCEPCION GRANADOS', '7971-7125', '2014-09-25', 'f', 'NADIE', 's', 1, '', '2015-09-23', 'ninguno', '', '', '', ''),
(161, '', 'DIANA GABRIELA BOLANOZ BONILLA ', 'CARTERA CIUDAD B. KILOMETRO 155 CTON GUANACASTE', 'JOSE BOLANOZ', 'LORENA BOLANOZ DE BONILLA', '7899-3022', '2008-07-12', 'f', 'EMILO JOSE BONILLA, CARLOS ALEJANDRO BONILLA', 's', 1, '', '2015-06-03', 'ninguno', '', '', '', ''),
(162, '', 'DEMETRIO OSAEL GRANADOS JURADO', 'COL. CIUDAD PASIFICA S.M', 'DEMETRIO GRANADOS', 'JOHANA MELISSA JURADO', '7529-2121', '2009-09-15', 'm', 'SE VIO EN EMERGENCIA', 's', 1, '', '2016-08-08', 'ninguno', '', '', '', ''),
(163, '', 'DIEGO JOSE BENAVIDEZ HERNANDEZ', 'HACIENDA LA REFORMA COL. LAS FLORES MONCAGUA', 'JOSE VIRGILIO BENAVIDEZ', 'MARA CONCEPCION HERNANDEZ SANCHEZ', '7891-3284', '2015-01-13', 'm', 'GENESIS RUBI', 's', 1, '', '2016-10-06', 'ninguno', '', '', '', ''),
(164, '', 'DARLEN ANAHI MARQUEZ LARA', 'CIUDAD PASIFICA 4 ETAPA CENDA LOS LAURELES P. D-5 59 CASA # 43 S.M', 'NELSON MARQUEZ AYALA', 'ANA LARA FUNES', '7937-1035', '2006-04-07', 'f', 'DR. IRAETA', 's', 1, '', '2016-01-25', 'ninguno', '', '', '', ''),
(165, '', 'DAVID ERNESTO DIMAS ARIAS', 'AV. ROOSEVELTH SUR COL. JIRAFA S.M', 'SAUL ORLANDO DIMAS', 'BLANCA YOLANDA ARIAS VILLALTA', '7575-8770', '2015-03-15', 'm', 'ALLISON NICOLL PRIVADO BONILLA', 's', 1, '', '2015-12-14', 'ninguno', '', '', '', ''),
(166, '', 'DIEGO JAVIER VASQUEZ REYES', 'CIDAD DOLORES CTON DPTO CABANAS', 'JOSE SALOMON VAQUEZ', 'DIONICIA REYES', '7925-1224', '2007-06-12', 'm', 'DR.JAIME ARTURO CARDENAS', 's', 1, '', '2015-05-18', 'ninguno', '', '', '', ''),
(167, '', 'DANIEL ALEXANDER MARTINEZ HERNANDEZ', 'EL DELISADERO B. EL CALVARIO', 'DANIEL HUMBERTO MARTINEZ', 'BLANCA LIDIA HERNANDEZ FLORES', '7234-9216', '2013-08-21', 'm', 'NADIE', 's', 1, '', '2013-10-11', 'ninguno', '', '', '', ''),
(168, '', 'DIEGO ALEJANDRO GUEVARA ALVARENGA', 'COL. LA PRADERA S.M', 'RUBEN ELEAZAR GUEVARA', 'ZAIRA CRISTINA ALVARENGA DE GUEVARA', '7605-9900', '2010-10-28', 'm', 'SE VIO EN EMERGENCIA DEL SAN F.CO', 's', 1, '', '2012-03-29', 'ninguno', '', '', '', ''),
(169, '', 'DELMIRA SARAHI MEDRANO ALVAREZ', 'B. LA CRUZ CORINTO', 'JORGE SIFREDO MEDRANO', 'ELSY YANETH ALVAREZ DE MEDRANO', '7219-6746', '2004-07-26', 'f', 'DR. SANTOS MEDRANO', 's', 1, '', '2015-08-03', 'ninguno', '', '', '', ''),
(170, '', 'DIEGO ERNESTO PINEDA GUEVARA', 'COL. CIUDAD JARDIN C. LOS CERESOS S.M', 'MARIO ERNESTO PINEDA RIVAS ', 'MIRIAM JULIANA GUEVARA', '7305-1422', '2014-03-08', 'm', 'LIC. LABORATORIO', 's', 1, '', '2015-10-30', 'ninguno', '', '', '', ''),
(171, '', 'DAVISA NOHELY DIAZ LOPEZ', '5.C ORIENTE Y 1 AV. SUR B. SANTA LUCIA ALEGRIA', 'DAVID REYNALDO DIAZ REYES', 'ANA LORENA LOPEZ DE DIAZ', '7551-0808', '2011-01-22', 'f', 'DRA. INGRID LISETH LOPEZ RODRIGUEZ', 's', 1, '', '2016-12-29', 'ninguno', '', '', '', ''),
(172, '', 'DUSTIN EMANUEL ROMERO', 'CTON LOS JOBOS SANTA ELENA USULUTAN', 'NO TIENE', 'SAYDA ROMERO AGUILAR', '7445-9120', '2010-05-16', 'm', 'SE VE EN UNIDAD RENAL USULUTAN', 's', 1, '', '2016-04-15', 'ninguno', '', '', '', ''),
(173, '', 'DYLAN JEFERSON PEÑALVA GRANADOS', 'COL. 15 DE SEPTIEMBRE 53C. ORIENTE #33 S.M', 'DAVID JONATHAN PENALVA', 'ROXANA XIOMARA GRANDOS DE PENALVA', '7039-7303', '2010-12-24', 'm', 'HNO DE DIEGO ENRRIQUE', 's', 1, '', '2015-04-20', 'vivir', '', '', '', ''),
(174, '', 'DAYANA MICHEL CASTRO RIVERA', 'HACIENDA SANTA ANITA MERCEDEZ UMANA USULUTAN', 'JUAN CARLOS CASTRO', 'NORMA CECILIA RIVERA LOBOS', '7702-4188', '2012-03-07', 'f', 'SE VE EN SAN JUAN', 's', 1, '', '2014-03-20', 'ninguno', '', '', '', ''),
(175, '', 'DAISY LISSETH SERRANO LAZO', 'COL. HERNANDEZ PJE 3 CASA # 6 S.M', 'NO TIENE ', 'FLOR LISSETH SERRANO', '7114-3295', '2002-07-04', 'f', 'NADIE', 's', 1, '', '2016-11-12', 'ninguno', '', '', '', ''),
(176, '', 'DANIELA RAQUEL CANIZALES PORTILLO', '6.CALLE P.AV. GENOVA MORAZAN B. FLORES LA UNION', 'SEGIO ROBERTO CANIZALES', 'RAQUEL EMPERATRIZ PORTILLO', '7487-4061', '2010-05-19', 'f', 'NADIE', 's', 1, '', '2016-11-23', 'ninguno', '', '', '', ''),
(177, '', 'DANIELA SOFIA RAMIREZ RENDERO', 'COL. CIUDAD PASIFICA 2 SENDA 7 #56 S.M', 'JOSE RAMON RAMIREZ', 'DINPORA ESTER REYES SEGOVIA', '7942-7730', '2011-09-13', 'f', 'NADIE', 's', 1, '', '2012-12-13', 'ninguno', '', '', '', ''),
(178, '', 'DIGNA REBECA GONZALES LOPEZ', 'B. SAN DIEGO QUELEPA', 'JULIO ERNESTO GONZALES', 'MAYORY MICHELLE LOPEZ', '7503-7114', '2015-07-12', 'f', 'RECEPCION', 's', 1, '', '2015-01-15', 'ninguno', '', '', '', ''),
(179, '', 'DUSTIN JOSHUA JURADO GARCIA', 'C. F.CO GAVIDIA CSA # 9 C. EL CENTRO JUCUAPA', 'GUSTAVO ARMANDO JURADO ORTEZ', 'MIRIA ESPERANZA GARCIA DE JURADO', '7887-7413', '2012-07-15', 'm', 'SE VIO EN EMERGENCIA', 's', 1, '', '2012-10-25', 'vivir', '', '', '', ''),
(180, '', 'EDUARDO JOSE LOPEZ ESCOBAR', 'STA AV. SUR #4 B EL ROMA CIUDAD BARRIOS S.M', 'ELIAS JOSE LOPEZ', 'LADY SUSANA ESCOBAR', '7275-8451', '2011-08-14', 'm', 'XIOMARA MARTINEZ', 's', 1, '', '2016-04-15', 'ninguno', '', '', '', ''),
(181, '', 'ERIKA VANESSA MARTINEZ', 'CTON PAPALON CASRIO LAS PENITAS', 'NO TIENE', 'SANDRA LORENA MARTINEZ', '7469-4141', '2004-11-23', 'f', 'CONSERJE DEL H. SAN F.CO ROSARIO A HIJADA', 's', 1, '', '2015-02-17', 'ninguno', '', '', '', ''),
(182, '', 'ELMO JOSE SOSA LAZO', 'CTON CANDELARIA SOCIEDAD', 'ELMO ANIBAL SOSA  GONZALES', 'OLDEMIA ESTEY LAZO GUZ', '7370-2002', '2010-07-18', 'm', 'CESAR', 'n', 1, '', '2012-09-11', 'ninguno', '', '', '', ''),
(183, '', 'ESTEFANY ALEJANDRA PERDOMO ', 'COL. VISTA HERMOS C. LOS LAURELES #109 S.M', 'MANUEL ANTONIO PERDOMO', 'MELVI YOLANDA VASQUEZ', '7891-8793', '2014-06-04', 'f', 'DR. LOPEZ ELIAS ', 's', 1, '', '2015-08-10', 'ninguno', '', '', '', ''),
(184, '', 'ELIZA ABIGAIL MORENO UMANZOR', 'CTON SAN FELIPE', 'ABRAHAM MORENO', 'FRANCISCA UAMANZOR', '7580-5910', '2012-05-16', 'f', 'DR. MUNOZ', 's', 1, '', '2015-09-05', 'ninguno', '', '', '', ''),
(185, '', 'EMMY ANALY SOTO VENTURA', 'CIUDAD PASIFICA 4 ETAPA PORTAL INDEPENDENCIA CASA 4 S.M', 'JULIO FRANCSCO SOTO JUAREZ', 'ENMA YAMILETH VENTURA', '7023-3598', '2014-09-05', 'f', 'DR. MUNOZ', 's', 1, '', '2016-08-01', 'ninguno', '', '', '', ''),
(186, '', 'EMELY NICOLL GONZALES', 'CTON EL VOLCAN CASERIO LA MOLIENDA S.M', 'NO TIENE', 'ESTEFANY MARYORY GONZALES', '7114-6109', '2013-07-05', 'f', 'NADIE', 'n', 1, '', '2014-10-06', 'ninguno', '', '', '', ''),
(187, '', 'DILAN NEFTALY MONTOYA ARAGON', 'CIUDAD DEL TRIUNFO, CANTON LA PALMERA', 'INES NEFTALY MONTOYA', 'CLAUDIA ROXANA ARAGON', '7483-5162', '2017-02-12', 'm', 'ANDERSON MATEO', 's', 1, '', '2017-03-20', 'ninguno', '', '', '', ''),
(188, '', 'EVELYN ANAHI RIVAS CALDERON', 'FINAL 3. C ORIENTE #8 B. DOLORES CHINAMECA', 'LEONEL ANTONIO RIVAS PORTILLO', 'EVELYN YENETH CALDERON MARTINEZ', '7472-2579', '2004-12-07', 'f', 'SE VE EN SAN JUAN B.M', 's', 1, '', '2016-03-16', 'ninguno', '', '', '', ''),
(189, '', 'ERNESTO EMILANO GUEVARA RIVAS', 'COL. LAS BRISAS CTON. NORTE GOTERA', 'JAIME DAGOBERTO GUEVARA ARGUETA', 'ALMA AZUCENA RIVAS', '7787-6229', '2013-11-13', 'm', 'ESTUBO INGRESADA SAN F.CO', 's', 1, '', '2015-05-18', 'rpn', '', '', '', ''),
(190, '', 'ERIK FRANCISCO CUEVA CHAVEZ', 'B. EL CALVARIO SAN ALEJO LA UNION', 'FRANCISCO CUEVA', 'RUVIDIA MARLENY CHAVEZ', '7281-2385', '2004-02-08', 'm', 'SE VE SAN JUAN', 's', 1, '', '2010-05-25', 'ninguno', '', '', '', ''),
(191, '', 'ENEYDA JASMARY SANCHEZ MENDOZA', 'OSICALA B. EL CALVARIO', 'JULIO CESAR SANCHEZ', 'SILVIA ENEYDA MENDOZA', '7720-5075', '2011-10-09', 'f', 'DRA. ZULETA', 'n', 1, '', '2014-03-14', 'ninguno', '', '', '', ''),
(192, '', 'ENMANUEL MANRRIQUE ROMERO MEJIA', 'CTON SAN LUIS NUEVA GUADALUPE', 'MANRIQUE ROMERO REYES', 'NORMA GLADIS MEJIA DE ROMERO', '7230-8494', '2016-04-01', 'm', 'ERVIN ALEXIS ENF. SAN F.CO', 's', 1, '', '2017-01-02', 'ninguno', '', '', '', ''),
(193, '', 'ELISA MIREYA PENA GOMEZ', 'COL. CIUDAD PASIFICA S.M', 'OSCAR ALFREDO PENA', 'MARIA DEL ROSARIO GOMEZ DE PEÑA', '7557-1030', '2012-06-14', 'f', 'NADIE', 's', 1, '', '2017-01-12', 'ninguno', '', '', '', ''),
(194, '', 'EWAR DAVID MAJANO CORONADO', 'CTON ANCHICO CASERIO TIERRA DURA S.M', 'DAVID MAJANO RODRIGUEZ', 'LUCIA ESMERALDA CORONADO MENDEZ', '7498-0689', '2003-01-21', 'm', 'DR. ELIAS LOPEZ ', 's', 1, '', '2017-01-23', 'ninguno', '', '', '', ''),
(195, '', 'EDUARDO JOSUE ULLOA', 'USA', 'EDUARDO ULLOA', 'MELIDA MAJANO DE ULLOA', '7559-0532', '2004-08-29', 'm', 'MIGUEL ANGEL ULLOA ESPINOSA', 'n', 1, '', '2016-06-13', 'ninguno', '', '', '', ''),
(196, '', 'EDGARDO ANTONIO CAMPOS GAYTAN', '14 CALLE PTE. COL. HIRLEMAN. SAN MIGUEL', 'EDGARDO CAMPOS', 'NATALIA GAYTAN', '7708-2505', '2000-04-19', 'm', 'EMERGENCIA', 's', 1, '', '2015-07-08', 'ninguno', '', '', '', ''),
(197, '', 'EMILIO HUMBERTO GARCIA', 'CASERIO LA BOLSA, CANTON BOBADILLA SAN ALEJO LA UNION', 'HUMBERTO GARCIA', 'GRISELDA NTIVIDAD', '7781-4390', '2008-12-26', 'm', '', 's', 1, '', '2014-09-29', 'ninguno', '', '', '', ''),
(198, '', 'ELIZA ESMERALDA LAZO FLORES', 'CHILANGA MORAZAN', 'PEDRO LAZO', 'ROSA FLORES', '7395-5963', '2010-06-21', 'f', 'NADIE', 's', 1, '', '2016-11-22', 'ninguno', '', '', '', ''),
(199, '', 'ETHAN ALEXANDER DE LEON', 'COL. CURI PJE 4 CASA # 30', 'AMILCAR DE LEON', 'JOSELIN GRISELDA TORRES', '7158-8487', '2014-04-27', 'm', 'SE VIO EN EMERGENCIA', 's', 1, '', '2016-06-10', 'ninguno', '', '', '', ''),
(200, '', 'EDGAR JARED HERNADEZ AYALA', 'COL. LAS PALMERAS P.19 CASA # 13 ', 'BERNAN ADOLFO HERNANDEZ', 'VERONICA NOHEMY AYALA MOLINA', '7507-7099', '2014-10-16', 'm', 'NADIE', 's', 1, '', '2015-11-30', 'sg', '', '', '', ''),
(201, '', 'EVELYN DANIELA FLORES VILLACORTA', 'COL. CHAPARRASTIQUE PJE D- CASA # 55 S.M', 'JOSE ALCIDEZ FLORES MARTINEZ', 'REYNA IDALIA VILLACORTA DE FLORES', '6018-1855', '2006-09-17', 'f', 'MATEO ALEJANDRO DE LA O VILLACORTA', 's', 1, '', '2016-10-03', 'ninguno', '', '', '', ''),
(202, '', 'ADISON NICOLAS MARAVILLA GOMEZ', 'CTON PLANES 2 DE CHINAMECA ', 'JOSE ADALBERTO MARAVILLA', 'PATRICIA EUGENIA GOMEZ', '7286-1656', '2012-08-28', 'm', 'SRITA OSORIO', 's', 1, '', '2016-05-25', 'ninguno', '', '', '', ''),
(203, '', 'ELIZATH NAARA GUTIERREZ ', 'COL.CIUDAD JARDIN C. MAQUILISGUA CASA #404', 'JOSE SAMUEL GUTIERREZ', 'JACKELINE ESMEALDA GUTIERREZ', '7231-0692', '2015-08-15', 'f', 'ENF. DEL HOSPITAL', 's', 1, '', '2016-04-14', 'ninguno', '', '', '', ''),
(204, '', 'EMELY DAYANA PORTILLO', 'SAN GERARDO CIUDAD BARRIOS', 'MARTIN PORTILLO', 'DILSA YANETH CASTILLO', '7475-0368', '2010-09-13', 'f', 'DRA. BRIZUELA', 's', 1, '', '2016-04-05', 'ninguno', '', '', '', ''),
(205, '', 'ERICK DAVID MEJIA REYES', 'CTON SAN SEBASTIAN ', 'ERICK ANTONIO MEJIA', 'MARTHA ALICIA REYES', '7238-1817', '2008-02-15', 'm', 'SE VE EN SAN JUAN', 'n', 1, '', '2016-02-08', 'ninguno', '', '', '', ''),
(206, '', 'KATHERIN ADRIANA ROMERO', 'COL AURORA S.M', 'JULIO CESAR ROMERO', 'MELISSA YAMILETH', '7470-3261', '2015-09-04', 'f', 'JADE', 'n', 1, '', '2015-09-28', 'ninguno', '', '', '', ''),
(207, '', 'EMELI ARELI BERCIAN HERNANDEZ', 'COL. CIUDAD PASIFICA CENDA INDEPENDENCIA P. D-17 CASA # 17 4 ETAPA S.M', 'GEOVANY ISOLINO BERCIAN CRUZ', 'LILIANA ARELY HERNANDEZ RAMOS', '7682-7243', '2014-03-23', 'f', 'DRA. NIDIA CASTILLO DE DIAZ', 'n', 1, '', '2015-08-19', 'otros', '', '', '', ''),
(208, '', 'EMILIO JOSE BONILLA RIVERA', 'KILOMETRO 138 CTON GUANACASTE CIUDAD BARRIOS', 'JUAN ANTONIO BONILLA AYALA', 'EVELYN CAROLINA RIVERA', '7600-5619', '2007-12-03', 'm', 'EMERGENCIA', 's', 1, '', '2014-10-27', 'rpn', '', '', '', ''),
(209, '', 'EMELY ALEJANDRA ORELLANA CSARES', 'CTON PLANES 1 CHINAMECA', 'EDWIN ANTONIO ORELLANA ', 'ROSA EMILIA CASARES', '7727-9825', '2011-09-05', 'f', 'NADIE', 'n', 1, '', '2015-04-17', 'ninguno', '', '', '', ''),
(210, '', 'ELSA AURORA MEJIA RUIZ', 'CTON OROMONTIQUE MUNICIPIO CHINAMECA', 'JOSE MEREDITH MEJIA', 'WENDY DE LA PAZ RUIZ HENANDEZ', '7581-7158', '2015-09-30', 'f', 'SE VE EN SAN JUAN', 'n', 1, '', '2016-06-16', 'ninguno', '', '', '', ''),
(211, '', 'EMELY NOEMY PEREZ VIGIL', 'COL. MILAGRO DE LA PAZ AV. EL CARMEN', 'SANTOS ELISEO PEREZ', 'MARICELA ARELY PEREZ', '7498-3913', '2013-09-06', 'f', 'HEBER ISAAC SORTO PEREZ', 's', 1, '', '2016-04-21', 'ninguno', '', '', '', ''),
(212, '', 'ENZO MATIAS ARGUETA BRITO', '16.AV. SUR COL. BELEN CSA # 604', 'JORGE ISAAC ARGUETA ', 'WENDY CAROLINA BRITO GARCIA', '7284-6866', '2013-12-28', 'm', 'MIGUEL ANGEL ESPINOS', 's', 1, '', '2017-02-16', 'ninguno', '', '', '', ''),
(213, '', 'EMERSON JOSUE PEREZ SORTO ', 'EL PLATANAR', 'CARLOS EMERSON PEREZ', 'TERESA DE JESUS SORTO DE PEREZ', '7921-4924', '2016-09-07', 'm', 'ASHLY JIMENA PEREZ SORTO', 'n', 1, '', '2016-09-17', 'ninguno', '', '', '', ''),
(214, '', 'ELIZABETH MARICELA FLORES MARTINEZ', 'B. EL CENTRO EL DIVISADERO MORAZAN', 'CARLOS HUMBERTO ', 'GLADIS MARICELA FLORES TOBAR', '7255-8570', '2014-11-06', 'f', 'DR. MUNOZ', 's', 1, '', '2016-02-09', 'ninguno', '', '', '', '');
INSERT INTO `pacientes` (`id`, `documento`, `nombre`, `direccion`, `nomp`, `nomm`, `telefono`, `edad`, `sexo`, `refpor`, `estado`, `consultorio`, `control`, `feccita`, `seguro`, `alergia`, `enf_cro`, `cuadro_vac`, `ant_quir`) VALUES
(215, '', 'EMELI SOFIA LARIOS ', 'TOLEDO S.M', ' NO TIENE', ' ABUELA .LORENZA CRUZ DE LARIOS. MADRE. CLAUDIA LORENA LARIOS', '7791-5755', '2006-04-17', 'f', 'NADIE', 's', 1, '', '2010-07-20', 'ninguno', '', '', '', ''),
(216, '', 'EYBYN ESAI RODRIGUEZ RAMOS', 'CTON MIRAFLORES CASERIO EL CEDRAL', 'RAUL ERNESTO RODRIGUEZ FLORES', 'NOHEMY ABIGAIL RAMOS', '7489-4764', '2008-01-02', 'm', 'NADIE', 's', 1, '', '2015-10-27', 'sg', '', '', '', ''),
(217, '', 'ERIK ALEJANDRO JIMENEZ ELENA', 'USULUTAN', 'HECTOR JIMENEZ SAGARTUNE', 'ANA ISIS ELENA GONZALES APARICIO', '7821-6561', '2002-09-27', 'm', 'HNO DE ISIS DAYANA', 's', 1, '', '2015-03-11', 'rpn', '', '', '', ''),
(218, '', 'EMELY ARIANA HERNANDEZ MENDEZ', 'CTON EL VOLCAN CASERIO EL PARQUE S.M', 'NELSON ARMANDO HERNANDEZ PEREZ', 'ANA PATRICIA HERNANDEZ', '7579-9080', '2014-09-16', 'f', 'DRA. FUE VISTO R.N', 's', 1, '', '2015-01-22', 'vivir', '', '', '', ''),
(219, '', 'EDGAR RAEL FLORES DIAZ ', 'COL. SAN PABLO C. SAN ISIDRO CASA # 29', 'JOSE ALFREDO FLORES MOLINA', 'SANDRA MARIA DIAZ DE FLORES', '7399-1136', '2014-12-31', 'm', 'NADIE', 's', 1, '', '2015-07-13', 'ninguno', '', '', '', ''),
(220, '', 'ERIK ANTONIO VIGIL SORTO', 'COL. CIUDAD JARDIN C. LOS ALMENDROS CASA # 15 S.M', 'ERIK VIGIL', 'ROSARIO VIGIL', '7290-8116', '2010-08-06', 'm', 'SE VIO EN EMERGENCIA HIJO DE ROSARIO', 's', 1, '', '2015-12-23', 'ninguno', '', '', '', ''),
(221, '', 'EDWAR STEVEN BARAHONA CHICAS ', 'B. EL POR VENIR PERQUIN MORAZAN', 'ELMER JACOB BARAHONA', 'YESSICA XIOMARA CHICAS NOLASCO', '7226-2477', '2009-11-09', 'm', 'ANDERSON RAFAEL CHICAS MARTINEZ', 's', 1, '', '2015-07-01', 'ninguno', '', '', '', ''),
(222, '', 'EMERSON MATEO HERNANDEZ FUENTES', 'B. EL CENTRO EL CARMEN LA UNION', 'WILFREDO HERNANDEZ CASTRO', 'RAQUEL PRISSILA FUENTES', '7218-0437', '2015-09-09', 'm', 'HNO DE WILLITO', 's', 1, '', '2015-10-19', 'otros', '', '', '', ''),
(223, '', 'ESTER ELIZABETH AYALA MORENO', 'CIUDAD BARRIOS ', 'MATILDO FILIFREDO AYALA', 'CECILIA YANIRA MORENO DE AYALA', '7510-4115', '2009-05-22', 'f', 'MERCADEO', 's', 1, '', '2012-02-21', 'otros', '', '', '', ''),
(224, '', 'ELENA JASMIN CASTRO OILVA', 'B. LA CRUZ CORINTO MORAZAN', 'JOSE EDUARDO HERNANDEZ', 'SILVIA MARLENY CASTRO', '7487-7206', '2005-07-04', 'f', 'NADIE', 's', 1, '', '2012-07-06', 'otros', '', '', '', ''),
(225, '', 'FERNANDO ENRRIQUE CARDENAS', 'CIUDAD BARRIOS', 'FERNANDO CARDENAS', 'SANDRA NELYS HERNANDEZ', '7510-0277', '2006-10-17', 'm', 'NADIE', 's', 1, '', '2015-12-07', 'ninguno', '', '', '', ''),
(226, '', 'FERNANDEZ ELIAS MARTINEZ PAIZ ', 'B. EL CALVARIO LOLOTIQUE S.M', 'ANGEL MARTINEZ', 'MARCIA VERONICA PAIZ', '7925-7451', '2008-07-24', 'm', 'DR. GOMEZ SEGURO SOCIAL DE CHINAMECA', 's', 1, '', '2015-06-27', 'otros', '', '', '', ''),
(227, '', 'FATIMA DE LA PAZ ROMERO JAIME', 'COL.SAN FERNANDO PJE # 3 CASA # 19 S.M', 'JOSE EDENILSON JAIME VILLEGA', 'ANA JOSEFA ROMERO ULLLOA', '7204-9523', '2003-09-21', 'f', 'DR MAGANA', 's', 1, '', '2013-03-23', 'otros', '', '', '', ''),
(228, '', 'FERNANDO DANIEL HERNANDEZ ROSEMBROK', 'RESIDENCIAL VILLA MONTECARLOSM P. 6 CASA # 27', 'ANGEL ROMERO HERNANEDEZ', 'BRENDA ROXANA ROSEMBROBROK', '7160-2032', '2012-10-25', 'm', 'NADIE', 's', 1, '', '2016-09-30', 'ninguno', '', '', '', ''),
(229, '', 'FATIMA ESCARLTH LAZO GOMEZ', 'COL. EL TESORO 2 PJ CASA # 10 S.M', 'JOSE NERY LAZO GARCIA', 'WENDY MARGARITA GOMEZ DE LAZO', '6131-2907', '2012-03-06', 'f', 'DRA. CUBIAS', 's', 1, '', '2014-01-27', 'ninguno', '', '', '', ''),
(230, '', 'FATIMA ALEXANDRA ROMERO RAMIREZ', 'COL. EL MOLINA', 'CESAR ROMERO', 'MARIA FERNANDEZ', '7152-4460', '2007-06-13', 'f', 'SE VE EN SAN JUAN', 's', 1, '', '2012-03-19', 'ninguno', '', '', '', ''),
(231, '', 'FERNANDO RODOLFO ACEVERO HENRRIQUEZ', 'COL. LA PALMERA #2 P.B. CASA # 17 BERLIN USULUTAN', 'SERGIO DE JESUS ACEVERO MARROQUIN', 'GABRIELA MARIA HENRRIQUE BERMUDEZ', '7200-3314', '2005-03-06', 'm', 'DR. LUIS MIGUEL CARRANZA BLANCO', 's', 1, '', '2017-02-20', 'ninguno', '', '', '', ''),
(232, '', 'FRANKLIN JOSE TREMINO ROMERO', 'COL. LA PRESITA 2 PJE LA NINJA', 'JOSE FAUSTINO TREMINIO CRUZ', 'VANESSA DEL CARMEN ROMERO SANCHEZ', '7928-2197', '2008-08-14', 'm', 'SALUD GLOBAL', 's', 1, '', '2017-02-21', 'ninguno', '', '', '', ''),
(233, '', 'FRANCY STEFANY TREMINIO ROMERO', 'COL. LA PRESITA 2 PJE LAS NINJAS', 'JOSE FAUSTINO TREMINIO', 'VANESSA DEL CARMEN ROMERO SANCHEZ', '7928-2197', '2016-08-22', 'f', 'SALUD GLOBAL', 's', 1, '', '2017-01-17', 'ninguno', '', '', '', ''),
(234, '', 'FERNANDEZ JOSE RODRIGUEZ ESCOBAR ', 'AV. SANTA CATALINA COL. LOS SANTOS CASA # 6', 'NO TIENE', 'JUANA TREJO ESCOBAR MENJIVAR', '7923-8435', '2013-11-27', 'm', 'FUE VISTO EN EMERGENCIA', 's', 1, '', '2015-06-05', 'ninguno', '', '', '', ''),
(235, '', 'FERNANDA ISELA PEREZ CALLEJA', 'COL. EL CARMEN CIUDAD DOLORES CABANA', 'MANUEL DE JESUS PEREZ', 'RITA DOLORES CALLEJA', '7476-2360', '2011-03-10', 'f', 'DR. CARRANZA', 'n', 1, '', '2015-11-27', 'ninguno', '', '', '', ''),
(236, '', 'FLOR ANDREA HERNANDEZ RIVAS', 'CTON LAS TUNCIAS MONCAGUA S.M', 'MARLON ELISEO HERNANDEZ', 'SUSANA YAMILETH RIVAS CACERES', '7271-6176', '2012-08-01', 'f', 'NADIE', 'n', 1, '', '2013-07-11', 'ninguno', '', '', '', ''),
(237, '', 'FATIMA DANIELA HERNANDEZ CRUZ', 'BARRIO LA CRUZ SAN ALEJO', 'MANUEL DE JESUS HERNANDEZ', 'ROSALVA CRUZ', '7473-7207', '2013-02-08', 'f', 'DR. EDUARDO CARRITOS', 'n', 1, '', '2014-03-15', 'ninguno', '', '', '', ''),
(238, '', 'FERNANDO MATEO REYES ORTEZ', 'B. CONCEPCION PJE EL DIAMANTE # 7', 'FRANCISCO ANTONIO REYES', 'ESMERALDA LISETH ORTEZ', '7901-3502', '2017-04-03', 'f', 'SOFIA ISABEL', 'n', 1, '', '2017-01-13', 'ninguno', '', '', '', ''),
(239, '', 'FRENDY ALDAIR ARTOLA FUENTES', 'CTON SA JOSE JOCORO', 'JOSE ARQUIMIDES ARTOLA AYALA', 'FLORICELA FUENTES ANDRADES', '6024-2697', '2010-11-13', 'm', 'NADIE', 's', 1, '', '2012-05-23', 'ninguno', '', '', '', ''),
(240, '', 'FABIOLA BEATRIZ CHICAS HERNANDEZ', 'B. EL CALVARIO PJE 10 DE MAYO CASA #4', 'TARCICIO JAVIER CHICAS', 'ZULMA YESSENIA HERNANDEZ REYES', '7206-5816', '2012-10-07', 'f', 'JAVIER', 's', 1, '', '2013-02-06', 'ninguno', '', '', '', ''),
(241, '', 'FRANCISCO EDUARDO PEREIRA', 'B. LA CRUZ SAN JACINTO GOTERA', 'FRANCISCO RUIZ', 'NACIA MARITZA PEREIRA', '7498-0844', '2016-08-14', 'm', 'NADIE', 's', 1, '', '2016-08-26', 'rpn', '', '', '', ''),
(242, '', 'FATIMA DANIELA GRANADOS', 'NUEVA GUADALUPE', 'DANY MICHAEL GRANADOS', 'ROXANA GRANDOS', '7240-6776', '2007-06-20', 'f', 'NADIE', 'n', 1, '', '2012-12-13', 'ninguno', '', '', '', ''),
(243, '', 'FATIMA CECILIA FUENTES VILLALOBOS', 'B. EL CENTRO EL CARMEN LA UNION', 'OSCAR ARNULFO FUENTES', 'ANA CECILIA VILLALOBOS', '7131-4598', '2005-05-11', 'f', 'WILFREDO', 's', 1, '', '2014-08-22', 'ninguno', '', '', '', ''),
(244, '', 'FRANCO JESUS RAMIREZ SANCHEZ', 'CASERIO SAN LUIS CTON LAS JOYAS MIANGUERA', 'OSACAR ROLANDO RAMIREZ ORTEZ', 'ROSA MELIDA SANCHEZ DE RAMIREZ', '7985-1603', '2009-06-03', 'm', 'DR. MUNOZ', 'n', 1, '', '2014-11-03', 'ninguno', '', '', '', ''),
(245, '', 'FERNANDA SARAI GOMEZ ESPINOSA ', 'COL. MILAGRO DE LA PAZ CALLE AVALOS S.M', 'FELIPE DE JESUS BONILLA PERDOMO', 'MARIA MAUDALENA GOMEZ', '7735-4870', '2011-08-09', 'f', 'NADIE', 'n', 1, '', '2017-01-05', 'ninguno', '', '', '', ''),
(246, '', 'FRANKLIN JOSE AREVALO', 'COL. MILAGRO DE LA PAZ S.M', 'WILLFREDO SALGADO', 'AZUCENA DEL CARMEN AREVALO', '7528-3596', '2002-09-20', 'm', 'FUE VISTO EN EMERGENCIA', 's', 1, '', '2014-09-19', 'rpn', '', '', '', ''),
(247, '', 'FRANCISCO EMANUEL TORRES RIVAS', 'B. SAN ANTONIO LOLOTIQUE', 'FRANCISCO TORRES MQARQUEZ', 'SANDRA YANIRA', '7252-2889', '2006-08-26', 'm', 'KEREN PRIMO DE ARIEL', 'n', 1, '', '2015-10-20', 'ninguno', '', '', '', ''),
(248, '', 'FRANCISCO JOSUE CASERES REYES', 'CTGON TERNERITO ANAMOROS DPTO LA UNION', 'FRANCISCO AURERIO REYES CASARES', 'SIXTA CASARES VILLATORO', '1111-1111', '1997-11-30', 'm', 'NADIE', 'n', 1, '', '2015-09-07', 'ninguno', '', '', '', ''),
(249, '', 'FATIMA AZUCENA PORTILLO ', 'CTON PLANES 3 DE CHINAMECA', 'WILLIAM MISAEL PORTILLLO', 'MILAGRO DEL CARMEN BATRES', '7104-4761', '2009-09-20', 'f', 'VISTO EN EMERGENCIA', 'n', 1, '', '2013-09-28', 'ninguno', '', '', '', ''),
(250, '', 'GENESIS YASARY GOMEZ RODRIGUEZ', 'COL. MIRAMONTE 2 ETAPA ', 'CARLOS JEHOVANJY VILLATORO', 'REINERY DE LA PAZ RODRIGUEZ', '6000-3895', '2012-10-28', 'f', 'FUE VISTO EN MERGENCIA', 'n', 1, '', '2016-01-14', 'ninguno', '', '', '', ''),
(251, '', 'GABRIELA LISBET RODRIGUEZ', 'USULUTAN ESTANZUELA CASERIO CARRETO', 'NO TIENE', 'REINA IRENE RODRIGUEZ', '7698-7865', '2013-09-09', 'f', 'ROCHI ELIZABETH CLINICA JUAN PABLO CALDERO', 'n', 1, '', '2015-11-26', 'ninguno', '', '', '', ''),
(252, '', 'GABRIELA LISSETH PADILLA CHAVARRIA', 'C. ALA ALDEA SAN ANTONIO CASA #2 COL. SAN F.CO S.M', 'EVADISTO PADILLA', 'SUSANA NAVARRETE CHAVARRIA', '7070-4629', '2012-03-30', 'f', 'DR. PERDOMO', 'n', 1, '', '2015-08-28', 'ninguno', '', '', '', ''),
(253, '', 'GENESIS MORENO NOLASCO MENDEZ', 'COL. EL AMATE # 2 PJE 5 CASA # 7 USULUTAN', 'ROBERTO JOSE NOLASCO REYES', 'DUNIA BETINA MENDEZ MEDRANO', '7479-4073', '2009-07-04', 'f', 'SE VE EN EL SAN JUAN', 'n', 1, '', '2013-12-21', 'ninguno', '', '', '', ''),
(254, '', 'GABRIEL EDUARDO ALVAREZ FUNES', 'B. EL RESEO SANTA ROSA DE LIMA LA UNION', 'ROBERTO CARLOS ALVAREZ', 'ADA CECILIA FUNES DE ALVAREZ', '7931-4799', '2014-09-19', 'm', 'FUE VISTO EN EMERGENCIA', 'n', 1, '', '2015-08-14', 'ninguno', '', '', '', ''),
(255, '', 'GRACE CELINE ALVARADO', 'COL. LA PRADERA EL TRANCITO USULUTAN', 'EDBIS GOMEZ', 'NERIS ALVARADO', '7828-6550', '2008-07-22', 'f', 'DR. PERDOMO', 'n', 1, '', '2016-01-05', 'ninguno', '', '', '', ''),
(256, '', 'GABRIELA MARIA JOYA REYES', 'RESIDENCIAL SAN F.CO AV. LOS ANGELES P. 24 # 7', 'FABIO ANTONIO JOYA FLORES', 'MARIA VILMA REYES', '7504-3371', '2003-07-15', 'f', 'NADIE', 'n', 1, '', '2015-12-17', 'ninguno', '', '', '', ''),
(257, '', 'GERMAN ELISEO CENTENO LOPEZ', 'B. EL CENTRO EL CARMEN', 'NERY ORLANDO CANTARERO', 'SINDY IVETH LOPEZ', '6001-4659', '2013-11-02', 'm', 'PRIMO DE JESUS MATEO', 'n', 1, '', '2015-06-25', 'ninguno', '', '', '', ''),
(258, '', 'GENESIS NICOLL CORTEZ MORALES', '7 C. ORIENTE Y 2 AV. SUR #6 S.M', 'LUIS ADONAY CORTEZ MORALES', 'EVELYN MARGARITA MORALES', '7821-6561', '2006-12-12', 'f', 'DR. MUNOZ', 'n', 1, '', '2015-02-07', 'otros', '', '', '', ''),
(259, '', 'GAEL ALESSANDRO AGUINADO ARAUJO', 'COL. FATIMA MARIA CASA # 12 SANTIAGO DE MARIA', 'GILBERTO ALEXANDER AGUINADO', 'ANA LETICIA ARAUJPO', '7681-5659', '2015-03-06', 'm', 'DIEGO JOSE ARIAS', 'n', 1, '', '2015-03-27', 'otros', '', '', '', ''),
(260, '', 'GENESIS SOFIA DIAZ CRUZ', 'COL. PANAMERICANA PJE EL DANDO CSA # 5 S.M', 'JOSE VICTOR DIAZ DIAZ', 'MARIA DE LA PAZ CRUZ RODRIGUEZ', '7894-9288', '2013-02-17', 'f', 'NADIE', 'n', 1, '', '2015-06-08', 'ninguno', '', '', '', ''),
(261, '', 'GLENSO YOEL ALVARADO HERNANDEZ', 'CTON EL VOLCAN', 'MARVIN GEOVANY ALVARADO', 'MIRIAM GRISELDA HERNANDEZ', '7514-3923', '2012-10-15', 'm', 'NADIE', 'n', 1, '', '2012-11-20', 'ninguno', '', '', '', ''),
(262, '', 'GUSTAVO ALEXANDER QUINTANILLA GONZALES', 'PASIFICA', 'WILLIAM ALEXANDER QUINTANILLA CONTRERAS', 'PAOLA BEATRIZ GONZALES PLATERO', '7870-5008', '2008-05-23', 'm', 'NADIE', 'n', 1, '', '2015-05-25', 'ninguno', '', '', '', ''),
(263, '', 'GRECIA VALERIA MOLINA', 'CTON OLOMEGA ', 'CARLOS DAVID GARCIA NUNEZ', 'ROXANA MOLINA', '7882-5875', '2014-02-05', 'f', 'NADIE', 'n', 1, '', '2014-11-12', 'ninguno', '', '', '', ''),
(264, '', 'GENESIS VALERIA GOMEZ BRIZUELA', 'LOTIFICACION LOS DELIRIOS FINAL COL. CURIS S.M', 'NO TIENE', 'SILVIA GOMEZ ', '7567-9385', '2006-03-31', 'f', 'NADIE', 's', 1, '', '2013-04-08', 'ninguno', '', '', '', ''),
(265, '', 'GENESIS ESTRELLA SORTO DEL CID', 'COL. SAN CARLOS C. PRINCIPAL S.M', 'LUIS ADIEL SORTO', 'MARIA DEL CARMEN DEL CIP', '7142-0823', '2013-03-04', 'f', 'DRA. DE CUBIAS', 'n', 1, '', '2013-02-10', 'ninguno', '', '', '', ''),
(266, '', 'GERARDO JACICOFE ELVIR MARTINEZ', 'COL. PANAMERICANA C. NICARAGUA ', 'EDUARDO ELVIR', 'JOSELIN MARTINEZ', '7566-2857', '2011-05-19', 'm', 'DR. DE HONDURAS', 'n', 1, '', '2013-09-11', 'ninguno', '', '', '', ''),
(267, '', 'GEMA LARISA COCA ARANIBA', 'B. CONCEPCION 23 C. ORIENTE PJE MARLIOT CASA # 10', 'ELVIR ALEXANDER COCA', 'JOSELIN DANIELA ARANIBA', '7543-9716', '2013-02-17', 'f', 'DR. MUNOZ', 'n', 1, '', '2013-03-25', 'ninguno', '', '', '', ''),
(268, '', 'GREICY ALEXANDRA RODAS', 'B. LA PAZ SAN ALEJO LA UNION', 'VICTOR TOMAS RODAS', 'JESSICA MARIA ORELLANA', '7252-0239', '2011-10-18', 'f', 'HNA KEIRY DANIELA RODAS', 'n', 1, '', '2014-05-13', 'ninguno', '', '', '', ''),
(269, '', 'GENESIS ALEXANDRA ASCENCIO', '5 AV. NORTE B. SAN F.CO # 799', 'ALEX ASCECENCIO', 'ETELVINA PINEDA', '7266-5675', '2003-05-27', 'f', 'NADIE', 'n', 1, '', '2011-07-18', 'otros', '', '', '', ''),
(270, '', 'GISELL ALESSANDRA HERNANDEZ POLIO ', 'COL CIUDAD PASIFICA 3 ETAPA CASA # 50', 'SABINO DE JESUS HERNANDEZ GUZMAN', 'ADA LORENA POLIOI', '6008-5360', '2011-08-14', 'f', 'NADIE', 'n', 1, '', '2016-12-15', 'ninguno', '', '', '', ''),
(271, '', 'GERARDO ANTONIO BOLANOS BONILLA ', 'CARRETERA CIDAD BARRIO KILOMETRO 155 CTON GUANSACASTE S. M', 'JOSE BOLAÑOS', 'LORENA BOLANOS DE BONILLA', '7899-3022', '2004-09-12', 'm', 'EMILIO JOSE BOILLA', 'n', 1, '', '2016-12-09', 'otros', '', '', '', ''),
(272, '', 'GENESIS ABIGAIL MARTINEZ', 'CTON JALACATAL S.M', 'JOE SANTOS MARTINEZ TREJO', 'DIANA CAROLINA NAJERA', '7595-1649', '2012-05-15', 'f', 'NADIE', 's', 1, '', '2013-05-11', 'otros', '', '', '', ''),
(273, '', 'GERARDO ALEXANDER PERDOMO PERDOMO', 'JUCUAPA', 'EDGARDO CANDELARIO PERDOMO', 'MARIA ANTONIA PERDOMO', '6004-0091', '2008-07-03', 'm', 'PRIMO DE DIEGO CANDELARIO', 'n', 1, '', '2014-11-13', 'otros', '', '', '', ''),
(274, '', 'GENESIS NAHOMY RODRIGUEZ RAMOS', 'CTON MIRAFLORES CASERIO EL CEDRAL LA UNION', 'RAUL ERNESTO RODRIGUEZ', 'NOHEMY ABIGAIL RAMOS', '7489-4764', '2013-02-11', 'f', 'NADIE', 'n', 1, '', '2015-10-27', 'sg', '', '', '', ''),
(275, '', 'GENIS ANALIN CASTRO HERNANDEZ', 'CIUDAD BARRIOS B. CONCEPCION', 'NO TIENE', 'NANCY ANALIN CASTRO', '7586-8531', '2014-12-06', 'f', 'RECEPCION', 'n', 1, '', '2015-12-21', 'ninguno', '', '', '', ''),
(276, '', 'GABRIEL NEHEMIAS CARBALLO FERNANDEZ', 'CTON EL PLATANAR MONCAGUA', 'EVER SABASTIAN CARBALLO MAJANO', 'LORENA AMILETH FERNANDEZ', '6421-3108', '2013-05-03', 'm', 'LA VE LA DR. CRUZ', 'n', 1, '', '2016-06-16', 'vivir', '', '', '', ''),
(277, '', 'GENESIS ELIZABETH QUEVER ', 'URBANIZACION BELLA VISTA S.M', 'DANIEL ANTONIO ROMERO', 'MERLYN ROMERO', '6132-6671', '2014-05-28', 'f', 'EDGAR ANTONIO CAMPOS', 'n', 1, '', '2016-04-08', 'ninguno', '', '', '', ''),
(278, '', 'GENESIS AYLEEN ABARCA VILLACORTA', 'COL. PRADOS DE S.M C. RIO GRANDE # 59 S.M', 'JONATHAN JOSUE ABARCA', 'SONIA ESTELA VILLACORTA', '7214-7566', '2010-10-07', 'f', 'NADIE', 's', 1, '', '2011-09-02', 'otros', '', '', '', ''),
(279, '', 'GENESIS RUBI ROBLES FUNES', 'HACIENDA OBRAJUELO MONCAGUA', 'LUIS ALEXIS ROBLES MEDRANO', 'CLAUDIA YAMILETH FUNES DE ROBLES', '7592-0493', '2015-01-06', 'f', 'VISTO EN EMERGENCIA', 's', 1, '', '2015-05-22', 'vivir', '', '', '', ''),
(280, '', 'GENESIS VALERIA ALEMAN CUEVA', 'B. GUADALUPE SAN ALEJO', 'HUGO ROLANDO ALEMAN', 'MARIA GABRIELA CUEVA', '7565-6618', '2014-09-01', 'f', 'NADIE', 'n', 1, '', '2016-02-09', 'ninguno', '', '', '', ''),
(281, '', 'GABRIELA YASMIN RIVERA BENITEZ', 'CTON SAN JACINTO', 'CELVIN WILLFREDO RIVERA', 'DILCIA DEL CARMEN BENITEZ', '7418-0091', '2014-03-14', 'f', 'DRA.ADALI RIVERA DE SOSA CUÑADA', 'n', 1, '', '2017-02-16', 'ninguno', '', '', '', ''),
(282, '', 'GABRIELA HATZEL ROMERO PORTILLO', 'CIDUDAD PASIFICA 2 ETAPA P. 13 A- 65 S.M', 'JUAN FRANCISCO ROMERO CHEVEZ', 'KRISSIA MARIA DE ROMERO', '7576-9285', '2016-01-10', 'f', 'DANMARCO ', 'n', 1, '', '2016-01-14', 'otros', '', '', '', ''),
(283, '', 'GABRIELA EUNICE ALVARADO ALVAREZ', 'COL. SAN FRANCISCO', 'DAVID ALVARADO COLINDRES ', 'SUYAPA GUADALUPE ALVAREZ', '7616-4264', '2002-03-17', 'f', 'DR. MUNOZ MARQUEZ', 'n', 1, '', '2017-01-19', 'ninguno', '', '', '', ''),
(284, '', 'HAYDEE ESMERALDA RUIZ BERRIOS', 'CHILANGUELA BARRIO EL CENTRO', 'JULIO CESAR RUIZ', 'LOURDES PETRONILA BERRIOS', '7108-9095', '2003-02-10', 'f', 'NADIE', 'n', 1, '', '2011-03-28', 'ninguno', '', '', '', ''),
(285, '', 'HAZEL GUADALUPE CAMPOS ROBLES ', 'URBANIZACION BELLA VISTA P.G CSA # 31 S.M', 'HERTOR SALVADOR CAMPOS', 'FLORINDA ELISSETH ROBLES DE CAMPOS', '7260-5859', '2011-04-18', 'f', 'AMIGA DE ARIANA ISABELA PRIMA DE DIEGO ALVARENGA', 's', 1, '', '2013-07-18', 'otros', '', '', '', ''),
(286, '', 'HANSY ENMANUEL ARGUETA ESTRADA', 'COL. CIUDAD PASIFICA 2 ETAPA P. 13 A CASA # 17', 'MANUEL HANSY ARGUETA SANTOS', 'JOHANA VANESSA ESTRADA', '7296-7083', '2011-02-18', 'm', 'RECEPCION', 'n', 1, '', '2015-06-09', 'ninguno', '', '', '', ''),
(287, '', 'HERRY MAURICIO TURCIOS VASQUEZ', 'CONCEPCION BATRES DE USULUTAN', 'CARLOS MAURICIO TURCIOS', 'YENNIS ARELY VASQUEZ', '6011-4364', '2011-09-10', 'm', 'NADIE', 'n', 1, '', '2016-12-05', 'ninguno', '', '', '', ''),
(288, '', 'HENRRY ALEXANDER MARTINEZ', 'LAS GUATERAS JOCOARAN ', 'NO TIENE', 'ISIS YAMILETH MARTINEZ FALLECIO ENCARGADA ALICIA IVETH MARTINEZ', '7948-6704', '2010-02-15', 'm', 'HNO DE BERTA MELISSA MARTINEZ', 'n', 1, '', '2014-05-09', 'ninguno', '', '', '', ''),
(289, '', 'HUGO ALBERTO PEREZA CHICAS', 'OSICALA MORAZAN', 'RICARDO WALBERTO PEREIRA', 'HIDALIA CHICAS PEREIRA', '7593-6372', '2009-12-07', 'm', 'NADIE', 'n', 1, '', '2014-11-10', 'ninguno', '', '', '', ''),
(290, '', 'HELEN NOHEMY LOPEZ LARIN ', 'SAN NICOLAS LEMPAS', 'JUAN JOSE LOPEZ', 'FRANCISCA KATALINA LARIN', '7299-4064', '2013-07-12', 'f', 'SE VE EN USULUTAN', 'n', 1, '', '2015-12-11', 'ninguno', '', '', '', ''),
(291, '', 'HERBETH OTONIEL TORRES', 'CTON LA ESTANCIA MONCAGUA', 'HERBERTH CASTILLON', 'NEHILA KATALINA TORRES', '7874-2410', '2001-07-22', 'm', 'MARCDELA PATRICIA', 'n', 1, '', '2015-09-16', 'otros', '', '', '', ''),
(292, '', 'HENRRY JARED  GOMEZ MOREJON', 'USULUTAN P. 2 CASA #8 VILLAS DE TERRANOVA', 'HENRRY EDUARDO GOMEZ', 'ROSA EMILIA MOREJON DE GOMEZ', '7902-3597', '2016-02-07', 'm', 'DIEGO CANDELARIO HNO', 's', 1, '', '2016-02-15', 'otros', '', '', '', ''),
(293, '', 'HEIDY ELIZABETH URRUTIA URRUTIA', 'CTON EL VOLCAN', 'ROBERTO ALEXANDER URRUTIA', 'HEIDY DEL CARMEN URRUTIA', '7950-4509', '2016-04-08', 'f', 'WILIAM GAEL', 'n', 1, '', '2017-02-02', 'ninguno', '', '', '', ''),
(294, '', 'HELYN DAYANA CABALLERO LARA', 'CTON SAN JOSE QUELEPA', 'JOEL CABALLERO SANCHEZ', 'SINDY STEFANY LARA CABALLERO', '7556-1559', '2012-02-10', 'f', 'LIC DE MATA DEL SAN JUAN', 'n', 1, '', '2015-08-24', 'otros', '', '', '', ''),
(295, '', 'HENRRY PAUL ESCOBAR UMAÑA', 'RESIDENCIAL TERRENOVA C. TOLEDO AV. CANADA', 'JONY HENRRY ESCOBAR', 'SUJEY MELARY UMANA', '7515-2277', '2011-05-26', 'm', 'LUIS LIZAMA', 'n', 1, '', '2013-11-14', 'otros', '', '', '', ''),
(296, '', 'HEBER ISAAC SORTO PEREZ', 'COL. MILAGRO DE LA PAZ C. CARDENAS', 'FREDY EVERTH SORTO NOLASCO', 'RUTH ESPERANZA PEREZ', '7210-3058', '2010-04-23', 'm', 'NADIE', 's', 1, '', '2015-03-30', 'vivir', '', '', '', ''),
(297, '', 'HESSON NOEL BONILLA QUINTANILA ', 'COL. 4 DE JULIO C. PRINCIPAL CASA # 7 S.M', 'JOSE NOEL BONILA', 'YANIRA ESMERALDA QUINTANILLA', '7885-9230', '1999-12-04', 'm', 'NADIE', 'n', 1, '', '2015-03-23', 'ninguno', '', '', '', ''),
(298, '', 'HAZZELL BRISSEHE PEREZ ARGUETA ', 'CTON EL BRAZO', 'WILLIAM ALEXANDER PEREZ', 'ANA ELIZABETH ARGUETA', '7596-5914', '2012-04-10', 'f', 'DR. MUNOZ', 'n', 1, '', '2014-10-29', 'ninguno', '', '', '', ''),
(299, '', 'ALEXA FERNANDA VASQUEZ ARGUETA', 'SAN FRANCISCO GOTERA', 'MANUEL VAQUEZ', 'CLAUDIA VANESSA ARGUETA', '7235-7877', '2016-10-17', 'f', 'DRA. ARMEDO B.M', 's', 1, '', '2017-03-11', 'otros', '', '', '', ''),
(300, '', 'DANIELA ELIZABETH FUENTES DUEÑAS', 'COL. JARDINES DE SAN MARTIN SANTIAGO DE MARIA CASA # 17 USULUTAN', 'SEBASTIAN FUENTES', 'LOURDES MICHEL DUEÑAS', '7264-7777', '2015-02-17', 'f', 'DR. CHAVEZ', 's', 1, '', '2017-03-15', 'ninguno', '', '', '', ''),
(301, '', 'HERBERTH FERNANDO HENRRIQUEZ', 'COL. EL MOLINO S.M', 'MANFREDI RIOS MEJIA', 'SONIA DE LA PAZ LORES DE RIOS', '7870-0739', '2001-03-02', 'm', 'NADIE', 's', 1, '', '2016-11-22', 'ninguno', '', '', '', ''),
(302, '', 'HAMILTON DANIEL BENITEZ', 'VALLE SAN JUAN P. 14  CASA 9', 'NO TIENE', 'SARA NOHEMI BENITEZ', '6104-9457', '2002-08-31', 'm', 'NADIE', 'n', 1, '', '2013-12-07', 'ninguno', '', '', '', ''),
(303, '', 'HAZEL JULISSA GALINDO ESCOBAR', 'COL. CHAPARRASTIQUE PJE # 2 CASA # 34 S.M', 'ROBERTO CARLOS GALINDO', 'ROSARIO ESCOBAR', '7939-6620', '2000-09-01', 'f', 'NADIE', 'n', 1, '', '2016-08-25', 'ninguno', '', '', '', ''),
(304, '', 'HASSEL JADITH PARADA ASCENCIO', '5.AV NORTE CASA #8 B SAN F.CO S.M', 'WILLIAM MORALES', 'MIRNA JANET ASCENCIO', '2661-0664', '2003-07-08', 'f', 'NADIE', 'n', 1, '', '2014-09-05', 'ninguno', '', '', '', ''),
(305, '', 'HEYDI ANGELICA CHICAS GUEVARA', 'GUATICA CASERIO LA LAGUNA', 'JOSE ALEXIS CHICAS', 'DORA ALICIA GUEVARA', '7768-0767', '2014-02-06', 'f', 'NADIE', 's', 1, '', '2014-12-08', 'ninguno', '', '', '', ''),
(306, '', 'HEYDI MARICELA SALGADO GUZMAN', 'B. CONCEPCION CIUDAD BARRIOS', 'NO TIENE', 'VIRGINIA MARIA GUZMAN', '7259-6954', '2012-12-02', 'f', 'VALERY SAMANTHA TREJO', 'n', 1, '', '2014-06-25', 'ninguno', '', '', '', ''),
(307, '', 'HENDRY STANLEY MENBREÑO', 'CTON EL NISPER SANTA ELENA USULUTAN', 'ALEXIS BLADIMIR MENBREÑO APARICIO', 'LUZ STEFANJY FUNES REYES', '7358-8459', '2010-08-08', 'm', 'NADIE', 'n', 1, '', '2014-04-08', 'ninguno', '', '', '', ''),
(308, '', 'IVAN JOSUE REYES RIVAS', 'COL. LAS VIOLES PJE SANTO DOMINGO CASA # 13 CTON SANTO DOMINGO ZAMORAN', 'FRAEL ALBERTO REYES', 'SORAYA GUADALUPE RIVAS GOMEZ', '6009-7782', '2014-05-21', 'm', 'SOYA TRABAJO EN SAN F.CO', 's', 1, '', '2016-07-04', 'otros', '', '', '', ''),
(309, '', 'INGRID LISSETH RODRIGUEZ LAZO', 'HACIENDA SAN JUAN BOSCO CTON LAS PUERTA S. M', 'EDWIN RODRIGUEZ', 'MARICELA DEL CARMEN LAZO CRUZ', '7513-3669', '2007-08-15', 'f', 'NADIE', 's', 1, '', '2015-04-29', 'ninguno', '', '', '', ''),
(310, '', 'IAN AARON LOZANO RIVERA', 'USULUTAN', 'AMILCAR JOSE LOZANO BERMNUDEZ ', 'RUTH NOHEMI RIVERA DE LOZANO', '7923-0116', '2016-08-18', 'm', 'DR. SERGIO GOMEZ', 's', 1, '', '2017-02-14', 'ninguno', '', '', '', ''),
(311, '', 'ISIS DAYANA JIMENEZ ELENA', 'USULUTAN', 'HERCTOR JIMENEZ SAGARTUNE', 'ANA ISIS ELENA GONZALES APARICIO', '7821-6581', '2004-06-27', 'f', 'NADIE', 's', 1, '', '2015-02-07', 'rpn', '', '', '', ''),
(312, '', 'ISABELA DENISE MARTINEZ ROMERO', 'AV. GERARDO BARRIOS 306 BIS B SAN F.CO S.M', 'EZEQUIEL AGUSTIN MARTINEZ', 'GISELA MARIA ROMERO', '7744-9782', '2016-11-12', 'm', 'NADIE', 's', 1, '', '2016-11-25', 'otros', '', '', '', ''),
(313, '', 'ISABELLA DEL CARMEN MORAN DE LA CRUZ', 'RESIDENCIAL LAS PALMERAS C. TITANIA P. 6 CASA # 9 ', 'HENRRY MORAN', 'DINA MARGOTH DE LA CRUZ', '7729-6465', '2015-02-07', 'f', 'RECEPCION', 'n', 1, '', '2015-02-07', 'ninguno', '', '', '', ''),
(314, '', 'IRENE DANIELA ARGUETA CASATILLO', 'COL. JARDINES DEL RIO BLOK 8 PJE 17 CASA# 12', 'SANTIAGO ENMANUEL ARGUETA', 'YESSICA CASTILLO DE ARGUETA', '7473-4532', '2014-05-12', 'f', 'RECEPCION', 'n', 1, '', '2016-06-09', 'ninguno', '', '', '', ''),
(315, '', 'ISAIAS DANIEL TREJO ROBLES', 'SAN ANTONIO SILVA ', 'MANUEL DE JESUS TREJO', 'REYNA ISABEL ROBLES DE TREJO', '6008-0420', '2002-06-09', 'm', 'HIJO DE LA SECRETARIA DEL DR. MAGAÑA', 's', 1, '', '2015-06-02', 'otros', '', '', '', ''),
(316, '', 'ISAAC ENMANUEL RUBIO GUZMAN', '4AV. SUR B. LAS FLORES LA UNION', 'LAZARO RAMON RUBIO', 'BLANCA ESTER GUZMAN', '7185-2482', '1982-05-29', 'm', 'NADIE', 'n', 1, '', '2013-11-12', 'ninguno', '', '', '', ''),
(317, '', 'IRVIN JOSUE FLORES MOLINA ', 'RESIDENCIAL LAS AGUILAS C. FENIC. P.A # 19', 'IRVIN AROLDO FLORES', 'ALBA ELIZABETH MOLINA', '7194-9379', '2011-06-20', 'm', 'DR. LIZAMA', 'n', 1, '', '2012-01-05', 'ninguno', '', '', '', ''),
(318, '', 'ISMARY VALESCA GALVES SALAMA', 'URBANIZACION ESPEÑA P. 10 PJE 2 SUR CASA # 65', 'STIVEN NAPOLION GALVES', 'SORAYDA ARGENTINA SALAMA DE GALVES', '7296-1722', '2010-04-28', 'f', 'RECEPCION', 's', 1, '', '2014-03-13', 'ninguno', '', '', '', ''),
(319, '', 'ISAMAEL ALEXADER PEREIRA LAZO', 'COL. MORAZAN SAN F.CO GOTERA', 'ISAMAEL PEREIRAMARQUEZ', 'LIGIA ARELY LAZO', '7473-3091', '2004-09-14', 'm', 'FUE VISTO EN MERGENCIA', 'n', 1, '', '2015-11-09', 'rpn', '', '', '', ''),
(320, '', 'ISAU MENJIVAR PINEDA', 'COL. EL MOLINO P. G-1 # 28', 'ESAU MENJIVAR', 'ERLINDA PINEDA', '7553-1224', '2003-02-03', 'm', 'SE VE POR B.M TRABAJA EN RADIO QUE BUENA', 'n', 1, '', '2014-10-29', 'otros', '', '', '', ''),
(321, '', 'JESUS MATEO CASTILLO LOPEZ', 'EL CARMEN LA UNION', 'GONZALO ARISTIDES CASTILLO', 'ZULEIMA HERNANDEZ', '7647-0930', '2014-09-09', 'm', 'NADIE', 's', 1, '', '2014-09-25', 'ninguno', '', '', '', ''),
(322, '', 'JONATHAN STEVEN MOLINA AREVALO', 'CTON EL VARISAL CONCEPCION BATRE', 'ORLANDO DE JESUS MOLINA', 'MARIA ISABEL AREVALO', '7922-4970', '2003-05-13', 'm', 'HNO DE KEVIN JOSUE MOLINA AREVALO', 's', 1, '', '2014-11-22', 'rpn', '', '', '', ''),
(323, '', 'JOSUE BENJAMIN MOLINA', 'CASERIO LA GUACAMAYA CTON BOLIVAR SAN ALEJO', 'NOE ANTONIO MOLINA', 'SILVIA ESTER ESPINAL', '7157-8954', '2014-09-18', 'm', 'NADIE', 'n', 1, '', '2016-08-01', 'ninguno', '', '', '', ''),
(324, '', 'JOSE MATEO RODRIGUEZ ALVARENGA', '7 C. ORIENTE CASA # 621 C.BELEN', 'FRANCISCO JOSE RODRIGUEZ MAYORGA', 'JKUANA ALVARENGA FUENTES', '7930-3663', '2012-06-27', 'm', '´NADIE', 's', 1, '', '2013-07-13', 'ninguno', '', '', '', ''),
(325, '', 'JULIO ERNESTO SALAZAR BENITEZ', 'CIUDAD BARRIO B. ROMA', 'LUIS ERNESTO SALAZAR', 'MARIA ERMELINDA BENITEZ', '7679-7998', '2013-11-10', 'm', 'VALERY SAMANTHA', 'n', 1, '', '2015-05-20', 'otros', '', '', '', ''),
(326, '', 'JOSUE ISAIAS DELCID GOMEZ', 'COL. CORDOVA 4 PJE CASA # 8 DPTO USULUTAN', 'JOSE ISAIAS DEL CID ALVARADO', 'MARTHA ESTELA GOMEZ', '7784-6540', '2000-03-31', 'm', 'DR. MUNOZ', 'n', 1, '', '2014-04-14', 'ninguno', '', '', '', ''),
(327, '', 'JHONY OTONIEL MELENDEZ CALDERON', 'COL. PRADO C. LAS ROSAS AV. LOS ALMENDROS CAS # 2', 'JHONY JOEL MELENDEZ', 'LIDIA ROSIBEL CALDERON', '7282-7502', '2003-02-22', 'm', 'NADIE', 's', 1, '', '2014-12-02', 'ninguno', '', '', '', ''),
(328, '', 'JOSE ILMER VENTURA', 'CTON HATO NUEVO', 'JOB VENTURA', 'NORMA ELSY SANCHEZ', '7227-9957', '1999-01-21', 'm', 'MADRE TRABAJO EN SAN F.CO', 'n', 1, '', '2012-12-31', 'ninguno', '', '', '', ''),
(329, '', 'JOSELIN ANDREA REYES CORDERO', 'CIUDAD PASIFICA 3 ETAPA CENDA 8 CASA 63 S.M', 'ALEJANDRO REYES', 'MARIA STEFANY CORDERO', '7553-7222', '2008-01-26', 'f', 'SE VE EN SAN JUAN', 's', 1, '', '2013-09-09', 'otros', '', '', '', ''),
(330, '', 'JOSE EDENILSON BENITEZ RAMOS', 'CASERIO PIEDRA PARADA CTON CORINTO', 'JOSE BENITEZ', 'ROSA LIDIA RAMOS', '7619-4681', '2012-06-07', 'm', 'SECRETARIA DE LA PAZ', 'n', 1, '', '2016-07-28', 'ninguno', '', '', '', ''),
(331, '', 'JONATHAN ALEXANDER GUEVARA CAMPOS', 'URBANIZACION ESPAÑA S.M', 'WILBER ALEXANDER GUEVARA', 'LUZ MARINA CAMPOS', '6013-1986', '2015-12-07', 'm', 'DR. PALACIO', 'n', 1, '', '2016-07-12', 'ninguno', '', '', '', ''),
(332, '', 'JEFFRY SANTIAGO VILLEGA FERNADEZ', 'COL. SAN JOSE AV. SAN ANTONIO #21-A S.M', 'SAUL VILLEGA', 'MIRIAN DEL CARMEN FERNANDEZ', '7727-6787', '2009-10-31', 'm', 'BRANDO JOSUE VELLEGA FERNANDEZ', 'n', 1, '', '2016-12-07', 'ninguno', '', '', '', ''),
(333, '', 'JONATHAN ALEXANDER PORTILLO RAMIREZ', 'RESIDENCIAL MONTECARLOS S.M', 'ELIAS ALEXANDER PORTILLO ELEMAN', 'VERONICA ELIZABETH RAMIREZ PARADA', '7476-9097', '2014-03-09', 'm', 'NADIE', 'n', 1, '', '2017-02-09', 'ninguno', '', '', '', ''),
(334, '', 'JOSUE EMANUEL TREJO CARRANZA', 'COLO. MONCAGUA INTIPUCA HONDURAS', 'ALEXI DANILO TREJO', 'THELMA ROSIBEL CARRANZA', '9710-6041', '2009-02-16', 'm', 'NADIE', 's', 1, '', '2015-04-24', 'otros', '', '', '', ''),
(335, '', 'JOSUE IVAN GARCIA CHEVEZ', 'COL. EL TESORO # 2 AV. CHILE # 16 S.M', 'LUIS ALONSO GARCIA', 'CENAIDA YAMILETH CHAVEZ', '7223-8283', '2014-05-02', 'm', 'SE VE EN SAN JUAN', 'n', 1, '', '2016-12-21', 'ninguno', '', '', '', ''),
(336, '', 'JENNIFER ANGELICA VASQUEZ IGLESIAS', 'CTON SAN FRANCISQUITO MORAZAN', 'OLIFIDO VASQUEZ', 'MARIA FELICITA IGLESIAS', '7032-6821', '2015-09-05', 'f', 'ESTEFANY BEATRIZ HNA SE VE EN SAN JUAN', 'n', 1, '', '2016-04-01', 'ninguno', '', '', '', ''),
(337, '', 'JANELY VERONICA BONILLA BONILLA', 'COL. LA ESPERANZA 1 EN PAJE LA UNION', 'LUIS ANTONIO BONILLA', 'VERONICA CAROLINA  BONILLA', '7113-9725', '2009-09-21', 'f', 'NADIE', 's', 1, '', '2011-06-30', 'ninguno', '', '', '', ''),
(338, '', 'JAIRO ROLANDO SANDOVAL UMANZOR', 'SAN JOSE SANTA CLARA PASAQUINA SANTA ROSA', 'MARLO VISMAR UMANZOR ', 'SILVIA ZULEIMA UMANZOR', '7753-8385', '2014-07-03', 'm', 'DR. ERIK VLADIMIR MARTINEZ', 's', 1, '', '2015-04-14', 'ninguno', '', '', '', ''),
(339, '', 'JUAN ISAAC CORTEZ MARADIAGA ', 'URBANIZACION CIUDAD PASIFICA P. D-66 S.M', 'JUAN ANTONIO CORTEZ', 'ZULMA RUBIDIA MARADIAGA', '7282-4768', '2013-04-15', 'm', 'SE VIO EN EMERGENCIA ALERGICO AL PROPIOXATO', 's', 1, '', '2016-03-29', 'ninguno', '', '', '', ''),
(340, '', 'JOSTIN MELKESIVETH CRUZ ROBLES', 'CTON LAS LOMITAS CASERIO SANTA LUCIA', 'SANTOS FELICITO CRUZ', 'YESSENIA ROBLES', '7938-1034', '2015-04-25', 'm', 'ALLISON DEL ROSARIO', 's', 1, '', '2015-05-27', 'ninguno', '', '', '', ''),
(341, '', 'YOHAN JOSUE VARGAS LAZO', 'CTON GUALAMA CHALPELTIQUE', 'JUAN JOSE VARGAS', 'MAURA ELSY LAZO', '7393-8621', '2002-04-27', 'm', 'NADIE', 'n', 1, '', '2014-02-17', 'ninguno', '', '', '', ''),
(342, '', 'JOSUE ARIEL AMARYA CONTRERA', 'CTON ONDABLE CORINTO MORAZAN', 'OVIDEO CONTRERA', 'GLORIA ESPERANZA AMAYA', '7369-0223', '2013-01-07', 'm', 'RODRIGO', 'n', 1, '', '2013-10-30', 'ninguno', '', '', '', ''),
(343, '', 'JEFRRI DARIEL QUINTERO SALGADO', 'CASERIO SANTA CRUZ CTON SESORI', 'JOSE PEDRO QUINTERO', 'ANABEL SALGADO RIVERA', '7461-4638', '2013-09-27', 'm', 'DR. CARDENAS', 'n', 1, '', '2015-10-07', 'ninguno', '', '', '', ''),
(344, '', 'JEOVANY FRANCISCO POLIO RODRIGUEZ', 'ALEGRIA B. EL CALVARIO', 'FRANCISCO POLIO', 'MARIA EVELYN RODRIGUEZ DE POLIO', '7745-1688', '2012-01-05', 'm', 'INGRID LISSETTE LOPEZ', 'n', 1, '', '2016-10-22', 'ninguno', '', '', '', ''),
(345, '', 'JONATHAN BLADIMIR AMAYA', 'CTON VALLE ALEGRE MONCAGUA', 'MARCO ANTONIO AMAYA', 'VILMA HAYYDEE HERNANDEZ DE AMAYA', '7672-6755', '2011-04-12', 'm', 'SE VIO EN MERGENCIA', 's', 1, '', '2015-02-11', 'vivir', '', '', '', ''),
(346, '', 'JONATHAN ISAMAEL ORTIZ FLORES', 'COL. LAS FLORES P. CASA # 2 SANFRANCISCO GOTERA MORAZAN', 'FRANCISCO ANTONIO ORTIZ VASQUEZ', 'JOHANA CANDELARIA FLORES MACHADO', '7282-1287', '2016-06-30', 'm', 'DR. JOSE FLAVIO JIMENEZ', 'n', 1, '', '2017-01-20', 'ninguno', '', '', '', ''),
(347, '', 'JULIO ADALBERTO ZALAZAR CENTENO', 'CIUDAD BARRIOS CONCEPCION ', 'JULIO ADALBERTO ZALAZAR', 'KAREN LORENA CENTENO', '2665-9905', '2016-09-28', 'm', 'HNO DE KAREN MAYENCI', 's', 1, '', '2016-10-21', 'otros', '', '', '', ''),
(348, '', 'JAIDEN ALEJANDRO VELASQUEZ MORAN', 'C. PRINCIPAL B EL CENTRO POLOROS', 'FREDY MACHADO GARCIA', 'SANDRA PATRICIA VELASQUEZ MORAN', '7291-2388', '2013-09-07', 'm', 'DR. ABDON MACHADO LLEVO TODOS LOS EXAMENES', 'n', 1, '', '2016-01-29', 'ninguno', '', '', '', ''),
(349, '', 'JOSE GUSTAVO PEREIRA', 'COL. EL MOLINO P.K CASA # 27', 'NO TIENE', 'KARLA BEATRIZ PEREIRA', '1111-1111', '2004-04-17', 'm', 'DR. YANES', 'n', 1, '', '2016-06-21', 'ninguno', '', '', '', ''),
(350, '', 'JORGE BALMORE SOTO RODRIGUEZ', 'DECIMA C. ORIENTE #49- A S.M', 'ALBERTO JAVIER ZAVALA', 'ROSA NORMA RODRIGUEZ', '7886-1096', '2002-12-26', 'm', 'SOPHIA', 's', 1, '', '2015-05-26', 'rpn', '', '', '', ''),
(351, '', 'JUAN FRANCISCO DE LA O VILLACORTA', 'RESIDENCIAL MARIA JULIA PJE # 1 CASA # 18 S.M', 'JUAN FRANCISCO DE LA O SARAVIA', 'ANA DOLORES VILLACORTA FLORES', '7592-6050', '2012-10-30', 'm', 'HNO DE MATEO ALEJANDRO ', 's', 1, '', '2016-04-23', 'rpn', '', '', '', ''),
(352, '', 'JAVIER ESAU CENTENO', 'CTON EGIDO COL. SANTA MARIA MONCAGUA', 'JOSE LUIS CENTENO', 'CARMEN ALICIA MEDRANO', '6155-6099', '1996-04-06', 'm', 'ASHLY RAQUEL', 's', 1, '', '2014-06-16', 'ninguno', '', '', '', ''),
(353, '', 'JENNIFER NOHEMY RODRIGUEZ ARIAS', 'RESIDENCIAL LAS AMERICAS 2 PJE CASA #3', 'JOSE VICTORIANO RODRIGUEZ', 'ZULMA NOHEMY ARIAS', '7532-2310', '2003-03-16', 'f', 'MALINE STEFANY RODRIGUEZ ARIAS', 'n', 1, '', '2016-08-13', 'ninguno', '', '', '', ''),
(354, '', 'JOSE ANDRES BOLAÑOS BONILLA', 'CARRETERA CIUDAD BARRIOS KILOMETRO 155CTON GUANACASTE S.M', 'JOSE BOLAÑOS', 'LORENA BOLAÑOS DE BONILLA', '7899-3022', '2010-07-12', 'm', 'EMILIO JOSE BONILLA , CARLOS ALEJANDRO BONILLA', 's', 1, '', '2016-12-09', 'rpn', '', '', '', ''),
(355, '', 'JONATHAN OSMAR REYES FLORES', 'CTON RIO RGA ULUAZAPA', 'RAMON ARISTIDES', 'BERTHA MARINA FLORES', '7926-7377', '2014-11-23', 'm', 'NADIE', 'n', 1, '', '2016-09-29', 'ninguno', '', '', '', ''),
(356, '', 'JEFERSON ALEXANDER ARGUETA MEJICANO', 'PAPALON MONCAGUA', 'LUIS ALBERTO ARGUETA ROMERO', 'INGRID YANETH MEJICANO', '7141-5086', '2015-03-10', 'm', 'FUE VISTO EN MERGENCIA GEMELOS', 's', 1, '', '2015-05-25', 'vivir', '', '', '', ''),
(357, '', 'JONATHAN ALBERTO ARGUETA MEJICANO', 'PAPALON MONCAGUA', 'LUIS ALBERTO ARGUETA', 'INGRID YANETH MEJICANO', '7141-5086', '2015-03-10', 'm', 'FUE VISTO EN MERGENCIA GEMELOS', 's', 1, '', '2015-05-25', 'vivir', '', '', '', ''),
(358, '', 'JEREMIAS ALESSANDRO CAMPOS MEDRANO', 'CTON LAS FRAGUAS MONCAGUA', 'WELMER ALEXANDER CAMPOS ZELAYA', 'TERESA DE JESUS MEDRANO DE CAMPOS', '7820-5227', '2015-12-30', 'm', 'RECEPCION', 's', 1, '', '2016-02-19', 'vivir', '', '', '', ''),
(359, '', 'JONATHAN DAVID TREJO MARTINEZ', 'CASERIO LAS GUARCERRAS CTON ZAPOTE JUCUAPA', 'DAVID OMAR TREJO CRUZ', 'VILMA NOEMY MARTINEZ VALDEZ', '7107-0688', '2010-07-29', 'm', 'BERTHA MELISSA PRIMO', 's', 1, '', '2015-08-07', 'ninguno', '', '', '', ''),
(360, '', 'JOSUE ALEXANDER SARAVIA MORALES ', 'COL. SAN CARLOS 3 C. GUATEMALA PJE GUTIERREZ CASA 10 S.M', 'LISANDRO ULISES SARAVIA', 'NUBIA ARELY MORALES', '7144-3355', '2008-09-29', 'm', 'LIC AMAYA  ANESTESIOLOGO PAPA DE ALEXA GRABRIELA', 'n', 1, '', '2013-07-15', 'ninguno', '', '', '', ''),
(361, '', 'JENNIFER DAMARI PALMA DEL CID', 'TABLON ULUASAPA S.M', 'JOSE MAURICIO PALMA DEL CID', 'BELINDA MARICELA DEL CID', '7434-7440', '2009-12-05', 'f', 'DR. KARINA GARAY DE AVILES CENTRO MEDICO', 's', 1, '', '2015-07-24', 'ninguno', '', '', '', ''),
(362, '', 'JULIANA DOLORES MENDOZA ', 'SAN JOSE MONTAÑITA JUDICCION DE ALEGRIA', 'JOSE LUIS MENDOZA ', 'FAUSTINA ISABEL MENDOZA', '7560-1985', '2010-05-14', 'f', 'NADIE', 'n', 1, '', '2015-05-29', 'ninguno', '', '', '', ''),
(363, '', 'JADIEL ISAAC HERNANDEZ LOPEZ', 'EL CARMEN LA UNION B. CENTRO', 'CARLOS MARLON HERNANDEZ', 'JESSICA YASMIN LOLPEZ', '7494-1078', '2015-01-01', 'm', 'MATEO CASTILLO LOPEZ', 's', 1, '', '2015-01-26', 'ninguno', '', '', '', ''),
(364, '', 'JONTHAN STEVEN MOLINA AREVALO', 'CTON VARISAL CONCEPCION BATRES', 'ORLANDO DE JESUS MOLINA', 'MARIA ISABEL AREVALO', '7922-4970', '2003-05-13', 'm', 'HNO DE KEVIN JOSUE', 's', 1, '', '2014-11-22', 'rpn', '', '', '', ''),
(365, '', 'JOSUE BENJAMIN MOLINA', 'CASERIO LA GUATACUAMAYA CTON BOVADINA SAN ALEJO', 'NOE ANTONIO MOLINA', 'SILVIA ESTER ESPINAL', '7157-8954', '2014-09-18', 'm', 'NADIE', 'n', 1, '', '2016-08-01', 'ninguno', '', '', '', ''),
(366, '', 'JOSE MATEO RODRIGUEZ ALVAREZ', '7C. ORIENTE CASA #612 C. BELEN', 'FRANCISCO JOSE RODRIGUEZ', 'JUANA ALVARENGA FUENTES', '7930-3663', '2012-06-27', 'm', 'NADIE', 's', 1, '', '2013-07-13', 'otros', '', '', '', ''),
(367, '', 'JEFRY SANTIAGO VELLEGA FERNANDEZ', 'COL. SAN JOSE AV. SAN ANTONIO # 21- A S.M', 'SAUL VILLEGA', 'MIRIAN DEL CARMEN FERNANDEZ', '7727-6787', '2009-10-31', 'm', 'BRANDO JOSUE VILLEGA FERNANDEZ', 'n', 1, '', '2016-12-07', 'ninguno', '', '', '', ''),
(368, '', 'JOHAN JOSUE VARGAS LAZO', 'CTON GUATAMA CHALPELTIQUE', 'JUAN JOSE VARGAS', 'MAURA ELSY LAZO', '7393-8621', '2002-04-27', 'm', 'NADIE', 'n', 1, '', '2014-02-17', 'ninguno', '', '', '', ''),
(369, '', 'JEFFRI DARIEL QUINTERO SALGADO', 'CASERIO SANTA CRUZ CTON SESORI', 'JOSE PEDRO QUINTEROS ', 'ANBEL SALGADO RIVERA', '7461-4638', '2013-09-27', 'm', 'DR. CARDENAS', 'n', 1, '', '2015-10-07', 'ninguno', '', '', '', ''),
(370, '', 'JOSE ATILIO BARAHONA', 'CAROLINA B. EL CENTRO', 'NOEL LUNA', 'MARITZA YAMILETH BARAHONA', '7826-6507', '2012-11-14', 'm', 'SOFIA BARAHONA', 'n', 1, '', '2017-02-01', 'ninguno', '', '', '', ''),
(371, '', 'JOSTIN EFRAIN UMANZOR GARCIA', '8 C. P. 15 AV. NORTE COL HIRLEMAN S.M', 'JULIO VINICIO UMANZOR GONZALES', 'KATHERIN YAMILETH GARCIA GONZALES', '7516-6325', '2010-07-22', 'm', 'SE VIO EN H. LA PAZ ESTUBO INGRESADA', 'n', 1, '', '2015-12-30', 'ninguno', '', '', '', ''),
(372, '', 'JONATHAN JOSUE GUARDADO LOPEZ', 'FINAL AV. ROOSEVEL SUR PJE EL PROGRESO CASA # 1 S.M', 'JONATHAN JOSUE GURADADO RAMIREZ', 'GLADIS JOSELIN LOPEZ DE GUARDADO', '7624-3853', '2009-07-28', 'm', 'DR. MUNOZ', 'n', 1, '', '2015-04-24', 'ninguno', '', '', '', ''),
(373, '', 'JOSTIN ADIR GOMEZ', 'CTON SALAGUA DPT LA UNION', 'MARLON EZEQUIEL', 'SINDY GOMEZ', '7266-1243', '2012-05-10', 'm', 'RECEPCION', 'n', 1, '', '2016-09-07', 'ninguno', '', '', '', ''),
(374, '', 'JOSUE AMADEO DIAZ BARAHONA', 'CIUDAD BARRIOS', 'AMADEO DIAZ', 'LORENA ESPERANZA BARAHONA', '7727-9594', '2013-04-22', 'm', 'MILTON CALETH', 'n', 1, '', '2014-04-02', 'ninguno', '', '', '', ''),
(375, '', 'JUAN ALEXANDER VILLALTA MENDOZA', 'CTON CANDELARIA ', 'JUAN ARMILDO VELLAALTA', 'REYNA LISETH MENDOZA', '7932-7020', '2012-09-30', 'm', 'DR. MUNOZ', 'n', 1, '', '2012-12-12', 'ninguno', '', '', '', ''),
(376, '', 'JORGE ISAMAEL ARAUS', 'CIUDAD PASIFICA P. 2 A CASA # 22', 'JORGE FRANCISCO ARAUS', 'LESBIA DE ARAUS', '7398-8494', '1996-04-06', 'f', 'HNO DE LA SECRETARIA DEL DR. JURY', 'n', 1, '', '2013-11-22', 'ninguno', '', '', '', ''),
(377, '', 'JOSE FEDERICO ROSALES', 'COL. SANTA LUCIA AV. LAS VEGAS # 14', 'LEDY FEDERICO ROSALES ', 'OLGA MARINA HERNANDEZ', '7544-3925', '0000-00-00', 'm', 'NADIE', 'n', 1, '', '2015-08-13', 'ninguno', '', '', '', ''),
(378, '', 'JOSELIN ELIZABETH HERNANDEZ CASTRO', 'BARRIO LA CRUZ CORINTO MORAZAN', 'JOSE EDUARDO HERNANDEZ', 'SILVIA MARLENY CASTRO', '7895-8802', '2008-09-15', 'f', 'NADIE', 's', 1, '', '2012-07-06', 'ninguno', '', '', '', ''),
(379, '', 'JENNIFER ABIGAIL BARAHONA ARGUETA', 'CTON LA ORILLA CAROLINA ', 'JOSE DE LA CRUZ BARAHONA MARTINEZ', 'ANA FRANCISCA ARGUETA MARTINEZ', '7756-3227', '2013-06-23', 'f', 'NADIE', 'n', 1, '', '2015-01-23', 'ninguno', '', '', '', ''),
(380, '', 'JULISSA IVETH ORTIZ ORTIZ', 'COL. MILAGRO DE LA PAZ AV. UNIDAD DE SALUD CASA # 37', 'JOSE PABLO ORTIZ', 'ROSA LILIAN ORTIZ', '7207-1212', '2006-04-16', 'f', 'DR. MUNOZ', 's', 1, '', '2016-04-20', 'ninguno', '', '', '', ''),
(381, '', 'JACKELINE ARELY REYES ARGUETA', 'COL. LA CARMENZA PORCELACION MUNICIPAL # 3 S.M', 'JOSE REYES', 'ADA CAROLINA REYES ENCARGADA', '7697-0685', '1994-04-21', 'f', 'DR. LOPEZ ELIAS', 's', 1, '', '2010-07-22', 'ninguno', '', '', '', ''),
(382, '', 'JAVIER ALEXANDER ALVAREZ ROSA', 'SAN PEDRO CARRISAL DEL DIVISADERO MORAZAN', 'JEHOVANY ALEXANDER ALVAREZ', 'MARIA GRISELDA ROSA VASQUEZ', '7297-0204', '2004-11-06', 'm', 'YESSENIA MARILU', 'n', 1, '', '2016-04-08', 'ninguno', '', '', '', ''),
(383, '', 'JIMENA ESTELA PEREZ ALVARENGA ', 'B. EL CENTINEL DIVISADERO MORZAN', 'LUIS DAVID PEREZ', 'REYNA VERENICA ALVARENGA', '7494-3455', '2015-11-29', 'f', 'LUIS DAVIDM PEREZ', 'n', 1, '', '2015-12-29', 'ninguno', '', '', '', ''),
(384, '', 'JEFERSON ISRAEL MARTINEZ ORTEGA', 'COL. CHAPARRASTIQUE 2 C. PRINCIPAL CASA # 6', 'NELSON MARTINEZ', 'FELIPA DE JESUS ORTEGA', '7454-0611', '2001-04-13', 'm', 'NADIE', 'n', 1, '', '2014-02-11', 'ninguno', '', '', '', ''),
(385, '', 'JORDI AMILCAR FIALLOS HERNANDEZ ', 'CTON LAS CONOCHA SAN F.CO GOTERA ', 'JOSE AMILCAR FIALLOS', 'OLGA MILAGRO HERNANDEZ', '7507-0942', '1995-07-18', 'm', 'BETANY', 's', 1, '', '2013-02-02', 'ninguno', '', '', '', ''),
(386, '', 'JEINY CELIN ROMERO ', 'JEINY CELIN ROMERO RAMIREZ', 'CESAR OVIDEO RAMIREZ', 'MARIA RAMIREZ', '7152-4460', '2003-04-22', 'f', 'NADIE', 's', 1, '', '2012-08-06', 'otros', '', '', '', ''),
(387, '', 'JOSIAS ISAI SOSA', 'CTON LA BRAGUA MONCAGUA', 'CARLOS ANTONIO SOSA', 'SONIA MARISOL FUENTES', '6009-1838', '2015-05-22', 'm', 'FATIMA', 'n', 1, '', '2016-08-31', 'ninguno', '', '', '', ''),
(388, '', 'JARED BALTSASAR ARGUELLO GARCIA', 'CTON OBRAJUELO SANTA MARIA MORAZAN', 'JARED BALTASASAR ARGUELLO', 'MARIA DOLORES ARGUELLO GARCIA', '7256-9447', '2008-03-27', 'm', 'DR. GOMEZ PEDIATRA USULUTAN', 's', 1, '', '2016-10-25', 'rpn', '', '', '', ''),
(389, '', 'JOSE ANGEL ALVAREZ FUENTES', '19 AV. SUR # 414 CIDUDAD JARDIN S.M', 'ANGEL FRANCISCO ALVAREZ', 'SANDRA NATZUMU FUENTES', '7930-9546', '2009-04-24', 'm', 'DIEGO ENRRIQUE PENALVA', 's', 1, '', '2015-06-19', 'otros', '', '', '', ''),
(390, '', 'JOAQUIN MAURICIO SOTO OSORIO', 'RESIDENCIAL VERSAI C. PRINCIPAL PJ CASA 7', 'ZAID MAURICIO SOTO ARGUETA', 'GLORIA OSORIO DE SOTO', '7870-7099', '2010-10-26', 'm', 'ZAID ALEJANDRO SOTO ', 's', 1, '', '2016-08-22', 'otros', '', '', '', ''),
(391, '', 'JORGE IVAN MEJI DIAZ', 'JUCUAPA CTON EL AMATON DPT USULUTAN', 'JORGE IVAN MEJIA GOMEZ', 'JESSICA MILIBETH DIAZ MEJIA', '7838-0101', '2007-03-04', 'm', 'JAIME ARTURO', 'n', 1, '', '2015-03-10', 'ninguno', '', '', '', ''),
(392, '', 'JIMENA ALEJANDRA ROBLES LOVO', 'MAONCAGUA HACIENDA LA REFORMA ', 'LUIS ARBELIO LOVO', 'MARLENY JANETH LOVO', '7537-0604', '2013-11-21', 'f', 'RECEPCION', 'n', 1, '', '2014-10-21', 'ninguno', '', '', '', ''),
(393, '', 'JAVIER OSAWALDO HERNANDEZ CHICAS', 'BARRIO EL CALVARIO PJE 10 DE MAYO CASA # 4', 'JAVIER CHICAS', 'ZULMA YESENIA HERNANDEZ', '7206-5816', '2009-11-16', 'm', 'NADIE', 's', 1, '', '2011-09-09', 'sisa', '', '', '', ''),
(394, '', 'JORGE ALBERTO CRUZ GUZMAN', 'B. LA PARROQUIA AV. AMBROCIO CALLESCA CALIFORNIA USULUTAN', 'LORENZO CRUZ ARAUJO', 'ALICIA LINETHE GUZMAN ARAUJO', '7071-4728', '2005-03-13', 'm', 'NADIE', 's', 1, '', '2011-07-30', 'ninguno', '', '', '', ''),
(395, '', 'JAIRO NATHANAEL GARCIA MARQUEZ', 'ANAMOROS', 'JOSE NATHANAEL GARCIA', 'ANA MARITZA MARQUEZ', '7677-2933', '2014-10-05', 'm', 'DR. LIZAMA RODRIGUEZ', 's', 1, '', '2015-07-24', 'ninguno', '', '', '', ''),
(396, '', 'JOSEPH YASIEL TORRES GUZAMAN', 'JOCOTILLO MERCEDES UAMANA USULUTAN', 'HECTOR ORLANDO TORRES', 'LILIANA CAROLINA GUZMAN', '7795-4994', '2011-04-03', 'm', 'SONIA REQUENO', 'n', 1, '', '2011-07-22', 'ninguno', '', '', '', ''),
(397, '', 'JONATHAN SANTANA CHAVEZ HERNANDEZ', 'CTON EL NINO CASERIO LA CEIBA', 'ATILIO ERNESTO CHAVEZ', 'MERCEDES OLINDA HERNANDEZ', '6138-9324', '2012-12-26', 'm', 'UN PTE DE LA PAZ', 'n', 1, '', '2015-09-30', 'ninguno', '', '', '', ''),
(398, '', 'GUIILLERMO ENOC CENTENO MEDRANO', 'CTON EJIDOS, MONCAGUA', 'SIN REGISTRO', 'SIN REGISTRO', '1111-1111', '1998-04-28', 'm', 'HNO DE ASHLY', 'n', 1, '', '2015-04-02', 'ninguno', '', '', '', ''),
(399, '', 'HASELL ASCENCIO RIOS', 'SIN REGISTRO', 'SIN REGISTRO', 'SIN REGISTRO', '1111-1111', '2009-03-07', 'f', 'SR', 'n', 1, '', '2012-08-24', 'ninguno', '', '', '', ''),
(400, '', 'GENESIS ONEYDA CENTENO', 'SIN REGISTRO', 'SIN REGISTRO', 'SIN REGISTRO', '1111-1111', '2010-06-05', 'f', 'DR. MUNOZ', 's', 1, '', '2011-02-03', 'ninguno', '', '', '', ''),
(401, '', 'HENRRY GABRIEL ALVAREZ PORTILLLO', 'SIN REGISTRO', 'SIN REGISTRO', 'SIN REGISTRO', '7326-4679', '2010-01-13', 'm', 'NADIE', 'n', 1, '', '2016-09-20', 'ninguno', '', '', '', ''),
(402, '', 'GABRIELA REGINA MONTESINO', 'SAN ALEJO', 'SIN REGISTRO', 'SIN REGISTRO', '1111-1111', '2011-03-06', 'f', 'ERICK FARNCISCO CUEVA', 's', 1, '', '2014-07-21', 'ninguno', '', '', '', ''),
(403, '', 'CARLOS ENMANUEL HERNANDEZ CONTRERA', 'CTON SACO DE PIEDRA SA ALEJO LA UNION', 'SIN REGISTRO', 'SIN REGISTRO', '7136-3529', '1998-07-29', 'm', 'SE VE EN SAN JUAN', 's', 1, '', '2017-03-01', 'ninguno', '', '', '', ''),
(404, '', 'JANELY VERONICA BONILLA BONILLA', 'COL. LA ESPERANZA LA UNION', 'LUIS ANTONIO BONILLA', 'VERONICA CAROLINA BONILLA', '7113-9725', '2009-09-21', 'f', 'NADIE', 's', 1, '', '2011-06-30', 'otros', '', '', '', ''),
(405, '', 'JOSUE EMANUEL DIAZ CRUZ', 'COL. PAN AMERICA PJ. TAMPICA CASA # 15 S.M', 'JOSE VICTOR MANUEL DIAZ', 'MARIA DE LA PAZ CRUZ RODRIGUEZ', '7748-1274', '2011-01-19', 'm', 'GENESIS SOFIA RIVERA CRUZ', 'n', 1, '', '2015-06-23', 'ninguno', '', '', '', ''),
(406, '', 'JOSE ADAN LOZANO VILLATORO', 'CTON CABANAS SANTA ROSA DE LIMA', 'HERNOIDES ARQUIMIDES LOZANO', 'GLORIA ELBA VILLATORO', '7562-8206', '2008-09-19', 'm', 'NADIE', 'n', 1, '', '2014-10-08', 'ninguno', '', '', '', ''),
(407, '', 'JEISON ALEJANDRO GUZMAN ', 'CTON EL DELIRIO', 'JOSE ALEJANDRO GUZMAN', 'ZULEIMA ROSIBEL MEJIA', '7839-4199', '2015-05-06', 'm', 'DR. LEYVA', 'n', 1, '', '2016-09-16', 'ninguno', '', '', '', ''),
(408, '', 'JACQUELINE MICHEL DIAZ RAYMUNDO', 'BARRIO SAN JOSE FINAL DECIMA C. ORIENTE BERLIN USULUTAN', 'MANUEL ENRRIQUE DIAZ PAIZ', 'MARIA DE LOS ANGELES RAYMUNDO', '7730-6431', '2007-03-05', 'f', 'NADIE', 's', 1, '', '2012-12-21', 'sp', '', '', '', ''),
(409, '', 'JAFET ELY NOLASCO MONGE', 'COL. SATELITE DE ORIENTE C. ANDROMEDA P.E3 # 12', 'JOSE ALFREDO NOLASCO', 'CINDY MARICELA MONGE', '7896-9909', '2014-12-30', 'm', 'DIEGO JOSE', 'n', 1, '', '2016-01-22', 'ninguno', '', '', '', ''),
(410, '', 'JAIME ABISAY BONILLA CABRERA', 'CTON SAN JOSE QUELEPA', 'ABEL BONILLA', 'BRENDA YANETH CABRERA', '7922-7094', '2010-09-11', 'f', 'NADIE', 's', 1, '', '2012-08-08', 'ninguno', '', '', '', ''),
(411, '', 'JENNIFER LILIBETH CORTEZ', 'URBANIZACION C. PASIFICA P. 066 CASA # 3', 'JUAN ANTONIO CORTEZ', 'ZULMA KABIDIA MARADIAGA', '7282-4768', '2004-09-18', 'f', 'JUAN ISAAC CORTEZ', 'n', 1, '', '2016-09-12', 'ninguno', '', '', '', ''),
(412, '', 'JAISON JOEL VENTURA', 'CORINTO', 'JAEL VENTURA', 'LEYDI ELIZABETH FLORE', '7785-4799', '2013-05-04', 'm', 'DR. ALEJANDRO ALAS', 'n', 1, '', '2014-10-22', 'ninguno', '', '', '', ''),
(413, '', 'JOSE ANTONIO DIAZ AGUIRRE ', 'CTON MIANGUERA MUNICIPIO MONCAGUA DPTO MORAZAN', 'AMILCAR ANTONIO DIAZ DIAZ', 'KEILY BELINDA AGUIRRE ESCOBAR', '7225-0435', '2014-11-14', 'm', 'DR. CHAVARRIA', 'n', 1, '', '2015-06-22', 'ninguno', '', '', '', ''),
(414, '', 'JOSE MIGUEL CAMPOS ARIAS', 'B. SANTA ROSA S. JORGE S.M FRENTE PARQUEZ', 'JORGE LUIS CAMPOS SARAVIA', 'WENDY MARLENY ARIAS DE BLANCO', '7267-4809', '2015-01-05', 'm', 'DRA. SILVIA', 'n', 1, '', '2015-08-10', 'ninguno', '', '', '', ''),
(415, '', 'JEHOVANY ELISEO CAMPOS', 'COL. NUEVA BELEN PJE 20 CASA # 28', 'JULIO ALBERTO CAMPOS', 'NORMA DEL ROSARIO DE CAMPOS', '2631-7814', '2013-04-08', 'm', 'DR. MUÑOZ', 'n', 1, '', '2015-07-16', 'ninguno', '', '', '', ''),
(416, '', 'JASON MANUEL GOMEZ FUNES', 'CTON YANO DE SANTIAGO DEL DIVIZADERO MORAZAN', 'MUEL ANTONIO GOMEZ CONTREA', 'BESSY MAGALI FUNES', '6009-9869', '2000-03-11', 'm', 'ESTUBO INGRESADO', 'n', 1, '', '2015-08-25', 'ninguno', '', '', '', ''),
(417, '', 'JOSE ANDERSON MARAVILLA', 'COL. SANTA EMILIA PJE # 2 #302', 'MELVIN DE JESUS MARAVILLA GRANADOS', 'WENDY MARISOL RAMIRES DE MARAVILLA', '7503-5285', '2009-10-03', 'm', 'VISTO EN EMERGENCIA', 'n', 1, '', '2015-02-12', 'ninguno', '', '', '', ''),
(418, '', 'JOSE AMILCAR CUEVA RIVAS', '23 C. ORIENTE B. CONCEPCION PJE AVELES # 2 S.M', 'JOSE AMILCAR CUEVA', 'LILIANA RIVAS', '7298-2707', '1994-08-24', 'm', 'DR. MUÑOZ', 'n', 1, '', '2010-08-03', 'ninguno', '', '', '', ''),
(419, '', 'JOSHUA ZELAYA RAMOS', 'CHIRILAGUA', 'NESTOR ISRAEL ZELAYA', 'JENNY CAROLINA RAMOS', '7209-5379', '2012-09-28', 'm', 'DRA.CHAVARRIA', 'n', 1, '', '2015-02-26', 'ninguno', '', '', '', ''),
(420, '', 'JOSE MANUEL BENAVIDEZ CRUZ', 'CASERIO LAS HOJAS JUCUAQUIEN LA UNION', 'JOSE ORLANDO BENAVIDEZ VAREDEZ', 'RINA YANCI CRUZ FUENTES', '7945-2423', '2013-06-22', 'm', 'B.M', 's', 1, '', '2016-04-21', 'ninguno', '', '', '', ''),
(421, '', 'jeferson omar medrano benitez', 'corinto morazan ', 'nelson omar medrano', 'maria del carmen benitez', '7258-3380', '2012-05-12', 'm', 'nadie', 'n', 1, '', '2015-11-03', 'ninguno', '', '', '', ''),
(422, '', 'junior isai marquez lemus', 'cton soledqad terrreno carolina s.m', 'julio cesar marquez', 'reina de la paz lemus', '7105-1111', '2014-01-08', 'm', 'dr. cardenas ciudad barrios', 'n', 1, '', '2016-12-05', 'ninguno', '', '', '', ''),
(423, '', 'JUANA GISELL FUENTES REYES', 'CTON EL PICHE LA UNION', 'EDWIN NAUN FUENTES', 'BERTHA ALICIA REYES', '7281-2317', '2013-02-27', 'f', 'NADIE', 's', 1, '', '2013-06-14', 'ninguno', '', '', '', ''),
(424, '', 'JACKELINE GISELL FUENTES REYES', 'CTON EL PICHE EL CARMEN LA UNION', 'EDWIN NAUM REYES', 'BERTHA ALICIA REYES', '7281-2317', '2008-05-13', 'f', 'NADIE', 's', 1, '', '2013-10-01', 'ninguno', '', '', '', ''),
(425, '', 'JEOVANY ELISEO CAMPOS', 'COL. NUEVA BELEN PJE 20 CASA #28', 'JULIO ALBERTO CAMPOS', 'NORMA DEL ROSARIO DE CAMPOS', '2631-7814', '2013-04-08', 'm', 'DR. MUÑOZ', 'n', 1, '', '2015-07-16', 'ninguno', '', '', '', ''),
(426, '', 'JONATHAN ISAAC FLORES', 'COL. GIRLERMAN BLOK 8 CASA # 10', 'JOSE FREDY FLORES', 'SONIA RUBIDIA FLORES DE FLORES', '7396-2049', '2007-03-23', 'm', 'DR. HASBUN', 'n', 1, '', '2013-12-05', 'ninguno', '', '', '', ''),
(427, '', 'JOSE RODOLFO MARTINESZ GOMEZ', 'CTON EL NIÑO CASERIO CHAPELTIQUE', 'JOSE RODOLFO MARTINEZ', 'ELIA DEL CARMEN GOMEZ ENCARGADA', '7157-1161', '2001-08-03', 'm', 'NADIE', 'n', 1, '', '2013-06-25', 'ninguno', '', '', '', ''),
(428, '', 'JORGE LUIS SANTOS VELASQUEZ', 'CTON EL CACAO JUDICCION CONCHAGUA', 'JOSE LUIS SANTOS', 'BEATRIZ ADRIANA VELASQUEZ', '7268-6594', '2008-12-07', 'm', 'NADIE', 'n', 1, '', '2014-02-21', 'ninguno', '', '', '', ''),
(429, '', 'JONATHAN JOSUE ALVAREZ RODRIGUEZ', 'IGUERA LISLIQUE', 'JOSE AVILIO ALVAREZ', 'INGRID GUADALUPE RODRIGUEZ', '7890-5893', '2014-10-01', 'm', 'SE VE EN SAN JUAN', 'n', 1, '', '2015-03-30', 'ninguno', '', '', '', ''),
(430, '', 'JEFFRY ANTONIO ESPINOSA HERNANDEZ', 'CTON JOSE QUELEPA', 'CELIO ANTONIO ESPINOSA', 'ELSI DE LA PAZ HERNANDEZ', '7706-8927', '2009-07-08', 'm', 'NADIE', 'n', 1, '', '2012-07-23', 'ninguno', '', '', '', '');
INSERT INTO `pacientes` (`id`, `documento`, `nombre`, `direccion`, `nomp`, `nomm`, `telefono`, `edad`, `sexo`, `refpor`, `estado`, `consultorio`, `control`, `feccita`, `seguro`, `alergia`, `enf_cro`, `cuadro_vac`, `ant_quir`) VALUES
(431, '', 'JOSELIN NATHALIA REYES', 'CTON. AGUA CALIENTE LA UNION', 'OSACAR REYES', 'GLENDA XIOMARA REYES', '7244-4340', '2011-10-16', 'f', 'NADIE', 'n', 1, '', '2015-01-05', 'ninguno', '', '', '', ''),
(432, '', 'JONATHAN JOSUE ANDRADES RENDEROS', 'CTON ANCHICO CASERIO PIEDRA DURA LA UNION', 'CRISTIAN JONATHAN MORENO', 'ROSARIO MAUDALENA RENDERO', '7796-2712', '2012-03-01', 'm', 'DANIELA SOFIA RENDERO', 'n', 1, '', '2016-03-23', 'ninguno', '', '', '', ''),
(433, '', 'JENNIFER LISBETH CASTELLON MEDRANO', 'LOTIFICACION VALLE SAN JUAN CSA # 13 P # 14', 'CRISTINO GERMAN MEDRANO', 'ANA MERCEDES MEDRANO', '7672-6242', '1996-02-18', 'f', 'KEIRY ABIGAIL', 'n', 1, '', '2013-12-14', 'ninguno', '', '', '', ''),
(434, '', 'JACKELINE ARIANA CASTRO BENITEZ', 'CASERIO EL RETUMBO TIZANTILLA SAN ALEJO', 'ANDRES BENJAMIN CASTRO MEDRANO', 'JACKELINE HAYDEE BENITEZ', '7213-9983', '2014-12-22', 'f', 'DR. MUÑOZ', 'n', 1, '', '2015-08-14', 'ninguno', '', '', '', ''),
(435, '', 'JAIRO JEHOVANY GIRON ORELLANA', 'VIA DEL ROSARIO MORAZAN', 'NO TIENE', 'NOHEMY ESPERANZA VASQUEZ', '7816-2113', '2000-11-20', 'm', 'NADIE', 'n', 1, '', '2013-11-15', 'ninguno', '', '', '', ''),
(436, '', 'JASON OMAR RODAS GUZMAN ', 'PENDIENTE', 'OMAR RODAS', 'KARLA ESPERANZA GUZMAN', '7229-5115', '2010-01-26', 'm', 'HERMANITO DE BRINEY ', 'n', 1, '', '2012-04-13', 'ninguno', '', '', '', ''),
(437, '', 'JAIME SIFREDO FLORES', 'PLAYA LAS TUNAS MUNICIPIPO DE CONCHAGUA LA UNION', 'JAIME FLORES BENITEZ', 'MARIA EMILIA SANCHEZ', '7912-1653', '1999-02-02', 'm', 'DR. ELIAS', 'n', 1, '', '2013-04-03', 'ninguno', '', '', '', ''),
(438, '', 'JAFET ESAU PORTILLO ARGUETA', 'COL, ZAMORAN', 'ESAU ALEXANDER PORTILLO SARAVIA', 'ESTHER NOHEMY ARGUETA DE PORTILLO', '7424-2218', '2013-12-02', 'm', 'RUBEN', 'n', 1, '', '2014-06-20', 'ninguno', '', '', '', ''),
(439, '', 'JASIEL EUNICE BERMUDEZ', 'COL. URBEZA P. A PJE B CASA # 12', 'DAVID GONZALES PADRASTO', 'ANA VERONICA BERMUDEZ DE GONZALES', '7903-0539', '2003-10-23', 'f', 'DR. MERLON', 'n', 1, '', '2012-11-10', 'ninguno', '', '', '', ''),
(440, '', 'JEFERSON JEHOVANY CASTILLO REYES', 'CTON JOYAS DEL MATASANO CASERIO ISELETA LA UNION', 'EDILSON JEHONAY CASTILLO', 'IRMA PATRICIA REYES', '7670-0543', '2009-10-27', 'm', 'NADIE', 'n', 1, '', '2014-06-21', 'ninguno', '', '', '', ''),
(441, '', 'JEFERSON DAVID VILLATORO CHAVEZ', 'COL MILAGRO DE LA PAZ C. PALESTINA CSA # 7', 'JORGE LUIS VILLATORO', 'MARTHA DE LA PAZ CHAVEZ GALEA', '7522-2863', '2009-05-23', 'm', 'NADIE', 'n', 1, '', '2013-05-02', 'ninguno', '', '', '', ''),
(442, '', 'FERNANDO JOSUE MARTINEZ', 'RESIDENCIAL EL SITIO 2 ETAPA CSA # 51', 'WILLIAN MATEO MARTINEZ COLATO', 'SARA NOHEMY DIAZ DE MARTINEZ', '7490-4965', '2014-08-05', 'm', 'REBECA DIAZ', 's', 1, '', '2017-03-22', 'ninguno', '', '', '', ''),
(443, '', 'JOSE ANGEL COREA LAZO', 'CTON SANTA CRUZ SAN ALEJO', 'WILFREDO HEVEZ', 'DELMIRA CANDELARIA', '6000-7187', '1997-03-26', 'm', 'NADIE', 'n', 1, '', '2013-04-12', 'ninguno', '', '', '', ''),
(444, '', 'JASMIN NATALIA AVILES HERNANDEZ', 'RESIDENCIAL CALIFORNIA', 'SIN REGISTRO ', 'SIN REGISTRO', '7729-4940', '2010-10-23', 'f', 'NADIE', 'n', 1, '', '2015-07-27', 'ninguno', '', '', '', ''),
(445, '', 'JADE SUJEY MONTECINOS ZELAYA', 'AV. LOS ACEITUNOS CSA # 22 CO. AURORA', 'JOSE ALFREDO MONTESINOS', 'MAIRA JANETH ZELAYA', '7324-0712', '2014-08-05', 'f', 'NADIE ', 's', 1, '', '2014-10-08', 'ninguno', '', '', '', ''),
(446, '', 'JEFERSON MAURICIO RODRIGUEZ VILLALOBO', 'CTON EL BRAZO MUNICIPIO S.M', 'JUAN MIGUEL RODRIGUEZ', 'YESSENIA PATRICIA VILLALOBO', '7299-4918', '2013-01-13', 'm', 'NADIE', 'n', 1, '', '2013-02-15', 'ninguno', '', '', '', ''),
(447, '', 'JOSE ANGEL ROSALES SALMERON', 'COL. SANTA ROSADE LIMA COL. LOS ANGELES', 'JOSE ANGEL ROSALES ', 'JOSSELHYN VANESSA SALMERON', '1111-1111', '2011-06-10', 'm', 'NADIE', 'n', 1, '', '2014-03-04', 'ninguno', '', '', '', ''),
(448, '', 'JIMENA SOFIA CARIAS GIRON', 'COL. 14 DE JUNIO C. LOS ALMENDROS CSA # 25 BIS S.M', 'EDGAR ALFREDO CARIAS', 'CLAUDIA EUGENIA GIRON GIRON', '7318-4465', '2006-06-20', 'f', 'NADIE', 'n', 1, '', '2012-10-22', 'ninguno', '', '', '', ''),
(449, '', 'JOSTIN STEVEN AVILES ROSALES', 'CTON TECOMATAL CASERIO EL DASAL ESTANZUELA', 'ROLANDO EDILBERTO ESTRADA', 'SINDY MARGARITA ROSALES', '7296-2480', '2009-04-07', 'm', 'YENERY NICOLL', 'n', 1, '', '2015-06-25', 'ninguno', '', '', '', ''),
(450, '', 'KATERINE MAHELY VASQUEZ LAINEZ', 'BARRIO SAN JUAN SAN RAFAEL ORIENTE', 'FRANCISCO ANTONIO VASQUEZ', 'IRIS ELIZABETH LAINEZ AVILES', '7455-4353', '2003-06-21', 'f', 'NADIE', 's', 1, '', '2012-08-29', 'ninguno', '', '', '', ''),
(451, '', 'KEVIN DAVID GUZMAN MARADIAGA', 'COL. VILLA SATELITE AVENIDA MORAZAN', 'PEDRO DAVID GUZMAN', 'KATHALINA MARADIAGA', '7557-7495', '2013-03-11', 'm', 'JUAN ISAAC', 's', 1, '', '2016-10-10', 'ninguno', '', '', '', ''),
(452, '', 'KATHERINE ANDREA DIAZ RAYMUNDO', 'FINAL DECIMA C. ORIENTE B. SAN JOSE BERLIN USULUTAN', 'MANUEL ENRRIQUE DIAZ PAIZ', 'MARIA DE LOS ANGELES RAYMUNDO', '7730-3283', '2011-09-16', 'f', 'NADIE', 's', 1, '', '2012-07-27', 'sp', '', '', '', ''),
(453, '', 'KAREN STEFANY RIVAS', 'COL. SANTA MONICA AV. SAN AGUSTIN # 1', 'CARLOS JEREMIAS RIVAS', 'ELDA MARELY JOYA DE RIVAS', '7513-1292', '2008-01-26', 'f', 'SE VIO EN EMERGENCIA', 'n', 1, '', '2012-03-15', 'ninguno', '', '', '', ''),
(454, '', 'KEIRY PATRICIA ARAUJO VILLATORO', 'COL. JARDINES DEL RIO C. GIRASOLES P. 11 CASA 55 S.M', 'DANIEL ANTONIO ARAUJO', 'SANDRA GUADALUPE VILLATORO', '7572-8356', '2006-08-09', 'f', 'MAMA DE CINDY OWEN', 'n', 1, '', '2013-08-13', 'ninguno', '', '', '', ''),
(455, '', 'KARLA ARELY MACHADO ORTIZ', 'CTON LAS FRAGUAS JUDICCION MONCAGUA', 'CARLOS ERNESTO MACHADO ULLOA', 'ELVA ARELY ORTIZ SOLORZANO', '7612-8902', '2008-08-22', 'f', 'KARLOTA CRUZ SEGURA', 'n', 1, '', '2015-12-16', 'ninguno', '', '', '', ''),
(456, '', 'KARLA FABIOLA GONZALES PEREIRA', 'RESIDENCIAL SATELITE DE ORIENTE AV. TAURO P.-2 CASA # 20', 'CARLOS  RENESTO GONZALES', 'FABIOLA EDITH PEREIRA', '7923-6628', '2004-12-29', 'f', 'NADIE', 'n', 1, '', '2015-07-29', 'ninguno', '', '', '', ''),
(457, '', 'KEVIN ARMANDO MEDINA', 'ANAMOROS', 'NO TIENE  ', 'MAGARI MEDINA SORTO', '7921-6093', '2001-04-02', 'm', 'NADIE', 'n', 1, '', '2014-06-24', 'ninguno', '', '', '', ''),
(458, '', 'KEIRY BEATRIZ LAZO PEREZ', 'JOCORO MORAZAN', 'OSCAR GERARDO PEREZ', 'MARIA MARCELA PEREZ', '7415-3723', '2004-03-06', 'f', 'HNA DE OSCARITO', 's', 1, '', '2012-11-19', 'otros', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pediatria`
--

CREATE TABLE IF NOT EXISTS `pediatria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` varchar(12) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `edad` date NOT NULL,
  `lugar` text NOT NULL,
  `padre` varchar(255) NOT NULL,
  `madre` varchar(255) NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `obstetra` varchar(255) NOT NULL,
  `referido` varchar(255) NOT NULL,
  `estado` varchar(250) NOT NULL,
  `consultorio` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pediatria_alim`
--

CREATE TABLE IF NOT EXISTS `pediatria_alim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` varchar(10) NOT NULL,
  `pecho` varchar(255) NOT NULL,
  `formula` varchar(255) NOT NULL,
  `vitaminas` varchar(255) NOT NULL,
  `suaves` varchar(255) NOT NULL,
  `dieta` varchar(255) NOT NULL,
  `habitos` varchar(255) NOT NULL,
  `vomitos` varchar(255) NOT NULL,
  `colicos` varchar(255) NOT NULL,
  `consultorio` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pediatria_drllo`
--

CREATE TABLE IF NOT EXISTS `pediatria_drllo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` varchar(10) NOT NULL,
  `termino` varchar(255) NOT NULL,
  `parto` varchar(255) NOT NULL,
  `rh` varchar(255) NOT NULL,
  `con_nac` varchar(255) NOT NULL,
  `peso_nac` varchar(255) NOT NULL,
  `talla_nac` varchar(25) NOT NULL,
  `con_semana` varchar(255) NOT NULL,
  `alimentacion` varchar(255) NOT NULL,
  `cianosis` varchar(255) NOT NULL,
  `sento` varchar(100) NOT NULL,
  `paro` varchar(100) NOT NULL,
  `convulsiones` varchar(255) NOT NULL,
  `camino` varchar(255) NOT NULL,
  `palabras` varchar(255) NOT NULL,
  `ictericia` varchar(255) NOT NULL,
  `diente` varchar(100) NOT NULL,
  `fraces` varchar(100) NOT NULL,
  `apga` varchar(100) NOT NULL,
  `vesical` varchar(100) NOT NULL,
  `instestinos` varchar(255) NOT NULL,
  `consultorio` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pediatria_enf`
--

CREATE TABLE IF NOT EXISTS `pediatria_enf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` varchar(10) NOT NULL,
  `tosferina` varchar(10) NOT NULL,
  `apendicitis` varchar(10) NOT NULL,
  `sarampion` varchar(10) NOT NULL,
  `reumatica` varchar(10) NOT NULL,
  `rubeola` varchar(10) NOT NULL,
  `otitis` varchar(10) NOT NULL,
  `paperas` varchar(10) NOT NULL,
  `irs` varchar(10) NOT NULL,
  `varicela` varchar(10) NOT NULL,
  `amigdalitis` varchar(10) NOT NULL,
  `escarlatina` varchar(10) NOT NULL,
  `convulsionesx` varchar(10) NOT NULL,
  `difteria` varchar(10) NOT NULL,
  `constipacion` varchar(10) NOT NULL,
  `operaciones` varchar(10) NOT NULL,
  `diarrea` varchar(10) NOT NULL,
  `amebiasis` varchar(10) NOT NULL,
  `otrosenf` varchar(10) NOT NULL,
  `consultorio` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pediatria_hf`
--

CREATE TABLE IF NOT EXISTS `pediatria_hf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` varchar(10) NOT NULL,
  `padrehf` varchar(255) NOT NULL,
  `edadpdre` varchar(25) NOT NULL,
  `madrehf` varchar(255) NOT NULL,
  `edadmdre` varchar(25) NOT NULL,
  `hermanohf` varchar(255) NOT NULL,
  `edadhno` varchar(25) NOT NULL,
  `hermanahf` varchar(255) NOT NULL,
  `edadhna` varchar(25) NOT NULL,
  `tuberculosis` varchar(10) NOT NULL,
  `diabetes` varchar(10) NOT NULL,
  `alergia` varchar(10) NOT NULL,
  `convulsioneshf` varchar(10) NOT NULL,
  `congenicas` varchar(10) NOT NULL,
  `otroshf` text NOT NULL,
  `consultorio` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE IF NOT EXISTS `permisos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permiso` varchar(255) NOT NULL,
  `usu` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=131 ;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `permiso`, `usu`, `estado`) VALUES
(11, '1', '112233444', 's'),
(12, '2', '112233444', 's'),
(13, '3', '112233444', 's'),
(14, '4', '112233444', 's'),
(15, '5', '112233444', 's'),
(106, '1', '1234567', 's'),
(107, '2', '1234567', 's'),
(108, '3', '1234567', 'n'),
(109, '4', '1234567', 'n'),
(110, '5', '1234567', 's'),
(111, '1', '123', 's'),
(112, '2', '123', 's'),
(113, '3', '123', 's'),
(114, '4', '123', 's'),
(115, '5', '123', 's'),
(116, '1', '1234', 'n'),
(117, '2', '1234', 's'),
(118, '3', '1234', 'n'),
(119, '4', '1234', 'n'),
(120, '5', '1234', 'n'),
(121, '1', '017835432', 's'),
(122, '2', '017835432', 's'),
(123, '3', '017835432', 's'),
(124, '4', '017835432', 's'),
(125, '5', '017835432', 's'),
(126, '1', '026352271', 's'),
(127, '2', '026352271', 's'),
(128, '3', '026352271', 's'),
(129, '4', '026352271', 's'),
(130, '5', '026352271', 's');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos_tmp`
--

CREATE TABLE IF NOT EXISTS `permisos_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `permisos_tmp`
--

INSERT INTO `permisos_tmp` (`id`, `nombre`) VALUES
(1, 'Crear Pacientes'),
(2, 'Crear Citas'),
(3, 'Crear consultas'),
(4, 'Administracion'),
(5, 'Caja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `cargo` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `doc`, `nom`, `cargo`, `estado`) VALUES
(1, '112233444', 'Administrador', 'admin', 's'),
(15, '017835432', 'Dra. Jackeline Sosa', '2', 's'),
(16, '026352271', 'Maria Rodriguez', '1', 's');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prenatal`
--

CREATE TABLE IF NOT EXISTS `prenatal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `opciones` varchar(25) NOT NULL,
  `familiares` text NOT NULL,
  `personales` text NOT NULL,
  `ultimo` date NOT NULL,
  `parto` varchar(255) NOT NULL,
  `estado` varchar(25) NOT NULL,
  `consultorio` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prenatal_emb`
--

CREATE TABLE IF NOT EXISTS `prenatal_emb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) NOT NULL,
  `pesopre` varchar(255) NOT NULL,
  `tallapre` varchar(255) NOT NULL,
  `fur` varchar(255) NOT NULL,
  `app` varchar(255) NOT NULL,
  `a` varchar(255) NOT NULL,
  `hemoglobina` varchar(255) NOT NULL,
  `rh` varchar(255) NOT NULL,
  `toxoplasmosis` varchar(255) NOT NULL,
  `glucosa` varchar(255) NOT NULL,
  `igm` varchar(250) NOT NULL,
  `igg` varchar(255) NOT NULL,
  `vdrl` varchar(255) NOT NULL,
  `ego` varchar(255) NOT NULL,
  `hiv` varchar(255) NOT NULL,
  `egh` varchar(255) NOT NULL,
  `citologoa` varchar(255) NOT NULL,
  `otrospre` varchar(255) NOT NULL,
  `vacinacion` varchar(255) NOT NULL,
  `estado` varchar(25) NOT NULL,
  `consultorio` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resumen`
--

CREATE TABLE IF NOT EXISTS `resumen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paciente` varchar(255) NOT NULL,
  `concepto` varchar(250) NOT NULL,
  `factura` varchar(255) NOT NULL,
  `clase` varchar(250) NOT NULL,
  `valor` varchar(250) NOT NULL,
  `tipo` varchar(250) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `status` varchar(255) NOT NULL,
  `usu` varchar(250) NOT NULL,
  `consultorio` int(11) NOT NULL,
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguros`
--

CREATE TABLE IF NOT EXISTS `seguros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `estado` varchar(11) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifas`
--

CREATE TABLE IF NOT EXISTS `tarifas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `valor` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `config` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_permisos`
--

CREATE TABLE IF NOT EXISTS `tipo_permisos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permiso` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `tipo_permisos`
--

INSERT INTO `tipo_permisos` (`id`, `permiso`, `tipo`, `estado`) VALUES
(1, '1', '1', 'n'),
(2, '2', '1', 'n'),
(3, '3', '1', 'n'),
(4, '4', '1', 'n'),
(5, '5', '1', 'n'),
(6, '1', '2', 'n'),
(7, '2', '2', 'n'),
(8, '3', '2', 'n'),
(9, '4', '2', 'n'),
(10, '5', '2', 'n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE IF NOT EXISTS `tipo_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id`, `nombre`) VALUES
(1, 'SECRETARIA'),
(2, 'DOCTOR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ultra_embarazo`
--

CREATE TABLE IF NOT EXISTS `ultra_embarazo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` varchar(15) NOT NULL,
  `id_medico` varchar(15) NOT NULL,
  `consultorio` int(11) NOT NULL,
  `solicitante` varchar(255) NOT NULL,
  `fur` varchar(255) NOT NULL,
  `saco` varchar(255) NOT NULL,
  `lcr` varchar(100) NOT NULL,
  `dbp` varchar(100) NOT NULL,
  `lf` varchar(100) NOT NULL,
  `lh` varchar(100) NOT NULL,
  `lcf` varchar(100) NOT NULL,
  `liquido` varchar(100) NOT NULL,
  `localizacion` varchar(255) NOT NULL,
  `grado` varchar(100) NOT NULL,
  `observaciones` text NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `status` varchar(255) NOT NULL,
  `id_consulta` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ultra_ginecologica`
--

CREATE TABLE IF NOT EXISTS `ultra_ginecologica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` varchar(15) NOT NULL,
  `id_medico` varchar(15) NOT NULL,
  `consultorio` int(11) NOT NULL,
  `solicitante` varchar(255) NOT NULL,
  `opciones` text NOT NULL,
  `utero` text NOT NULL,
  `endometrio` text NOT NULL,
  `anexo` text NOT NULL,
  `saco` text NOT NULL,
  `observaciones` text NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `status` varchar(255) NOT NULL,
  `id_consulta` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ultra_mamas`
--

CREATE TABLE IF NOT EXISTS `ultra_mamas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` varchar(15) NOT NULL,
  `id_medico` varchar(15) NOT NULL,
  `consultorio` int(11) NOT NULL,
  `informe` text NOT NULL,
  `dx` text NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `status` varchar(255) NOT NULL,
  `id_consulta` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ultra_prostata`
--

CREATE TABLE IF NOT EXISTS `ultra_prostata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` varchar(15) NOT NULL,
  `id_medico` varchar(15) NOT NULL,
  `consultorio` int(11) NOT NULL,
  `vejiga` text NOT NULL,
  `prostata` text NOT NULL,
  `conclusion` text NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `status` varchar(255) NOT NULL,
  `id_consulta` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc` varchar(255) NOT NULL,
  `con` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `cargo` varchar(20) NOT NULL,
  `nota` varchar(255) NOT NULL,
  `salario` double NOT NULL,
  `estado` varchar(20) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `consultorio` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `doc`, `con`, `nombre`, `cargo`, `nota`, `salario`, `estado`, `tipo`, `consultorio`) VALUES
(16, '112233444', 'ADMIN', 'Administrador', 'Administrador', 'Ninguna', 0, 's', 'Admin', '1'),
(38, '017835432', '017835432', 'Dra. Jackeline Sosa', 'DOCTOR', 'Ninguna', 0, 's', '2', '1'),
(39, '026352271', '026352271', 'Maria Leticia Rodriguez', 'SECRETARIA', 'Ninguna', 0, 's', '1', '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

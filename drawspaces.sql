-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 17, 2013 at 10:26 PM
-- Server version: 5.5.31
-- PHP Version: 5.4.4-14+deb7u3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `drawspaces`
--
CREATE DATABASE `drawspaces` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `drawspaces`;

-- --------------------------------------------------------

--
-- Table structure for table `diario`
--

CREATE TABLE IF NOT EXISTS `diario` (
  `id_diario` int(11) NOT NULL AUTO_INCREMENT,
  `id_entidad` int(11) DEFAULT NULL,
  `id_personal` int(11) DEFAULT NULL,
  `zona` varchar(200) DEFAULT NULL,
  `fecha_desde` datetime DEFAULT NULL,
  `fecha_hasta` datetime DEFAULT NULL,
  `estado_diario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_diario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `entidad`
--

CREATE TABLE IF NOT EXISTS `entidad` (
  `id_identidad` int(11) NOT NULL AUTO_INCREMENT,
  `id_dispositivo` varchar(20) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_identidad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE IF NOT EXISTS `personal` (
  `id_persona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `DNI` varchar(10) DEFAULT NULL,
  `Domicilio` varchar(200) DEFAULT NULL,
  `Telefono1` varchar(10) DEFAULT NULL,
  `Telefono2` varchar(10) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_persona`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `track_identidad`
--

CREATE TABLE IF NOT EXISTS `track_identidad` (
  `id_track` int(11) NOT NULL AUTO_INCREMENT,
  `lat` varchar(50) DEFAULT NULL,
  `long` varchar(50) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `id_entidad` int(10) DEFAULT NULL,
  `fec_ult_mov` datetime DEFAULT NULL,
  PRIMARY KEY (`id_track`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE IF NOT EXISTS `tracks` (
  `id_pos` int(11) NOT NULL AUTO_INCREMENT,
  `Lat` varchar(20) DEFAULT NULL,
  `Long` varchar(20) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  PRIMARY KEY (`id_pos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26347 ;

-- --------------------------------------------------------

--
-- Table structure for table `zonas`
--

CREATE TABLE IF NOT EXISTS `zonas` (
  `Id_zona` int(11) NOT NULL AUTO_INCREMENT,
  `Zona_desc` varchar(50) DEFAULT NULL,
  `Latitud` varchar(100) DEFAULT NULL,
  `Longitud` varchar(100) DEFAULT NULL,
  `Formato` varchar(100) DEFAULT NULL,
  `Color` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Id_zona`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=190 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

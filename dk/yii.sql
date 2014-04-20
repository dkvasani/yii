-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 20, 2014 at 07:04 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yii`
--
CREATE DATABASE IF NOT EXISTS `yii` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `yii`;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stateid` int(11) NOT NULL,
  `countryid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `stateid`, `countryid`, `name`) VALUES
(1, 1, 1, 'Rajkot'),
(2, 1, 1, 'Ahmedabad'),
(3, 2, 1, 'Jaypur'),
(4, 1, 1, 'Jamanagar'),
(5, 2, 1, 'Udaypur'),
(6, 3, 1, 'Mumbai'),
(7, 1, 1, 'Baroda'),
(8, 4, 4, 'Phonix'),
(9, 1, 1, 'Bhavanagar'),
(10, 1, 1, 'Surat'),
(11, 1, 1, 'Nadiad');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'India'),
(2, 'Australia'),
(3, 'England'),
(4, 'America');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `countryid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `countryid`, `name`) VALUES
(1, 1, 'Gujarat'),
(2, 1, 'Rajsthan'),
(3, 1, 'Maharastra'),
(4, 4, 'Arizona'),
(5, 3, 'Yorkshire'),
(6, 3, 'Worcestershire'),
(7, 3, 'Wiltshire'),
(8, 3, 'Westmoreland'),
(9, 2, 'Victoria');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `firstname`, `lastname`, `email`, `gender`) VALUES
(1, 'dharmesh', 'vasani', 'dharmeshkvasani@gmail.com', ''),
(2, 'dharmesh', 'vasani', 'dharmeshkvasani@gmail.com', '2'),
(3, 'dharmesh', 'vasani', 'dharmeshkvasani@gmail.com', '1'),
(4, 'dharmesh', 'vasani', '', ''),
(5, 'bhadresh', 'vasani', '', ''),
(6, 'dharmesh', 'vasani', '', ''),
(7, 'bhadresh', 'vasani', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `role` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `email`, `role`, `file`) VALUES
(1, 'dkvasani', 'dkvdadava', 'dharmeshkvasani@gmail.com', '', ''),
(2, 'hdvasani', 'thinker99', 'hdvasani@gmail.com', '', ''),
(3, 'hdvasani', 'thinker99', 'hdvasani@gmail.com', '', ''),
(4, 'dharmesh', 'vasani', 'dharmesh@gmail.com', '', ''),
(5, 'vasani', 'vasani', 'vasani@exmpale.com', '', ''),
(6, 'hdvasanini', 'thinker99', 'dharmesh@gmail.com', '', 'Jellyfish.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

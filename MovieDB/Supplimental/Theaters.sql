-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 12, 2017 at 02:47 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MovieDB_ExOne`
--

-- --------------------------------------------------------

--
-- Table structure for table `Theaters`
--

CREATE TABLE `Theaters` (
  `TheaterID` int(3) NOT NULL,
  `TheaterName` varchar(50) NOT NULL,
  `TheaterCity` varchar(50) NOT NULL,
  `TheaterState` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Theaters`
--

INSERT INTO `Theaters` (`TheaterID`, `TheaterName`, `TheaterCity`, `TheaterState`) VALUES
(1, 'AMC Star Fairlane 21', 'Dearborn', 'Michigan'),
(2, 'Henry Ford IMAX', 'Dearborn', 'Michigan'),
(3, 'MJR Allen Park Cinema', 'Allen Park', 'Michigan'),
(4, 'Cinema Detroit', 'Detroit', 'Michigan'),
(5, 'Detroit Film Theatre', 'Detroit', 'Michigan'),
(6, 'Cineplex Odeon Devonshire Mall', 'Windsor', 'Ontario'),
(7, 'MJR Southgate Digital Cinema 20', 'Southgate', 'Michigan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Theaters`
--
ALTER TABLE `Theaters`
  ADD PRIMARY KEY (`TheaterID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Theaters`
--
ALTER TABLE `Theaters`
  MODIFY `TheaterID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

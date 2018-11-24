-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 12, 2017 at 02:46 AM
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
-- Table structure for table `ShowtimeProfiles`
--

CREATE TABLE `ShowtimeProfiles` (
  `SP_ID` int(3) NOT NULL,
  `ShowtimeProfiles` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ShowtimeProfiles`
--

INSERT INTO `ShowtimeProfiles` (`SP_ID`, `ShowtimeProfiles`) VALUES
(1, '11:00 AM, 1:40 PM, 4:15 PM, 7:15 PM, 9:55 PM'),
(2, '12:45 PM, 3:45 PM, 6:45 PM, 8:00 PM, 9:30PM, 10:40 PM'),
(3, '11:00 AM, 1:25 PM, 4:45 PM, 7:10 PM, 9:50 PM'),
(4, '11:10 AM, 12:10 PM, 1:50 PM, 2:55 PM, 4:45 PM, 5:50 PM, 7:35 PM, 8:30 PM, 10:15 PM'),
(5, '12:30 PM, 3:00 PM, 5:30 PM, 8:00 PM, 10:30 PM'),
(6, '12:40 PM, 3:15 PM, 5:50 PM, 8:25 PM'),
(7, '4:15 PM, 9:35 PM'),
(8, '10:55 AM, 1:20 PM, 3:50 PM, 8:05 PM, 10:20 PM'),
(9, '9:00 PM'),
(10, '1:00 PM, 3:40 PM, 7:00 PM, 9:40 PM'),
(11, '4:00 PM, 10:15 PM'),
(12, '12:45 PM, 3:30 PM, 6:30 PM, 9:15 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ShowtimeProfiles`
--
ALTER TABLE `ShowtimeProfiles`
  ADD PRIMARY KEY (`SP_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ShowtimeProfiles`
--
ALTER TABLE `ShowtimeProfiles`
  MODIFY `SP_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

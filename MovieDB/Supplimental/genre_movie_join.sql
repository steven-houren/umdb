-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 12, 2017 at 03:06 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MovieDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `genre_movie_join`
--

CREATE TABLE `genre_movie_join` (
  `GMJ_ID` int(3) NOT NULL,
  `GenreID` int(3) NOT NULL,
  `MovieID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre_movie_join`
--

INSERT INTO `genre_movie_join` (`GMJ_ID`, `GenreID`, `MovieID`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 9, 1),
(4, 15, 1),
(5, 15, 2),
(6, 1, 2),
(7, 16, 2),
(8, 19, 3),
(9, 9, 3),
(10, 10, 4),
(11, 4, 4),
(12, 11, 5),
(13, 19, 5),
(14, 2, 6),
(15, 1, 6),
(16, 9, 6),
(17, 15, 6),
(18, 6, 7),
(19, 8, 7),
(20, 16, 7),
(21, 16, 8),
(22, 13, 8),
(23, 2, 8),
(24, 15, 8),
(25, 16, 9),
(26, 20, 9),
(27, 6, 10),
(28, 8, 10),
(29, 16, 10),
(30, 11, 11),
(31, 16, 11),
(32, 15, 11),
(33, 1, 12),
(34, 2, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genre_movie_join`
--
ALTER TABLE `genre_movie_join`
  ADD PRIMARY KEY (`GMJ_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genre_movie_join`
--
ALTER TABLE `genre_movie_join`
  MODIFY `GMJ_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

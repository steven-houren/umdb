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
-- Table structure for table `actor_movie_join`
--

CREATE TABLE `actor_movie_join` (
  `id` int(3) NOT NULL,
  `ActorID` int(3) NOT NULL,
  `MovieID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actor_movie_join`
--

INSERT INTO `actor_movie_join` (`id`, `ActorID`, `MovieID`) VALUES
(1, 10, 1),
(2, 11, 1),
(3, 3, 1),
(4, 13, 1),
(5, 13, 9),
(6, 3, 11),
(7, 14, 1),
(8, 15, 1),
(9, 16, 1),
(10, 17, 1),
(11, 18, 1),
(12, 19, 1),
(13, 12, 1),
(14, 1, 2),
(15, 22, 2),
(16, 10, 2),
(17, 1, 4),
(18, 2, 4),
(19, 23, 5),
(20, 24, 5),
(21, 25, 5),
(22, 26, 5),
(23, 27, 5),
(24, 28, 5),
(25, 29, 5),
(26, 30, 6),
(27, 31, 6),
(28, 32, 6),
(29, 7, 6),
(30, 33, 6),
(31, 34, 6),
(32, 35, 6),
(33, 36, 6),
(34, 37, 6),
(35, 38, 6),
(36, 39, 6),
(37, 6, 7),
(38, 7, 7),
(39, 8, 7),
(40, 9, 7),
(41, 12, 8),
(42, 30, 8),
(43, 40, 8),
(44, 41, 8),
(45, 42, 8),
(47, 43, 9),
(48, 44, 9),
(49, 10, 10),
(50, 20, 10),
(51, 21, 10),
(52, 45, 11),
(54, 46, 11),
(55, 47, 11),
(56, 48, 11),
(57, 52, 11),
(58, 49, 11),
(59, 50, 11),
(60, 51, 11),
(61, 3, 12),
(62, 4, 12),
(63, 5, 12),
(64, 2, 12),
(65, 53, 3),
(66, 54, 3),
(67, 55, 3),
(68, 56, 3),
(69, 57, 3),
(70, 58, 3),
(71, 59, 3),
(72, 60, 3),
(73, 61, 3),
(74, 63, 3),
(75, 64, 3),
(76, 65, 3),
(77, 66, 3),
(78, 67, 3),
(79, 68, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor_movie_join`
--
ALTER TABLE `actor_movie_join`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ActorID` (`ActorID`),
  ADD KEY `MovieID` (`MovieID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor_movie_join`
--
ALTER TABLE `actor_movie_join`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

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
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `Actor_ID` int(11) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `Birthdate` date NOT NULL,
  `Hometown` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`Actor_ID`, `Fname`, `Lname`, `Birthdate`, `Hometown`) VALUES
(1, 'Dev', 'Patel', '1990-04-23', 'Harrow, London, England'),
(2, 'Jeremy', 'Irons', '1948-09-19', 'Cowes, Isle of Wight, England'),
(3, 'Michael', 'Fassbender', '1977-04-02', 'Heidelberg, Germany'),
(4, 'Marion', 'Cotillard', '1975-09-30', 'Paris, France'),
(5, 'Brendan', 'Gleeson', '1955-03-29', 'Dublin, Ireland'),
(6, 'Ben', 'Affleck', '1972-08-15', 'Berkeley, California'),
(7, 'Zoe', 'Saldana', '1978-06-19', 'Passaic, New Jersey'),
(8, 'Chris', 'Messina', '1974-08-11', 'New York, New York'),
(9, 'Elle', 'Fanning', '1998-04-09', 'Conyers, Georgia'),
(10, 'Hugh', 'Jackman', '1968-10-12', 'Sydney, New South Wales, Australia'),
(11, 'James', 'McAvoy', '1979-04-21', 'Glasgow, Scotland'),
(12, 'Jennifer', 'Lawrence', '1990-08-15', 'Louisville, Kentucky'),
(13, 'Halle', 'Berry', '1966-08-14', 'Cleveland, Ohio'),
(14, 'Ellen', 'Page', '1987-02-21', 'Halifax, Nova Scotia, Canada'),
(15, 'Peter', 'Dinklage', '1969-06-11', 'Morristown, New Jersey'),
(16, 'Ian', 'McKellen', '1939-05-25', 'Burnley, Lancashire, England'),
(17, 'Patrick', 'Stewart', '1940-07-13', 'Mirfield, Yorkshire, England'),
(18, 'Anna', 'Paquin', '1982-07-24', 'Winnipeg, Manitoba, Canada'),
(19, 'Evan', 'Peters', '1987-01-20', 'St. Louis, Missouri'),
(20, 'Jake', 'Gyllenhaal', '1980-12-19', 'Los Angeles, California'),
(21, 'Viola', 'Davis', '1965-08-11', 'Saint Matthews, South Carolina'),
(22, 'Sigourney', 'Weaver', '1949-10-08', 'New York, New York'),
(23, 'Elijah', 'Wood', '1981-01-28', 'Cedar Rapids, Iowa'),
(24, 'Alison', 'Pill', '1985-11-27', 'Toronto, Ontario, Canada'),
(25, 'Rainn', 'Wilson', '1966-01-20', 'Seattle, Washington'),
(26, 'Jack', 'McBrayer', '1973-05-27', 'Macon, Georgia'),
(27, 'Nasim', 'Pedrad', '1981-11-18', 'Tehran, Iran'),
(28, 'Jorge', 'Garcia', '1973-04-28', 'Omaha, Nebraska'),
(29, 'Leigh', 'Whannell', '1977-01-17', 'Melbourne, Victoria, Australia'),
(30, 'Chris', 'Pratt', '1979-06-21', 'Virginia, Minnesota'),
(31, 'Dave', 'Bautista', '1969-01-18', 'Washington, D.C.'),
(32, 'Vin', 'Diesel', '1967-07-18', 'Alameda County, California'),
(33, 'Bradley', 'Cooper', '1975-01-05', 'Philadelphia, Pennsylvania'),
(34, 'Lee', 'Pace', '1979-03-25', 'Chickasha, Oklahoma'),
(35, 'Michael', 'Rooker', '1955-04-06', 'Jasper, Alabama'),
(36, 'Karen', 'Gillan', '1987-11-28', 'Inverness, Scotland'),
(37, 'Djimon', 'Hounsou', '1964-04-24', 'Cotonou, Benin'),
(38, 'Benicio', 'Del Toro', '1967-02-19', 'Santurce, Puerto Rico'),
(39, 'John C.', 'Reilly', '1965-05-24', 'Chicago, Illinois'),
(40, 'Michael', 'Sheen', '1969-02-05', 'Newport, Gwent, Wales'),
(41, 'Laurence', 'Fishburne', '1961-07-30', 'Augusta, Georgia'),
(42, 'Andy', 'Garcia', '1956-04-12', 'Havana, Cuba'),
(43, 'Bruce', 'Willis', '1955-03-19', 'Idar-Oberstein, West Germany'),
(44, 'Giovanni', 'Ribisi', '1974-12-17', 'Los Angeles, California'),
(45, 'Noomi', 'Rapace', '1979-12-28', 'Hudiksvall, Gävleborgs län, Sweden'),
(46, 'Charlize', 'Theron', '1975-09-07', 'Benoni, Gauteng, South Africa'),
(47, 'Idris', 'Elba', '1972-09-06', 'Hackney, England'),
(48, 'Guy', 'Pearce', '1967-10-05', 'Ely, Cambridgeshire, England'),
(49, 'Rafe', 'Spall', '1983-03-10', 'East Dulwich, London, England'),
(50, 'Enum', 'Elliott', '1983-11-28', 'Edinburgh, Scotland'),
(51, 'Benedict', 'Wong', '1971-06-03', 'Eccles, Greater Manchester, England'),
(52, 'Logan', 'Marshall-Green', '1976-11-01', 'Charleston, South Carolina'),
(53, 'Mark', 'Wahlberg', '1971-06-05', 'Dorchester, Massachusetts'),
(54, 'Mila', 'Kunis', '1983-09-14', 'Kiev, Ukraine, Soviet Union'),
(55, 'Seth', 'McFarlane', '1973-10-26', 'Kent, Connecticut'),
(56, 'Joel', 'McHale', '1971-11-20', 'Rome, Lazio, Italy'),
(57, 'Patrick', 'Warburton', '1964-11-14', 'Paterson, New Jersey'),
(58, 'Matt', 'Walsh', '1964-10-13', 'Chicago, Illinois'),
(59, 'Jessica', 'Barth', '1980-07-12', 'Philadelphia, Pennsylvania'),
(60, 'Aedin', 'Mincks', '2000-10-10', 'Georgia'),
(61, 'Bill', 'Smitrovich', '1947-05-16', 'Bridgeport, Connecticut'),
(63, 'Norah', 'Jones', '1979-03-30', 'New York, New York'),
(64, 'Sam', 'Jones', '1954-09-12', 'Chicago, Illinois'),
(65, 'Tom', 'Skerritt', '1933-09-25', 'Detroit, Michigan'),
(66, 'Ralph', 'Garman', '1964-11-17', 'Philadelphia, Pennsylvania'),
(67, 'Alex', 'Borstein', '1971-02-15', 'Chicago, Illinois'),
(68, 'Laura', 'Vandervoort', '1984-09-22', 'Toronto, Ontario, Canada');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`Actor_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `Actor_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

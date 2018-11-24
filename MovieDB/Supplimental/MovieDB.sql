-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 12, 2017 at 03:05 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `Genres`
--

CREATE TABLE `Genres` (
  `GenreID` int(11) NOT NULL,
  `Genre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Genres`
--

INSERT INTO `Genres` (`GenreID`, `Genre`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Animated'),
(4, 'Biography'),
(5, 'Kids'),
(6, 'Crime'),
(7, 'Documentary'),
(8, 'Drama'),
(9, 'Fantasy'),
(10, 'Historical Drama'),
(11, 'Horror'),
(12, 'Musical'),
(13, 'Romance'),
(14, 'Romantic Comedy'),
(15, 'Science Fiction'),
(16, 'Thriller'),
(17, 'War'),
(18, 'Western'),
(19, 'Comedy'),
(20, 'Mystery');

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

-- --------------------------------------------------------

--
-- Table structure for table `Movies`
--

CREATE TABLE `Movies` (
  `MovieID` int(11) NOT NULL,
  `MovieName` varchar(50) NOT NULL,
  `MetacriticScore` int(3) NOT NULL,
  `ReleaseDate` date NOT NULL,
  `Rating` varchar(5) NOT NULL,
  `RunTime` varchar(11) NOT NULL,
  `PlotSummary` text NOT NULL,
  `Review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Movies`
--

INSERT INTO `Movies` (`MovieID`, `MovieName`, `MetacriticScore`, `ReleaseDate`, `Rating`, `RunTime`, `PlotSummary`, `Review`) VALUES
(1, 'X-Men Days of Future Past', 74, '2014-05-23', 'PG-13', '2 hr 11 min', 'Convinced that mutants pose a threat to humanity, Dr. Bolivar Trask (Peter Dinklage) develops the Sentinels, enormous robotic weapons that can detect a mutant gene and zero in on that person. In the 21st century, the Sentinels have evolved into highly efficient killing machines. With mutants now facing extinction, Wolverine (Hugh Jackman) volunteers to go back in time and rally the X-Men of the past to help change a pivotal moment in history and thereby save their future. ', ''),
(2, 'Chappie', 41, '2015-03-06', 'R', '2 hr 0 min', 'In the near future, a mechanized police force patrols the streets and deals with lawbreakers -- but now, the people are fighting back. When one police droid is stolen and given new programming, he acquires the ability to feel and think for himself. While the robot, dubbed "Chappie (Sharlto Copley)," puzzles out human behavior, the authorities begin to see him as a danger to mankind and order; they will stop at nothing to ensure that Chappie is the last of his kind.', ''),
(3, 'Ted', 62, '2012-06-29', 'R', '1 hr 46 min', 'When John Bennett (Mark Wahlberg) was a little boy, he made a wish that Ted (Seth MacFarlane), his beloved teddy bear, would come alive. Thirty years later, foul-mouthed Ted is still John''s constant companion, much to the chagrin of Lori (Mila Kunis), John''s girlfriend. Though Lori''s displeasure is exacerbated by the pair''s constant consumption of beer and weed, she''s not the one who''s most disappointed with John; it may take the intervention of John''s boyhood toy to help him grow up at last. ', ''),
(4, 'The Man Who Knew Infinity', 56, '2016-04-29', 'PG-13', '1 hr 54 min', 'In 1913, brilliant East Indian mathematician Srinivasa Ramanujan (Dev Patel) travels to Trinity College in England to work with professor G.H. Hardy (Jeremy Irons). ', ''),
(5, 'Cooties', 49, '2015-09-18', 'R', '1 hr 36 min', 'Elementary-school teachers (Elijah Wood, Alison Pill, Rainn Wilson) come under attack from children who have been turned into vicious monsters by contaminated chicken nuggets.', ''),
(6, 'Guardians of the Galaxy', 76, '2014-08-01', 'PG-13', '2 hr 1 min', 'Brash space adventurer Peter Quill (Chris Pratt) finds himself the quarry of relentless bounty hunters after he steals an orb coveted by Ronan, a powerful villain. To evade Ronan, Quill is forced into an uneasy truce with four disparate misfits: gun-toting Rocket Raccoon, treelike-humanoid Groot, enigmatic Gamora, and vengeance-driven Drax the Destroyer. But when he discovers the orb''s true power and the cosmic threat it poses, Quill must rally his ragtag group to save the universe. ', ''),
(7, 'Live By Night', 49, '2016-12-25', 'R', '2 hr 9 min', 'It''s the Roaring `20s and Prohibition hasn''t stopped the flow of booze in an underground network of gangster-run speakeasies. The opportunity to gain power and money is there for any man with enough ambition and nerve, and Joe Coughlin, the son of the Boston Police superintendent, long ago turned his back on his strict upbringing for the spoils of being an outlaw. But even among criminals there are rules, and Joe breaks a big one: crossing a powerful mob boss by stealing his money and his moll. ', ''),
(8, 'Passengers', 41, '2016-12-21', 'PG-13', '1 hr 56 min', 'On a routine journey through space to a new home, two passengers, sleeping in suspended animation, are awakened 90 years too early when their ship malfunctions. As Jim and Aurora face living the rest of their lives on board, with every luxury they could ever ask for, they begin to fall for each other, unable to deny their intense attraction until they discover the ship is in grave danger. With the lives of 5,000 sleeping passengers at stake, only Jim and Aurora can save them all.', ''),
(9, 'Perfect Stranger', 31, '2007-04-13', 'R', '1 hr 49 min', 'Rowena Price (Halle Berry), a reporter, uses her investigative skills to solve the murder of a friend. Her search leads her to Harrison Hill (Bruce Willis), a high-powered advertising executive. She assumes new identities in the real world and online, utilizing cyberspace in a bid to bring her quarry to justice. ', ''),
(10, 'Prisoners', 74, '2013-09-20', 'R', '2 hr 33 min', 'Keller Dover (Hugh Jackman) faces a parent''s worst nightmare when his 6-year-old daughter, Anna, and her friend go missing. The only lead is an old motor-home that had been parked on their street. The head of the investigation, Detective Loki (Jake Gyllenhaal), arrests the driver (Paul Dano), but a lack of evidence forces Loki to release his only suspect. Dover, knowing that his daughter''s life is at stake, decides that he has no choice but to take matters into his own hands. ', ''),
(11, 'Prometheus', 65, '2012-06-08', 'R', '2 hr 3 min', 'The discovery of a clue to mankind''s origins on Earth leads a team of explorers to the darkest parts of the universe. Two brilliant young scientists lead the expedition. Shaw (Noomi Rapace) hopes that they will meet a race of benevolent, godlike beings who will in some way verify her religious beliefs, while Holloway (Logan Marshall-Green) is out to debunk any spiritual notions. However, neither the scientists nor their shipmates are prepared for the unimaginable terrors that await them. ', ''),
(12, 'Assassin''s Creed', 36, '2016-12-21', 'PG-13', '1 hr 56 min', 'Cal Lynch travels back in time to 15th-century Spain through a revolutionary technology that unlocks the genetic memories contained in his DNA.  There, he lives out the experiences of Aguilar de Nerha, a distant relative who''s also a member of the Assassin''s, a secret society that fights to protect free will from the power-hungry Templar Order.  Transformed by the past, Cal begins to gain the knowledge and physical skills necessary to battle the oppressive organization in the present.  ', '');

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

-- --------------------------------------------------------

--
-- Table structure for table `ShowtimesJoin`
--

CREATE TABLE `ShowtimesJoin` (
  `ShowtimesJoinID` int(3) NOT NULL,
  `ShowtimesMovieID` int(11) NOT NULL,
  `ShowtimesTheatersID` int(11) NOT NULL,
  `ShowtimesProfileID` int(11) NOT NULL,
  `ShowtimesDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ShowtimesJoin`
--

INSERT INTO `ShowtimesJoin` (`ShowtimesJoinID`, `ShowtimesMovieID`, `ShowtimesTheatersID`, `ShowtimesProfileID`, `ShowtimesDate`) VALUES
(1, 1, 1, 1, '2017-04-11'),
(2, 1, 2, 2, '2017-04-11'),
(3, 1, 3, 3, '2017-04-11'),
(4, 1, 4, 4, '2017-04-11'),
(5, 1, 5, 5, '2017-04-11'),
(6, 1, 6, 6, '2017-04-11'),
(7, 1, 7, 7, '2017-04-11'),
(8, 2, 1, 2, '2017-04-11'),
(9, 3, 1, 3, '2017-04-11'),
(10, 4, 1, 4, '2017-04-11'),
(11, 5, 1, 5, '2017-04-11'),
(12, 6, 1, 6, '2017-04-11'),
(13, 7, 1, 7, '2017-04-11'),
(14, 8, 1, 8, '2017-04-11'),
(15, 9, 1, 9, '2017-04-11'),
(16, 10, 1, 10, '2017-04-11'),
(17, 11, 1, 11, '2017-04-11'),
(18, 12, 1, 12, '2017-04-11'),
(19, 2, 2, 3, '2017-04-11'),
(20, 3, 2, 4, '2017-04-11'),
(21, 4, 2, 5, '2017-04-11'),
(22, 5, 2, 6, '2017-04-11'),
(23, 6, 2, 7, '2017-04-11'),
(24, 7, 2, 8, '2017-04-11'),
(25, 8, 2, 9, '2017-04-11'),
(26, 9, 2, 10, '2017-04-11'),
(27, 10, 2, 11, '2017-04-11'),
(28, 11, 2, 12, '2017-04-11'),
(29, 12, 2, 1, '2017-04-11'),
(30, 2, 3, 4, '2017-04-11'),
(31, 3, 3, 5, '2017-04-11'),
(32, 4, 3, 6, '2017-04-11'),
(33, 5, 3, 7, '2017-04-11'),
(34, 6, 3, 8, '2017-04-11'),
(35, 7, 3, 9, '2017-04-11'),
(36, 8, 3, 10, '2017-04-11'),
(37, 9, 3, 11, '2017-04-11'),
(38, 10, 3, 12, '2017-04-11'),
(39, 11, 3, 1, '2017-04-11'),
(40, 12, 3, 2, '2017-04-11'),
(41, 2, 4, 5, '2017-04-11'),
(42, 3, 4, 6, '2017-04-11'),
(43, 4, 4, 7, '2017-04-11'),
(44, 5, 4, 8, '2017-04-11'),
(45, 6, 4, 9, '2017-04-11'),
(46, 7, 4, 10, '2017-04-11'),
(47, 8, 4, 11, '2017-04-11'),
(48, 9, 4, 12, '2017-04-11'),
(49, 10, 4, 1, '2017-04-11'),
(50, 11, 4, 2, '2017-04-11'),
(51, 12, 4, 3, '2017-04-11'),
(52, 2, 5, 6, '2017-04-11'),
(53, 3, 5, 7, '2017-04-11'),
(54, 4, 5, 8, '2017-04-11'),
(55, 5, 5, 9, '2017-04-11'),
(56, 6, 5, 10, '2017-04-11'),
(57, 7, 5, 11, '2017-04-11'),
(58, 8, 5, 12, '2017-04-11'),
(59, 9, 5, 1, '2017-04-11'),
(60, 10, 5, 2, '2017-04-11'),
(61, 11, 5, 3, '2017-04-11'),
(62, 12, 5, 4, '2017-04-11'),
(63, 2, 6, 7, '2017-04-11'),
(64, 3, 6, 8, '2017-04-11'),
(65, 4, 6, 9, '2017-04-11'),
(66, 5, 6, 10, '2017-04-11'),
(67, 6, 6, 11, '2017-04-11'),
(68, 7, 6, 12, '2017-04-11'),
(69, 8, 6, 1, '2017-04-11'),
(70, 9, 6, 2, '2017-04-11'),
(71, 10, 6, 3, '2017-04-11'),
(72, 11, 6, 4, '2017-04-11'),
(73, 12, 6, 5, '2017-04-11'),
(74, 2, 7, 8, '2017-04-11'),
(75, 3, 7, 9, '2017-04-11'),
(76, 4, 7, 10, '2017-04-11'),
(77, 5, 7, 11, '2017-04-11'),
(78, 6, 7, 12, '2017-04-11'),
(79, 7, 7, 1, '2017-04-11'),
(80, 8, 7, 2, '2017-04-11'),
(81, 9, 7, 3, '2017-04-11'),
(82, 10, 7, 4, '2017-04-11'),
(83, 11, 7, 5, '2017-04-11'),
(84, 12, 7, 6, '2017-04-11'),
(85, 1, 1, 1, '2017-04-12'),
(86, 1, 2, 2, '2017-04-12'),
(87, 1, 3, 3, '2017-04-12'),
(88, 1, 4, 4, '2017-04-12'),
(89, 1, 5, 5, '2017-04-12'),
(90, 1, 6, 6, '2017-04-12'),
(91, 1, 7, 7, '2017-04-12'),
(92, 2, 1, 2, '2017-04-12'),
(93, 3, 1, 3, '2017-04-12'),
(94, 4, 1, 4, '2017-04-12'),
(95, 5, 1, 5, '2017-04-12'),
(96, 6, 1, 6, '2017-04-12'),
(97, 7, 1, 7, '2017-04-12'),
(98, 8, 1, 8, '2017-04-12'),
(99, 9, 1, 9, '2017-04-12'),
(100, 10, 1, 10, '2017-04-12'),
(101, 11, 1, 11, '2017-04-12'),
(102, 12, 1, 12, '2017-04-12'),
(103, 2, 2, 3, '2017-04-12'),
(104, 3, 2, 4, '2017-04-12'),
(105, 4, 2, 5, '2017-04-12'),
(106, 5, 2, 6, '2017-04-12'),
(107, 6, 2, 7, '2017-04-12'),
(108, 7, 2, 8, '2017-04-12'),
(109, 8, 2, 9, '2017-04-12'),
(110, 9, 2, 10, '2017-04-12'),
(111, 10, 2, 11, '2017-04-12'),
(112, 11, 2, 12, '2017-04-12'),
(113, 12, 2, 1, '2017-04-12'),
(114, 2, 3, 4, '2017-04-12'),
(115, 3, 3, 5, '2017-04-12'),
(116, 4, 3, 6, '2017-04-12'),
(117, 5, 3, 7, '2017-04-12'),
(118, 6, 3, 8, '2017-04-12'),
(119, 7, 3, 9, '2017-04-12'),
(120, 8, 3, 10, '2017-04-12'),
(121, 9, 3, 11, '2017-04-12'),
(122, 10, 3, 12, '2017-04-12'),
(123, 11, 3, 1, '2017-04-12'),
(124, 12, 3, 2, '2017-04-12'),
(125, 2, 4, 5, '2017-04-12'),
(126, 3, 4, 6, '2017-04-12'),
(127, 4, 4, 7, '2017-04-12'),
(128, 5, 4, 8, '2017-04-12'),
(129, 6, 4, 9, '2017-04-12'),
(130, 7, 4, 10, '2017-04-12'),
(131, 8, 4, 11, '2017-04-12'),
(132, 9, 4, 12, '2017-04-12'),
(133, 10, 4, 1, '2017-04-12'),
(134, 11, 4, 2, '2017-04-12'),
(135, 12, 4, 3, '2017-04-12'),
(136, 2, 5, 6, '2017-04-12'),
(137, 3, 5, 7, '2017-04-12'),
(138, 4, 5, 8, '2017-04-12'),
(139, 5, 5, 9, '2017-04-12'),
(140, 6, 5, 10, '2017-04-12'),
(141, 7, 5, 11, '2017-04-12'),
(142, 8, 5, 12, '2017-04-12'),
(143, 9, 5, 1, '2017-04-12'),
(144, 10, 5, 2, '2017-04-12'),
(145, 11, 5, 3, '2017-04-12'),
(146, 12, 5, 4, '2017-04-12'),
(147, 2, 6, 7, '2017-04-12'),
(148, 3, 6, 8, '2017-04-12'),
(149, 4, 6, 9, '2017-04-12'),
(150, 5, 6, 10, '2017-04-12'),
(151, 6, 6, 11, '2017-04-12'),
(152, 7, 6, 12, '2017-04-12'),
(153, 8, 6, 1, '2017-04-12'),
(154, 9, 6, 2, '2017-04-12'),
(155, 10, 6, 3, '2017-04-12'),
(156, 11, 6, 4, '2017-04-12'),
(157, 12, 6, 5, '2017-04-12'),
(158, 2, 7, 8, '2017-04-12'),
(159, 3, 7, 9, '2017-04-12'),
(160, 4, 7, 10, '2017-04-12'),
(161, 5, 7, 11, '2017-04-12'),
(162, 6, 7, 12, '2017-04-12'),
(163, 7, 7, 1, '2017-04-12'),
(164, 8, 7, 2, '2017-04-12'),
(165, 9, 7, 3, '2017-04-12'),
(166, 10, 7, 4, '2017-04-12'),
(167, 11, 7, 5, '2017-04-12'),
(168, 12, 7, 6, '2017-04-12'),
(169, 1, 1, 1, '2017-04-13'),
(170, 1, 2, 2, '2017-04-13'),
(171, 1, 3, 3, '2017-04-13'),
(172, 1, 4, 4, '2017-04-13'),
(173, 1, 5, 5, '2017-04-13'),
(174, 1, 6, 6, '2017-04-13'),
(175, 1, 7, 7, '2017-04-13'),
(176, 2, 1, 2, '2017-04-13'),
(177, 3, 1, 3, '2017-04-13'),
(178, 4, 1, 4, '2017-04-13'),
(179, 5, 1, 5, '2017-04-13'),
(180, 6, 1, 6, '2017-04-13'),
(181, 7, 1, 7, '2017-04-13'),
(182, 8, 1, 8, '2017-04-13'),
(183, 9, 1, 9, '2017-04-13'),
(184, 10, 1, 10, '2017-04-13'),
(185, 11, 1, 11, '2017-04-13'),
(186, 12, 1, 12, '2017-04-13'),
(187, 2, 2, 3, '2017-04-13'),
(188, 3, 2, 4, '2017-04-13'),
(189, 4, 2, 5, '2017-04-13'),
(190, 5, 2, 6, '2017-04-13'),
(191, 6, 2, 7, '2017-04-13'),
(192, 7, 2, 8, '2017-04-13'),
(193, 8, 2, 9, '2017-04-13'),
(194, 9, 2, 10, '2017-04-13'),
(195, 10, 2, 11, '2017-04-13'),
(196, 11, 2, 12, '2017-04-13'),
(197, 12, 2, 1, '2017-04-13'),
(198, 2, 3, 4, '2017-04-13'),
(199, 3, 3, 5, '2017-04-13'),
(200, 4, 3, 6, '2017-04-13'),
(201, 5, 3, 7, '2017-04-13'),
(202, 6, 3, 8, '2017-04-13'),
(203, 7, 3, 9, '2017-04-13'),
(204, 8, 3, 10, '2017-04-13'),
(205, 9, 3, 11, '2017-04-13'),
(206, 10, 3, 12, '2017-04-13'),
(207, 11, 3, 1, '2017-04-13'),
(208, 12, 3, 2, '2017-04-13'),
(209, 2, 4, 5, '2017-04-13'),
(210, 3, 4, 6, '2017-04-13'),
(211, 4, 4, 7, '2017-04-13'),
(212, 5, 4, 8, '2017-04-13'),
(213, 6, 4, 9, '2017-04-13'),
(214, 7, 4, 10, '2017-04-13'),
(215, 8, 4, 11, '2017-04-13'),
(216, 9, 4, 12, '2017-04-13'),
(217, 10, 4, 1, '2017-04-13'),
(218, 11, 4, 2, '2017-04-13'),
(219, 12, 4, 3, '2017-04-13'),
(220, 2, 5, 6, '2017-04-13'),
(221, 3, 5, 7, '2017-04-13'),
(222, 4, 5, 8, '2017-04-13'),
(223, 5, 5, 9, '2017-04-13'),
(224, 6, 5, 10, '2017-04-13'),
(225, 7, 5, 11, '2017-04-13'),
(226, 8, 5, 12, '2017-04-13'),
(227, 9, 5, 1, '2017-04-13'),
(228, 10, 5, 2, '2017-04-13'),
(229, 11, 5, 3, '2017-04-13'),
(230, 12, 5, 4, '2017-04-13'),
(231, 2, 6, 7, '2017-04-13'),
(232, 3, 6, 8, '2017-04-13'),
(233, 4, 6, 9, '2017-04-13'),
(234, 5, 6, 10, '2017-04-13'),
(235, 6, 6, 11, '2017-04-13'),
(236, 7, 6, 12, '2017-04-13'),
(237, 8, 6, 1, '2017-04-13'),
(238, 9, 6, 2, '2017-04-13'),
(239, 10, 6, 3, '2017-04-13'),
(240, 11, 6, 4, '2017-04-13'),
(241, 12, 6, 5, '2017-04-13'),
(242, 2, 7, 8, '2017-04-13'),
(243, 3, 7, 9, '2017-04-13'),
(244, 4, 7, 10, '2017-04-13'),
(245, 5, 7, 11, '2017-04-13'),
(246, 6, 7, 12, '2017-04-13'),
(247, 7, 7, 1, '2017-04-13'),
(248, 8, 7, 2, '2017-04-13'),
(249, 9, 7, 3, '2017-04-13'),
(250, 10, 7, 4, '2017-04-13'),
(251, 11, 7, 5, '2017-04-13'),
(252, 12, 7, 6, '2017-04-13'),
(253, 1, 1, 1, '2017-04-14'),
(254, 1, 2, 2, '2017-04-14'),
(255, 1, 3, 3, '2017-04-14'),
(256, 1, 4, 4, '2017-04-14'),
(257, 1, 5, 5, '2017-04-14'),
(258, 1, 6, 6, '2017-04-14'),
(259, 1, 7, 7, '2017-04-14'),
(260, 2, 1, 2, '2017-04-14'),
(261, 3, 1, 3, '2017-04-14'),
(262, 4, 1, 4, '2017-04-14'),
(263, 5, 1, 5, '2017-04-14'),
(264, 6, 1, 6, '2017-04-14'),
(265, 7, 1, 7, '2017-04-14'),
(266, 8, 1, 8, '2017-04-14'),
(267, 9, 1, 9, '2017-04-14'),
(268, 10, 1, 10, '2017-04-14'),
(269, 11, 1, 11, '2017-04-14'),
(270, 12, 1, 12, '2017-04-14'),
(271, 2, 2, 3, '2017-04-14'),
(272, 3, 2, 4, '2017-04-14'),
(273, 4, 2, 5, '2017-04-14'),
(274, 5, 2, 6, '2017-04-14'),
(275, 6, 2, 7, '2017-04-14'),
(276, 7, 2, 8, '2017-04-14'),
(277, 8, 2, 9, '2017-04-14'),
(278, 9, 2, 10, '2017-04-14'),
(279, 10, 2, 11, '2017-04-14'),
(280, 11, 2, 12, '2017-04-14'),
(281, 12, 2, 1, '2017-04-14'),
(282, 2, 3, 4, '2017-04-14'),
(283, 3, 3, 5, '2017-04-14'),
(284, 4, 3, 6, '2017-04-14'),
(285, 5, 3, 7, '2017-04-14'),
(286, 6, 3, 8, '2017-04-14'),
(287, 7, 3, 9, '2017-04-14'),
(288, 8, 3, 10, '2017-04-14'),
(289, 9, 3, 11, '2017-04-14'),
(290, 10, 3, 12, '2017-04-14'),
(291, 11, 3, 1, '2017-04-14'),
(292, 12, 3, 2, '2017-04-14'),
(293, 2, 4, 5, '2017-04-14'),
(294, 3, 4, 6, '2017-04-14'),
(295, 4, 4, 7, '2017-04-14'),
(296, 5, 4, 8, '2017-04-14'),
(297, 6, 4, 9, '2017-04-14'),
(298, 7, 4, 10, '2017-04-14'),
(299, 8, 4, 11, '2017-04-14'),
(300, 9, 4, 12, '2017-04-14'),
(301, 10, 4, 1, '2017-04-14'),
(302, 11, 4, 2, '2017-04-14'),
(303, 12, 4, 3, '2017-04-14'),
(304, 2, 5, 6, '2017-04-14'),
(305, 3, 5, 7, '2017-04-14'),
(306, 4, 5, 8, '2017-04-14'),
(307, 5, 5, 9, '2017-04-14'),
(308, 6, 5, 10, '2017-04-14'),
(309, 7, 5, 11, '2017-04-14'),
(310, 8, 5, 12, '2017-04-14'),
(311, 9, 5, 1, '2017-04-14'),
(312, 10, 5, 2, '2017-04-14'),
(313, 11, 5, 3, '2017-04-14'),
(314, 12, 5, 4, '2017-04-14'),
(315, 2, 6, 7, '2017-04-14'),
(316, 3, 6, 8, '2017-04-14'),
(317, 4, 6, 9, '2017-04-14'),
(318, 5, 6, 10, '2017-04-14'),
(319, 6, 6, 11, '2017-04-14'),
(320, 7, 6, 12, '2017-04-14'),
(321, 8, 6, 1, '2017-04-14'),
(322, 9, 6, 2, '2017-04-14'),
(323, 10, 6, 3, '2017-04-14'),
(324, 11, 6, 4, '2017-04-14'),
(325, 12, 6, 5, '2017-04-14'),
(326, 2, 7, 8, '2017-04-14'),
(327, 3, 7, 9, '2017-04-14'),
(328, 4, 7, 10, '2017-04-14'),
(329, 5, 7, 11, '2017-04-14'),
(330, 6, 7, 12, '2017-04-14'),
(331, 7, 7, 1, '2017-04-14'),
(332, 8, 7, 2, '2017-04-14'),
(333, 9, 7, 3, '2017-04-14'),
(334, 10, 7, 4, '2017-04-14'),
(335, 11, 7, 5, '2017-04-14'),
(336, 12, 7, 6, '2017-04-14');

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
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`Actor_ID`);

--
-- Indexes for table `actor_movie_join`
--
ALTER TABLE `actor_movie_join`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ActorID` (`ActorID`),
  ADD KEY `MovieID` (`MovieID`);

--
-- Indexes for table `Genres`
--
ALTER TABLE `Genres`
  ADD PRIMARY KEY (`GenreID`);

--
-- Indexes for table `genre_movie_join`
--
ALTER TABLE `genre_movie_join`
  ADD PRIMARY KEY (`GMJ_ID`);

--
-- Indexes for table `Movies`
--
ALTER TABLE `Movies`
  ADD PRIMARY KEY (`MovieID`);

--
-- Indexes for table `ShowtimeProfiles`
--
ALTER TABLE `ShowtimeProfiles`
  ADD PRIMARY KEY (`SP_ID`);

--
-- Indexes for table `ShowtimesJoin`
--
ALTER TABLE `ShowtimesJoin`
  ADD PRIMARY KEY (`ShowtimesJoinID`);

--
-- Indexes for table `Theaters`
--
ALTER TABLE `Theaters`
  ADD PRIMARY KEY (`TheaterID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `Actor_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `actor_movie_join`
--
ALTER TABLE `actor_movie_join`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `Genres`
--
ALTER TABLE `Genres`
  MODIFY `GenreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `genre_movie_join`
--
ALTER TABLE `genre_movie_join`
  MODIFY `GMJ_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `Movies`
--
ALTER TABLE `Movies`
  MODIFY `MovieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ShowtimeProfiles`
--
ALTER TABLE `ShowtimeProfiles`
  MODIFY `SP_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ShowtimesJoin`
--
ALTER TABLE `ShowtimesJoin`
  MODIFY `ShowtimesJoinID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;
--
-- AUTO_INCREMENT for table `Theaters`
--
ALTER TABLE `Theaters`
  MODIFY `TheaterID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

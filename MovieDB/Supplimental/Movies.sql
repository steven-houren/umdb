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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Movies`
--
ALTER TABLE `Movies`
  ADD PRIMARY KEY (`MovieID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Movies`
--
ALTER TABLE `Movies`
  MODIFY `MovieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

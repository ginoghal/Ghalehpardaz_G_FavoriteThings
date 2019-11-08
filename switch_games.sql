-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 07, 2019 at 09:22 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_card`
--

-- --------------------------------------------------------

--
-- Table structure for table `switch_games`
--

CREATE TABLE `switch_games` (
  `id` int(20) NOT NULL,
  `name` varchar(40) COLLATE utf8_bin NOT NULL,
  `year` varchar(10) COLLATE utf8_bin NOT NULL,
  `rating` varchar(10) COLLATE utf8_bin NOT NULL,
  `avatar` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `switch_games`
--

INSERT INTO `switch_games` (`id`, `name`, `year`, `rating`, `avatar`) VALUES
(1, 'LoZ: Breath of the Wild', '2017', '97', 'botw.jpeg'),
(2, 'Super Mario Odyssey', '2017', '97', 'odyssey.jpeg'),
(3, 'Super Mario Party', '2018', '76', 'marioparty.jpeg'),
(4, 'LoZ: Links Awakening', '2019', '87', 'LinkA.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `switch_games`
--
ALTER TABLE `switch_games`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `switch_games`
--
ALTER TABLE `switch_games`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

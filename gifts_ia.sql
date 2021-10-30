-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2019 at 12:33 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gifts ia`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` smallint(6) NOT NULL,
  `login` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `surname` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `birth_date` date NOT NULL,
  `gender` bit(1) NOT NULL,
  `middle_name` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `path_to_avatar` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `login`, `password`, `name`, `surname`, `birth_date`, `gender`, `middle_name`, `path_to_avatar`) VALUES
(1, 'sabira1709', 'sabira1709', 'Sabira', 'Duishebaeva', '2019-01-01', b'1', NULL, 'profile1'),
(2, 'meerim', 'meerim', 'Meerim', 'Zh', '2001-05-18', b'1', NULL, 'profile2'),
(3, 'zhasmin', 'zhasmin', 'Zhasmin', 'T', '2001-05-17', b'1', NULL, 'profile3'),
(4, 'jack28', 'jack28', 'Jack', 'Jackson', '2019-11-05', b'0', NULL, 'profile4'),
(5, 'kendall', 'kendall', 'kendall', 'jenner', '2001-05-18', b'0', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `name` varchar(80) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`name`) VALUES
('Birthday'),
('New Year'),
('Some celebration'),
('Womens Day'),
('bday');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` smallint(6) NOT NULL,
  `text` varchar(180) COLLATE utf16_bin NOT NULL,
  `account_id` smallint(6) NOT NULL,
  `date_posted` datetime NOT NULL,
  `preference_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `text`, `account_id`, `date_posted`, `preference_id`) VALUES
(1, 'NICE CHOICE', 1, '2019-11-17 22:39:57', 1),
(2, 'ddj', 1, '2019-12-21 10:32:52', 9),
(3, 'nice choice', 5, '2019-12-21 10:35:40', 9),
(4, 'Actually, it is better if it also has fingerprint unlocking', 1, '2019-12-22 16:01:32', 14),
(5, 'Very good list!', 1, '2019-12-22 16:18:46', 17),
(6, 'Nice choice!', 1, '2019-12-22 16:25:37', 9),
(7, 'Cool!', 1, '2019-12-22 16:26:55', 3);

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` smallint(6) NOT NULL,
  `account_id_user` smallint(6) NOT NULL,
  `account_id_friend` smallint(6) NOT NULL,
  `pending` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `account_id_user`, `account_id_friend`, `pending`) VALUES
(1, 2, 1, 0),
(2, 2, 3, 0),
(3, 1, 3, 0),
(4, 1, 2, 0),
(5, 3, 1, 0),
(6, 3, 2, 0),
(7, 4, 1, 0),
(8, 1, 4, 0),
(9, 1, 5, 0),
(10, 5, 1, 0),
(11, 4, 2, 0),
(12, 2, 4, 0),
(13, 3, 5, 0),
(14, 5, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `preference`
--

CREATE TABLE `preference` (
  `id` smallint(6) NOT NULL,
  `account_id` smallint(6) NOT NULL,
  `category` varchar(80) COLLATE utf16_bin NOT NULL,
  `text` varchar(256) COLLATE utf16_bin NOT NULL,
  `priority` enum('h','m','l') COLLATE utf16_bin NOT NULL,
  `gift_name` varchar(80) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `preference`
--

INSERT INTO `preference` (`id`, `account_id`, `category`, `text`, `priority`, `gift_name`) VALUES
(1, 1, 'bday', 'I want', 'm', 'Phone'),
(2, 1, 'bday', 'I want yellow phone case for Iphone 6s', 'm', 'Phone case'),
(3, 3, 'Birthday', 'I want Apple Watch (black colour)', 'h', 'Apple Watch'),
(4, 3, 'New Year', 'I want pink pillow with uni corn', 'l', 'Pillow'),
(5, 2, 'Birthday', 'Someone please just donate me some money', 'h', 'Money'),
(6, 2, 'New Year', 'I just want some cute stuff like sweets', 'm', 'Sweets'),
(7, 1, 'bday', 'white pro', 'h', 'iphone11'),
(8, 1, 'bday', 'I want some perfume from Chanel', 'h', 'Perfume'),
(9, 1, 'Birthday', 'I want pink gum', 'm', 'Doll'),
(10, 1, 'Birthday', 'One more description', 'h', 'One more gift'),
(12, 1, 'Some celebration', 'Some desc', 'h', 'Some gift'),
(13, 1, 'Birthday', 'Give me please a big planet', 'h', 'Big planet'),
(14, 1, 'Birthday', 'I want black or pink Samsung Phone which has a wireless charge', 'm', 'Samsung Phone'),
(15, 1, 'Birthday', 'i want gray iphone11', 'h', 'iphone11'),
(16, 1, 'Birthday', 'I want pink shoes', 'h', 'Shoes'),
(17, 1, 'Birthday', 'I want 10 pink shoes', 'l', 'Shoes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `preference_id` (`preference_id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id_user` (`account_id_user`),
  ADD KEY `account_id_friend` (`account_id_friend`);

--
-- Indexes for table `preference`
--
ALTER TABLE `preference`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `category` (`category`),
  ADD KEY `category_2` (`category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `preference`
--
ALTER TABLE `preference`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`preference_id`) REFERENCES `preference` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`account_id_user`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`account_id_friend`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `preference`
--
ALTER TABLE `preference`
  ADD CONSTRAINT `preference_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `preference_ibfk_2` FOREIGN KEY (`category`) REFERENCES `category` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

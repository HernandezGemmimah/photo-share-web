-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2022 at 08:20 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `post_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `date_created`) VALUES
(9, 5, 3, 'sample comment', '2020-09-30 15:39:48'),
(10, 5, 2, 'Blank', '2020-09-30 15:40:27'),
(11, 5, 2, 'test', '2020-09-30 15:42:32'),
(12, 6, 4, 'wow', '2020-09-30 16:11:09'),
(13, 9, 9, 'WOW Meow meow', '2022-05-29 14:07:17'),
(14, 9, 8, 'Pasama po', '2022-05-29 14:07:32'),
(15, 9, 6, 'Penge po huli', '2022-05-29 14:07:48'),
(16, 9, 5, 'WOW Anlaki', '2022-05-29 14:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `file_uploads`
--

CREATE TABLE `file_uploads` (
  `id` int(30) NOT NULL,
  `file_path` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_uploaded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_uploads`
--

INSERT INTO `file_uploads` (`id`, `file_path`, `user_id`, `date_uploaded`) VALUES
(20, 'img/uploads/1653799560_IMG_20190908_092754.jpg', 7, '2022-05-29 12:46:38'),
(21, 'img/uploads/1653803400_IMG20180327171524.jpg', 7, '2022-05-29 13:50:13'),
(22, 'img/uploads/1653803460_inscription_quote_motivation_127898_300x168.jpg', 7, '2022-05-29 13:51:18'),
(23, 'img/uploads/1653803760_evasco1.jpg', 8, '2022-05-29 13:56:12'),
(24, 'img/uploads/1653803820_pets2.jpg', 8, '2022-05-29 13:57:05'),
(25, 'img/uploads/1653803880_sky 2.jpg', 8, '2022-05-29 13:58:15'),
(26, 'img/uploads/1653804240_cute-Shih-Tzu-with-mud-on-his-fur-sticks-tongue-out-.jpg', 9, '2022-05-29 14:04:46'),
(27, 'img/uploads/1653804300_download (11).jpg', 9, '2022-05-29 14:05:59'),
(28, 'img/uploads/1653804360_topic-golden-gate-bridge-gettyimages-177770941.jpg', 9, '2022-05-29 14:06:54');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `content` text NOT NULL,
  `file_ids` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `content`, `file_ids`, `date_created`) VALUES
(5, 7, 'Fishy Fishy ChuChu :)', '20', '2022-05-29 12:46:38'),
(6, 7, 'Second photo yeaaa:)', '21', '2022-05-29 13:50:13'),
(7, 7, 'UcanifUtinkUcan:)', '22', '2022-05-29 13:51:18'),
(8, 8, '', '23', '2022-05-29 13:56:12'),
(9, 8, 'cutie >.<', '24', '2022-05-29 13:57:05'),
(10, 8, 'blue sky <3', '25', '2022-05-29 13:58:15'),
(11, 9, 'ARF ARF!', '26', '2022-05-29 14:04:46'),
(12, 9, 'My Fav!', '27', '2022-05-29 14:05:59'),
(13, 9, 'Marinduque to Manila Bridge', '28', '2022-05-29 14:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `lastname` text NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `contact` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `lastname`, `firstname`, `middlename`, `address`, `contact`, `email`, `password`) VALUES
(7, 'Hernandez', 'Gemmimah', 'Sabida', 'Gasan, Marinduque', '09512441667', 'emmbrehernlabdez@gmail.com', '1adbb3178591fd5bb0c248518f39bf6d'),
(8, 'Evasco', 'Christine', 'Pizarra', 'Boac, Marinduque', '09076727220', 'evascochristine19@gmail.com', 'a906449d5769fa7361d7ecc6aa3f6d28'),
(9, 'Leal', 'Mark Jogette Angelo', 'Magturo', 'Nepomuceno Street, Murallon, Boac, Marinduque', '09462504764', 'jetjetleal123@gmail.com', '6ffe2bb7532eb78985dd55c7418148e6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_uploads`
--
ALTER TABLE `file_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `file_uploads`
--
ALTER TABLE `file_uploads`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

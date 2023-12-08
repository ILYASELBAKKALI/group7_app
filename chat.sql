-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 
-- 
-- 
-- 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
--
--

CREATE TABLE `cn_chat` (
  `id_chat` int(11) NOT NULL,
  `message` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_group_chat` varchar(100) NOT NULL,
  `time_chat` varchar(100) NOT NULL,
  `who` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
--  `cn_chat`
--

-- --------------------------------------------------------

--
--  `cn_friend`
--

CREATE TABLE `cn_friend` (
  `id` int(11) NOT NULL,
  `id_friend` int(11) NOT NULL,
  `id_group_chat` varchar(200) NOT NULL,
  `id_user` int(11) NOT NULL,
  `who` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
--  `cn_friend`
--



-- --------------------------------------------------------

--
--  `cn_user`
--

CREATE TABLE `cn_user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `img_profile` varchar(100) NOT NULL,
  `last_online` varchar(50) NOT NULL,
  `information` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- `cn_user`
--


-- Indexes for dumped tables
--

--
--  `cn_chat`
--
ALTER TABLE `cn_chat`
  ADD PRIMARY KEY (`id_chat`);

--
--  `cn_friend`
--
ALTER TABLE `cn_friend`
  ADD PRIMARY KEY (`id`);

--
-- `cn_user`
--
ALTER TABLE `cn_user`
  ADD PRIMARY KEY (`id_user`);

--
-- 
--

--
--  `cn_chat`
--
ALTER TABLE `cn_chat`
  MODIFY `id_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- `cn_friend`
--
ALTER TABLE `cn_friend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- `cn_user`
--
ALTER TABLE `cn_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

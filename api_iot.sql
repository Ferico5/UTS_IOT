-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2024 at 08:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_iot`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `temperature` int(5) NOT NULL,
  `humidity` int(5) NOT NULL,
  `brightness` int(5) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `temperature`, `humidity`, `brightness`, `timestamp`) VALUES
(2, 30, 40, 100, '2024-11-11 15:12:09'),
(3, 24, 40, 1001, '2024-11-11 15:32:39'),
(4, 24, 40, 1001, '2024-11-11 15:32:53'),
(5, 24, 40, 1001, '2024-11-11 15:33:07'),
(6, 24, 40, 1001, '2024-11-11 15:38:53'),
(7, 24, 40, 1001, '2024-11-11 15:51:16'),
(8, 24, 40, 1001, '2024-11-11 16:01:00'),
(9, 24, 40, 1001, '2024-11-11 16:07:09'),
(10, 24, 40, 1001, '2024-11-11 16:16:14'),
(11, 24, 40, 1001, '2024-11-11 16:21:12'),
(12, 24, 40, 1001, '2024-11-11 16:26:48'),
(13, 24, 40, 1001, '2024-11-11 16:53:38'),
(14, 30, 40, 100, '2024-11-12 06:53:24'),
(15, 30, 40, 100, '2024-11-12 06:53:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

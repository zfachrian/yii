-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2021 at 10:05 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zumart`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `category_id` int(10) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `update_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `name`, `price`, `category_id`, `created_at`, `update_at`, `created_by`, `update_by`) VALUES
(3, 'Keyboard Keychron', 275000, 1, 0, 0, 0, 0),
(4, 'Mouse Logitec', 175000, 1, 0, 0, 0, 0),
(5, 'barang baru', 1000000, 1, 20210416, 20210416, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `parent_category` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_category`
--

INSERT INTO `item_category` (`id`, `name`, `parent_category`) VALUES
(2, 'Aksesoris', 1),
(3, 'Casing', 2);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1617421978),
('m130524_201442_init', 1617421989),
('m190124_110200_add_verification_token_column_to_user_table', 1617421989);

-- --------------------------------------------------------

--
-- Table structure for table `statistic`
--

CREATE TABLE `statistic` (
  `Id` int(11) NOT NULL,
  `access_time` datetime NOT NULL,
  `user_ip` varchar(20) NOT NULL,
  `user_host` varchar(50) DEFAULT NULL,
  `path_info` varchar(50) DEFAULT NULL,
  `query_string` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `statistic`
--

INSERT INTO `statistic` (`Id`, `access_time`, `user_ip`, `user_host`, `path_info`, `query_string`) VALUES
(10, '2021-04-16 13:28:26', '::1', 'localhost', 'item/index', ''),
(11, '2021-04-16 13:28:28', '::1', 'localhost', 'item/view', 'id=4'),
(12, '2021-04-16 13:31:07', '::1', 'localhost', 'item/index', ''),
(13, '2021-04-16 13:34:36', '::1', 'localhost', '', ''),
(14, '2021-04-16 13:36:52', '::1', 'localhost', 'item/index', ''),
(15, '2021-04-16 13:39:22', '::1', 'localhost', '', ''),
(16, '2021-04-16 13:40:26', '::1', 'localhost', '', ''),
(17, '2021-04-16 13:40:26', '::1', 'localhost', '', ''),
(18, '2021-04-16 13:40:34', '::1', 'localhost', 'item/view', 'id=5'),
(19, '2021-06-12 17:24:06', '::1', 'localhost', '', ''),
(20, '2021-06-12 17:24:17', '::1', 'localhost', 'item/index', ''),
(21, '2021-06-12 17:24:48', '::1', 'localhost', '', ''),
(22, '2021-06-12 17:32:16', '::1', 'localhost', '', ''),
(23, '2021-06-12 17:32:26', '::1', 'localhost', 'item/index', ''),
(24, '2021-06-12 17:32:27', '::1', 'localhost', '', ''),
(25, '2021-06-12 17:35:55', '::1', 'localhost', '', ''),
(26, '2021-06-12 17:35:56', '::1', 'localhost', 'item/index', ''),
(27, '2021-06-12 17:36:04', '::1', 'localhost', '', ''),
(28, '2021-06-12 17:37:00', '::1', 'localhost', 'item/view', 'id=3');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'zuhad', 'z6_T79QSpdXCl2b704As3Mb4kI0wtw6i', '$2y$13$gobRN3z7yx2KsA228MUwGudmxELGOGLS5x3b8tCrITRCA0eSL5.nS', NULL, 'zuhad@gmail.com', 10, 1617459230, 1617459230, '3IXK8u5Q4NvmVPm-9hUt_0ngTmOJ4Nzw_1617459230');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `statistic`
--
ALTER TABLE `statistic`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `statistic`
--
ALTER TABLE `statistic`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

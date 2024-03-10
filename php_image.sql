-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2024 at 06:45 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_image`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(5) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `size`, `extension`, `path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'image_1710092700.jpg', '0.53', 'jpg', '../4assets/images/image_1710092700.jpg', '2024-03-10 17:45:00', NULL, NULL),
(2, 'image_1710092710.jpg', '3.62', 'jpg', '../4assets/images/image_1710092710.jpg', '2024-03-10 17:45:10', NULL, NULL),
(3, 'image_1710092714.jpg', '1.22', 'jpg', '../4assets/images/image_1710092714.jpg', '2024-03-10 17:45:14', NULL, NULL),
(4, 'image_1710092720.jpg', '1.55', 'jpg', '../4assets/images/image_1710092720.jpg', '2024-03-10 17:45:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `multiple_images`
--

CREATE TABLE `multiple_images` (
  `id` int(5) NOT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL COMMENT 'image size in mb',
  `extension` varchar(100) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `multiple_images`
--

INSERT INTO `multiple_images` (`id`, `image_name`, `size`, `extension`, `path`, `created_at`, `update_at`) VALUES
(1, 'image_1710092666_0.jpg,image_1710092666_1.jpg,image_1710092666_2.jpg,image_1710092666_3.jpg', '1.22,3.62,2.17,1.28', 'jpg,jpg,jpg,jpg', '../4assets/images/image_1710092666_0.jpg,../4assets/images/image_1710092666_1.jpg,../4assets/images/image_1710092666_2.jpg,../4assets/images/image_1710092666_3.jpg', '2024-03-10 17:44:26', NULL),
(2, 'image_1710092674_0.jpg,image_1710092674_1.jpg,image_1710092674_2.jpg', '1.99,1.99,2.58', 'jpg,jpg,jpg', '../4assets/images/image_1710092674_0.jpg,../4assets/images/image_1710092674_1.jpg,../4assets/images/image_1710092674_2.jpg', '2024-03-10 17:44:34', NULL),
(3, 'image_1710092681_0.jpg,image_1710092681_1.jpg', '1.71,0.89', 'jpg,jpg', '../4assets/images/image_1710092681_0.jpg,../4assets/images/image_1710092681_1.jpg', '2024-03-10 17:44:41', NULL),
(4, 'image_1710092689_0.jpg,image_1710092689_1.jpg,image_1710092689_2.jpg', '3.95,0.53,0.47', 'jpg,jpg,jpg', '../4assets/images/image_1710092689_0.jpg,../4assets/images/image_1710092689_1.jpg,../4assets/images/image_1710092689_2.jpg', '2024-03-10 17:44:49', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multiple_images`
--
ALTER TABLE `multiple_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `multiple_images`
--
ALTER TABLE `multiple_images`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

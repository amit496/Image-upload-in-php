-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2024 at 07:02 PM
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
(1, 'image_1710093738_0.jpg,image_1710093738_1.jpg,image_1710093738_2.jpg', '1.55,4.71,2.58', 'jpg,jpg,jpg', '../4assets/images/image_1710093738_0.jpg,../4assets/images/image_1710093738_1.jpg,../4assets/images/image_1710093738_2.jpg', '2024-03-10 18:02:18', NULL),
(2, 'image_1710093744_0.jpg,image_1710093744_1.jpg', '2.52,2.27', 'jpg,jpg', '../4assets/images/image_1710093744_0.jpg,../4assets/images/image_1710093744_1.jpg', '2024-03-10 18:02:24', NULL),
(3, 'image_1710093750_0.jpg,image_1710093750_1.jpg,image_1710093750_2.jpg', '1.16,1.66,2.51', 'jpg,jpg,jpg', '../4assets/images/image_1710093750_0.jpg,../4assets/images/image_1710093750_1.jpg,../4assets/images/image_1710093750_2.jpg', '2024-03-10 18:02:30', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `multiple_images`
--
ALTER TABLE `multiple_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `multiple_images`
--
ALTER TABLE `multiple_images`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

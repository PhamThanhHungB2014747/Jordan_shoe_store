-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2023 at 02:09 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `ct_id` int(10) UNSIGNED NOT NULL,
  `name_contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`ct_id`, `name_contact`, `email`, `notes`, `created_at`, `updated_at`) VALUES
(13, 'Trần Thiện Phúc', 'phucb2014775@student.ctu.edu.vn', 'Cám ơn', '2023-04-15 02:59:00', '2023-04-15 02:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `jd_id` int(10) NOT NULL,
  `name` text NOT NULL,
  `img_1` text NOT NULL,
  `img_2` text NOT NULL,
  `img_3` text NOT NULL,
  `img_4` text NOT NULL,
  `img_5` text NOT NULL,
  `img_6` text NOT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`jd_id`, `name`, `img_1`, `img_2`, `img_3`, `img_4`, `img_5`, `img_6`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Jordan 1 Low (GS) Pale Raspberry 553560-616', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-jordan-1-low-gs-pale-raspberry-553560-616.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/16.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/17.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/18.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/19.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/20.jpg.webp', 3690000, '2023-04-13 03:33:32', '2023-04-13 03:33:32'),
(2, 'Jordan 1 Low (GS) Ponyhair Brown 553560-215', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-jordan-1-low-gs-ponyhair-brown-553560-215.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-jordan-1-low-gs-ponyhair-brown-553560-215-1.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-jordan-1-low-gs-ponyhair-brown-553560-215-2.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-jordan-1-low-gs-ponyhair-brown-553560-215-3.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-jordan-1-low-gs-ponyhair-brown-553560-215-4.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-jordan-1-low-gs-ponyhair-brown-553560-215-5.jpg.webp', 3690000, '2023-04-13 03:40:47', '2023-04-13 03:40:47'),
(3, 'Jordan 1 Low (GS) Black Green 553560-065', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-jordan-1-low-gs-black-green-553560-065.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-jordan-1-low-gs-black-green-553560-065-1.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-jordan-1-low-gs-black-green-553560-065-2.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-jordan-1-low-gs-black-green-553560-065-3.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-jordan-1-low-gs-black-green-553560-065-4.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-jordan-1-low-gs-black-green-553560-065-5.jpg.webp', 3690000, '2023-04-13 03:42:05', '2023-04-13 03:42:05'),
(4, 'Jordan 1 Low Black Green 553558-065', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-jordan-1-low-black-green-553558-065.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-jordan-1-low-black-green-553558-065-1.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-jordan-1-low-black-green-553558-065-2.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-jordan-1-low-black-green-553558-065-3.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-jordan-1-low-black-green-553558-065-4.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-jordan-1-low-black-green-553558-065-5.jpg.webp', 4490000, '2023-04-13 03:43:16', '2023-04-13 03:43:16'),
(5, 'Air Jordan 1 Mid SE CRAFT (GS) Sail DZ4466-102', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-air-jordan-1-mid-ss-gs-cotton-white-dv7012-100-6.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-air-jordan-1-mid-se-craft-gs-sail-dz4466-102.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-air-jordan-1-mid-se-craft-gs-sail-dz4466-102-1.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-air-jordan-1-mid-se-craft-gs-sail-dz4466-102-2.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-air-jordan-1-mid-se-craft-gs-sail-dz4466-102-3.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-air-jordan-1-mid-se-craft-gs-sail-dz4466-102-4.jpg.webp', 5990000, '2023-04-13 03:44:24', '2023-04-13 03:44:24'),
(6, 'Nike Air Jordan 1 High Zoom Comfort 2 Light Orewood Brown DV1307-180', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-nike-air-jordan-1-high-zoom-comfort-2-light-orewood-brown-dv1307-180-7.png.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-nike-air-jordan-1-high-zoom-comfort-2-light-orewood-brown-dv1307-180-6.png.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-nike-air-jordan-1-high-zoom-comfort-2-light-orewood-brown-dv1307-180-5.png.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-nike-air-jordan-1-high-zoom-comfort-2-light-orewood-brown-dv1307-180-4.png.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-nike-air-jordan-1-high-zoom-comfort-2-light-orewood-brown-dv1307-180-3.png.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-nike-air-jordan-1-high-zoom-comfort-2-light-orewood-brown-dv1307-180-2.png.webp', 5990000, '2023-04-13 03:45:26', '2023-04-13 03:45:26'),
(7, 'Nike Air Jordan 1 Mid Lucky Green DQ8426-301', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-nike-air-jordan-1-mid-lucky-green-dq8426-301-7.png.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-nike-air-jordan-1-mid-lucky-green-dq8426-301-6.png.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-nike-air-jordan-1-mid-lucky-green-dq8426-301-5.png.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-nike-air-jordan-1-mid-lucky-green-dq8426-301-4.png.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-nike-air-jordan-1-mid-lucky-green-dq8426-301-3.png.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-nike-air-jordan-1-mid-lucky-green-dq8426-301-2.png.webp', 6690000, '2023-04-13 03:47:06', '2023-04-13 03:47:06'),
(8, 'Nike Jordan 1 Mid SE Orange Suede (GS) DV1336-800', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-nike-jordan-1-mid-se-orange-suede-gs-dv1336-800.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-nike-jordan-1-mid-se-orange-suede-gs-dv1336-800-1.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-nike-jordan-1-mid-se-orange-suede-gs-dv1336-800-6.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-nike-jordan-1-mid-se-orange-suede-gs-dv1336-800-3.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-nike-jordan-1-mid-se-orange-suede-gs-dv1336-800-5.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/04/giay-nike-jordan-1-mid-se-orange-suede-gs-dv1336-800-4.jpg.webp', 9990000, '2023-04-13 03:48:16', '2023-04-13 03:48:16'),
(9, 'Nike Air Jordan 1 Retro High OG Skyline DX0054-805', 'https://sneakerdaily.vn/wp-content/uploads/2023/03/giay-nike-air-jordan-1-retro-high-og-skyline-dx0054-805-13.png.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/03/giay-nike-air-jordan-1-retro-high-og-skyline-dx0054-805-12.png.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/03/giay-nike-air-jordan-1-retro-high-og-skyline-dx0054-805-11.png.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/03/giay-nike-air-jordan-1-retro-high-og-skyline-dx0054-805-10.png.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/03/giay-nike-air-jordan-1-retro-high-og-skyline-dx0054-805-9.png.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/03/giay-nike-air-jordan-1-retro-high-og-skyline-dx0054-805-8.png.webp', 7490000, '2023-04-13 03:49:34', '2023-04-13 03:49:34'),
(10, 'Nike Air Jordan 1 Retro High 85 Black White BQ4422-001', 'https://sneakerdaily.vn/wp-content/uploads/2023/03/giay-nike-air-jordan-1-retro-high-85-black-white-bq4422-001.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/03/giay-nike-air-jordan-1-retro-high-85-black-white-bq4422-001-1.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/03/giay-nike-air-jordan-1-retro-high-85-black-white-bq4422-001-2.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/03/giay-nike-air-jordan-1-retro-high-85-black-white-bq4422-001-3.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/03/giay-nike-air-jordan-1-retro-high-85-black-white-bq4422-001-4.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/03/giay-nike-air-jordan-1-retro-high-85-black-white-bq4422-001-5.jpg.webp', 11990000, '2023-04-13 03:51:01', '2023-04-13 03:51:01'),
(11, 'Nike Air Jordan 1 High Zoom Air CMFT 2 Valentine’s Day (2023) (W) DV1304-106', 'https://sneakerdaily.vn/wp-content/uploads/2023/02/giay-nike-air-jordan-1-high-zoom-air-cmft-2-valentines-day-2023-w-dv1304-106-13.png.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/02/giay-nike-air-jordan-1-high-zoom-air-cmft-2-valentines-day-2023-w-dv1304-106-12.png.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/02/giay-nike-air-jordan-1-high-zoom-air-cmft-2-valentines-day-2023-w-dv1304-106-11.png.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/02/giay-nike-air-jordan-1-high-zoom-air-cmft-2-valentines-day-2023-w-dv1304-106-10.png.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/02/giay-nike-air-jordan-1-high-zoom-air-cmft-2-valentines-day-2023-w-dv1304-106-9.png.webp', 'https://sneakerdaily.vn/wp-content/uploads/2023/02/giay-nike-air-jordan-1-high-zoom-air-cmft-2-valentines-day-2023-w-dv1304-106-8.png.webp', 5990000, '2023-04-13 03:52:14', '2023-04-13 03:52:14'),
(12, 'Air Jordan 1 Retro High OG Light Fusion Red 555088-603', 'https://sneakerdaily.vn/wp-content/uploads/2021/02/Giay-Air-Jordan-1-Retro-High-OG-%E2%80%98Light-Fusion-Red-555088-60-1.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2021/02/air-jordan-1-retro-high-og-light-fusion-red-555088-603-5.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2021/02/air-jordan-1-retro-high-og-light-fusion-red-555088-603-1-1.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2021/02/air-jordan-1-retro-high-og-light-fusion-red-555088-603-2-1.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2021/02/air-jordan-1-retro-high-og-light-fusion-red-555088-603-2.jpg.webp', 'https://sneakerdaily.vn/wp-content/uploads/2021/02/air-jordan-1-retro-high-og-light-fusion-red-555088-603.jpg.webp', 7490000, '2023-04-13 03:53:33', '2023-04-13 03:53:33');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `size_id` int(10) NOT NULL,
  `size_36` int(11) NOT NULL,
  `size_36_5` int(11) NOT NULL,
  `size_37` int(11) NOT NULL,
  `size_37_5` int(11) NOT NULL,
  `size_38` int(11) NOT NULL,
  `size_38_5` int(11) NOT NULL,
  `size_39` int(11) NOT NULL,
  `size_39_5` int(11) NOT NULL,
  `size_40` int(11) NOT NULL,
  `size_40_5` int(11) NOT NULL,
  `size_41` int(11) NOT NULL,
  `size_41_5` int(11) NOT NULL,
  `size_42` int(11) NOT NULL,
  `size_42_5` int(11) NOT NULL,
  `size_43` int(11) NOT NULL,
  `size_43_5` int(11) NOT NULL,
  `size_44` int(11) NOT NULL,
  `size_44_5` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `jd_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`size_id`, `size_36`, `size_36_5`, `size_37`, `size_37_5`, `size_38`, `size_38_5`, `size_39`, `size_39_5`, `size_40`, `size_40_5`, `size_41`, `size_41_5`, `size_42`, `size_42_5`, `size_43`, `size_43_5`, `size_44`, `size_44_5`, `created_at`, `updated_at`, `jd_id`) VALUES
(21, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '2023-04-13 03:33:32', '2023-04-13 03:33:32', 1),
(25, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '2023-04-13 03:40:47', '2023-04-13 03:40:47', 2),
(26, 0, 4, 100, 100, 54, 12, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, '2023-04-13 03:42:05', '2023-04-13 03:42:05', 3),
(27, 0, 0, 0, 0, 0, 0, 0, 0, 12, 12, 14, 14, 14, 14, 14, 14, 0, 0, '2023-04-13 03:43:16', '2023-04-13 03:43:16', 4),
(28, 0, 12, 12, 12, 12, 12, 15, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, '2023-04-13 03:44:24', '2023-04-13 03:44:24', 5),
(29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, '2023-04-13 03:45:26', '2023-04-13 03:45:26', 6),
(30, 0, 0, 0, 0, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-04-13 03:47:06', '2023-04-13 03:47:06', 7),
(31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 4, 0, 0, 0, 0, '2023-04-13 03:48:16', '2023-04-13 03:48:16', 8),
(32, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 5, 5, 0, 0, 0, 0, '2023-04-13 03:49:34', '2023-04-13 03:49:34', 9),
(33, 14, 0, 0, 0, 0, 0, 0, 0, 14, 14, 15, 16, 15, 15, 15, 0, 0, 0, '2023-04-13 03:51:01', '2023-04-13 03:51:01', 10),
(34, 0, 0, 0, 0, 0, 1, 0, 0, 0, 32, 32, 33, 12, 13, 16, 0, 0, 0, '2023-04-13 03:52:14', '2023-04-13 03:52:14', 11),
(35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 3, 3, 0, 0, 0, '2023-04-13 03:53:33', '2023-04-13 03:53:33', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`ct_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`jd_id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD UNIQUE KEY `jd_id` (`jd_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `ct_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `jd_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `size_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`jd_id`) REFERENCES `product` (`jd_id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 09, 2026 at 10:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kifarusokogarden`
--

-- --------------------------------------------------------

--
-- Table structure for table `funiture`
--

CREATE TABLE `funiture` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `material` varchar(100) DEFAULT NULL,
  `dimentions` varchar(100) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `funiture`
--

INSERT INTO `funiture` (`id`, `name`, `brand`, `material`, `dimentions`, `weight`, `color`, `price`, `stock`, `photo`) VALUES
(1, 'chair', 'china version', 'wood', '2x2', 200.00, 'green', 400.00, 34, 'microwave-7353322_1920.png');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(50) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_description` varchar(255) DEFAULT NULL,
  `product_cost` int(50) DEFAULT NULL,
  `product_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_cost`, `product_photo`) VALUES
(20, 'meat', 'high quality', 820, 'pede.jpeg'),
(21, 'rice', 'high quality', 347, 'microwave-7353322_1920.png'),
(22, 'beans', 'low quality', 35, 'appliance-5144884_1920.jpg'),
(23, 'bread', 'high price', 345, 'yogo.jpeg'),
(24, 'lemon', ' available', 363, 'erik-mclean-xK8QreBEjcc-unsplash.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(50) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `phone`) VALUES
(12, 'dennis', 'dennis@gmail.com', '1234', '0704621020'),
(13, 'paul', 'paul@gmail.com', '123498', '07047361020'),
(14, 'victor', 'victor@gmail.com', '1hdw64', '075673687320'),
(15, 'naomi', 'naomi@gmail.com', '1euiw48', '0759348554'),
(16, 'omondi,', 'omondi@gmail.com', '1743866', '0778374059'),
(17, 'dark', 'dark@gmail.com', 'dher5u57', '0138973554'),
(18, 'vini', 'vini@gmail.com', 'fie854386', '014358375'),
(19, 'bruno', 'bruno@gmail.com', 'hjs587gu547', '07833674595'),
(20, 'jones', 'jones@gmail.com', 'fgrjwei75', '07327345845'),
(21, 'edward', 'edward@gmail.com', 'he487fy483', '0734948357'),
(22, 'edward', 'edward@gmail.com', 'he487fy483', '0734948357');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `funiture`
--
ALTER TABLE `funiture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `funiture`
--
ALTER TABLE `funiture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

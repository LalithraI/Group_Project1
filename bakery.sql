-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2024 at 12:49 PM
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
-- Database: `bakery`
--

-- --------------------------------------------------------

--
-- Table structure for table `branchmanager`
--

CREATE TABLE `branchmanager` (
  `BranchmangerID` int(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Contact` varchar(15) NOT NULL,
  `Address` text NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Join_Date` date NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`ID`, `Name`, `Contact`, `Address`, `Email`, `Join_Date`, `Password`) VALUES
(1, 'k', '041', 's', 'kasunshyapabodi@gmail.com', '2024-11-30', '1234'),
(2, 's', '233', '55', 'j@gmail.com', '2024-11-30', '222'),
(3, 't', '520', 'bg', 't@gmail.com', '2024-11-30', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dailybranchorder`
--

CREATE TABLE `dailybranchorder` (
  `BranchID` varchar(10) NOT NULL,
  `BranchName` varchar(15) NOT NULL,
  `Date` date NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dailybranchorder`
--

INSERT INTO `dailybranchorder` (`BranchID`, `BranchName`, `Date`, `Description`) VALUES
('B1', 'Gampaha', '2024-10-15', 'Bread 50'),
('B2', 'Horana', '2024-10-15', 'Bun 20'),
('B3', 'Matara', '2024-11-13', '4 bus');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `preorder`
--

CREATE TABLE `preorder` (
  `preorder_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'kasunshya', 'kasunshyapabodi2002@gmail.com', '$2y$10$ORXIizaGXaOiWQaoUWkSO.6OhQZ2sYucE1TneoxdFl1Zhyh6aUvkm', '2024-11-21 00:03:24'),
(2, 'pabodi', 'pabodi@gmail.com', '$2y$10$J0m6EOt1kzFzZ8LGBXUil.D71E3YAVD0xm75HWA0qhjHxxAdojD7a', '2024-11-21 20:44:48'),
(3, 'suba', 'suba@gmail.com', '$2y$10$aOrOmMzeRLOa7vcuBxYDbuR2i0Np6DgiFnT9jyHV5Mik/6NcmEJ4C', '2024-11-21 23:27:48'),
(4, 'lalith', 'l@gmail.com', '$2y$10$KzUyzI5JKwgIEfCc1IU2YeqncXdGeXcEqGfpPXVyA7rvYR6o3MsBa', '2024-11-21 23:34:37'),
(5, 'pabodi', 'p@gmail.com', '$2y$10$Y9.WazrylEASOVfGbf1RXOtm.O.6DG3y539HOYnqZC9iBXiefaaZK', '2024-11-23 08:53:38'),
(6, 'naa', 'n@gmail.com', '$2y$10$VMuo1uv4C7HdMoAC2WydnengrrquDLWJcna6Cs5G5RI9/tDoeyMMS', '2024-11-23 09:39:09'),
(7, 'kasunshyaaa', 'uoc@gmail.com', '$2y$10$y2O7g1x5IDFqyvqGOu8nOeyTtxHkjbss.uJNhvwdmhX4nCIEssOrW', '2024-11-23 12:16:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `preorder`
--
ALTER TABLE `preorder`
  ADD PRIMARY KEY (`preorder_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cashier`
--
ALTER TABLE `cashier`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `preorder`
--
ALTER TABLE `preorder`
  MODIFY `preorder_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

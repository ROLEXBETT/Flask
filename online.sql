-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2026 at 10:06 AM
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
-- Database: `online`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(50) NOT NULL,
  `emp_name` text NOT NULL,
  `hire_date` date NOT NULL,
  `salary` int(50) NOT NULL,
  `dept_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `hire_date`, `salary`, `dept_id`) VALUES
(1, 'Rolex', '2022-05-10', 95000, 2),
(2, 'bett', '2020-03-08', 78900, 2),
(3, 'John', '2020-03-15', 55000, 1),
(4, 'Alice', '2019-07-22', 72000, 2),
(5, 'Michael', '2021-01-10', 48000, 3),
(6, 'Sarah', '2018-11-05', 65000, 1),
(7, 'David', '2022-06-18', 53000, 2),
(8, 'Emma', '2020-09-30', 61000, 3),
(9, 'Daniel', '2017-04-12', 75000, 1),
(10, 'Olivia', '2023-02-14', 47000, 2),
(11, 'James', '2019-12-01', 69000, 3),
(12, 'Sophia', '2021-08-19', 52000, 1),
(13, 'Benjamin', '2018-05-27', 80000, 2),
(14, 'Isabella', '2020-10-08', 56000, 3),
(15, 'Lucas', '2016-03-21', 90000, 1),
(16, 'Mia', '2022-01-11', 51000, 2),
(17, 'Henry', '2019-06-25', 64000, 3),
(18, 'Amelia', '2021-04-17', 58000, 1),
(19, 'Ethan', '2017-09-09', 73000, 2),
(20, 'Charlotte', '2023-05-03', 45000, 3),
(21, 'Alexander', '2018-12-29', 77000, 1),
(22, 'Ava', '2020-07-07', 62000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `smartphones`
--

CREATE TABLE `smartphones` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `processor` varchar(100) NOT NULL,
  `model` varchar(50) NOT NULL,
  `storage` varchar(50) NOT NULL,
  `ram` varchar(50) NOT NULL,
  `battery` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smartphones`
--

INSERT INTO `smartphones` (`id`, `name`, `brand`, `processor`, `model`, `storage`, `ram`, `battery`, `price`, `stock`, `photo`) VALUES
(1, 'iPhone15', 'apple', '', 'A2090', '128GB', '6GB', '3349mAh', 78900.00, 15, '<FileStorage: \'iphone15.webp\' (\'image/webp\')>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `smartphones`
--
ALTER TABLE `smartphones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `smartphones`
--
ALTER TABLE `smartphones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

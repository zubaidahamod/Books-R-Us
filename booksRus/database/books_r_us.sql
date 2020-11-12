-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 19, 2020 at 06:19 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books_r_us`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` tinyint(4) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `launch_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `customer_name`, `customer_phone`, `launch_id`) VALUES
(1, 'Nikita Adams', '1234567890', 3),
(2, 'Nikita Adams', '1234567890', 4),
(3, 'Nikita Adams', '1234567890', 5),
(4, 'Nikita Adams', '1234567890', 6),
(5, 'Nikita Adams', '1234567890', 7),
(6, 'Nikita Adams', '1234567890', 8),
(7, 'Nikita Adams', '1234567890', 9),
(8, 'Nikita Adams', '1234567890', 10),
(9, 'Ibraaheem Allie', '2345678901', 1),
(10, 'Ibraaheem Allie', '2345678901', 2),
(11, 'Ibraaheem Allie', '2345678901', 3),
(12, 'Ibraaheem Allie', '2345678901', 4),
(13, 'Ibraaheem Allie', '2345678901', 5),
(14, 'Ibraaheem Allie', '2345678901', 6),
(15, 'Ibraaheem Allie', '2345678901', 7),
(16, 'Ibraaheem Allie', '2345678901', 8),
(17, 'Ibraaheem Allie', '2345678901', 9),
(18, 'Ibraaheem Allie', '2345678901', 10),
(19, 'Jaden Stoudt', '3456789012', 1),
(20, 'Jaden Stoudt', '3456789012', 2),
(21, 'Jaden Stoudt', '3456789012', 3),
(22, 'Jaden Stoudt', '3456789012', 4),
(23, 'Jaden Stoudt', '3456789012', 5),
(24, 'Jaden Stoudt', '3456789012', 6),
(25, 'Jaden Stoudt', '3456789012', 7),
(26, 'Jaden Stoudt', '3456789012', 8),
(27, 'Jaden Stoudt', '3456789012', 9),
(28, 'Jaden Stoudt', '3456789012', 10),
(29, 'Saarah Amod', '4567890123', 1),
(30, 'Saarah Amod', '4567890123', 2),
(31, 'Saarah Amod', '4567890123', 3),
(32, 'Saarah Amod', '4567890123', 4),
(33, 'Saarah Amod', '4567890123', 5),
(34, 'Saarah Amod', '4567890123', 6),
(35, 'Saarah Amod', '4567890123', 7),
(36, 'Saarah Amod', '4567890123', 8),
(37, 'Saarah Amod', '4567890123', 9),
(38, 'Saarah Amod', '4567890123', 10),
(39, 'Ethyn Arrow', '5678901234', 1),
(40, 'Ethyn Arrow', '5678901234', 2),
(41, 'Ethyn Arrow', '5678901234', 3),
(42, 'Ethyn Arrow', '5678901234', 4),
(43, 'Ethyn Arrow', '5678901234', 5),
(44, 'Ethyn Arrow', '5678901234', 6),
(45, 'Ethyn Arrow', '5678901234', 7),
(46, 'Ethyn Arrow', '5678901234', 8),
(47, 'Ethyn Arrow', '5678901234', 9),
(48, 'Ethyn Arrow', '5678901234', 10),
(49, 'Farouk Francis', '6789012345', 1),
(50, 'Farouk Francis', '6789012345', 2),
(51, 'Farouk Francis', '6789012345', 3),
(52, 'Farouk Francis', '6789012345', 4),
(53, 'Farouk Francis', '6789012345', 5),
(54, 'Farouk Francis', '6789012345', 6),
(55, 'Farouk Francis', '6789012345', 7),
(56, 'Farouk Francis', '6789012345', 8),
(57, 'Farouk Francis', '6789012345', 9),
(58, 'Farouk Francis', '6789012345', 10),
(59, 'Ethan Adams', '7890123456', 1),
(60, 'Ethan Adams', '7890123456', 2),
(61, 'Ethan Adams', '7890123456', 3),
(62, 'Ethan Adams', '7890123456', 4),
(63, 'Ethan Adams', '7890123456', 5),
(64, 'Zaahirah Hendricks', '8901234567', 6),
(65, 'Zaahirah Hendricks', '8901234567', 7),
(66, 'Zaahirah Hendricks', '8901234567', 8),
(67, 'Zaahirah Hendricks', '8901234567', 9),
(68, 'Zaahirah Hendricks', '8901234567', 10),
(69, 'Farah Jano', '9012345678', 1),
(70, 'Farah Jano', '9012345678', 2),
(71, 'Farah Jano', '9012345678', 3),
(72, 'Farah Jano', '9012345678', 4),
(73, 'Farah Jano', '9012345678', 5),
(74, 'Nikita Adams', '1234567890', 1),
(77, 'Nikita Adams', '1234567890', 2);

-- --------------------------------------------------------

--
-- Table structure for table `booklaunches`
--

CREATE TABLE `booklaunches` (
  `launch_id` tinyint(4) NOT NULL,
  `launch_time` datetime NOT NULL,
  `author` varchar(50) NOT NULL,
  `book_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booklaunches`
--

INSERT INTO `booklaunches` (`launch_id`, `launch_time`, `author`, `book_name`) VALUES
(4, '2020-07-01 10:00:00', 'JK Rowling', 'Harry Potter'),
(5, '2020-07-15 10:00:00', 'Suzanne Collins', 'Hunger Games'),
(6, '2020-08-01 10:30:00', 'Michelle Obama', 'Becoming'),
(7, '2020-08-15 10:30:00', 'Erik Larson', 'The Splendid & The Vile'),
(8, '2020-09-01 11:00:00', 'Sally Rooney', 'Normal People'),
(9, '2020-09-15 11:00:00', 'Alex Michaelides', 'The Silent Patient'),
(10, '2020-10-01 11:30:00', 'James Patterson', 'Kiss The Girls'),
(11, '2020-10-15 11:30:00', 'Paula Hawkins', 'The Girl On The Train'),
(12, '2020-11-01 12:00:00', 'Jeanine Cummins', 'American Dirt'),
(13, '2020-11-15 12:00:00', 'Britt Bennet', 'The Vanishing Half');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD UNIQUE KEY `launch_bookings` (`launch_id`,`customer_phone`);

--
-- Indexes for table `booklaunches`
--
ALTER TABLE `booklaunches`
  ADD PRIMARY KEY (`launch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `booklaunches`
--
ALTER TABLE `booklaunches`
  MODIFY `launch_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

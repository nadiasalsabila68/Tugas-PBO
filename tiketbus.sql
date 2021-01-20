-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2021 at 06:32 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tiketbus`
--

-- --------------------------------------------------------

--
-- Table structure for table `hargaticket`
--

CREATE TABLE `hargaticket` (
  `id` varchar(10) NOT NULL,
  `status_ticket` varchar(100) NOT NULL,
  `class` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hargaticket`
--

INSERT INTO `hargaticket` (`id`, `status_ticket`, `class`, `price`) VALUES
('1', 'penumpang', 'eksekutif', '125000'),
('2', 'penumpang', 'ekonomi', '90000'),
('3', 'penumpang', 'bisnis', '100000');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `id` varchar(10) NOT NULL,
  `name_passenger` varchar(50) NOT NULL,
  `address_passenger` varchar(500) NOT NULL,
  `from_passenger` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `departure‏` varchar(100) NOT NULL,
  `arrived` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL,
  `bus` varchar(100) NOT NULL,
  `total` varchar(50) NOT NULL,
  `jumlah` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` varchar(10) NOT NULL,
  `name_staff` varchar(100) NOT NULL,
  `username_staff` varchar(50) NOT NULL,
  `password_staff` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name_staff`, `username_staff`, `password_staff`) VALUES
('1', 'mohammed', 'admin', 'admin'),
('2', 'okta', 'okta', 'okta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hargaticket`
--
ALTER TABLE `hargaticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

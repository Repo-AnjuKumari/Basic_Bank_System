-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2021 at 03:32 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spark_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountdetails`
--

CREATE TABLE `accountdetails` (
  `sno` int(11) NOT NULL,
  `accID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accountdetails`
--

INSERT INTO `accountdetails` (`sno`, `accID`, `name`, `email`, `balance`) VALUES
(1, 1234, 'swati', 'swati@gmail.com', 2937),
(2, 4211, 'nitin', 'nitin@gmail.com', 5855),
(3, 6789, 'nishant', 'nishant@gmail.com', 880),
(4, 1122, 'jasmin', 'jasmin@gmail.com', 4700),
(5, 5467, 'aman', 'aman@gmail.com', 2000),
(6, 9999, 'sam', 'sam@gmail.com', 6000),
(8, 4321, 'james', 'james@gmail.com', 1510),
(9, 1444, 'dave', 'dave@gmail.com', 8900),
(10, 7777, 'divya', 'divya@gmail.com', 4703),
(11, 2430, 'alice', 'alice@gmail.com', 4340);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `sno` int(11) NOT NULL,
  `payer` text NOT NULL,
  `payerAcc` int(11) NOT NULL,
  `payee` text NOT NULL,
  `payeeAcc` int(11) NOT NULL,
  `amount` double NOT NULL,
  `time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`sno`, `payer`, `payerAcc`, `payee`, `payeeAcc`, `amount`, `time`) VALUES
(3, 'swati', 1234, 'nitin', 4211, 200, '2021-09-20 16:04:22'),
(4, 'jasmin', 1122, 'james', 4321, 300, '2021-09-20 16:20:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountdetails`
--
ALTER TABLE `accountdetails`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountdetails`
--
ALTER TABLE `accountdetails`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

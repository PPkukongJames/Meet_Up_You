-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 08:03 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meet_up_you`
--

-- --------------------------------------------------------

--
-- Table structure for table `mark_time`
--

CREATE TABLE `mark_time` (
  `user_no` int(5) NOT NULL,
  `title` varchar(90) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `meet_up`
--

CREATE TABLE `meet_up` (
  `meet_no` int(5) NOT NULL,
  `user_no` int(5) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `s_Day` int(2) DEFAULT NULL,
  `s_Month` int(2) DEFAULT NULL,
  `s_Year` int(4) DEFAULT NULL,
  `s_hour` int(5) DEFAULT NULL,
  `s_min` int(5) DEFAULT NULL,
  `detail` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `person_no` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meet_up`
--

INSERT INTO `meet_up` (`meet_no`, `user_no`, `title`, `s_Day`, `s_Month`, `s_Year`, `s_hour`, `s_min`, `detail`, `status`, `person_no`) VALUES
(10398, 56401, 'A', 13, 12, 2022, 22, 22, 'testA', 'deny', 89696),
(50650, 58640, 'A', 12, 12, 2022, 5, 55, 'testA', 'accept', 89696),
(59392, 56401, 'AAAA', 1, 1, 2023, 1, 11, 'ABCDE', 'deny', 89696),
(61592, 12160, 'Jimmy', 25, 11, 2022, 20, 0, 'teach', 'deny', 89696),
(63553, 56401, 'A', 4, 3, 2023, 15, 55, 'testA', 'accept', 89696),
(84300, 58640, 'A', 15, 12, 2022, 5, 55, 'testA', 'waiting', 89696),
(86846, 56401, 'AVDQ', 2, 3, 2023, 1, 25, 'ABDSV', 'waiting', 89696),
(90182, 58640, 'A', 8, 12, 2022, 5, 55, 'testA', 'waiting', 89696);

-- --------------------------------------------------------

--
-- Table structure for table `userr`
--

CREATE TABLE `userr` (
  `user_no` int(5) NOT NULL,
  `username` varchar(90) DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `name` varchar(90) DEFAULT NULL,
  `rate` decimal(3,2) DEFAULT NULL,
  `Late` varchar(3) DEFAULT NULL,
  `meet` int(5) DEFAULT NULL,
  `yes` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userr`
--

INSERT INTO `userr` (`user_no`, `username`, `PASSWORD`, `name`, `rate`, `Late`, `meet`, `yes`) VALUES
(12160, 'News', '827ccb0eea8a706c4c34a16891f84e7b', 'eHeaNew', '0.00', '0', 0, 0),
(40184, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '0.00', '0', 0, 0),
(56401, '1111', 'b59c67bf196a4758191e42f76670ceba', '1111', '0.00', '0', 0, 0),
(58640, 'PPkukong', '827ccb0eea8a706c4c34a16891f84e7b', 'Pitpibul_Kukong', '0.00', '0', 0, 0),
(89696, 'Pitpibul', '827ccb0eea8a706c4c34a16891f84e7b', 'OJaMazZo', '0.00', '0', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mark_time`
--
ALTER TABLE `mark_time`
  ADD PRIMARY KEY (`user_no`);

--
-- Indexes for table `meet_up`
--
ALTER TABLE `meet_up`
  ADD PRIMARY KEY (`meet_no`),
  ADD KEY `user_no` (`user_no`),
  ADD KEY `person_no` (`person_no`);

--
-- Indexes for table `userr`
--
ALTER TABLE `userr`
  ADD PRIMARY KEY (`user_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mark_time`
--
ALTER TABLE `mark_time`
  ADD CONSTRAINT `mark_time_ibfk_1` FOREIGN KEY (`user_no`) REFERENCES `userr` (`user_no`);

--
-- Constraints for table `meet_up`
--
ALTER TABLE `meet_up`
  ADD CONSTRAINT `meet_up_ibfk_1` FOREIGN KEY (`user_no`) REFERENCES `userr` (`user_no`),
  ADD CONSTRAINT `meet_up_ibfk_2` FOREIGN KEY (`person_no`) REFERENCES `userr` (`user_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

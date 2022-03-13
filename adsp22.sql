-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2022 at 03:51 PM
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
-- Database: `adsp22`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `offered_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `offered_by`) VALUES
(1, 'PL1', 1),
(2, 'PL2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coursestudents`
--

CREATE TABLE `coursestudents` (
  `id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coursestudents`
--

INSERT INTO `coursestudents` (`id`, `st_id`, `c_id`) VALUES
(1, 3, 1),
(2, 3, 2),
(3, 4, 1),
(4, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `d_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `head` varchar(100) NOT NULL,
  `established` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`d_id`, `name`, `head`, `established`) VALUES
(1, 'CS', 'Dr. Jubair', ''),
(2, 'EEE', '', ''),
(3, 'BBA', '', ''),
(4, 'LAW', '', ''),
(5, 'Physics', '', ''),
(6, 'Math', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `students_info`
--

CREATE TABLE `students_info` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `dept_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students_info`
--

INSERT INTO `students_info` (`id`, `name`, `username`, `password`, `email`, `updated_at`, `created_at`, `dept_id`) VALUES
(1, 'Sadi Pritom', 'sadipritom', 'sadipritom', 'sadipritom@gmail.com', '2022-02-12 00:00:00', '2022-02-12 00:00:00', 2),
(2, 'GM Pranto', 'gm_pranto', '12345678', 'Pranto@gmail.com', '2022-02-17 00:00:00', '2022-02-17 00:00:00', 6),
(3, 'Rahim', 'rahim', '1234', 'rahim@gamil.com', '2022-02-18 00:00:00', '2022-02-18 00:00:00', 1),
(4, 'Karim', 'karim', '1234', 'karim@gmail.com', '2022-02-18 00:00:00', '2022-02-18 00:00:00', 3),
(5, 'Jamal', 'jamal', '1234', 'jamal@gmail.com', '2022-02-18 00:00:00', '2022-02-18 00:00:00', 4),
(6, 'Rahim Ahmed', 'rahim', '12345678', 'rahim@gmail.com', '2022-02-20 11:42:37', '2022-02-20 11:42:37', 1),
(7, 'Rahim Ahmed', 'rahim', '12345678', 'rahim@gmail.com', '2022-02-20 11:43:01', '2022-02-20 11:43:01', 2),
(9, 'joy sharkar', 'joysarkar', '12345678', 'joy@gmail.com', '2022-03-04 16:03:39', '2022-03-04 16:03:39', 2),
(10, 'Robin Bhuyan', 'robin', '12345678', 'robin@gmail.com', '2022-03-09 20:03:52', '2022-03-09 20:03:52', 2),
(12, 'robel bhuyan', 'robel', '81dc9bdb52d04dc20036dbd8313ed055', 'robel2@gmail.com', '2022-03-09 20:06:49', '2022-03-09 20:06:49', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_dept` (`offered_by`);

--
-- Indexes for table `coursestudents`
--
ALTER TABLE `coursestudents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `students_info`
--
ALTER TABLE `students_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_dept_FK` (`dept_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coursestudents`
--
ALTER TABLE `coursestudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students_info`
--
ALTER TABLE `students_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `course_dept` FOREIGN KEY (`offered_by`) REFERENCES `departments` (`d_id`);

--
-- Constraints for table `students_info`
--
ALTER TABLE `students_info`
  ADD CONSTRAINT `student_dept_FK` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`d_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

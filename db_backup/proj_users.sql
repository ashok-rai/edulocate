-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2019 at 05:27 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proj_users`
--

-- --------------------------------------------------------

--
-- Table structure for table `recommend_details`
--

CREATE TABLE `recommend_details` (
  `uid` int(5) NOT NULL,
  `degree` varchar(60) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL,
  `hsc_rank` int(5) DEFAULT NULL,
  `grad_rank` int(5) DEFAULT NULL,
  `gate_rank` int(5) DEFAULT NULL,
  `cat_rank` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recommend_details`
--

INSERT INTO `recommend_details` (`uid`, `degree`, `city`, `hsc_rank`, `grad_rank`, `gate_rank`, `cat_rank`) VALUES
(1, 'mtech', 'kolkata', 3, 2, 3, 0),
(2, 'mtech', 'pune', 3, 2, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `uid` int(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(14) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`uid`, `fname`, `uname`, `pass`, `number`, `email`) VALUES
(1, 'nishank', 'nishanks', '12345', '9869574048', 'nishanksamant@gmail.com'),
(2, 'Raju', 'r_kharat', 'raju123', '9863547855', 'rajuKharat@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `uid` int(6) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(14) NOT NULL,
  `fname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`uid`, `uname`, `pass`, `fname`) VALUES
(1, 'nishanks', '12345', 'nishank'),
(2, 'r_kharat', 'raju123', 'Raju');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wish_id` int(8) NOT NULL,
  `cid` int(8) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `uid` int(8) NOT NULL,
  `uname` varchar(25) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wish_id`, `cid`, `cname`, `uid`, `uname`, `date`, `time`) VALUES
(106, 1, 'Impact College of Engineering and Applied Sciences (ICEAS), Sahakara Nagar, Bangalore', 2, '', '2017-03-20', '22:59:37.000000'),
(107, 38, 'Trinity Academy of Engineering, Kondhwa, Pune', 1, '', '2017-03-21', '12:53:56.000000'),
(108, 12, 'Amity University, Kolkata, Kadampukur, Kolkata', 1, '', '2017-03-21', '16:45:06.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recommend_details`
--
ALTER TABLE `recommend_details`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wish_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recommend_details`
--
ALTER TABLE `recommend_details`
  MODIFY `uid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `uid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wish_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

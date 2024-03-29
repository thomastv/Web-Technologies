-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2021 at 11:03 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`) VALUES
(1, 'Kottayam', 1),
(3, 'Cochin', 1),
(4, 'Trivandrum', 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `sortname` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`) VALUES
(1, 'IND', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `course` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `fname` varchar(250) NOT NULL,
  `mname` varchar(250) NOT NULL,
  `lname` varchar(250) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `gname` varchar(250) NOT NULL,
  `ocp` varchar(50) NOT NULL,
  `income` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `pchal` varchar(250) NOT NULL,
  `nationality` varchar(250) NOT NULL,
  `mobno` varchar(50) NOT NULL,
  `emailid` varchar(250) NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `dist` varchar(50) NOT NULL,
  `padd` text NOT NULL,
  `cadd` text NOT NULL,
  `board` varchar(50) NOT NULL,
  `roll` varchar(50) NOT NULL,
  `pyear` varchar(50) NOT NULL,
  `sub` varchar(250) NOT NULL,
  `marks` bigint(100) NOT NULL,
  `fmarks` bigint(100) NOT NULL,
  `board1` varchar(250) NOT NULL,
  `roll1` varchar(250) NOT NULL,
  `yop1` varchar(250) NOT NULL,
  `sub1` varchar(250) NOT NULL,
  `session` varchar(250) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `marks1` varchar(50) NOT NULL,
  `fmarks1` varchar(50) NOT NULL,
  `regno` varchar(250) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`course`, `subject`, `fname`, `mname`, `lname`, `gender`, `gname`, `ocp`, `income`, `category`, `pchal`, `nationality`, `mobno`, `emailid`, `country`, `state`, `dist`, `padd`, `cadd`, `board`, `roll`, `pyear`, `sub`, `marks`, `fmarks`, `board1`, `roll1`, `yop1`, `sub1`, `session`, `regdate`, `marks1`, `fmarks1`, `regno`, `id`) VALUES
('3', 'TOC+MP+ SS', 'Thomas', 'T', 'Vempeny', 'Male', 'Tommy', '', '500000', 'general', 'no', 'Indian', 'mob. number', 'mail@gmail.com', '1', '1', 'Kottayam', 'Address', 'Address', 'cbse', '', '', 'ToC', 0, 0, '', '', '', '', '2021', '2021-05-24 08:58:56', '', '', '1739488986', 5);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session` varchar(50) NOT NULL,
  `postingdate` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`, `postingdate`, `status`) VALUES
(1, '2021', '2021-05-05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(1, 'Kerala', 1),
(2, 'Tamil Nadu', 1),
(3, 'Karnataka', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subid` int(11) NOT NULL,
  `cshort` varchar(50) NOT NULL,
  `cfull` varchar(250) NOT NULL,
  `sub1` varchar(250) NOT NULL,
  `sub2` varchar(250) NOT NULL,
  `sub3` varchar(250) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subid`, `cshort`, `cfull`, `sub1`, `sub2`, `sub3`, `dt_created`) VALUES
(2, '3', 'Semester 5', 'ToC', 'MP', 'SS', '2021-05-06 22:36:01'),
(3, '4', 'Semester 6', 'Web Technologies', '', '', '2021-05-06 22:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `cid` int(11) NOT NULL,
  `cshort` varchar(250) NOT NULL,
  `cfull` varchar(250) NOT NULL,
  `cdate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`cid`, `cshort`, `cfull`, `cdate`) VALUES
(3, 'S5', 'Semester 5', '06-05-2021'),
(4, 'S6', 'Semester 6', '06-05-2021');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `loginid` varchar(250) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `loginid`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subid`);

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_course`
--
ALTER TABLE `tbl_course`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

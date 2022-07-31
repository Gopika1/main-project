-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2022 at 04:14 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutor_finder`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`, `name`) VALUES
(1, 'admin@gmail.com', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `assginment`
--

CREATE TABLE `assginment` (
  `allocation_id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `standard` varchar(225) NOT NULL,
  `tid` int(11) NOT NULL,
  `pdate` varchar(200) NOT NULL,
  `sdate` varchar(225) NOT NULL,
  `uploadfile` varchar(225) NOT NULL,
  `pid` int(11) NOT NULL,
  `assignment` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assginment`
--

INSERT INTO `assginment` (`allocation_id`, `subject`, `standard`, `tid`, `pdate`, `sdate`, `uploadfile`, `pid`, `assignment`) VALUES
(1, '2', '11', 6, '2022-06-15', '2022-06-15', 'download.png', 4, ''),
(29, 'Physics', '11', 9, '2022-06-24', '2022-06-25', 'Acknowledgment.pdf', 4, 'plagiarismdetector.pdf'),
(35, 'Chemistry', '12', 8, '2022-07-16', '2022-07-18', 'task uploaded.txt', 1, 'Output web.docx'),
(36, 'Botany', '12', 15, '2022-07-17', '2022-07-19', 'botany assignment.txt', 1, 'task uploaded.txt'),
(37, 'Botany', '11', 15, '2022-07-17', '2022-07-19', 'botany11.txt', 0, ''),
(38, 'Physics', '10', 9, '2022-07-26', '2022-07-27', 'physics10assign.txt', 0, ''),
(39, 'Maths', '10', 18, '2022-07-26', '2022-07-27', 'mathsassignment.txt', 8, 'mths10task.txt');

-- --------------------------------------------------------

--
-- Table structure for table `assign_tutor`
--

CREATE TABLE `assign_tutor` (
  `aid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `tutor_name` varchar(25) NOT NULL,
  `subject` varchar(25) NOT NULL,
  `stream` varchar(20) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `standard` int(10) NOT NULL,
  `start_time` time(6) NOT NULL,
  `end_time` time(6) NOT NULL,
  `class_date` date NOT NULL,
  `link` varchar(250) NOT NULL,
  `Meeting_no` bigint(30) NOT NULL,
  `Meeting_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assign_tutor`
--

INSERT INTO `assign_tutor` (`aid`, `tid`, `tutor_name`, `subject`, `stream`, `qualification`, `standard`, `start_time`, `end_time`, `class_date`, `link`, `Meeting_no`, `Meeting_password`) VALUES
(23, 18, 'Ajay Yadav', 'Maths', 'STATE', 'Msc Maths', 10, '21:00:00.000000', '22:00:00.000000', '2022-07-26', '', 0, ''),
(24, 9, 'abcd', 'physics', 'State', 'sdf', 10, '09:15:00.000000', '10:15:00.000000', '2022-07-27', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `standard` varchar(225) NOT NULL,
  `time` varchar(225) NOT NULL,
  `date` varchar(200) NOT NULL,
  `link` varchar(225) NOT NULL,
  `tid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `subject`, `standard`, `time`, `date`, `link`, `tid`) VALUES
(1, '4', '12', '5.00 am', '2022-06-12', 'meet.google.com/jeb-bzsu-gmr', 6),
(2, '', '', '', '', '', 9),
(3, '', '', '', '', '', 9),
(4, '', '', '', '', '', 9);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `parent_name` varchar(50) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `feedback` varchar(225) NOT NULL,
  `tid` int(11) NOT NULL,
  `tutor_name` varchar(25) NOT NULL,
  `childname` varchar(25) NOT NULL,
  `standard` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `pid`, `parent_name`, `subject`, `feedback`, `tid`, `tutor_name`, `childname`, `standard`) VALUES
(13, 4, 'Gopika gopinathan', 'Chemistry', 'Good', 8, 'Jithin', 'Ammu', 10),
(15, 1, 'Shabna Sara Jithin', 'chemistry', 'Good Explanation', 8, 'Jithin Babu', 'Manu', 11),
(16, 6, 'gg-user', 'Chemistry', 'Good', 15, 'gg', 'gg-child', 11),
(17, 1, 'Shabna Sara Jithin', 'chemistry', 'Good', 8, 'Jithin Babu', 'Manu', 11),
(18, 8, 'Jessy', 'Maths', 'Good Teaching', 18, 'Ajay Yadav', 'Jenessa Jiju', 10);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `nid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `notes` varchar(225) NOT NULL,
  `file_type` varchar(50) NOT NULL,
  `standard` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`nid`, `tid`, `subject`, `notes`, `file_type`, `standard`) VALUES
(13, 6, 'social science', 'ncknc', '', '10'),
(15, 8, 'Chemistry', 'Notes.txt', 'txt', '12'),
(16, 15, 'Botany', 'plot.log', 'log', '12'),
(18, 9, 'physics', 'physics.txt', 'txt', '12'),
(19, 9, 'Physics', 'physics10.txt', 'txt', '10'),
(20, 18, 'Maths', 'mathsnotes.txt', 'txt', '10');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `pid` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `address` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `childname` varchar(225) NOT NULL,
  `standard` varchar(225) NOT NULL,
  `stream` varchar(20) NOT NULL,
  `gender` varchar(225) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`pid`, `name`, `email`, `password`, `address`, `phone`, `childname`, `standard`, `stream`, `gender`, `status`) VALUES
(1, 'Shabna Sara Jithin', 'sara@gmail.com', '1234', 'kollam', '7654234566', 'Manu', '12', 'ICSE', 'Male', 'approved'),
(4, 'Gopika gopinathan', 'gopinathangopika94@gmail.com', 'Gopika@14', 'Choorakkuttiyil', '9495687529', 'Ammu', '10', 'STATE', 'Female', 'approved'),
(6, 'gg-user', 'gg-user@gg.com', 'GG@@gg99', 'GG@@gg99', '8880000008', 'gg-child', '11', 'STATE', 'Male', 'approved'),
(7, 'Gayathri Mohan', 'gayathri@gmail.com', 'Gayathri@14', 'Krishnavilasam palakkad', '9945326712', 'Athulya', '11', 'STATE', 'Female', 'pending'),
(8, 'Jessy', 'jessy@gmail.com', 'Jessy@14', 'Enchanikuzhiyil', '9234567890', 'Jenessa Jiju', '10', 'STATE', 'Female', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `standard` int(5) NOT NULL,
  `subject` varchar(25) NOT NULL,
  `amount` int(11) NOT NULL,
  `pay_id` varchar(255) NOT NULL,
  `pay_status` varchar(255) NOT NULL,
  `date_added` date DEFAULT current_timestamp(),
  `pid` int(11) NOT NULL,
  `parent_name` varchar(50) NOT NULL,
  `tid` int(11) NOT NULL,
  `tutor_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `name`, `standard`, `subject`, `amount`, `pay_id`, `pay_status`, `date_added`, `pid`, `parent_name`, `tid`, `tutor_name`) VALUES
(8, 'Ammu', 10, 'chemistry', 120, 'pay_JtDgUWIffrVUgt', 'Success', '2022-07-13', 4, 'Gopika gopinathan', 8, 'Jithin Babu'),
(9, 'Ammu', 10, 'physics', 400, 'pay_JtElKxp76Y90jD', 'Success', '2022-07-14', 4, 'Gopika gopinathan', 9, 'abcd'),
(15, 'gg-child', 11, 'Botany', 1234, 'pay_JujfUD8YekEkDu', 'Success', '2022-07-18', 6, 'gg-user', 15, 'gg'),
(16, 'Manu', 12, 'Botany', 1234, 'pay_JvBSPSAaeL1h4d', 'Success', '2022-07-19', 1, 'Shabna Sara Jithin', 15, 'gg'),
(17, 'Manu', 12, 'physics', 400, 'pay_JvELjdGFX0MQsB', 'Success', '2022-07-19', 1, 'Shabna Sara Jithin', 9, 'abcd'),
(18, 'Jenessa Jiju', 10, 'Maths', 200, 'pay_Jzvj1b2bKdaOXP', 'Success', '2022-07-31', 8, 'Jessy', 18, 'Ajay Yadav'),
(21, 'gg-child', 11, 'chemistry', 120, 'pay_JztQ6qUZ0fO6c0', 'pending', '2022-06-29', 6, 'gg-user', 8, 'Jithin Babu');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `rid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `childname` varchar(225) NOT NULL,
  `standard` varchar(225) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `status` varchar(225) NOT NULL,
  `request_date` varchar(225) NOT NULL,
  `tid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`rid`, `pid`, `childname`, `standard`, `subject`, `status`, `request_date`, `tid`) VALUES
(15, 4, 'Ammu', '10', 'physics', 'approved', '2022-06-25', 9),
(18, 4, 'Ammu', '10', 'chemistry', 'approved', '2022-07-01', 8),
(24, 6, 'gg-child', '11', 'Botany', 'approved', '2022-07-16', 15),
(27, 1, 'Manu', '12', 'chemistry', 'approved', '2022-07-16', 8),
(28, 1, 'Manu', '12', 'Botany', 'approved', '2022-07-17', 15),
(29, 1, 'Manu', '12', 'physics', 'approved', '2022-07-19', 9),
(30, 8, 'Jenessa Jiju', '10', 'Maths', 'approved', '2022-07-26', 18),
(31, 8, 'Jenessa Jiju', '10', 'physics', 'approved', '2022-07-26', 9),
(32, 6, 'gg-child', '11', 'chemistry', 'approved', '2022-07-31', 8);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sid` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `standard` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sid`, `subject`, `standard`) VALUES
(2, 'Chemistry', '12'),
(4, 'Physics', '11'),
(6, 'social science', '10'),
(9, 'Botany', '11'),
(11, 'Maths', '10');

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE `tutor` (
  `tid` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `address` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `qua_certificate` varchar(200) NOT NULL,
  `experience` varchar(225) NOT NULL,
  `exp_certificate` varchar(250) NOT NULL,
  `stream` varchar(25) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `image` tinytext NOT NULL,
  `gender` varchar(225) NOT NULL,
  `status` varchar(200) NOT NULL,
  `rate` text NOT NULL,
  `assign` varchar(25) NOT NULL DEFAULT 'unassigned'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`tid`, `name`, `email`, `password`, `address`, `phone`, `qualification`, `qua_certificate`, `experience`, `exp_certificate`, `stream`, `subject`, `image`, `gender`, `status`, `rate`, `assign`) VALUES
(6, 'achu', 'achu@gmail.com', '456', 'uygtuy', '7654234566', 'degree', '', '2 years', '0', 'ICSE', 'Social Science', 'tutor achu.jpg', 'gjh', 'approved', '300', 'unassigned'),
(8, 'Jithin Babu', 'achu@gmail.com', '567', 'kollam', '7654234566', 'Msc Chemistry', '', '2 years', '0', 'ICSE', 'chemistry', 'tutor.jpg', 'Male', 'approved', '120', 'unassigned'),
(9, 'abcd', 'abcd@gmail.com', 'abcd', 'bngh', '789678567', 'sdf', '', '1', '0', 'State', 'physics', 'abcd.jpg', 'sdf', 'approved', '400', 'assigned'),
(15, 'gg', 'gg@gg.com', 'GG@@gg99', 'GG@@gg99', '9999999999', 'MCA', 'gayathri tutor.jpg', '2 yer in mca clgg', 'Ajay tutor.jpg', 'STATE', 'Botany', 'gayathri tutor.jpg', 'Male', 'approved', '1234', 'unassigned'),
(17, 'Subhasree ', 'Subha@gmail.com', 'Subha@14', 'vidhuvilasam Chalappally', '9956873412', 'Mtech', 'qualification cer.txt', '6 year in IHRD', 'exp certificate.txt', 'STATE', 'Physics', 'subha.jpg', 'Female', 'pending', '250', 'unassigned'),
(18, 'Ajay Yadav', 'ajay@gmail.com', 'Ajay@14', 'Mukkolackal House', '9912345688', 'Msc Maths', 'mscmathsqual.txt', '1 year in bhishopmoor college', 'experiencemaths.txt', 'STATE', 'Maths', 'Ajay tutor.jpg', 'Male', 'approved', '200', 'assigned');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_subject`
--

CREATE TABLE `tutor_subject` (
  `tsid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `standard` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor_subject`
--

INSERT INTO `tutor_subject` (`tsid`, `tid`, `subject`, `standard`) VALUES
(1, 6, '2', '11'),
(2, 6, '11', ''),
(3, 6, '11', ''),
(4, 6, '11', ''),
(5, 6, '2', '11');

-- --------------------------------------------------------

--
-- Table structure for table `upload_video`
--

CREATE TABLE `upload_video` (
  `video_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upload_video`
--

INSERT INTO `upload_video` (`video_id`, `name`, `tid`) VALUES
(11, 'chemistry-10.mp4', 8),
(12, 'Botany.mp4', 15),
(13, 'Class - 10th, Maths Chapter 1, INTRODUCTION (Real Numbers) NCERT CBSE.mp4', 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `assginment`
--
ALTER TABLE `assginment`
  ADD PRIMARY KEY (`allocation_id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `assign_tutor`
--
ALTER TABLE `assign_tutor`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`nid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `tutor_subject`
--
ALTER TABLE `tutor_subject`
  ADD PRIMARY KEY (`tsid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `upload_video`
--
ALTER TABLE `upload_video`
  ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assginment`
--
ALTER TABLE `assginment`
  MODIFY `allocation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `assign_tutor`
--
ALTER TABLE `assign_tutor`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tutor`
--
ALTER TABLE `tutor`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tutor_subject`
--
ALTER TABLE `tutor_subject`
  MODIFY `tsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `upload_video`
--
ALTER TABLE `upload_video`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `parent` (`pid`);

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `tutor` (`tid`);

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `parent` (`pid`);

--
-- Constraints for table `tutor_subject`
--
ALTER TABLE `tutor_subject`
  ADD CONSTRAINT `tutor_subject_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `tutor` (`tid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

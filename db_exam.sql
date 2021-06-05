-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05 يونيو 2021 الساعة 05:29
-- إصدار الخادم: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_exam`
--

-- --------------------------------------------------------

--
-- بنية الجدول `course`
--

CREATE TABLE `course` (
  `c_c_id` int(11) NOT NULL,
  `course_id` int(3) NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 NOT NULL,
  `value` varchar(10) CHARACTER SET utf8 NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 COLLATE=gb2312_bin;

--
-- إرجاع أو استيراد بيانات الجدول `course`
--

INSERT INTO `course` (`c_c_id`, `course_id`, `name`, `value`, `datetime`) VALUES
(1, 1, 'soft1', 'software1', '2021-06-08 02:01:35'),
(2, 2, 'os', 'operating', '2021-03-08 02:03:15'),
(2, 3, 'opens', 'opensource', '2021-03-08 02:04:05');

-- --------------------------------------------------------

--
-- بنية الجدول `examschedule`
--

CREATE TABLE `examschedule` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(15) COLLATE gb2312_bin NOT NULL,
  `regis_last_date` date NOT NULL,
  `exam_date` date NOT NULL,
  `exam_time` varchar(20) COLLATE gb2312_bin NOT NULL,
  `exam_duration` varchar(10) COLLATE gb2312_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 COLLATE=gb2312_bin;

--
-- إرجاع أو استيراد بيانات الجدول `examschedule`
--

INSERT INTO `examschedule` (`course_id`, `course_name`, `regis_last_date`, `exam_date`, `exam_time`, `exam_duration`) VALUES
(1, 'open source', '2021-03-24', '2021-04-25', '11:00AM To 02:00PM', '3:00 Hours'),
(2, 'operating syste', '2021-03-24', '2021-04-28', '11:00AM To 02:00PM', '3:00 Hours'),
(3, 'software', '2021-03-24', '2021-04-30', '11:00AM To 02:00PM', '3:00 Hours'),
(4, 'modeling', '2021-03-24', '2021-04-30', '3:35', '2');

-- --------------------------------------------------------

--
-- بنية الجدول `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminUser` varchar(50) NOT NULL,
  `adminPass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminPass`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70'),
(2, '', ''),
(3, 'Alamgir_JUST', '8226a3c238456069bbec8b760a8babaa'),
(4, 'fetian', 'fetian2020');

-- --------------------------------------------------------

--
-- بنية الجدول `tbl_ans`
--

CREATE TABLE `tbl_ans` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `rightAns` int(11) NOT NULL DEFAULT '0',
  `ans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- بنية الجدول `tbl_ques`
--

CREATE TABLE `tbl_ques` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `ques` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- بنية الجدول `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `tbl_user`
--

INSERT INTO `tbl_user` (`userid`, `name`, `username`, `password`, `email`, `status`) VALUES
(5, 'Md. Alamgir Hossain', 'alamgir_JUST', '8226a3c238456069bbec8b760a8babaa', 'alamgir.cse14.just@gmail.com', 0),
(7, 'Alamgir Hossain', 'alamgir_csejust', '8226a3c238456069bbec8b760a8babaa', 'malamgirhossain1996@gmail.com', 0),
(8, 'ftyan', 'ftyan', 'a54397c591da79d670a42177977a009e', 'ftyan@gmail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `value` (`value`),
  ADD KEY `c_c_id` (`c_c_id`);

--
-- Indexes for table `examschedule`
--
ALTER TABLE `examschedule`
  ADD UNIQUE KEY `course_id` (`course_id`),
  ADD UNIQUE KEY `course_name` (`course_name`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 29, 2021 at 03:24 AM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vijayaveethi`
--

-- --------------------------------------------------------

--
-- Table structure for table `course_changes`
--

CREATE TABLE `course_changes` (
  `id` int(15) NOT NULL,
  `stud_id` varchar(15) DEFAULT NULL,
  `veri_id` int(15) DEFAULT '0',
  `stud_name` varchar(40) DEFAULT NULL,
  `course` varchar(25) DEFAULT NULL,
  `regn` varchar(15) DEFAULT NULL,
  `vtcCode` varchar(20) DEFAULT NULL,
  `newcourse` varchar(25) DEFAULT NULL,
  `newregn` varchar(15) DEFAULT NULL,
  `rec_through` varchar(25) DEFAULT NULL,
  `mail_date` varchar(25) DEFAULT NULL,
  `iss_raise` varchar(20) DEFAULT NULL,
  `done_by` varchar(20) DEFAULT NULL,
  `iss_status` int(11) DEFAULT '1',
  `remarks` varchar(15) DEFAULT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `batch` varchar(11) DEFAULT NULL,
  `batch_no` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course_changes`
--

INSERT INTO `course_changes` (`id`, `stud_id`, `veri_id`, `stud_name`, `course`, `regn`, `vtcCode`, `newcourse`, `newregn`, `rec_through`, `mail_date`, `iss_raise`, `done_by`, `iss_status`, `remarks`, `post_date`, `batch`, `batch_no`) VALUES
(1, '9', 0, 'Frabi Francis', 'SSLC MAIN LEVEL', '4500', 'TEST001', 'PLUSM', '5500', NULL, NULL, NULL, 'TEST001', 0, NULL, '2021-11-25 11:06:18', 'F20', 0),
(2, '9', 0, 'Frabi Francis', 'PLUS TWO MAIN LEVEL', '5500', 'TEST001', 'PLUSP', '5500', NULL, NULL, NULL, 'TEST001', 1, NULL, '2021-11-25 11:10:02', 'F20', 0),
(3, '1', 0, 'testname2', 'SSLC PRELIMINARY LEVEL', '4500', 'TEST001', 'SSLCM', '4500', NULL, NULL, NULL, 'TEST001', 1, NULL, '2021-11-26 08:26:25', 'F20', 0),
(4, '9', 0, 'Frabi Francis', 'PLUS TWO PRELIMINARY LEVE', '5500', 'TEST001', 'PLUSM', '5500', NULL, NULL, NULL, 'TEST001', 1, NULL, '2021-11-26 08:26:54', 'F20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `evt_id` bigint(20) NOT NULL,
  `evt_start` datetime NOT NULL,
  `evt_end` datetime NOT NULL,
  `evt_text` text NOT NULL,
  `evt_color` varchar(7) NOT NULL,
  `subject` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`evt_id`, `evt_start`, `evt_end`, `evt_text`, `evt_color`, `subject`) VALUES
(1, '2021-12-02 00:00:00', '2021-12-02 00:00:00', 'test ', '#e4edff', 'subject'),
(2, '2021-12-02 00:00:00', '2021-12-02 00:00:00', '', '#e4edff', 'kjbjhghj'),
(3, '2021-12-10 00:00:00', '2021-12-10 00:00:00', '1', '#e4edff', 'test gk'),
(4, '2021-12-09 00:00:00', '2021-12-09 00:00:00', 'General English', '#d0d6e2', 'ENGLISH'),
(5, '2021-12-15 00:00:00', '2021-12-15 00:00:00', 'General Knowledge, current affairs and renaissance in Kerala', '#e4edff', 'XAXZX');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `category_no` varchar(100) DEFAULT NULL,
  `post_name` varchar(300) DEFAULT NULL,
  `vacancy_in` varchar(300) DEFAULT NULL,
  `eligibility` longtext,
  `last_date` date DEFAULT NULL,
  `done_by` varchar(25) DEFAULT NULL,
  `done_on` timestamp NULL DEFAULT NULL,
  `status` enum('O','C') NOT NULL DEFAULT 'O'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `category_no`, `post_name`, `vacancy_in`, `eligibility`, `last_date`, `done_by`, `done_on`, `status`) VALUES
(1, '505/2021 ', 'AGRICULTURAL OFFICER', 'KERALA LAND USE BOARD ', 'BSc (Agricultural Science) OR BSc (Horticulture) ', '2021-12-17', 'admin', NULL, 'C'),
(2, 'Test001', 'Programmer', 'TestJob', 'TestDegree', '2022-01-28', 'admin', '2021-12-15 13:06:44', 'O'),
(3, '508/2021', 'AGRICULTURAL OFFICER', 'KERALA LAND USE BOARD', 'Degree', '2022-01-08', 'admin', '2021-12-18 16:57:37', 'O');

-- --------------------------------------------------------

--
-- Table structure for table `payment_count`
--

CREATE TABLE `payment_count` (
  `id` int(11) NOT NULL,
  `vtc` varchar(100) DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_count`
--

INSERT INTO `payment_count` (`id`, `vtc`, `count`) VALUES
(1, 'TEST001', 55);

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `pgid` int(11) NOT NULL,
  `category` enum('PSC','UPSC','SSC','BANKEXAM') NOT NULL,
  `level` int(2) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `fee` float NOT NULL,
  `status` enum('A','I','') NOT NULL,
  `qualification` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`pgid`, `category`, `level`, `code`, `name`, `fee`, `status`, `qualification`) VALUES
(1, 'PSC', 1, 'SSLCP', 'SSLC PRELIMINARY LEVEL', 4500, 'A', 'SSLC,PLUSTWO,DEGREE'),
(2, 'PSC', 2, 'SSLCM', 'SSLC MAIN LEVEL', 4500, 'A', 'SSLC,PLUSTWO,DEGREE'),
(3, 'PSC', 3, 'PLUSP', 'PLUS TWO PRELIMINARY LEVEL', 5500, 'A', 'PLUSTWO,DEGREE'),
(4, 'PSC', 4, 'PLUSM', 'PLUS TWO MAIN LEVEL', 5500, 'A', 'PLUSTWO,DEGREE'),
(5, 'PSC', 5, 'DGP', 'DEGREE PRELIMINARY LEVEL', 6500, 'A', 'DEGREE'),
(6, 'PSC', 5, 'DGM', 'DEGREE MAIN LEVEL', 6500, 'A', 'DEGREE');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qid` int(11) NOT NULL,
  `pgid` int(11) DEFAULT NULL,
  `sbjid` int(11) DEFAULT NULL,
  `smid` int(11) NOT NULL,
  `medium` enum('MAL','ENG') DEFAULT NULL,
  `level` tinyint(1) DEFAULT NULL,
  `question` longtext NOT NULL,
  `option1` varchar(100) NOT NULL,
  `option2` varchar(100) NOT NULL,
  `option3` varchar(100) NOT NULL,
  `option4` varchar(100) NOT NULL,
  `anskey` enum('option1','option2','option3','option4') NOT NULL,
  `status` enum('A','I') NOT NULL DEFAULT 'A',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `pgid`, `sbjid`, `smid`, `medium`, `level`, `question`, `option1`, `option2`, `option3`, `option4`, `anskey`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, NULL, NULL, 'dsfsdsadas', 'ssadsad', 'asdasd', 'asdasdasd', 'dfgdfgdf', 'option1', 'A', '2021-11-23 14:20:44', NULL),
(2, 1, 1, 0, 'MAL', NULL, 'dsfsdsadas', 'ssadsad', 'asdasd', 'asdasdasd', 'dfgdfgdf', 'option1', 'A', '2021-11-23 14:25:00', NULL),
(3, 3, 11, 0, 'MAL', NULL, 'dsfsdsadas', 'ssadsad', 'asdasd', 'asdasdasd', 'dfgdfgdf', 'option1', 'A', '2021-11-23 15:05:36', NULL),
(4, 2, 6, 0, 'ENG', NULL, 'dsfsdsadas', 'ssadsad', 'asdasd', 'asdasdasd', 'dfgdfgdf', 'option1', 'A', '2021-12-01 10:23:14', NULL),
(5, 1, 1, 0, 'MAL', NULL, 'Which country topped the Asian Power Index for 2021?', 'China', 'India', 'Japan', 'USA', 'option1', 'A', '2021-12-17 01:02:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stud_id`
--

CREATE TABLE `stud_id` (
  `id` int(11) NOT NULL,
  `serial_no` int(15) DEFAULT NULL,
  `batch` varchar(11) DEFAULT NULL,
  `batch_no` varchar(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stud_id`
--

INSERT INTO `stud_id` (`id`, `serial_no`, `batch`, `batch_no`) VALUES
(1, 14, 'F20', '0');

-- --------------------------------------------------------

--
-- Table structure for table `stud_veri`
--

CREATE TABLE `stud_veri` (
  `id` int(11) NOT NULL,
  `stud_id` varchar(15) NOT NULL,
  `veri_id` varchar(15) NOT NULL,
  `verified_by` varchar(15) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `batch` varchar(15) NOT NULL,
  `batch_no` varchar(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stud_veri`
--

INSERT INTO `stud_veri` (`id`, `stud_id`, `veri_id`, `verified_by`, `post_date`, `batch`, `batch_no`) VALUES
(1, '26', '1', '', '2021-12-26 16:48:44', 'F20', '0'),
(2, '27', '2', '', '2021-12-26 16:48:50', 'F20', '0'),
(3, '30', '3', '', '2021-12-26 16:49:59', 'F20', '0'),
(4, '2', '4', '', '2021-12-26 16:52:54', 'F20', '0'),
(5, '25', '5', '', '2021-12-26 17:11:13', 'F20', '0'),
(6, '25', '6', '', '2021-12-26 17:11:21', 'F20', '0'),
(7, '25', '7', '', '2021-12-26 17:11:21', 'F20', '0'),
(8, '25', '8', '', '2021-12-26 17:11:21', 'F20', '0'),
(9, '27', '9', '', '2021-12-26 17:12:45', 'F20', '0'),
(10, '29', '10', '', '2021-12-26 17:12:50', 'F20', '0'),
(11, '27', '11', '', '2021-12-26 17:13:32', 'F20', '0'),
(12, '23', '12', '', '2021-12-26 17:16:07', 'F20', '0'),
(13, '1', '13', '', '2021-12-26 17:17:05', 'F20', '0'),
(14, '10', '14', '', '2021-12-26 17:17:40', 'F20', '0');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `sbjid` bigint(11) UNSIGNED NOT NULL,
  `pgid` bigint(11) DEFAULT NULL,
  `subname` varchar(255) DEFAULT NULL,
  `status` enum('A','I') DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`sbjid`, `pgid`, `subname`, `status`) VALUES
(1, 1, 'General Knowledge, current affairs and renaissance in Kerala', 'A'),
(2, 1, 'General Science (Natural Science)', 'A'),
(3, 1, 'General Science (Physical Science)', 'A'),
(4, 1, 'Simple Arithmetic', 'A'),
(5, 1, 'Mental ability', 'A'),
(6, 2, 'General Knowledge', 'A'),
(7, 2, 'Quantitative Aptitude (Simple Arithmetic)', 'A'),
(8, 2, 'Mental ability / Logical Reasoning', 'A'),
(9, 2, 'General English', 'A'),
(10, 3, 'Kerala History', 'A'),
(11, 3, 'Indian History', 'A'),
(12, 3, 'World History', 'A'),
(13, 3, 'Geography', 'A'),
(14, 3, 'Indian Geography', 'A'),
(15, 3, 'Kerala Geography', 'A'),
(16, 3, 'Economics and Civics', 'A'),
(17, 3, 'Indian Constitution', 'A'),
(18, 3, 'Biology \r\n', 'A'),
(19, 3, 'Physics and Chemistry', 'A'),
(20, 3, 'Computer Science', 'A'),
(21, 3, 'Arts, Sports & Literature', 'A'),
(22, 3, 'Simple Arithmetic', 'A'),
(23, 3, 'Mental ability', 'A'),
(24, 3, 'English', 'A'),
(25, 3, 'Malayalam', 'A'),
(26, 4, 'Part I:General Knowledge and Current affairs', 'A'),
(27, 4, 'Part II: General English', 'A'),
(28, 4, 'Vocabulary', 'A'),
(29, 4, 'Simple Arithmetic', 'A'),
(30, 4, 'Mental ability', 'A'),
(31, 5, 'Kerala History', 'A'),
(32, 5, 'Indian History', 'A'),
(33, 5, 'World History', 'A'),
(34, 5, 'Geography', 'A'),
(35, 5, 'Indian Geography', 'A'),
(36, 5, 'Kerala Geography', 'A'),
(37, 5, 'Economics and Civics', 'A'),
(38, 5, 'Indian Constitution', 'A'),
(39, 5, 'Arts, Sports & Literature', 'A'),
(40, 5, 'Computer Science', 'A'),
(41, 5, 'Science and Technology', 'A'),
(42, 5, 'Simple Arithmetic', 'A'),
(43, 5, 'Mental ability', 'A'),
(44, 5, 'English', 'A'),
(45, 5, 'Malayalam', 'A'),
(46, 6, 'Quantitative Aptitude', 'A'),
(47, 6, 'Mental ability and Test of Reasoning', 'A'),
(48, 6, 'General Science', 'A'),
(49, 6, 'Current Affairs', 'A'),
(50, 6, 'Facts about India', 'A'),
(51, 6, 'Facts about Kerala', 'A'),
(52, 6, 'Renaissance of Kerala', 'A'),
(53, 6, 'Constitution of India and Civil Rights', 'A'),
(54, 6, 'General English', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `users1`
--

CREATE TABLE `users1` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password1` varchar(100) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `usertype` enum('S','A','RTX') DEFAULT NULL COMMENT '''S- Super Admin, A - Admin, RTX-Rutronix''',
  `remember_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users1`
--

INSERT INTO `users1` (`user_id`, `username`, `password1`, `password`, `firstname`, `lastname`, `usertype`, `remember_token`) VALUES
(1, 'admin', '123456', '$2y$10$9nFYGoyzoLMjPV/n/suj6eGcNbtq4HnUjQzs1PmzWf8UyyQ.TKacS', '', '', 'A', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtc`
--

CREATE TABLE `vtc` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `passwd` varchar(25) DEFAULT NULL,
  `vtc_name` varchar(255) DEFAULT NULL,
  `vtc_place` varchar(50) DEFAULT NULL,
  `vtc_district` varchar(50) DEFAULT NULL,
  `ph_no` varchar(20) DEFAULT NULL,
  `mob` varchar(11) DEFAULT NULL,
  `vtc_address` text,
  `status` enum('A','B','P') DEFAULT 'P',
  `dir_name` varchar(20) DEFAULT NULL,
  `dir_address` varchar(500) DEFAULT NULL,
  `pincode` varchar(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `sub_div` varchar(100) DEFAULT NULL,
  `vtc_code` varchar(11) DEFAULT NULL,
  `dir_image` varchar(50) DEFAULT NULL,
  `vtc_logo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtc`
--

INSERT INTO `vtc` (`id`, `email`, `passwd`, `vtc_name`, `vtc_place`, `vtc_district`, `ph_no`, `mob`, `vtc_address`, `status`, `dir_name`, `dir_address`, `pincode`, `created_on`, `sub_div`, `vtc_code`, `dir_image`, `vtc_logo`) VALUES
(1, 'testvtc@gmail.com', '123456', 'Test VTC', 'Eastfort', 'Trivandrum', '04702345678', '9876543201', 'ABCD Garden TVM', 'A', 'test dir', 'ABCD Garden TVM, Pin:908765', '695012', '2021-11-12', 'Panchayath', 'TEST001', '', '505133479576.jpg'),
(2, 'remya.groware@gmail.com', 'fw!cxzaO', 'Test VTC', 'Eastfort', 'Trivandrum', '7878787787', '4671233', 'ABCD Garden TVM, Pin:908765', 'A', 'test dir', 'ABCD Garden TVM, Pin:908765', '695012', '2021-11-12', 'Panchayath', NULL, NULL, NULL),
(3, 'info@skillskool.com', NULL, 'Skillskool Tvm', 'Eastfort', 'Trivandrum', '9987601234', '4671233', 'Ayurveda college Jn, Thampanoor', 'P', 'Director Name1', 'Kannanallur, Kollam', '695012', '2021-11-12', 'Corporation', NULL, NULL, NULL),
(4, 'info@oxford.com', NULL, 'Oxford Computers', 'Ashramam', 'Kollam', '9987604321', '7821534', 'QS Road, Chinnakada', 'P', 'Director Name2', 'Kottarakkara, Kollam', '691502', '2021-11-12', 'Corporation', NULL, NULL, NULL),
(5, 'info@skillskool.com', NULL, 'Skillskool Tvm', 'Eastfort', 'Trivandrum', '9987601234', '4671233', 'Ayurveda college Jn, Thampanoor', 'A', 'Director Name3', 'Kannanallur, Kollam', '695012', '2021-11-12', 'Corporation', NULL, NULL, NULL),
(6, 'info@oxford.com', NULL, 'Oxford Computers', 'Ashramam', 'Kollam', '9987604321', '7821534', 'QS Road, Chinnakada', 'B', 'Director Name4', 'Kottarakkara, Kollam', '691502', '2021-11-12', 'Corporation', NULL, NULL, NULL),
(7, 'info@edu', NULL, 'Skill Skool TVM', 'Kesavasasd', 'Trivandrum', '9605474059', '223333', 'Ayurveda college Jn, Thampanoor', 'P', 'Frabi ', 'Kesaadasapuram ', '4', '2021-11-12', 'Corporation', NULL, NULL, NULL),
(9, 'test1@gmail.com', NULL, 'name', 'Attingal', 'Trivandrum', '7243243434', '7243243434', 'SXA', 'P', 'test name', 'ASSAa', '695013', '2021-11-17', 'municipality', 'VTC002', NULL, NULL),
(10, 'frabifrancis.groware@gmail.com', NULL, 'ExcelPSC', 'Pattom', 'Trivandrum', '1', '8769999992', 'Bldng No323 Plaza Building', 'P', 'Frabi', 'Hn 8 sphalya nagr', '695001', '2021-11-26', 'municipality', 'T001', NULL, NULL),
(11, 'frabifrancis.groware@gmail.com', NULL, 'TESTFRABI12121', 'Pattom', 'Alappuzha', '04712551521', '9605474069', 'VTC1', 'P', 'Frabi', 'test address', '695001', '2021-12-01', 'panchayath', 'T002', NULL, NULL),
(12, 'frabifrancis.groware@gmail.com', NULL, 'TESTFRABI171221', 'Paruthippara', 'Trivandrum', '04712551521', '7025241471', 'Paruthipara', 'P', 'Frabi', 'Malarvadi Saphalya Nagar', '695004', '2021-12-17', 'municipality', 'F001', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtc_contact`
--

CREATE TABLE `vtc_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `email` longtext NOT NULL,
  `phone` int(10) NOT NULL,
  `subject` longtext,
  `message` longtext NOT NULL,
  `done_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtc_enquiry`
--

CREATE TABLE `vtc_enquiry` (
  `id` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `vtc_code` varchar(10) NOT NULL,
  `course` varchar(35) NOT NULL,
  `mode` varchar(25) NOT NULL,
  `done_on` datetime NOT NULL,
  `remarks` longtext NOT NULL,
  `status` enum('P','A','NI','NA','J') NOT NULL DEFAULT 'P'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtc_enquiry`
--

INSERT INTO `vtc_enquiry` (`id`, `student_name`, `email`, `mobile`, `vtc_code`, `course`, `mode`, `done_on`, `remarks`, `status`) VALUES
(7, 'Shibin', 'salja.ami@gmail.com', '2147483647', 'TEST001', 'PSC Plus-Two Level Preliminary Exam', 'website', '2021-11-29 06:09:47', '', 'P'),
(8, 'Shibin', 'salja.ami@gmail.com', '909090909', 'TEST001', 'PSC Plus-Two Level Main Exam', 'website', '2021-11-29 06:11:00', '', 'P'),
(9, 'Rejoy Peter', 'gte.in@outlook.com', '2147483647', 'TEST001', 'PSC Degree Level Preliminary Exam', 'website', '2021-11-29 06:29:13', '', 'NI'),
(10, 'Shibin', 'salja.ami@gmail.com', '7356826973', 'TEST001', 'PSC Degree Level Preliminary Exam', 'website', '2021-11-29 06:32:20', '', 'A'),
(11, 'Shibin', 'salja.ami@gmail.com', '7356826970', 'TEST001', 'PSC Degree Level Preliminary Exam', 'website', '2021-12-16 06:46:50', 'She may join after further call', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `vtc_faculty`
--

CREATE TABLE `vtc_faculty` (
  `id` int(11) NOT NULL,
  `vtc_code` varchar(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `gender` enum('m','f') DEFAULT NULL,
  `qualification` varchar(20) DEFAULT NULL,
  `subjects` longtext,
  `photo` varchar(50) DEFAULT NULL,
  `tot_status` enum('A','NA') DEFAULT NULL,
  `certificate` varchar(200) DEFAULT NULL,
  `status` enum('A','B') NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtc_faculty`
--

INSERT INTO `vtc_faculty` (`id`, `vtc_code`, `name`, `email`, `phone`, `address`, `join_date`, `gender`, `qualification`, `subjects`, `photo`, `tot_status`, `certificate`, `status`) VALUES
(3, 'TEST001', 'Frabi Francis', 'frabifrancis.groware@gmail.com', 2147483647, 'test address', '2019-08-22', '', 'PG', 'english,maths', '291793935667.PNG', 'NA', NULL, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `vtc_students`
--

CREATE TABLE `vtc_students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `ph_num` varchar(20) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `vtc_center` varchar(100) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `course` varchar(11) DEFAULT NULL,
  `step` int(2) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `id_no` varchar(100) DEFAULT NULL,
  `batch` varchar(11) DEFAULT NULL,
  `regn_fee` varchar(11) DEFAULT NULL,
  `is_course_change` tinyint(1) NOT NULL DEFAULT '0',
  `pay_option` varchar(11) DEFAULT NULL,
  `paymentID` varchar(100) DEFAULT NULL,
  `payproof` varchar(100) DEFAULT NULL,
  `proof_date` date DEFAULT NULL,
  `veri_id` int(11) DEFAULT '0',
  `admin_verify` enum('yes','no') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtc_students`
--

INSERT INTO `vtc_students` (`id`, `name`, `email`, `password`, `ph_num`, `gender`, `vtc_center`, `qualification`, `category`, `address`, `course`, `step`, `created_on`, `img`, `id_no`, `batch`, `regn_fee`, `is_course_change`, `pay_option`, `paymentID`, `payproof`, `proof_date`, `veri_id`, `admin_verify`) VALUES
(1, 'testname2', 'testvtc@gmail.com', 'INO#G%&c', '4344433242', 'female', 'TEST001', 'sslc', 'PSC', NULL, 'SSLCM', 2, '1970-01-01 00:00:00', NULL, '', 'B20', '4500', 1, NULL, NULL, NULL, NULL, 13, 'yes'),
(2, 'test name23', 'testvtc@gmail.com', 'bRuiX$Kr', '5434435545', 'female', 'TEST001', 'sslc', 'PSC', NULL, 'SSLCM', 2, '2021-11-10 00:00:00', NULL, 'TT001SS003', 'C20', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(9, 'Frabi Francis', 'frabifrancis@gmail.com', 'JGTIiv!8', '7025241471', 'female', 'TEST001', 'DEGREE', 'PSC', NULL, 'PLUSM', 2, NULL, NULL, 'SSLCP001', 'F20', '5500', 1, NULL, NULL, NULL, NULL, 0, NULL),
(10, 'frabi', 'frabifrancis@gmail.com', NULL, '1111111111', 'female', NULL, 'DEGREE', 'PSC', NULL, 'SSLCP', 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 14, 'yes'),
(11, 'test remya', 'test1@gmail.com', NULL, '7878787878', 'male', NULL, 'SSLC', 'PSC', NULL, 'SSLCM', 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(12, 'testname2', 'test1@gmail.com', NULL, '9889889768', 'female', NULL, 'SSLC', 'PSC', NULL, 'SSLCP', 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(13, 'test', 'remyasri31@gmail.com', NULL, '2344343432', 'female', NULL, 'PLUSTWO', 'PSC', NULL, 'SSLCM', 2, NULL, NULL, 'TT001SS004', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(18, 'test', 'remya.groware@gmail.com', NULL, '9898989893', 'female', NULL, 'PLUSTWO', 'PSC', NULL, 'SSLCM', 2, '2021-12-17 00:00:00', NULL, 'TT001SS004', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(19, 'test', 'test@gmail.com', NULL, '9898989893', 'male', NULL, 'sslc', 'PSC', NULL, 'sslc_m', 1, '2021-12-17 00:00:00', NULL, '001', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(20, 'Test', 'testatc1@gmail.com', NULL, '9090909090', 'male', NULL, 'SSLC', 'PSC', NULL, 'SSLCP', 1, NULL, NULL, 'SSLCP001', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(21, 'testname', 'remya.groware@gmail.com', NULL, '9898989893', 'male', NULL, 'PLUSTWO', 'PSC', NULL, 'SSLCP', 2, '2021-12-17 00:00:00', NULL, 'SSLCP001', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(22, 'test name33', 'remyasri31@gmail.com', NULL, '9898989893', 'male', NULL, 'DEGREE', 'PSC', NULL, 'PLUSP', 2, '2021-12-17 00:00:00', NULL, 'PLUSP001', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(23, 'testname', 'remya.groware@gmail.com', NULL, '9898989893', 'male', NULL, 'DEGREE', 'PSC', NULL, 'PLUSP', 2, '2021-12-17 00:00:00', NULL, 'PLUSP001', NULL, NULL, 0, NULL, NULL, NULL, NULL, 12, 'yes'),
(24, 'test name4455', 'remya.groware@gmail.com', NULL, '9898989893', 'male', NULL, 'DEGREE', 'PSC', NULL, 'PLUSP', 2, '2021-12-17 00:00:00', NULL, 'PLUSP001', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(25, 'test', 'tina.ctdc@gmail.com', NULL, '9090909090', 'female', NULL, 'SSLC', 'PSC', NULL, 'SSLCP', 1, '2021-12-17 00:00:00', NULL, 'SSLCP001', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(26, 'Athena Roshan', 'tina.ctdc@gmail.com', NULL, '9090909093', 'female', 'TEST001', 'SSLC', 'PSC', NULL, 'SSLCP', 1, '2021-12-17 00:00:00', NULL, 'SSLCP001', NULL, NULL, 0, 'Group', 'TEST0012153', '297183125293.pdf', '2021-12-23', 0, NULL),
(27, 'testname', 'testvtc@gmail.com', NULL, '9898989893', 'female', 'TEST001', 'SSLC', 'PSC', NULL, 'SSLCP', 1, '2021-12-18 00:00:00', NULL, 'SSLCP001', NULL, NULL, 0, 'Group', 'TEST0012154', '297183125293.pdf', '2021-12-23', 11, 'yes'),
(28, 'test remya', 'remya.groware@gmail.com', NULL, '9898989893', 'female', 'TEST001', 'SSLC', 'PSC', NULL, 'SSLCM', 2, '2021-12-18 00:00:00', NULL, 'TT001SS004', NULL, NULL, 0, 'Group', 'TEST0012154', '349415179959.pdf', '2021-12-23', 0, NULL),
(29, 'test', 'test1@gmail.com', NULL, '9898989893', 'male', 'TEST001', 'SSLC', 'PSC', NULL, 'SSLCP', 1, '2021-12-18 00:00:00', NULL, 'SSLCP001', NULL, NULL, 0, 'Group', 'TEST0012154', '962031605064.pdf', '2021-12-23', 0, NULL),
(30, 'test', 'remya.groware@gmail.com', NULL, '9898989893', 'female', 'TEST001', 'SSLC', 'PSC', NULL, 'SSLCP', 1, '2021-12-19 00:00:00', NULL, 'SSLCP00002', NULL, NULL, 0, 'Group', 'TEST0012154', NULL, NULL, 0, NULL),
(31, 'test remya', 'remyasri31@gmail.com', NULL, '9898989893', 'female', 'TEST001', 'PLUSTWO', 'PSC', NULL, 'SSLCP', 1, '2021-12-21 00:00:00', NULL, 'SSLCP001', NULL, NULL, 0, 'Group', 'TEST0012154', NULL, NULL, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course_changes`
--
ALTER TABLE `course_changes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`evt_id`),
  ADD KEY `evt_start` (`evt_start`),
  ADD KEY `evt_end` (`evt_end`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_count`
--
ALTER TABLE `payment_count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`pgid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `stud_id`
--
ALTER TABLE `stud_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stud_veri`
--
ALTER TABLE `stud_veri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`sbjid`);

--
-- Indexes for table `users1`
--
ALTER TABLE `users1`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vtc`
--
ALTER TABLE `vtc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtc_contact`
--
ALTER TABLE `vtc_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtc_enquiry`
--
ALTER TABLE `vtc_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtc_faculty`
--
ALTER TABLE `vtc_faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vtc_students`
--
ALTER TABLE `vtc_students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_changes`
--
ALTER TABLE `course_changes`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `evt_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_count`
--
ALTER TABLE `payment_count`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `pgid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stud_id`
--
ALTER TABLE `stud_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stud_veri`
--
ALTER TABLE `stud_veri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `sbjid` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `users1`
--
ALTER TABLE `users1`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vtc`
--
ALTER TABLE `vtc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vtc_contact`
--
ALTER TABLE `vtc_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vtc_enquiry`
--
ALTER TABLE `vtc_enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vtc_faculty`
--
ALTER TABLE `vtc_faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vtc_students`
--
ALTER TABLE `vtc_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

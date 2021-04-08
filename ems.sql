-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2020 at 01:09 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `attendees`
--

CREATE TABLE `attendees` (
  `attendee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `pre_status` text NOT NULL,
  `act_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendees`
--

INSERT INTO `attendees` (`attendee_id`, `user_id`, `meeting_id`, `pre_status`, `act_status`) VALUES
(53, 10002, 87, 'Attending', 'Attended'),
(54, 10002, 88, 'Awaiting confirmation', 'Unknown'),
(58, 10004, 87, 'Attending', 'Attended'),
(64, 10002, 119, 'Awaiting confirmation', 'Unknown'),
(65, 10002, 120, '', 'Unknown'),
(67, 10002, 121, 'Awaiting confirmation', 'Unknown'),
(68, 10011, 121, 'Attending', 'Unknown'),
(69, 10002, 122, 'Awaiting confirmation', 'Unknown'),
(70, 10003, 122, 'Awaiting confirmation', 'Unknown'),
(71, 10001, 122, 'Awaiting confirmation', 'Unknown'),
(72, 10001, 124, 'Awaiting confirmation', 'Unknown'),
(73, 10002, 124, 'Awaiting confirmation', 'Unknown'),
(74, 10003, 124, 'Awaiting confirmation', 'Unknown');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `fileName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `meeting_id`, `fileName`) VALUES
(16, 87, 'Sample_letter.pdf'),
(17, 119, 'Sample_letter.pdf'),
(18, 121, 'Sample_letter.pdf'),
(19, 123, 'Sample_letter.pdf'),
(20, 124, 'Sample_letter.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `description` text NOT NULL,
  `meeting_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `meeting_id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `from_date` text NOT NULL,
  `to_date` text NOT NULL,
  `start_time` text NOT NULL,
  `end_time` text NOT NULL,
  `venue` varchar(255) NOT NULL,
  `agenda` varchar(255) NOT NULL,
  `status` text NOT NULL,
  `seen` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meeting`
--

INSERT INTO `meeting` (`meeting_id`, `title`, `from_date`, `to_date`, `start_time`, `end_time`, `venue`, `agenda`, `status`, `seen`) VALUES
(87, 'Issue on Kanban Efficiency', '06/04/2020', '06/11/2020', '9:45 am', '12:45 pm', 'Brunei Meeting Room', '- To address the efficiency of Kanban method for workflow and changes made to workflow', 'Completed', 1),
(88, 'Meeting on Placement of Furniture', '06/11/2020', '06/11/2020', '9:00 am', '11:00 am', 'Mangavasta Hall', 'To get more customers', 'Upcoming', 1),
(90, 'Program for Industrial Trainees', '06/11/2020', '06/11/2020', '10:00 am', '12:00 pm', 'Meeting Room 8', 'To discuss on schedule for PROTEGE trainees in each department as well as assignment of e-Learning courses', 'Upcoming', 1),
(119, 'Testing Meeting', '06/18/2020', '06/19/2020', '10:55 am', '10:55 pm', 'Test Room', 'sadasdasd', 'Completed', 1),
(120, 'sasdas', '06/18/2020', '06/18/2020', '8:00 am', '5:00 pm', 'dasdsaddd', 'dsdsd', 'Completed', 1),
(121, 'Annual Grand Meeting', '06/17/2020', '06/18/2020', '8:00 am', '5:00 pm', 'asdasd', 'asdasd', 'Completed', 1),
(122, 'testing', '06/18/2020', '06/18/2020', '8:00 am', '5:00 pm', 'asdsad', 'asdasdasd sadasd', 'Completed', 1),
(123, 'test meeting', '06/24/2020', '06/26/2020', '8:00 am', '5:00 pm', 'sadas', 'dasdasd', 'Upcoming', 0),
(124, 'test again', '06/24/2020', '06/26/2020', '8:00 am', '5:00 pm', 'dsadasd', 'dfgfdver wef ewd ewfef', 'Upcoming', 0);

-- --------------------------------------------------------

--
-- Table structure for table `minutes`
--

CREATE TABLE `minutes` (
  `minute_id` int(11) NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `prepared_by` varchar(255) NOT NULL,
  `other_notes` varchar(255) NOT NULL,
  `status` text NOT NULL,
  `verified_by` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `minutes`
--

INSERT INTO `minutes` (`minute_id`, `meeting_id`, `prepared_by`, `other_notes`, `status`, `verified_by`) VALUES
(2, 87, '10001', 'Going towards better efficiency. No specific department to execute such improvements..', 'Approved', '10002'),
(6, 119, '10001', '', 'Pending Approval', ''),
(7, 121, '10001', '', 'Pending Approval', ''),
(8, 122, '10001', 'ljjijioij', 'Pending Approval', ''),
(10, 120, '10001', 'TEST', 'Approved', '10002');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_number` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`user_id`, `first_name`, `last_name`, `email`, `mobile_number`, `role`, `password`) VALUES
(10001, 'Jack', 'Black', 'jack.black@gmail.com', '019-2837443', 'Secretary', '123'),
(10002, 'Harry', 'Styles', 'mbyronbenjamin@gmail.com', '018-297394', 'Chairman', '123'),
(10003, 'Kaarthiyani', 'Angamuthu', 'kaarthiyani@live.com', '012-2937284', 'Member', '123'),
(10004, 'Simon', 'Sinek', 'simonsinek@yahoo.com', '013254865', 'Member', '123'),
(10011, 'Sophie', 'Turner', 'sophie_turner@gmail.com', '012568935', 'Member', '123'),
(10012, 'Joe', 'Jonas', 'joe_jonas@gmail.com', '013568947', 'Chairman', '123');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `task_id` int(11) NOT NULL,
  `meeting_id` int(10) NOT NULL,
  `description` text NOT NULL,
  `action_by` text NOT NULL,
  `status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`task_id`, `meeting_id`, `description`, `action_by`, `status`) VALUES
(10014, 87, 'Configure VPN settings to enable certain websites for cookies', '10002', 'Pending'),
(10015, 87, 'Set P2P network for internal use', '10002', 'Completed'),
(10029, 87, 'Review past technical documents for future improvement ideas', '10002', 'Completed'),
(10032, 87, 'Conduct a test run for newly implemented software', '10002', 'Completed'),
(10033, 87, 'Remove unnecessary notes on the Kanban board', '10004', 'Pending'),
(10034, 87, 'Do a briefing for other departments on software downtime and training session schedule', '10004', 'Pending'),
(10035, 87, 'Review internal documentation for projects made by Kanban method', '10002', 'Completed'),
(10036, 87, 'Construct a handbook for Kanban workflow guidelines', '10004', 'Pending'),
(10041, 119, 'fsevweed', '10002', 'Pending'),
(10042, 119, 'sadasd', '10002', 'Pending'),
(10043, 121, 'dasdasd', '10011', 'Completed'),
(10044, 121, 'sdasdasdasd', '10002', 'Pending'),
(10045, 122, 'sadsad', '10002', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `attendees`
--
ALTER TABLE `attendees`
  ADD PRIMARY KEY (`attendee_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`meeting_id`);

--
-- Indexes for table `minutes`
--
ALTER TABLE `minutes`
  ADD PRIMARY KEY (`minute_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`task_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendees`
--
ALTER TABLE `attendees`
  MODIFY `attendee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `meeting`
--
ALTER TABLE `meeting`
  MODIFY `meeting_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `minutes`
--
ALTER TABLE `minutes`
  MODIFY `minute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10013;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10046;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

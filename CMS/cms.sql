-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2019 at 02:49 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `aid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`aid`, `name`, `date`, `status`) VALUES
(41, 'Ashwini ', 'Sat Oct 27 22:12:36 PDT 2018', 'Present'),
(42, 'Ashesh Pant', 'Sat Oct 27 22:13:22 PDT 2018', 'Absent'),
(43, 'Ashma Pant', 'Sat Oct 27 22:13:39 PDT 2018', 'Absent'),
(44, 'Merysna ', 'Sat Oct 27 22:15:48 PDT 2018', 'Absent'),
(45, 'Astha ', 'Sat Oct 27 22:16:07 PDT 2018', 'Present'),
(46, 'Shreeya', 'Sat Oct 27 22:16:19 PDT 2018', 'Present'),
(47, 'Sandesh', 'Sat Oct 27 22:16:38 PDT 2018', 'Absent'),
(48, 'Aayush ', 'Sat Oct 27 22:16:55 PDT 2018', 'Present'),
(49, 'Aki ', 'Sat Oct 27 22:17:14 PDT 2018', 'Present'),
(50, 'Rahul', 'Sat Oct 27 22:17:27 PDT 2018', 'Present'),
(51, 'Aashutosh', 'Sat Oct 27 22:17:46 PDT 2018', 'Present'),
(52, 'Avantika', 'Sat Oct 27 22:18:18 PDT 2018', 'Present'),
(53, 'Sarita', 'Sat Oct 27 22:18:45 PDT 2018', 'Present'),
(54, 'Sangita', 'Sat Oct 27 22:18:57 PDT 2018', 'Present'),
(55, 'Swopnil', 'Sat Oct 27 22:19:11 PDT 2018', 'Present'),
(56, 'Shivang', 'Sat Oct 27 22:19:33 PDT 2018', 'Present'),
(57, 'Avina', 'Sat Oct 27 22:19:46 PDT 2018', 'Present'),
(58, 'Ressa', 'Sat Oct 27 22:20:03 PDT 2018', 'Present'),
(59, 'Bikram', 'Sat Oct 27 22:20:14 PDT 2018', 'Present'),
(60, 'Srishti', 'Sat Oct 27 22:20:28 PDT 2018', 'Present'),
(61, 'Chepal', 'Sat Oct 27 22:20:50 PDT 2018', 'Present'),
(62, 'Rozeen', 'Sat Oct 27 22:21:01 PDT 2018', 'Present'),
(63, 'Saurav', 'Sat Oct 27 22:21:24 PDT 2018', 'Present'),
(64, 'Angad ', 'Sat Oct 27 22:21:37 PDT 2018', 'Present'),
(65, 'Aachal', 'Sat Oct 27 22:21:48 PDT 2018', 'Present'),
(66, 'Trishala', 'Sat Oct 27 22:22:08 PDT 2018', 'Present'),
(67, 'Kareena', 'Sat Oct 27 22:22:27 PDT 2018', 'Present'),
(68, 'Pragya', 'Sat Oct 27 22:22:37 PDT 2018', 'Present'),
(69, 'Selina', 'Sat Oct 27 22:22:47 PDT 2018', 'Present'),
(70, 'Rhea', 'Sat Oct 27 22:22:59 PDT 2018', 'Present'),
(71, 'Ruchi', 'Sat Oct 27 22:23:30 PDT 2018', 'Present'),
(72, 'Dibek', 'Sat Oct 27 22:23:41 PDT 2018', 'Present'),
(73, 'Maskey', 'Sat Oct 27 22:23:50 PDT 2018', 'Present'),
(74, 'Ashish', 'Sat Oct 27 22:24:08 PDT 2018', 'Present'),
(75, 'Sreena', 'Sat Oct 27 22:24:28 PDT 2018', 'Present'),
(76, 'Reshma', 'Sat Oct 27 22:24:47 PDT 2018', 'Present'),
(77, 'Nisha', 'Sat Oct 27 22:25:09 PDT 2018', 'Present'),
(78, 'Milan', 'Sat Oct 27 22:25:23 PDT 2018', 'Present'),
(79, 'Anuj', 'Sat Oct 27 22:25:41 PDT 2018', 'Present'),
(80, 'Subendra', 'Sat Oct 27 22:25:50 PDT 2018', 'Present'),
(81, 'Rasila', 'Sat Oct 27 22:26:04 PDT 2018', 'Present'),
(82, 'Darsana', 'Sat Oct 27 22:26:14 PDT 2018', 'Present'),
(83, 'Khiman', 'Sat Oct 27 22:26:57 PDT 2018', 'Present'),
(84, 'Manish', 'Sat Oct 27 22:27:29 PDT 2018', 'Present'),
(85, 'Anjil', 'Sat Oct 27 22:27:43 PDT 2018', 'Present'),
(86, 'Bibek', 'Sat Oct 27 22:27:58 PDT 2018', 'Present'),
(87, 'Astha', 'Sat Oct 27 22:28:16 PDT 2018', 'Present'),
(88, 'Rohan', 'Sat Oct 27 22:28:27 PDT 2018', 'Present'),
(89, 'Akeyan', 'Sat Oct 27 22:28:41 PDT 2018', 'Present'),
(90, 'Prashant', 'Sat Oct 27 22:28:52 PDT 2018', 'Present'),
(91, 'Prashansa', 'Sat Oct 27 22:29:15 PDT 2018', 'Present'),
(92, 'Rijan', 'Sat Oct 27 22:29:26 PDT 2018', 'Present'),
(93, 'Srinil', 'Sat Oct 27 22:29:39 PDT 2018', 'Present'),
(94, 'Sahil', 'Sat Oct 27 22:29:51 PDT 2018', 'Present'),
(95, 'Abani', 'Sat Oct 27 22:30:02 PDT 2018', 'Present'),
(96, 'Shirish', 'Sat Oct 27 22:30:11 PDT 2018', 'Present'),
(97, 'Angela', 'Sat Oct 27 22:30:22 PDT 2018', 'Present'),
(98, 'Prasan', 'Sat Oct 27 22:30:33 PDT 2018', 'Present'),
(99, 'Tarun', 'Sat Oct 27 22:30:50 PDT 2018', 'Present'),
(100, 'Arun', 'Sat Oct 27 22:31:09 PDT 2018', 'Present'),
(101, 'Batsal', 'Sat Oct 27 22:31:19 PDT 2018', 'Present'),
(102, 'Akshata', 'Sat Oct 27 22:31:32 PDT 2018', 'Present'),
(103, 'Sadikshya', 'Sat Oct 27 22:31:57 PDT 2018', 'Present'),
(104, 'Preetha', 'Sat Oct 27 22:32:19 PDT 2018', 'Present'),
(105, 'Udipta', 'Sat Oct 27 22:32:31 PDT 2018', 'Present'),
(106, 'Shristi', 'Sat Oct 27 22:32:53 PDT 2018', 'Present'),
(107, 'Sunil ', 'Sat Oct 27 22:33:12 PDT 2018', 'Present'),
(108, 'Sanam', 'Sat Oct 27 22:33:25 PDT 2018', 'Present'),
(109, 'Ben', 'Sat Oct 27 22:33:39 PDT 2018', 'Present'),
(110, 'Anup', 'Sat Oct 27 22:33:56 PDT 2018', 'Present'),
(111, 'Bajey', 'Sat Oct 27 22:34:14 PDT 2018', 'Present'),
(112, 'Rimsa', 'Sat Oct 27 22:34:25 PDT 2018', 'Present'),
(113, 'Anamol', 'Sat Oct 27 22:34:37 PDT 2018', 'Present'),
(114, 'Cauli', 'Sat Oct 27 22:34:53 PDT 2018', 'Present'),
(115, 'Kabita', 'Sat Oct 27 22:35:21 PDT 2018', 'Present'),
(116, 'Ashwini ', 'Mon Nov 12 13:52:59 PST 2018', 'Present'),
(117, 'Ashwini ', 'Fri Dec 14 10:01:29 NPT 2018', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `did` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `license` varchar(255) NOT NULL,
  `providentfund` varchar(255) NOT NULL,
  `salary` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`did`, `firstname`, `lastname`, `address`, `contact`, `license`, `providentfund`, `salary`) VALUES
(4, 'Naran', ' Nagaloti', 'thulobharang', '9897657890', '1234567890', '2000', '4500'),
(5, 'Bhahubali', 'Tamang', 'dungedhara', '9841237799', '1234567908', '2000', '4500'),
(6, 'Shyam ', 'Khadka', 'Chauni', '9878568898', '1264537897', '2200', '4500'),
(7, 'Jeet', 'Tamang', 'sorkhute', '9842389499', '3456892049', '1000', '4500'),
(8, 'Dhaney', 'Magar', 'sanobharang', '9879375891', '2987097641', '1800', '4500'),
(9, 'Dhaney', 'Tamang', 'banasthali', '9807457899', '1234567891', '1900', '4500'),
(10, 'Ram', 'Lama', 'Ekdhara', '9849876780', '1234859491', '2000', '4500'),
(11, 'Jeet', 'Gurung', 'Chakrapath', '9873279081', '82832323021', '1000', '4500'),
(13, 'Kancha', 'Gurung', 'lainchour', '9876459098', '1283756877', '200', '4500'),
(14, 'bfc', 'gfchfc', 'asda', 'ascca', 'null', '23427', '732428'),
(15, '123', '2123', 'msnfsm', 'sdnfs', 'null', 'mdnsdm', 'q3y48');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `mid` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `wheel` varchar(255) NOT NULL,
  `brake` varchar(255) NOT NULL,
  `battery` varchar(255) NOT NULL,
  `engineoil` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`mid`, `date`, `wheel`, `brake`, `battery`, `engineoil`) VALUES
(13, 'Tue Mar 26 13:56:06 NPT 2019', '1', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `taxi`
--

CREATE TABLE `taxi` (
  `tid` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `plate` varchar(255) NOT NULL,
  `billbook` varchar(255) NOT NULL,
  `insurance` varchar(255) NOT NULL,
  `roadpermit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taxi`
--

INSERT INTO `taxi` (`tid`, `model`, `plate`, `billbook`, `insurance`, `roadpermit`) VALUES
(5, 'suzuki', '5555', '1235', '234567', '1233'),
(6, 'kelisa', '4599', '1234', '1234', '1234'),
(7, 'suzuki', '2799', '12345', '12347', '54321'),
(8, 'suzuki', '9999', '9999', '9898', '8888'),
(9, 'suzuki', '2728', '8979', '5678', '9877'),
(10, 'suzuki', '0011', '9987', '8909', '8978'),
(11, 'suzuki', '9879', '12181', '12128', '21221'),
(12, 'suzuki', '2932', '23911', '28121', '9939'),
(13, 'suzuki', '9827', '12318', '921991', '22032'),
(14, 'suzuki', '1211', '964094', '948540', '934883');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `username`, `password`, `email`, `account`) VALUES
(4, 'Rajendra Pant', 'rajendra', '', 'Admin'),
(7, 'SaritaPant', 'ashwini', 'saritapant7@gmail.com', 'Admin'),
(8, 'ashma077', 'ashma', 'null', 'Staff'),
(9, 'dakhshyani ', 'susana', 'null', 'Staff'),
(10, 'dakhshyani ', 'susana', 'null', 'Staff'),
(11, 'saf', '12345', 'null', 'Staff'),
(12, 'Astha', 'astha', 'asthathapa@gmail.com', 'Staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `taxi`
--
ALTER TABLE `taxi`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `taxi`
--
ALTER TABLE `taxi`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

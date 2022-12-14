-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2021 at 12:36 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `for_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `amount`, `date`) VALUES
(1, '13056', '2022-01-19 18:04:44'),
(2, '13056', '2022-01-20 06:21:51'),
(3, '13056', '2022-01-20 06:21:54'),
(4, '13056', '2022-01-24 17:28:34'),
(5, '13056', '2022-01-24 17:28:38'),
(6, '13056', '2022-01-24 17:29:11'),
(7, '13056', '2022-01-24 17:29:14'),
(8, '13056', '2022-01-24 17:30:02'),
(9, '13056', '2022-01-24 17:30:07'),
(10, '13056', '2022-01-24 17:30:43'),
(11, '13056', '2022-01-24 17:31:06'),
(12, '13056', '2022-01-24 17:31:09'),
(13, '13056', '2022-01-24 17:31:43'),
(14, '13056', '2022-03-24 17:31:47'),
(15, '13056', '2022-02-24 17:32:28'),
(16, '13056', '2022-04-24 17:32:53'),
(54, '156978', '2022-01-31 06:39:46'),
(55, '13056', '2022-01-31 06:39:49'),
(56, '13056', '2022-01-31 06:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(200) NOT NULL,
  `room_cat` text NOT NULL,
  `room_cat_id` int(50) NOT NULL,
  `no_bed` int(11) NOT NULL,
  `bedtype` varchar(200) NOT NULL,
  `facility` text NOT NULL,
  `price` int(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `name` text NOT NULL,
  `phone` int(100) NOT NULL,
  `book` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_cat`, `room_cat_id`, `no_bed`, `bedtype`, `facility`, `price`, `photo`, `checkin`, `checkout`, `name`, `phone`, `book`) VALUES
(76, 'Super Comfort', 11, 1, 'Single', 'Wi-fi, AC, Sofa, Smart Tv, Window.', 6400, '129988.jpg', '0000-00-00', '0000-00-00', '', 0, 'false'),
(77, 'Super Comfort', 11, 1, 'Single', 'Wi-fi, AC, Sofa, Smart Tv, Window.', 6400, '129988.jpg', '0000-00-00', '0000-00-00', '', 0, 'false'),
(78, 'Super Comfort', 11, 1, 'Single', 'Wi-fi, AC, Sofa, Smart Tv, Window.', 6400, '129988.jpg', '0000-00-00', '0000-00-00', '', 0, 'false'),
(79, 'Super Comfort', 11, 1, 'Single', 'Wi-fi, AC, Sofa, Smart Tv, Window.', 6400, '129988.jpg', '0000-00-00', '0000-00-00', '', 0, 'false'),
(80, 'Duplex', 12, 2, 'Single', 'AC, SOFA, TV', 5700, '359743.jpg', '0000-00-00', '0000-00-00', '', 0, 'false'),
(82, 'Duplex', 12, 2, 'Single', 'AC, SOFA, TV', 5700, '359743.jpg', '0000-00-00', '0000-00-00', '', 0, 'false');

-- --------------------------------------------------------

--
-- Table structure for table `room_booking`
--

CREATE TABLE `room_booking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(200) NOT NULL,
  `roomId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` varchar(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `payment` varchar(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_booking`
--

INSERT INTO `room_booking` (`id`, `BookingNumber`, `userEmail`, `roomId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`, `payment`) VALUES
(1, 527789476, 'mdalamin7602@gmail.com', 76, '2022-04-21', '2022-04-23', 'ok', '0', '2022-03-19 18:04:25', '2022-03-24 17:36:58', '13056'),
(2, 714285713, 'mdalamin7602@gmail.com', 77, '2022-04-21', '2022-04-23', 'ok', '1', '2022-04-20 06:21:12', '2022-04-24 17:44:17', '13056'),
(3, 718005175, 'mdalamin7602@gmail.com', 80, '2022-04-26', '2022-04-28', 'hello', '1', '2022-03-24 18:07:00', '2022-03-24 18:09:54', '11628'),
(4, 865244601, 'mdalamin7602@gmail.com', 82, '2022-04-01', '2022-04-28', 'hello', 'complete', '2022-04-31 06:37:46', '2022-04-31 06:40:07', '156978');

-- --------------------------------------------------------

--
-- Table structure for table `room_category`
--

CREATE TABLE `room_category` (
  `id` int(50) NOT NULL,
  `roomname` varchar(200) NOT NULL,
  `room_qnty` int(50) NOT NULL,
  `available` int(50) NOT NULL,
  `booked` int(50) NOT NULL,
  `no_bed` int(40) NOT NULL,
  `bedtype` varchar(244) NOT NULL,
  `facility` text NOT NULL,
  `price` int(40) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_category`
--

INSERT INTO `room_category` (`id`, `roomname`, `room_qnty`, `available`, `booked`, `no_bed`, `bedtype`, `facility`, `price`, `photo`) VALUES
(11, 'Super Comfort', 4, 4, 0, 1, 'Single', 'Wi-fi, AC, Sofa, Smart Tv, Window.', 6400, '129988.jpg'),
(12, 'Duplex', 3, 3, 0, 2, 'Single', 'AC, SOFA, TV', 5700, '359743.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`id`, `email`) VALUES
(1, 'mdalamin7602@gmail.com'),
(2, 'mdalamin7602@gmail.com'),
(3, 'mdalamin7602@gmail.com'),
(4, 'mdalamin7602@gmail.com'),
(5, 'mdalamin7602@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userID` int(11) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `userEmail` varchar(100) NOT NULL,
  `userPass` varchar(100) NOT NULL,
  `userStatus` enum('Y','N') NOT NULL DEFAULT 'N',
  `tokenCode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userID`, `userName`, `userEmail`, `userPass`, `userStatus`, `tokenCode`) VALUES
(4, 'Alamin', 'mdalamin7602@gmail.com', 'd78b154c99fe7f06ebc02ebd63d1c87c', 'Y', 'b82b3041e4f76a5c718e7adf16aab8b3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `room_booking`
--
ALTER TABLE `room_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_category`
--
ALTER TABLE `room_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `room_booking`
--
ALTER TABLE `room_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room_category`
--
ALTER TABLE `room_category`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

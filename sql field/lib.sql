-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2022 at 10:16 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lib`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `b_id` varchar(255) NOT NULL,
  `booksname` varchar(50) NOT NULL,
  `authorname` varchar(50) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `path` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`b_id`, `booksname`, `authorname`, `file_name`, `path`) VALUES
('CS001', 'learning Python', 'bruh.ajsskjabskjkhbw', 'CS001.pdf', 'ebooks/CS001.pdf'),
('CS002', 'Test Book', 'Test Author', 'CS002.pdf', 'ebooks/CS002.pdf'),
('CS003', 'Test Book', 'Test Author', 'CS003.pdf', 'ebooks/CS003.pdf'),
('CS031', 'Hmmmmmmm', 'Test Author', 'CS031.pdf', 'ebooks/CS031.pdf'),
('CS005', 'Test Book', 'Test Author2', 'CS005.pdf', 'ebooks/CS005.pdf'),
('CS006', 'Test Book', 'Test Author', 'CS006.pdf', 'ebooks/CS006.pdf'),
('CS008', 'Test Book', 'Test Author', 'CS008.pdf', 'ebooks/CS008.pdf'),
('CS009', 'Book One', 'william ames', 'CS009.pdf', 'ebooks/CS009.pdf'),
('CS010', 'Test Book', 'Test Author', 'CS010.pdf', 'ebooks/CS010.pdf'),
('CS011', 'Test Book', 'Test Author', 'CS011.pdf', 'ebooks/CS011.pdf'),
('CS012', 'Test Book', 'Test Author', 'CS012.pdf', 'ebooks/CS012.pdf'),
('CS013', 'Test Book', 'Test Author', 'CS013.pdf', 'ebooks/CS013.pdf'),
('EE001', 'Test Book', 'Test Author', 'EE001.pdf', 'ebooks/EE001.pdf'),
('ME001', 'Test Book', 'Test Author', 'ME001.pdf', 'ebooks/ME001.pdf'),
('TT001', 'Book One', 'Test Author', 'TT001.pdf', 'ebooks/TT001.pdf'),
('CS055', 'Test Book', 'Test Author', 'CS055.pdf', 'ebooks/CS055.pdf'),
('B001', 'English', 'YK', 'B001.pdf', 'ebooks/B001.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `student_book`
--

CREATE TABLE `student_book` (
  `emailid` varchar(200) NOT NULL,
  `book_1_id` varchar(100) NOT NULL,
  `book_1` varchar(100) NOT NULL,
  `recive_date_1` varchar(100) NOT NULL,
  `submisson_date_1` varchar(100) NOT NULL,
  `book_2_id` varchar(100) DEFAULT NULL,
  `book_2` varchar(100) DEFAULT NULL,
  `recive_date_2` varchar(100) DEFAULT NULL,
  `submisson_date_2` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_book`
--

INSERT INTO `student_book` (`emailid`, `book_1_id`, `book_1`, `recive_date_1`, `submisson_date_1`, `book_2_id`, `book_2`, `recive_date_2`, `submisson_date_2`) VALUES
;

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `id` int(10) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'student',
  `name` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`id`, `type`, `name`, `emailid`, `password`) VALUES
(1, 'admin', 'admin', 'admin001', 'admin123'),
(2, 'student', 'Erin', 'ew@gmail.com', 'anku'),
(3, 'student', 'Buvan', 'b@gmail.com', '123'),
(15, 'student', 'Nikhil', 'nikhil.rajmohan08@gmail.com', 'Test321'),
(4, 'student', 'Test321', 'yaboi.nik08@gmail.com', 'Test321'),
(14, 'student', 'Gaya', 'rajmohan.gayathri@gmail.com', 'Bruh123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`b_id`),
  ADD UNIQUE KEY `b_id` (`b_id`);

--
-- Indexes for table `student_book`
--
ALTER TABLE `student_book`
  ADD PRIMARY KEY (`emailid`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

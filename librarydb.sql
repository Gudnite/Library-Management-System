-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2020 at 05:27 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `returndate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookid`, `title`, `author`, `category`, `publisher`, `status`, `returndate`) VALUES
(5, 'Head First Java', 'Kathy Sierra & Bert Bates', 'Computer Science', 'O\'Reilly', 'No', '16-Apr-2020'),
(6, 'Head First Android Development', 'Dawn Griffths & David Griffths', 'Android Development', 'O\'Reilly', 'Yes', '---'),
(7, 'Sherlock Holms', 'Arthur Conan Doyle', 'Novel', 'Penguin Publishers', 'Yes', '---'),
(8, 'Harry Potter', 'JK Rowling', 'Novel', 'Bloomsburg Publishing', 'Yes', '---'),
(9, 'Twilight', 'Stephanie Meyer', 'Novel', 'Little, Brown publisher', 'Yes', '---');

-- --------------------------------------------------------

--
-- Table structure for table `issued`
--

CREATE TABLE `issued` (
  `bookid` int(11) NOT NULL,
  `issuedate` varchar(255) NOT NULL,
  `returndate` varchar(255) NOT NULL,
  `studentid` varchar(255) NOT NULL,
  `studentname` varchar(255) NOT NULL,
  `telephone` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issued`
--

INSERT INTO `issued` (`bookid`, `issuedate`, `returndate`, `studentid`, `studentname`, `telephone`, `email`) VALUES
(5, '02-Apr-2020', '16-Apr-2020', '1234', 'student1234', 1234567890, 'student1234@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

CREATE TABLE `librarian` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `serviceid` varchar(255) NOT NULL,
  `telephone` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`id`, `name`, `serviceid`, `telephone`, `email`, `username`, `password`) VALUES
(5, 'Test User', '1234', 12345, 'testuser@gmail.com', 'user', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `librarian`
--
ALTER TABLE `librarian`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `librarian`
--
ALTER TABLE `librarian`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

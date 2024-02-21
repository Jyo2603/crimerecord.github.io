-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 04:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `case_no` int(11) NOT NULL,
  `case_name` varchar(100) NOT NULL,
  `case_description` text NOT NULL,
  `case_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `case_management`
--

CREATE TABLE `case_management` (
  `case_no` int(11) NOT NULL,
  `case_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `case_management`
--

INSERT INTO `case_management` (`case_no`, `case_status`) VALUES
(6, 'completed'),
(7, 'pending'),
(8, 'completed'),
(10, 'completed'),
(11, 'Pending'),
(20, 'Pending'),
(90, 'cmpleted');

-- --------------------------------------------------------

--
-- Table structure for table `criminals`
--

CREATE TABLE `criminals` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `crime_type` varchar(255) NOT NULL,
  `crime_date` date NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `crime_case_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `criminals`
--

INSERT INTO `criminals` (`id`, `first_name`, `last_name`, `date_of_birth`, `gender`, `address`, `crime_type`, `crime_date`, `location`, `description`, `crime_case_no`) VALUES
(1, 'john', 'smith', '2024-01-15', 'Male', '123 Main street , Anytown,USA', 'burglary', '2024-02-16', '123 elm street , Anytown ,USA', 'broke into a residential property and stole valuable items.', '001'),
(11, 'Emily ', 'Johnson', '2024-02-02', 'Female', '456 OAK Avenue , Othertown , USA', 'Assault', '2027-01-17', 'Downtown Park , Othertown , USA', 'Physically attacked another individual during an altercation', '002'),
(12, 'Michael', 'Williams', '2024-02-02', 'Male', '789 , Maple Lane , Anycity , USA', 'Fraud', '2031-02-21', 'online', 'engaged in fraudulent activities , Scamming individuals through online schemes.', '003'),
(13, 'Sarah', 'Martinez', '2024-02-10', 'Female', '321 Pine street , Somewhereville , USA', 'vandalism', '2031-02-20', 'somewhereville High school', 'Damaged school property by graffitiing walls and breaking windows.', '004'),
(14, 'David', 'Brown', '2024-02-08', 'Male', '567 Cedar road ,Anycity ,USA ', 'Theft', '2031-02-14', 'Anycity mall', 'Stole merchandise from multiple stores within the mall premises.', '005'),
(15, ' sarah', 'john', '2024-02-04', 'Female', '123 Main street , Anytown,USA', 'murder', '2024-02-25', 'school ground', 'assault took place early morning', '006'),
(18, 'joann', 'ameen', '2024-02-04', 'Female', '567 Cedar road ,Anycity ,USA', 'theft', '2024-02-11', 'city centre mall', 'theft in open mall', '008'),
(19, 'malik', 'abdul', '2024-02-04', 'Male', '332 tatco lane USA', 'theft', '2024-02-25', 'la lake view apartment', 'committed the crime around 7 am in the lawn ', '008'),
(20, 'viji', 'lakshmi', '2000-05-16', 'Female', 'harsha green woods banaglore', 'theft', '2024-02-24', 'Bangalore', 'Theft of chain', '90'),
(21, 'sarah', 'alik', '2024-02-17', 'Female', '123 Main street , Anytown,USA', 'burglary', '2024-02-24', 'city centre mall', 'crime taken place early morning.', '010'),
(22, 'jyo', 'goldberg', '2024-02-11', 'Female', '332 tatco lane USA', 'burglary', '2024-02-25', 'clarent ground ', 'theft of the trophies', '011'),
(23, 'john', 'smith', '2024-02-16', 'Male', '123 Main street , Anytown,USA', 'burglary', '2024-02-08', '123 elm street , Anytown ,USA', 'open ground', '20'),
(24, 'john', 'smith', '2024-02-16', 'Male', '123 Main street , Anytown,USA', 'burglary', '2024-02-08', '123 elm street , Anytown ,USA', 'open ground', '20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`case_no`);

--
-- Indexes for table `case_management`
--
ALTER TABLE `case_management`
  ADD PRIMARY KEY (`case_no`);

--
-- Indexes for table `criminals`
--
ALTER TABLE `criminals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `case_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `case_management`
--
ALTER TABLE `case_management`
  MODIFY `case_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=900;

--
-- AUTO_INCREMENT for table `criminals`
--
ALTER TABLE `criminals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

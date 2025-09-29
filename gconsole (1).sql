-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2025 at 12:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gconsole`
--

-- --------------------------------------------------------

--
-- Table structure for table `console`
--

CREATE TABLE `console` (
  `Console_ID` int(11) NOT NULL,
  `Manufacturer` text NOT NULL,
  `C_name` text NOT NULL,
  `Release_date` text NOT NULL,
  `Controller_no` int(11) NOT NULL,
  `Bit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `console`
--

INSERT INTO `console` (`Console_ID`, `Manufacturer`, `C_name`, `Release_date`, `Controller_no`, `Bit`) VALUES
(1, 'nintendo', 'nintendo switch', '3/03/17', 4, 64),
(2, 'Sony', 'Ps5', '15/5/2023', 3, 64),
(3, 'nitendio', 'Switch 2', '15/05/2025', 4, 64),
(4, 'MircoSoft', 'Xbox X', '25/10/2023', 2, 32),
(5, 'Nitendo', '3DS', '01/06/2012', 1, 32),
(6, 'sega', 'Saturn', '02/11/1995', 2, 32),
(8, 'Nokia', 'N-Gage', '50/03/2003', 1, 32);

-- --------------------------------------------------------

--
-- Table structure for table `owns`
--

CREATE TABLE `owns` (
  `owns_id` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Console_ID` int(11) NOT NULL,
  `Buy_date` text NOT NULL,
  `Link_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_id` int(11) NOT NULL,
  `Username` text NOT NULL,
  `password` text NOT NULL,
  `Signupdate` text NOT NULL,
  `Dateofbirth` text NOT NULL,
  `Country` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_id`, `Username`, `password`, `Signupdate`, `Dateofbirth`, `Country`) VALUES
(1, 'MightyKitey1', 'kj020608?', '25/09/2025', '01/01/2001', 'Uk'),
(2, 'LunaSky88', 'Px@4Tqv!9L', '2023-11-15', '1998-07-22', 'Usa'),
(3, 'OrionCode42', 'fZ#8Lp$2xQ', '2024-03-09', '1995-02-14', 'Russia'),
(4, 'NovaByte77', 'Wd!3Mkr^7N', '2025-01-30', '2000-12-01', 'Germany'),
(5, 'EchoStorm19', 'Tn$6Xzv!5R', '2025-07-12', '1992-09-09', 'France'),
(6, 'ZenithFox21', 'Gy#2Hvq&8J', '2025-09-01', '2001-03-27', 'Ukrian'),
(7, 'Lumonoxs', '$2y$10$VSliC7.ClDkFeEHyk4BXd.QbzClL4VvYIl0hMjugeylfE7ru8BPUO', '15/07/2012', '25/10/2006', 'Japan'),
(8, 'hkfssdf', '$2y$10$00YIV7UDVERnM9JsdXTTMeNUCdsfuz/ocAbDuGw1GSurVNfiupgf2', 'jdflksdnflk', 'sdjfk;klsdj', 'paosd\'');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `console`
--
ALTER TABLE `console`
  ADD PRIMARY KEY (`Console_ID`);

--
-- Indexes for table `owns`
--
ALTER TABLE `owns`
  ADD PRIMARY KEY (`owns_id`),
  ADD KEY `User_ID` (`User_ID`,`Console_ID`),
  ADD KEY `Console_ID` (`Console_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `console`
--
ALTER TABLE `console`
  MODIFY `Console_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `owns`
--
ALTER TABLE `owns`
  MODIFY `owns_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `owns`
--
ALTER TABLE `owns`
  ADD CONSTRAINT `owns_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `owns_ibfk_2` FOREIGN KEY (`Console_ID`) REFERENCES `console` (`Console_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

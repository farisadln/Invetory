-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 21, 2018 at 03:42 PM
-- Server version: 10.3.11-MariaDB-1:10.3.11+maria~bionic
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iwak_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `fish`
--

CREATE TABLE `fish` (
  `mbno` varchar(10) NOT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `mcompany` varchar(50) DEFAULT NULL,
  `mqty` int(10) DEFAULT NULL,
  `mexpdate` varchar(50) DEFAULT NULL,
  `mpurdate` varchar(50) DEFAULT NULL,
  `mtype` varchar(30) DEFAULT NULL,
  `mpurprice` float DEFAULT NULL,
  `msaleprice` float DEFAULT NULL,
  `mrackno` varchar(20) DEFAULT NULL,
  `sid` int(10) DEFAULT NULL,
  `sname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fish`
--

INSERT INTO `fish` (`mbno`, `mname`, `mcompany`, `mqty`, `mexpdate`, `mpurdate`, `mtype`, `mpurprice`, `msaleprice`, `mrackno`, `sid`, `sname`) VALUES
('50005', 'joko', 'jokofish', 4, '20-12-2018', '20-12-2018', 'Sea Food', 55555, 412345, '5', 4, 'Mayur joshi'),
('500055', 'joko', 'jokofish', 4, '20-12-2018', '20-12-2018', 'Tawar', 55555, 412345, '5', 4, 'Mayur joshi'),
('790', 'tongkol', 'jokowi', 100, '17-12-2018', '15-12-2018', 'Sea Food', 100000, 200000, '50', 17, 'joko'),
('909', 'hiui', 'zero fish', 90, '12-12-2018', '21-12-2018', 'Ikan Asin', 19000, 20000, '4', 4, 'Mayur joshi');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `sid` int(10) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `saddress` varchar(100) DEFAULT NULL,
  `sphoneno` varchar(20) DEFAULT NULL,
  `semailid` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`sid`, `sname`, `saddress`, `sphoneno`, `semailid`) VALUES
(4, 'Mayur joshi', 'sadashiv peth,pune-4110111', '98989863620', 'mayur@gmail.com'),
(17, 'joko', 'malang', '08123', 'joko@mail.com'),
(35, 'faris', 'malang', '0912049', 'mail@gmail.com'),
(36, 'asd', '92424', '000', '12@mail.com'),
(37, 'oooo', 'ojodumeh', '124', 'mmai@gmail.com'),
(38, 'susilo', 'makan', '0000', '1209@maio.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fish`
--
ALTER TABLE `fish`
  ADD PRIMARY KEY (`mbno`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `fish`
--
ALTER TABLE `fish`
  ADD CONSTRAINT `fish_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `supplier` (`sid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

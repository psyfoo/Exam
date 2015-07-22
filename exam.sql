-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2015 at 12:56 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin`, `password`) VALUES
('admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `queid` int(10) unsigned NOT NULL,
  `testid` int(10) unsigned NOT NULL,
  `quedsc` varchar(500) NOT NULL,
  `ans1` varchar(75) NOT NULL,
  `ans2` varchar(75) NOT NULL,
  `ans3` varchar(75) NOT NULL,
  `ans4` varchar(75) NOT NULL,
  `trueans` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`queid`, `testid`, `quedsc`, `ans1`, `ans2`, `ans3`, `ans4`, `trueans`) VALUES
(1, 4, 'Who is author of Sherlock Holmes', 'Conal Doyle', 'Humpkins', 'Chatterjee', 'Ronald Ross', 1),
(2, 4, 'Who is author of Sherlock Holmes', 'Conal Doyle', 'Humpkins', 'Chatterjee', 'Ronald Ross', 1);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `login` varchar(20) DEFAULT NULL,
  `testid` int(5) DEFAULT NULL,
  `testdate` date DEFAULT NULL,
  `score` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`login`, `testid`, `testdate`, `score`) VALUES
('', 4, '0000-00-00', 0),
('', 4, '0000-00-00', 2),
('', 4, '0000-00-00', 2),
('', 4, '2015-07-10', 2),
('', 4, '2015-07-10', 2),
('saifu', 4, '2015-07-10', 2),
('psyfoo', 4, '2015-07-10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `subid` int(50) NOT NULL,
  `subname` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subid`, `subname`) VALUES
(1, 'Hindi'),
(2, 'Social');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `testid` int(10) unsigned NOT NULL,
  `testname` varchar(20) NOT NULL,
  `totq` int(100) NOT NULL,
  `subid` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`testid`, `testname`, `totq`, `subid`) VALUES
(1, 'Quiz', 3, 2),
(4, 'Online Quiz', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uanswer`
--

CREATE TABLE IF NOT EXISTS `uanswer` (
  `sessid` varchar(80) DEFAULT NULL,
  `testid` int(11) DEFAULT NULL,
  `quedes` varchar(200) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `ans3` varchar(50) DEFAULT NULL,
  `ans4` varchar(50) DEFAULT NULL,
  `trueans` int(11) DEFAULT NULL,
  `yourans` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uanswer`
--

INSERT INTO `uanswer` (`sessid`, `testid`, `quedes`, `ans1`, `ans2`, `ans3`, `ans4`, `trueans`, `yourans`) VALUES
('tg1jk424th43hlp5fu1drjjn21', 4, 'Who is author of Sherlock Holmes', 'Conal Doyle', 'Humpkins', 'Chatterjee', 'Ronald Ross', 1, 2),
('tg1jk424th43hlp5fu1drjjn21', 4, 'Who is author of Sherlock Holmes', 'Conal Doyle', 'Humpkins', 'Chatterjee', 'Ronald Ross', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(5) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `cpassword` varchar(20) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(25) NOT NULL,
  `phone` bigint(50) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `password`, `cpassword`, `fullname`, `address`, `city`, `phone`, `email`) VALUES
(1, 'saifu', 'saifu', 'saifu', 'saifu', 'Nellore', '', 0, 'thesaifu@gmail.com'),
(9, 'psyfoo', 'saifu', 'saifu', 'saifu', 'saifu', 'saifu', 0, 'saif@gmail.com'),
(19, 'king', 'saifu', 'saifu', 'saifu', 'Nellore', 'hyd', 0, 'phptpoint@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `admin` (`admin`,`password`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`queid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subid`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`testid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `uid` (`uid`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `queid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subid` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `testid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

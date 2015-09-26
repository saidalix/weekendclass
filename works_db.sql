-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Sep 21, 2015 at 01:05 PM
-- Server version: 5.0.41
-- PHP Version: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `works_db`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `send_guardian`
-- 

CREATE TABLE `send_guardian` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(20) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `initial` varchar(20) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `physical` varchar(15) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `email` varchar(15) NOT NULL,
  `address` varchar(15) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `job` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `physical` (`physical`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `send_guardian`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `send_parents`
-- 

CREATE TABLE `send_parents` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(20) NOT NULL,
  `initial` varchar(20) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `post` varchar(10) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `cphone` varchar(20) NOT NULL,
  `work` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `post` (`post`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `send_parents`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `send_school`
-- 

CREATE TABLE `send_school` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `post` varchar(20) NOT NULL,
  `province` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `code` varchar(20) NOT NULL,
  `grade` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `grade_two` varchar(20) NOT NULL,
  `year_two` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `send_school`
-- 

INSERT INTO `send_school` (`id`, `name`, `post`, `province`, `city`, `code`, `grade`, `year`, `grade_two`, `year_two`) VALUES 
(1, 'sir apolo', '45h', 'kampala', 'mengo', '447', '5', '2014', '12', '2015');

-- --------------------------------------------------------

-- 
-- Table structure for table `send_student`
-- 

CREATE TABLE `send_student` (
  `id` int(11) NOT NULL auto_increment,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `passport` varchar(15) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `nationality` text NOT NULL,
  `dd` int(5) NOT NULL,
  `mm` varchar(9) NOT NULL,
  `yy` int(5) NOT NULL,
  `email` varchar(25) NOT NULL,
  `adress` varchar(20) NOT NULL,
  `tel` varchar(13) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `passport` (`passport`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `send_student`
-- 

INSERT INTO `send_student` (`id`, `fname`, `lname`, `passport`, `gender`, `nationality`, `dd`, `mm`, `yy`, `email`, `adress`, `tel`) VALUES 
(1, 'look', 'mane', 'HEEUTH39482', 'Male', 'comoros', 2, 'apr', 2014, 'ahmedsaidalix@gmail.com', 'nakulabye', ''),
(2, 'archad ', 'mze ali', 'nbe547h', 'Male', 'zimbabwe', 5, 'may', 2015, 'ahmedsaidalix@gmail.com', 'mapoutu', '+6545887455'),
(3, '', '', '', 'Male', '', 0, '', 0, 'ahmedsaidalix@gmail.com', '', '+65545223'),
(4, 'lina', 'saadou', 'wnm47', 'Female', 'rwanda', 5, 'may', 2017, 'lina_21@gmail.com', 'mengo', '+656666666666');

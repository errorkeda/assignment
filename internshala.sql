-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 04, 2021 at 02:14 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `internshala`
--

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE IF NOT EXISTS `task` (
  `task_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `pic` varchar(50) NOT NULL,
  `create_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(10) NOT NULL COMMENT 'enum:0/1 | 0=>Default [0=>Active,1=>Done]',
  PRIMARY KEY (`task_id`),
  KEY `user_id` (`user_id`),
  KEY `user-id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`task_id`, `user_id`, `title`, `description`, `pic`, `create_date_time`, `status`) VALUES
(3, 1, 'internshala', 'this is best plateform', 'abhi.jpg', '2021-06-04 03:11:48', 1),
(4, 2, 'internshala', 'this is best plateform', 'abhi.jpg', '2021-06-04 03:26:49', 1),
(13, 3, 'The great men', 'Life should be great reather then Long', 'photoabhi.jpg', '2021-06-04 06:59:23', 1),
(16, 3, 'The great men', 'Life should be great reather then Long', 'photos/IMG_20190630_115423.jpg', '2021-06-04 07:11:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(500) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(500) NOT NULL,
  `create_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(10) NOT NULL COMMENT 'enum:0/1 | 0=>default[0=>blocked,1=>Active]',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `phone`, `password`, `create_date_time`, `status`) VALUES
(1, 'abhi', '7895142644', 'fbdsfdg', '2021-06-04 03:11:24', 1),
(2, 'akash', '78951426', 'fbdsfdg', '2021-06-04 03:26:31', 1),
(3, 'ashish', '547545564', 'dfhfhdfh', '2021-06-04 04:00:10', 1),
(4, 'gogo', '7564432', 'djhf', '2021-06-04 04:13:23', 1),
(5, 'gogo', '7564432', 'djhf', '2021-06-04 04:14:46', 1),
(6, 'gogo', '7564432', 'djhf', '2021-06-04 04:20:09', 1),
(7, 'Ashish kumar', '5465657676', 'fgtgrt56', '2021-06-04 04:21:31', 0),
(8, 'Ashish kumar', '5465657676', 'fgtgrt56', '2021-06-04 04:25:36', 0),
(9, 'Ashish kumar', '5465657676', 'fgtgrt56', '2021-06-04 04:27:00', 0),
(10, 'Ashish kumar', '5465657676', 'fgtgrt56', '2021-06-04 04:28:04', 0),
(11, 'Ashish kumar', '5465657676', 'fgtgrt56', '2021-06-04 04:35:14', 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

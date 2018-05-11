-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 11, 2018 at 02:45 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `usertype` varchar(30) NOT NULL,
  `admin_firstname` varchar(30) NOT NULL,
  `admin_lastname` varchar(30) NOT NULL,
  `admin_middlename` varchar(30) NOT NULL,
  `admin_username` varchar(30) NOT NULL,
  `admin_password` varchar(30) NOT NULL,
  `admin_email` varchar(30) NOT NULL,
  `admin_bdate` date NOT NULL,
  `admin_age` int(3) NOT NULL,
  `admin_addr` varchar(30) NOT NULL,
  `admin_contact_no` varchar(30) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `payment_id` int(10) NOT NULL,
  `order_date` date NOT NULL,
  `order_type` varchar(30) NOT NULL,
  `order_status` varchar(30) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `payment_id` (`payment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int(10) NOT NULL AUTO_INCREMENT,
  `pay_cat` varchar(40) NOT NULL,
  `pay_type` varchar(40) NOT NULL,
  `pay_name` varchar(40) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(10) NOT NULL AUTO_INCREMENT,
  `service_id` int(10) NOT NULL,
  `product_qty` int(10) NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `product_type` varchar(30) NOT NULL,
  `product_desc` varchar(30) NOT NULL,
  `product_category` varchar(30) NOT NULL,
  `product_tag` varchar(30) NOT NULL,
  `product_status` varchar(30) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `service_id` (`service_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service_provider`
--

DROP TABLE IF EXISTS `service_provider`;
CREATE TABLE IF NOT EXISTS `service_provider` (
  `service_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `usertype` varchar(30) NOT NULL,
  `service_firstname` varchar(30) NOT NULL,
  `service_lastname` varchar(30) NOT NULL,
  `service_middlename` varchar(30) NOT NULL,
  `service_bdate` date NOT NULL,
  `service_age` int(3) NOT NULL,
  `service_nickname` varchar(30) NOT NULL,
  `service_Company_name` varchar(30) NOT NULL,
  `service_date` date NOT NULL,
  `service_address` varchar(30) NOT NULL,
  `service_email` varchar(30) NOT NULL,
  `service_contact_no` varchar(30) NOT NULL,
  PRIMARY KEY (`service_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` varchar(30) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `middle_initial` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `nickname` varchar(30) NOT NULL,
  `address` varchar(60) NOT NULL,
  `contact_no` varchar(30) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `usertype`, `firstname`, `lastname`, `gender`, `birthdate`, `middle_initial`, `email`, `nickname`, `address`, `contact_no`, `status`) VALUES
(10, '2000600', 'aaabf0d39951f3e6c3e8a7911df524c2', 'service', 'Michael', 'Pinto', 'male', '1983-11-04', 'V', 'mikolit2283@gmail.com', 'TwoThing', 'Bantay, Ilocos Sur', '09054530168', 'pending'),
(8, '2000600', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'Michael', 'Pinto', 'male', '1983-11-04', 'V', 'mikolit2283@gmail.com', 'TwoThing', 'Bantay, Ilocos Sur', '09054530168', 'pending'),
(9, '2000600', '91ec1f9324753048c0096d036a694f86', 'customer', 'Michael', 'Pinto', 'male', '1983-11-04', 'V', 'mikolit2283@gmail.com', 'TwoThing', 'Bantay, Ilocos Sur', '09054530168', 'pending');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

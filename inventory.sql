-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2024 at 02:59 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `appuser`
--

CREATE TABLE `appuser` (
  `appuser_pk` int(11) NOT NULL,
  `userRole` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobileNumber` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appuser`
--

INSERT INTO `appuser` (`appuser_pk`, `userRole`, `name`, `mobileNumber`, `email`, `password`, `address`, `status`) VALUES
(1, 'admin', 'Priyanka K', '8080037506', 'khandagalepriyanka900@gmail.com', 'Pinky', 'Pune', 'Active'),
(14, 'Admin', 'Aishwaryaa', '9876543212', 'aish@gmail.com', 'aish', 'Pune', 'Active'),
(15, 'Admin', 'ganesh', '876556877', 'ganesh@gmail.com', 'ganesh', 'Beed', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_pk` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_pk`, `name`) VALUES
(10, 'Gaming Laptops'),
(11, 'Business Laptops'),
(12, 'Student Laptops'),
(13, 'Ultrabooks'),
(14, '2-in-1 Convertibles'),
(15, 'Budget Laptops'),
(16, 'High-Performance Laptops'),
(17, 'Laptops for Creatives'),
(18, 'Chromebooks'),
(19, 'UltrabboksPro');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_pk` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobileNumber` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_pk`, `name`, `mobileNumber`, `email`) VALUES
(1, 'Priyanka Khandagale', '8080037506', 'priyanka@gmal.com'),
(2, 'Aish', '8765434560', 'aish@gmail.com'),
(3, 'komal', '9876543345', 'komal@gmail.com'),
(4, 'ganesh', '987656787', 'gk123@gmail.com'),
(5, 'vedika', '7678987654', 'vedika123@gmail.com'),
(6, 'sunita', '7685432345', 'sunita@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `order_pk` int(11) NOT NULL,
  `orderId` varchar(200) DEFAULT NULL,
  `customer_fk` int(11) DEFAULT NULL,
  `orderDate` varchar(200) DEFAULT NULL,
  `totalPaid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`order_pk`, `orderId`, `customer_fk`, `orderDate`, `totalPaid`) VALUES
(1, 'Bill-31028795670700', 1, '27-18-2024', 600),
(2, 'Bill-31619551790900', 1, '27-25-2024', 400),
(3, 'Bill-32197231887000', 1, '27-35-2024', 1400),
(4, 'Bill-32343239694900', 1, '27-37-2024', 4400),
(5, 'Bill-37018611396000', 1, '27-55-2024', 1000),
(6, 'Bill-37175599385700', 1, '27-58-2024', 1200),
(7, 'Bill-37521599187000', 1, '27-04-2024', 200),
(8, 'Bill-37596011453400', 1, '27-05-2024', 800),
(9, 'Bill-38046171236300', 1, '27-12-2024', 200),
(10, 'Bill-38213050230100', 1, '27-15-2024', 200),
(11, 'Bill-38788006915700', 1, '27-25-2024', 200),
(12, 'Bill-41995948026400', 2, '28-18-2024', 9000),
(13, 'Bill-43396569813900', 1, '28-41-2024', 600000),
(14, 'Bill-43432512840200', 1, '28-42-2024', 1750000),
(15, 'Bill-43446339350500', 3, '28-42-2024', 1280000),
(16, 'Bill-43466701539900', 4, '28-43-2024', 1080000),
(17, 'Bill-43484930774200', 5, '28-43-2024', 600000),
(18, 'Bill-43516605861100', 2, '28-43-2024', 550000),
(19, 'Bill-43798224963700', 3, '28-48-2024', 480000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_pk` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `category_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_pk`, `name`, `quantity`, `price`, `description`, `category_fk`) VALUES
(4, 'ASUS ROG Zephyrus G14', 15, 120000, ' Powerful, compact gaming laptop with impressive performance and portability.', 10),
(5, 'MSI GE76 Raider', 18, 250000, ' High-end gaming powerhouse with stunning display and robust build.', 10),
(6, 'Alienware m15 R5', 24, 200000, ' Premium gaming laptop with customizable RGB lighting and exceptional performance.', 10),
(7, 'Lenovo ThinkPad X1 Carbon', 15, 140000, 'Lenovo T Business-class ultrabook known for durability, security, and performance.', 11),
(8, 'HP Elite Dragonfly', 12, 160000, ' Premium business convertible with lightweight design and long battery life.', 11),
(9, 'Acer Chromebook Spin 311', 28, 25000, 'Acer Chr Affordable, versatile Chromebook perfect for students with touchscreen capability.', 12),
(10, 'Lenovo IdeaPad Flex 5', 29, 40000, 'Lenovo IdeBudget-friendly 2-in-1 laptop ideal for students\' daily tasks.', 12),
(11, 'Apple MacBook Air', 24, 85000, 'Apple Ma Thin, lightweight ultrabook with powerful performance and stunning display.', 13),
(12, 'Dell XPS 13', 16, 120000, ' Premium ultrabook known for its slim design and superb display.', 13),
(13, 'Microsoft Surface Pro 7', 30, 90000, ' Versatile 2-in-1 tablet/laptop hybrid with premium design and performance.', 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appuser`
--
ALTER TABLE `appuser`
  ADD PRIMARY KEY (`appuser_pk`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_pk`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_pk`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`order_pk`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_pk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appuser`
--
ALTER TABLE `appuser`
  MODIFY `appuser_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `order_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

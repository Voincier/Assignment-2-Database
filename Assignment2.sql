-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2024 at 03:45 PM
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
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerNumber` int(11) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `contactLastName` varchar(50) NOT NULL,
  `contactFirstName` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postalCode` varchar(15) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `salesRepEmployeeNumber` int(11) DEFAULT NULL,
  `creditLimit` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerNumber`, `customerName`, `contactLastName`, `contactFirstName`, `phone`, `addressLine1`, `addressLine2`, `city`, `state`, `postalCode`, `country`, `salesRepEmployeeNumber`, `creditLimit`) VALUES
(103, 'Alabaster Dragonewt', 'Ala', 'Newt ', '081231247568', 'Jl. Persembunyian Penyihir', NULL, 'Jakarta', NULL, '15111', 'Indonesia', 1003, 50000000.00),
(112, 'Yoda Sulaiman', 'King', 'Jedi', '08111111111', 'Jl. Tua Kebajikan ', NULL, 'Kelapa Gading', 'Jakarta Utara', '15001', 'Indonesia', 1003, 99999999.99),
(114, 'Smaug Oakenshield', 'Smaug', 'Dragon', '081814578145', 'Jl. Naga Terbang', 'Berhembus Api', 'Bekasi', 'Bekasi', '15051', 'Indonesia', 1004, 99999999.99),
(119, 'Steven Stark', 'Rich', 'Playboy ', '0814113126312', 'Jl. Avenger Tower', NULL, 'Sudirman', 'Jakarta Pusat', '15141', 'Indonesia', 1004, 99999999.99),
(121, 'Flash Morales', 'Bully', 'Berjaring', '085811883288', 'Jl. Laba-laba', NULL, 'Bintaro', 'Tangerang', '15441', 'Indonesia', 1005, 99999999.99);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeNumber` int(11) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `officeCode` varchar(10) NOT NULL,
  `reportsTo` int(11) DEFAULT NULL,
  `jobTitle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeNumber`, `lastName`, `firstName`, `extension`, `email`, `officeCode`, `reportsTo`, `jobTitle`) VALUES
(1001, 'Murphy', 'Law', 'x5800', 'murphyl@classicmodelcars.com', '1', NULL, 'President'),
(1002, 'Rentz', 'Milaxa', 'x4611', 'relaxa@classicmodelcars.com', '3', 1001, 'VP Sales'),
(1003, 'Menkis', 'Tos', 'x9273', 'mentos@classicmodelcars.com', '2', 1001, 'VP Marketing'),
(1004, 'Pop', 'Kiremi', 'x4871', 'popmie@classicmodelcars.com', '5', 1002, 'Sales Manager (APAC)'),
(1005, 'Pomela', 'Kicky', 'x5408', 'pocky@classicmodelcars.com', '4', 1002, 'Sale Manager (EMEA)');

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `officeCode` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `postalCode` varchar(15) NOT NULL,
  `territory` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`officeCode`, `city`, `phone`, `addressLine1`, `addressLine2`, `state`, `country`, `postalCode`, `territory`) VALUES
('1', 'Jakarta Pusat', '+62 529 7643', 'Jl. SCBD', 'No. 121', 'Jakarta', 'Indonesia', '15141', 'Indonesia'),
('2', 'Tangerang', '+62 021 12021', 'Jl. Bintaro', 'No. A1', 'Tangerang', 'Indonesia', '15008', 'Indonesia'),
('3', 'Medan', '+62 123 3212', 'Jl. Samosir', 'No. 5', 'Medan', 'Indonesia', '15401', 'Indonesia'),
('4', 'Yogyakarta', '+62 404 0050', 'Jl. Slamet', NULL, 'Yogyakarta', 'Indonesia', '15451', 'Indonesia'),
('5', 'Pontianak', '+62 911 0123', 'Jl. Bonjong', NULL, 'Pontianak', 'Indonesia', '15613', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderNumber` int(11) NOT NULL,
  `productCode` varchar(15) NOT NULL,
  `quantityOrdered` int(11) NOT NULL,
  `priceEach` decimal(10,2) NOT NULL,
  `orderLineNumber` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderNumber`, `productCode`, `quantityOrdered`, `priceEach`, `orderLineNumber`) VALUES
(10100, 'S4-24', 50, 55.09, 2),
(10100, 'S5-11', 30, 136.00, 3),
(10101, 'S10-1999', 25, 108.06, 4),
(10101, 'S3-75', 45, 32.53, 3),
(10101, 'S5-11', 46, 44.35, 2),
(10102, 'S3-75', 41, 43.13, 1),
(10102, 'S8-15', 39, 95.55, 2),
(10103, 'S3-75', 22, 35.29, 4),
(10104, 'S3-75', 49, 35.29, 1),
(10104, 'S5-11', 30, 136.00, 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderNumber` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `requiredDate` date NOT NULL,
  `shippedDate` date DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  `comments` text DEFAULT NULL,
  `customerNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderNumber`, `orderDate`, `requiredDate`, `shippedDate`, `status`, `comments`, `customerNumber`) VALUES
(10100, '2003-01-06', '2003-01-13', '2003-01-10', 'Shipped', NULL, 103),
(10101, '2003-01-09', '2003-01-18', '2003-01-11', 'Shipped', 'Check on availability.', 112),
(10102, '2003-01-10', '2003-01-18', '2003-01-14', 'Shipped', NULL, 114),
(10103, '2003-01-29', '2003-02-07', '2003-02-02', 'Shipped', NULL, 119),
(10104, '2003-01-31', '2003-02-09', '2003-02-01', 'Shipped', NULL, 121);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `customerNumber` int(11) NOT NULL,
  `checkNumber` varchar(50) NOT NULL,
  `paymentDate` date NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`customerNumber`, `checkNumber`, `paymentDate`, `amount`) VALUES
(103, 'HQ336336', '2004-10-19', 6066.78),
(103, 'JM555205', '2003-06-05', 14571.44),
(112, 'BO864823', '2004-12-17', 14191.12),
(112, 'HQ55022', '2003-06-06', 32641.98),
(112, 'ND748579', '2004-08-20', 33347.88),
(114, 'GG31455', '2003-05-20', 45864.03),
(114, 'MA765515', '2004-12-15', 82261.22),
(119, 'DB933704', '2004-11-14', 19501.82),
(121, 'AO193470', '2003-05-31', 40156.89),
(121, 'SK109234', '2003-05-31', 7565.08);

-- --------------------------------------------------------

--
-- Table structure for table `productlines`
--

CREATE TABLE `productlines` (
  `productLine` varchar(50) NOT NULL,
  `textDescription` varchar(4000) DEFAULT NULL,
  `htmlDescription` mediumtext DEFAULT NULL,
  `image` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productlines`
--

INSERT INTO `productlines` (`productLine`, `textDescription`, `htmlDescription`, `image`) VALUES
('Classic Cars', 'This is text Description for Classic Cars', NULL, NULL),
('Motorcycles', 'This is text Description for Motorcycles', NULL, NULL),
('Planes', 'This is text Description for Planes', NULL, NULL),
('Ships', 'This is text Description for Ships.', NULL, NULL),
('Trains', 'This is text Description for Trains', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productCode` varchar(15) NOT NULL,
  `productName` varchar(70) NOT NULL,
  `productLine` varchar(50) NOT NULL,
  `productScale` varchar(10) NOT NULL,
  `productVendor` varchar(50) NOT NULL,
  `productDescription` text NOT NULL,
  `quantityInStock` smallint(6) NOT NULL,
  `buyPrice` decimal(10,2) NOT NULL,
  `MSRP` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productCode`, `productName`, `productLine`, `productScale`, `productVendor`, `productDescription`, `quantityInStock`, `buyPrice`, `MSRP`) VALUES
('S10-1999', '1937 Yamato Battleship', 'Ships', '1:10', 'Yoshimura', 'This is product Description for Yamato Battleship.', 5582, 91.02, 193.66),
('S3-75', '2016 Lockheed Martin', 'Planes', '1:10', 'CALF', 'This is product Description for Lockheed Martin.', 3252, 85.68, 136.00),
('S4-24', '1952 Alpine Renault 1300', 'Classic Cars', '1:10', 'Renault', 'This is product Description for Alpine Renault 1300', 7305, 98.58, 214.30),
('S5-11', '1969 Harley Davidson Ultimate Chopper', 'Motorcycles', '1:10', 'Harley Davidson', 'This is product Description for Harley Davidson.', 7933, 48.81, 95.70),
('S8-15', '2002 Nissan Skyline GT-R', 'Classic Cars', '1:10', 'Nissan', 'This is product Description for Nissan Skyline GT-R.', 6625, 68.99, 118.94);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerNumber`),
  ADD KEY `salesRepEmployeeNumber` (`salesRepEmployeeNumber`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employeeNumber`),
  ADD KEY `reportsTo` (`reportsTo`),
  ADD KEY `officeCode` (`officeCode`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`officeCode`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderNumber`,`productCode`),
  ADD KEY `productCode` (`productCode`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderNumber`),
  ADD KEY `customerNumber` (`customerNumber`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`customerNumber`,`checkNumber`);

--
-- Indexes for table `productlines`
--
ALTER TABLE `productlines`
  ADD PRIMARY KEY (`productLine`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productCode`),
  ADD KEY `productLine` (`productLine`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`salesRepEmployeeNumber`) REFERENCES `employees` (`employeeNumber`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`reportsTo`) REFERENCES `employees` (`employeeNumber`),
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`officeCode`) REFERENCES `offices` (`officeCode`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`orderNumber`) REFERENCES `orders` (`orderNumber`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`productCode`) REFERENCES `products` (`productCode`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`productLine`) REFERENCES `productlines` (`productLine`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

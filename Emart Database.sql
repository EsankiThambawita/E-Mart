-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 08:28 PM
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
-- Database: `emart`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminusers`
--

CREATE TABLE `adminusers` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminusers`
--

INSERT INTO `adminusers` (`email`, `password`) VALUES
('admin1@gmail.com', 'password1'),
('admin2@gmail.com', 'password2'),
('admin3@gmail.com', 'password3');

-- --------------------------------------------------------

--
-- Table structure for table `camera`
--

CREATE TABLE `camera` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `photo1` text DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `modelName` varchar(255) DEFAULT NULL,
  `productDescription` text DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `formFactor` varchar(255) DEFAULT NULL,
  `photo2` varchar(255) DEFAULT NULL,
  `photo3` varchar(255) DEFAULT NULL,
  `photo4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `camera`
--

INSERT INTO `camera` (`productId`, `productName`, `price`, `quantity`, `photo1`, `brand`, `modelName`, `productDescription`, `category`, `formFactor`, `photo2`, `photo3`, `photo4`) VALUES
(101, 'Compact Camera A', 49999, 30, 'Images\\ProductImages\\Cameras\\NikonD5600.png', 'PixelPerfect', 'CamA-100', 'Capture every moment with the Compact Camera A.', 'camera', 'Point-and-Shoot', NULL, NULL, NULL),
(102, 'DSLR Camera X', 89999, 20, 'Images\\ProductImages\\Cameras\\NikonD5600.png', 'ProShot', 'DSLRX-2000', 'Unleash your creativity with the DSLR Camera X.', 'camera', 'SLR', NULL, NULL, NULL),
(103, 'Mirrorless Camera Z', 129999, 10, 'Images\\ProductImages\\Cameras\\NikonD5600.png', 'InnoVision', 'MirrorZ-500', 'Experience the future of photography with the Mirrorless Camera Z.', 'camera', 'Compact System', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE `laptop` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `photo1` text DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `modelName` varchar(255) DEFAULT NULL,
  `productDescription` text DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `storageCapacity` varchar(255) DEFAULT NULL,
  `CPU` varchar(255) DEFAULT NULL,
  `memory` varchar(255) DEFAULT NULL,
  `photo2` varchar(255) DEFAULT NULL,
  `photo3` varchar(255) DEFAULT NULL,
  `photo4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laptop`
--

INSERT INTO `laptop` (`productId`, `productName`, `price`, `quantity`, `photo1`, `brand`, `modelName`, `productDescription`, `category`, `storageCapacity`, `CPU`, `memory`, `photo2`, `photo3`, `photo4`) VALUES
(201, 'Laptop A', 89999, 69, 'Images\\ProductImages\\Laptops\\AcerChromebookSpin.png', 'TechCo', 'LaptopA-1000', 'Powerful and versatile, the Laptop A is designed to handle all your computing needs.', 'laptop', '512GB SSD', 'Intel Core i7', '16GB RAM', 'null', 'null', 'null'),
(203, 'UltraBook Z', 179999, 20, 'Images\\ProductImages\\Laptops\\AcerChromebookSpin.png', 'UltraTech', 'UltraZ-5000', 'Sleek and lightweight, the UltraBook Z is perfect for professionals on the go.', 'laptop', '256GB SSD', 'Intel Core i5', '8GB RAM', NULL, NULL, NULL),
(204, 'name', 12312, 243, 'Images\\ProductImages\\Laptops\\AcerChromebookSpin.png', 'Brand u', 'balls', 'balls', 'laptop', '234', 'intel', '2324', 'Images/Home/Images/Home/S21.png', 'Images/Home/Images/Home/S21.png', 'Images/Home/Images/Home/S21.png');

-- --------------------------------------------------------

--
-- Table structure for table `monitor`
--

CREATE TABLE `monitor` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `photo1` text DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `modelName` varchar(255) DEFAULT NULL,
  `productDescription` text DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `screenSize` varchar(255) DEFAULT NULL,
  `refreshRate` int(11) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `photo2` varchar(255) DEFAULT NULL,
  `photo3` varchar(255) DEFAULT NULL,
  `photo4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `monitor`
--

INSERT INTO `monitor` (`productId`, `productName`, `price`, `quantity`, `photo1`, `brand`, `modelName`, `productDescription`, `category`, `screenSize`, `refreshRate`, `resolution`, `photo2`, `photo3`, `photo4`) VALUES
(301, 'HD Monitor 24\"', 14999, 50, 'Images\\ProductImages\\Monitors\\AsusProArtDisplayPA278CV.png', 'TechCo', 'HD-2400', 'Experience stunning visuals with the HD Monitor 24\".', 'monitor', '24 inches', 60, '1920x1080', NULL, NULL, NULL),
(302, 'Gaming Monitor 27\"', 29999, 30, 'Images\\ProductImages\\Monitors\\AsusProArtDisplayPA278CV.png', 'GamingGear', 'GamerX-270', 'Immerse yourself in the world of gaming with the Gaming Monitor 27\".', 'monitor', '27 inches', 144, '2560x1440', NULL, NULL, NULL),
(303, 'UltraWide Monitor 34\"', 49999, 20, 'Images\\ProductImages\\Monitors\\AsusProArtDisplayPA278CV.png', 'UltraTech', 'UltraView-3400', 'Enhance your productivity with the UltraWide Monitor 34\".', 'monitor', '34 inches', 75, '3440x1440', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `orderStatus` varchar(50) DEFAULT NULL,
  `totalPrice` int(11) DEFAULT NULL,
  `feedback` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `recordId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `iconPath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`recordId`, `productId`, `email`, `productName`, `productPrice`, `quantity`, `description`, `category`, `iconPath`) VALUES
(40, 101, 'admin1@gmail.com', 'Compact Camera A', 49999, 1, 'Capture every moment with the Compact Camera A.', 'camera', 'Images/Home/S22.png');

-- --------------------------------------------------------

--
-- Table structure for table `smartphone`
--

CREATE TABLE `smartphone` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `photo1` text DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `modelName` varchar(255) DEFAULT NULL,
  `productDescription` text DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `storageCapacity` varchar(255) DEFAULT NULL,
  `screenSize` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `photo2` varchar(255) DEFAULT NULL,
  `photo3` varchar(255) DEFAULT NULL,
  `photo4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smartphone`
--

INSERT INTO `smartphone` (`productId`, `productName`, `price`, `quantity`, `photo1`, `brand`, `modelName`, `productDescription`, `category`, `storageCapacity`, `screenSize`, `color`, `photo2`, `photo3`, `photo4`) VALUES
(401, 'Smartphone Z', 324000, 56, 'Images/Home/S22.png', 'Brand u', 'Model A', 'Description A', 'smartphone', '64GB', '6.2', 'blue', 'Images/Home/S21.png', 'Images/Home/S21.png', 'Images/Home/S21.png'),
(404, 'Smartphone A', 560000, 56, 'Images/Home/S22.png', 'Brand X', 'smartphone', 'you are weird', 'smartphone', '456', '6.5', 'brown', 'Images/Home/S22.png', 'Images/Home/S22.png', 'Images/Home/S22.png'),
(405, 'Smartphone W', 123000, 56, 'Images/Home/S22.png', 'Brand X', 'smartphone', 'your big pool', 'smartphone', '456', '6.7', 'brown', 'Images/Home/S22.png', 'Images/Home/S22.png', 'Images/Home/S22.png');

-- --------------------------------------------------------

--
-- Table structure for table `smartwatch`
--

CREATE TABLE `smartwatch` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `photo1` text DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `modelName` varchar(255) DEFAULT NULL,
  `productDescription` text DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `screenSize` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `photo2` varchar(255) DEFAULT NULL,
  `photo3` varchar(255) DEFAULT NULL,
  `photo4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smartwatch`
--

INSERT INTO `smartwatch` (`productId`, `productName`, `price`, `quantity`, `photo1`, `brand`, `modelName`, `productDescription`, `category`, `screenSize`, `color`, `photo2`, `photo3`, `photo4`) VALUES
(501, 'AppleS9', 14999, 100, 'Images\\ProductImages\\SmartWatches\\AppleS9.png', 'TechCo', 'SW2000', 'The Smartwatch 2000 is packed with features for your active lifestyle.', 'smartwatch', '1.3 inches', 'Black', NULL, NULL, NULL),
(502, 'GalaxyWatch7', 19999, 50, 'Images\\ProductImages\\SmartWatches\\GalaxyWatch7.webp', 'FitTech', 'SFW Pro', 'Stay on top of your fitness goals with the Smart Fitness Watch Pro.', 'smartwatch', '1.5 inches', 'Blue', NULL, NULL, NULL),
(503, 'GooglePixel2 watch', 29999, 75, 'Images\\ProductImages\\SmartWatches\\GooglePixel2.png', 'XGadgets', 'PSW X', 'Experience the future of wearable technology with the Premium Smartwatch X.', 'smartwatch', '1.4 inches', 'Silver', NULL, NULL, NULL),
(504, 'OnePlus watch', 123000, 69, 'Images\\ProductImages\\SmartWatches\\OneplusWatch.png', 'Brand X', 'smartwatch', 'Experience the future of wearable technology with the one plus watch', 'smartwatch', '4.5', 'cyan', 'Images/Home/Images/Home/S22.png', 'Images/Home/Images/Home/S22.png', 'Images/Home/Images/Home/S22.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNumber` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `username`, `password`, `contactNumber`) VALUES
('user@gmail.com', '7roro7', '12345678', '0763055079');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminusers`
--
ALTER TABLE `adminusers`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `camera`
--
ALTER TABLE `camera`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `laptop`
--
ALTER TABLE `laptop`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`recordId`);

--
-- Indexes for table `smartphone`
--
ALTER TABLE `smartphone`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `smartwatch`
--
ALTER TABLE `smartwatch`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  MODIFY `recordId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

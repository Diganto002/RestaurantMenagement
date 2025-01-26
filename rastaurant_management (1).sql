-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2024 at 09:01 PM
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
-- Database: `rastaurant_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `phone`, `password`) VALUES
(13, 'akash', '01812423122', '1122'),
(14, 'sobuj mia', '01714151621', '1122'),
(15, 'khaled khan', '01513141611', '1122'),
(240966, 'joy', '01736514141', '$2y$10$c04x2t5dj84OQfAODUs4e.eYh2489fyHbiBOu4lPOAOtdIDq1D9Qu'),
(240995, 'joy', '01383745633', '$2y$10$KqenRFEIPxD1t8cnZNLYIe145IKABmw6ZD.72XR3EVZib4yD9.SD.'),
(90924178, 'Minhaz', '01319553623', '$2y$10$J9iJgfySuujaZNQ6eMNNfO1u/ZbWYdlW.bkh/IcD8wxoqB19GZvcq');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `food_id` int(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `food_id`, `message`) VALUES
(1, 'arif', 8, 'good'),
(4, 'rony', 7, 'average'),
(13, 'akhah', 13, 'not good'),
(14, 'sobuj', 10, 'very good');

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `availability` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_items`
--

INSERT INTO `food_items` (`id`, `name`, `price`, `description`, `category`, `availability`) VALUES
(5, 'Grilled Chicken Salad', 150.00, 'A hearty sandwich with grilled chicken, fresh lettuce, tomato, and a special mayo sauce, served in a toasted bun.', 'Sandwiche', 1),
(6, 'Margherita Pizza', 400.00, ' Classic Italian pizza topped with fresh mozzarella, tomatoes, and basil, drizzled with olive oil.', 'Pizza', 1),
(7, 'Hamburger', 180.00, 'Sandwich consisting of a cooked patty of ground meat placed between two bread buns.', 'burger', 1),
(8, 'French Fries', 120.00, 'Deep-fried potato strips.', 'fry', 1),
(9, 'white pasta', 200.00, 'An Italian dish made from durum wheat and water. It comes in a variety of shapes. and white sauces', 'pasta', 1),
(10, 'Milkshake', 90.00, 'a creamy beverage made by blending milk, ice cream, and flavorings.', 'Drinks', 1),
(12, 'Mozzarella Sticks', 200.00, 'breaded and fried cheese sticks, typically served with a side of marinara sauce.', 'fried', 1),
(13, 'Taco', 140.00, 'a traditional Mexican dish consisting of a folded or rolled tortilla filled with various ingredients.', 'bread', 1),
(14, 'Soda', 70.00, 'a sweetened carbonated beverage; known in some places as \"pop\" or \"cola\".', 'drinks', 1),
(15, 'Black coffee', 130.00, 'normal drink ', 'drinks', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `table_number` varchar(50) NOT NULL,
  `food_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `completed` tinyint(1) DEFAULT 0,
  `food_item_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_name`, `table_number`, `food_id`, `quantity`, `order_time`, `completed`, `food_item_id`) VALUES
(1, 'Rony', '13', 6, 2, '2024-09-11 05:40:10', 1, NULL),
(2, 'Minhaz', '7', 5, 2, '2024-09-11 05:48:09', 1, NULL),
(3, 'Rakib', '6', 5, 3, '2024-09-11 05:48:36', 1, NULL),
(4, 'joy', '11', 4, 4, '2024-09-14 10:45:29', 1, NULL),
(43, 'sajib', '4', 13, 1, '2024-09-14 17:54:52', 0, NULL),
(44, 'sajib', '4', 14, 1, '2024-09-14 17:54:52', 0, NULL),
(49, 'joy', '12', 12, 1, '2024-09-14 18:14:48', 0, NULL),
(50, 'joy', '12', 13, 2, '2024-09-14 18:14:48', 0, NULL),
(51, 'joy', '12', 14, 1, '2024-09-14 18:14:48', 0, NULL),
(52, 'joy', '12', 15, 1, '2024-09-14 18:14:48', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `payment_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `customer_name`, `order_id`, `payment_method`, `transaction_id`, `payment_date`) VALUES
(1, 'joy', 1, 'Mobile Payment', '12121212', '2024-09-14 23:07:20'),
(9, 'sajib', 44, 'cash', '1456', '2024-09-14 23:59:21'),
(11, 'amit', 2, 'bkash', '17865', '2024-09-15 00:00:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_id` (`food_id`);

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90924998;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food_items` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

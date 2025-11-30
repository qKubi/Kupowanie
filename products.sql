-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 30, 2025 at 06:01 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `amount` int(11) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `amount`, `category`) VALUES
(41, 'Wireless Mouse', 'Ergonomic wireless mouse with USB receiver', 24.99, 23, 'Accessories'),
(42, 'Gaming Keyboard', 'Mechanical keyboard with RGB lighting', 89.99, 59, 'Gaming'),
(43, 'Bluetooth Speaker', 'Portable speaker with deep bass', 49.99, 60, 'Audio'),
(44, 'Smartwatch Pro', 'Water-resistant smartwatch with heart-rate monitor', 129.99, 36, 'Wearables'),
(45, 'USB-C Charger', 'Fast charging 30W USB-C wall charger', 19.99, 200, 'Accessories'),
(46, '4K Monitor', '27-inch 4K UHD display with HDR', 329.00, 23, 'Computers'),
(47, 'Laptop Stand', 'Aluminum adjustable laptop stand', 34.99, 107, 'Accessories'),
(48, 'Wireless Earbuds', 'Noise-cancelling Bluetooth earbuds', 59.99, 87, 'Audio'),
(49, 'External SSD', '1TB portable SSD with USB 3.2', 149.00, 50, 'Storage'),
(50, 'Webcam HD', '1080p webcam with built-in microphone', 39.99, 75, 'Accessories'),
(51, 'Gaming Chair', 'Ergonomic gaming chair with lumbar support', 199.99, 9, 'Gaming'),
(52, 'Portable Hard Drive', '2TB USB 3.0 external hard drive', 79.99, 63, 'Storage'),
(53, 'Desk Lamp', 'LED desk lamp with adjustable brightness', 22.99, 104, 'Home & Office'),
(54, 'Graphic Tablet', 'Drawing tablet with pressure-sensitive pen', 89.00, 30, 'Creative Tools'),
(55, 'HDMI Cable', 'High-speed HDMI 2.1 cable (2 meters)', 12.99, 43, 'Cables'),
(56, 'Smartphone Case', 'Shock-resistant silicone phone case', 14.99, 210, 'Accessories'),
(57, 'Power Bank', '10000mAh portable power bank', 29.99, 140, 'Accessories'),
(58, 'Noise-Cancelling Headphones', 'Over-ear headphones with ANC', 149.99, 32, 'Audio'),
(59, 'Office Chair', 'Comfortable swivel office chair', 129.00, 20, 'Home & Office'),
(60, 'Mini Drone', 'Compact drone with 1080p camera', 99.99, 13, 'Drones');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 30, 2021 at 08:23 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_item_name` varchar(250) NOT NULL,
  `order_item_quantity` int(11) NOT NULL,
  `order_item_price` double(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`order_item_id`, `order_id`, `order_item_name`, `order_item_quantity`, `order_item_price`) VALUES
(1, 1, 'T-shirt 7', 1, 270.00),
(2, 2, 'T-shirt 1', 1, 350.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `order_id` int(11) NOT NULL,
  `order_number` int(11) NOT NULL,
  `order_total_amount` double(12,2) NOT NULL,
  `transaction_id` varchar(200) NOT NULL,
  `card_cvc` int(5) NOT NULL,
  `card_expiry_month` varchar(30) NOT NULL,
  `card_expiry_year` varchar(30) NOT NULL,
  `order_status` varchar(50) NOT NULL,
  `card_holder_number` varchar(250) NOT NULL,
  `email_address` varchar(250) NOT NULL,
  `customer_name` varchar(250) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_city` varchar(250) NOT NULL,
  `customer_pin` varchar(30) NOT NULL,
  `customer_state` varchar(250) NOT NULL,
  `customer_country` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`order_id`, `order_number`, `order_total_amount`, `transaction_id`, `card_cvc`, `card_expiry_month`, `card_expiry_year`, `order_status`, `card_holder_number`, `email_address`, `customer_name`, `customer_address`, `customer_city`, `customer_pin`, `customer_state`, `customer_country`) VALUES
(1, 413572, 270.00, 'txn_1J7uLNLLap2iyRQ7PVAxrBEP', 123, '12', '2021', 'succeeded', '4242424242424242', 'sokpiseth777@gmail.com', 'PISETH SOK', '#134\r\nSt.110', 'Phnom Penh', '13253', '12', 'Cambodia'),
(2, 656035, 350.00, 'txn_1J7uOjLLap2iyRQ7tP9SNfhn', 123, '12', '2021', 'succeeded', '5555555555554444', 'sokpiseth777@gmail.com', 'PISETH SOK', '#134\r\nSt.110', 'Phnom Penh', '13253', '12', 'Cambodia');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `image`, `price`) VALUES
(1, 'T-shirt 1', 'image-1.png', 350.00),
(2, 'T-shirt 2', 'image-2.png', 460.00),
(3, 'T-shirt 3', 'image-3.png', 400.00),
(4, 'T-shirt 4', 'image-4.png', 530.00),
(5, 'T-shirt 5', 'image-5.png', 400.00),
(6, 'T-shirt 6', 'image-6.png', 320.00),
(7, 'T-shirt 7', 'image-7.png', 270.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_table`
--
ALTER TABLE `order_table`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

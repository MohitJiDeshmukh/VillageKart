-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2023 at 08:14 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `village_kart_sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(2, 'Maruf', 'maruf@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` text NOT NULL,
  `brand_img` text NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`, `brand_img`, `cat_id`) VALUES
(13, 'sunshine bunkar', 'bunkar.png', 14),
(14, 'clayyed', 'clayyed.png', 13),
(15, 'bamboo box', 'bamboo_stool.jpg', 12),
(16, 'wood industries', 'wooden brand.jpeg', 11);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `costumer_email` varchar(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `payment_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `p_id`, `costumer_email`, `qty`, `payment_id`) VALUES
(25, 9, 'maruf771@gmail.com', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_img`) VALUES
(11, 'wooden product', ''),
(12, 'bamboo product', ''),
(13, 'clay product', ''),
(14, 'cotton product', ''),
(15, 'metal product', ''),
(16, 'fabrics', '');

-- --------------------------------------------------------

--
-- Table structure for table `costumers`
--

CREATE TABLE `costumers` (
  `costumer_id` int(11) NOT NULL,
  `costumer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `costumer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `costumer_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `costumer_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `costumer_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `costumer_contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `costumer_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `costumer_image` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `costumers`
--

INSERT INTO `costumers` (`costumer_id`, `costumer_name`, `costumer_email`, `costumer_pass`, `costumer_country`, `state`, `costumer_city`, `costumer_contact`, `costumer_address`, `costumer_image`) VALUES
(4, 'maruf', 'maruf771@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'India', 'Madhya Pradesh', 'indore ggdfd', '8718088870', 'azadnagar,indore', 'stud1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `costumer_orders`
--

CREATE TABLE `costumer_orders` (
  `order_id` int(11) NOT NULL,
  `costumer_id` int(11) NOT NULL,
  `due_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_products` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` date NOT NULL,
  `order_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m_order`
--

CREATE TABLE `m_order` (
  `id` int(11) NOT NULL,
  `costumer_email` varchar(255) NOT NULL,
  `bn` varchar(255) NOT NULL,
  `be` varchar(255) NOT NULL,
  `bp` varchar(255) NOT NULL,
  `ba` varchar(255) NOT NULL,
  `ba2` varchar(255) NOT NULL,
  `sn` varchar(255) NOT NULL,
  `se` varchar(255) NOT NULL,
  `sp` varchar(100) NOT NULL,
  `sa` varchar(255) NOT NULL,
  `sa2` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL,
  `payment_status` enum('Pending','Complete') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_order`
--

INSERT INTO `m_order` (`id`, `costumer_email`, `bn`, `be`, `bp`, `ba`, `ba2`, `sn`, `se`, `sp`, `sa`, `sa2`, `order_date`, `payment_status`) VALUES
(1, 'maruf771@gmail.com', 'wefrter', 'maruf771@gmail.com', 'erteete', 'rerrrete', 'teetertgtg', 'wefrter', 'maruf771@gmail.com', 'erteete', 'rerrrete', 'teetertgtg', '2023-03-22 10:57:04', 'Pending'),
(2, 'maruf771@gmail.com', 'Padana', 'Padana', 'sdfghj', 'Padana\r\nPadana', 'Padana\r\nPadana', 'Padana', 'Padana', 'sdfghj', 'Padana\r\nPadana', 'Padana\r\nPadana', '2023-03-29 11:35:01', 'Pending'),
(3, 'maruf771@gmail.com', 'Padana', 'Padana', '345678', 'Padana\r\nPadana', 'Padana\r\nPadana', 'Padana', 'Padana', '345678', 'Padana\r\nPadana', 'Padana\r\nPadana', '2023-03-29 11:36:12', 'Pending'),
(4, 'maruf771@gmail.com', 'Padana', 'Padana', '345678', 'Padana\r\nPadana', 'Padana\r\nPadana', 'Padana', 'Padana', '345678', 'Padana\r\nPadana', 'Padana\r\nPadana', '2023-03-29 11:36:59', 'Pending'),
(5, 'maruf771@gmail.com', 'sdfgh', 'maruf771@gmail.com', 'ertyj', 'asdfghjergh', 'dfghj', 'sdfgh', 'maruf771@gmail.com', 'ertyj', 'asdfghjergh', 'dfghj', '2023-03-29 11:37:42', 'Pending'),
(6, 'maruf771@gmail.com', 'Padana', 'Padana', 'sedfghjk', 'sdfghjk', 'dfghj,', 'Padana', 'Padana', 'sedfghjk', 'sdfghjk', 'dfghj,', '2023-03-29 11:38:57', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `costumer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT current_timestamp(),
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_id`, `costumer_email`, `invoice_no`, `amount`, `payment_date`, `payment_status`) VALUES
(1, '', 'maruf771@gmail.com', 1679462861, '350', '2023-03-22 10:57:05', 'Pending'),
(2, '', 'maruf771@gmail.com', 1680070101, '250', '2023-03-29 11:37:45', 'Pending'),
(3, '', 'maruf771@gmail.com', 1680070174, '250', '2023-03-29 11:38:58', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `costumer_id` int(11) NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `brand_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_dsc` varchar(255) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL,
  `status` text NOT NULL,
  `product_keywords` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `cat_id`, `brand_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_dsc`, `status`, `product_keywords`) VALUES
(9, 14, 13, '2023-03-15 06:29:36', 'bedsheet', 'bedsheet.png', '', '', 250, 'pure cotton bedsheet', 'on', 'bedsheet,cotton bedsheet,'),
(10, 13, 14, '2023-03-15 06:31:52', 'handi', 'mitti_handi.jpg', '', '', 150, 'An clay product used for cook food', 'on', 'handy,handi,cooker'),
(11, 13, 14, '2023-03-15 06:35:15', 'bhojan thali', 'bhojan_thali.jpg', '', '', 200, 'bhojan thali', 'on', 'thali,bhojan thali'),
(12, 12, 15, '2023-03-15 06:39:04', 'bamboo stool', 'bamboo_stool.jpg', '', '', 199, 'gfgfgfdgjdfgfgrgerfgdrfer', 'on', 'stool,bamboo stool,chair');

-- --------------------------------------------------------

--
-- Table structure for table `s_order`
--

CREATE TABLE `s_order` (
  `id` int(11) NOT NULL,
  `m_order_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `costumer_email` varchar(255) NOT NULL,
  `deliver_status` enum('NOT DELIVER YET','DELIVERD') NOT NULL DEFAULT 'NOT DELIVER YET'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `s_order`
--

INSERT INTO `s_order` (`id`, `m_order_id`, `p_id`, `qty`, `product_price`, `costumer_email`, `deliver_status`) VALUES
(1, 1, 10, 1, 150, 'maruf771@gmail.com', 'NOT DELIVER YET'),
(2, 1, 11, 1, 200, 'maruf771@gmail.com', 'NOT DELIVER YET'),
(3, 2, 9, 1, 250, 'maruf771@gmail.com', 'NOT DELIVER YET'),
(4, 3, 9, 1, 250, 'maruf771@gmail.com', 'NOT DELIVER YET'),
(5, 4, 9, 1, 250, 'maruf771@gmail.com', 'NOT DELIVER YET'),
(6, 5, 9, 1, 250, 'maruf771@gmail.com', 'NOT DELIVER YET'),
(7, 6, 9, 1, 250, 'maruf771@gmail.com', 'NOT DELIVER YET');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `costumers`
--
ALTER TABLE `costumers`
  ADD PRIMARY KEY (`costumer_id`);

--
-- Indexes for table `costumer_orders`
--
ALTER TABLE `costumer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `m_order`
--
ALTER TABLE `m_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `s_order`
--
ALTER TABLE `s_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `m_order_id` (`m_order_id`),
  ADD KEY `p_id` (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `costumers`
--
ALTER TABLE `costumers`
  MODIFY `costumer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `costumer_orders`
--
ALTER TABLE `costumer_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m_order`
--
ALTER TABLE `m_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `s_order`
--
ALTER TABLE `s_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`) ON DELETE NO ACTION;

--
-- Constraints for table `s_order`
--
ALTER TABLE `s_order`
  ADD CONSTRAINT `s_order_ibfk_1` FOREIGN KEY (`m_order_id`) REFERENCES `m_order` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `s_order_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

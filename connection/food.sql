-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2023 at 10:24 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`name`, `phone`, `email`, `password`, `address`) VALUES
('Amir', '1234567890', '19@nirmauni.ac.in', 'Amir@123', 'Surendranagar'),
('Kalp', '1234567890', '20@nirmauni.ac.in', 'Kalp@123', 'Visnangar'),
('Aaryaveer', '1234567890', '21@nirmauni.ac.in', 'Akr@1234', 'Ahmedabad'),

-- --------------------------------------------------------

--
-- Table structure for table `foodlist`
--

CREATE TABLE `foodlist` (
  `id` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `images` varchar(200) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foodlist`
--

INSERT INTO `foodlist` (`id`, `name`, `price`, `description`, `images`, `status`) VALUES
(2, 'Gujarati thali', 110, 'This is special gujarati thali', 'https://4.imimg.com/data4/AP/VG/ANDROID-37526939/product-500x500.jpeg', 'ENABLE'),
(3, 'Punjabi thali', 150, 'this is punjabi thali', 'https://www.nehascookbook.com/wp-content/uploads/2021/08/Punjabi-thali-WS-1.jpg', 'ENABLE'),
(4, 'Italian Pizza', 200, 'this is italian special pizza', 'https://www.vegrecipesofindia.com/wp-content/uploads/2020/11/pizza-recipe-2-500x375.jpg', 'ENABLE'),
(5, 'Rajasthani Thali', 140, 'this is rajasthani thali', 'https://d4t7t8y8xqo0t.cloudfront.net/resized/750X436/eazytrendz%2F3462%2Ftrend20220321090619.jpg', 'ENABLE'),
(6, 'Noodles with manchurian', 110, 'this is chinese special chinese manchurian with noodles', 'https://www.merisaheli.com/wp-content/uploads/2018/03/MANCHURIAN-NOODLES.jpg', 'ENABLE'),
(7, 'Dabeli', 20, 'this is kacch special dabeli', 'https://www.whiskaffair.com/wp-content/uploads/2019/06/Dabeli-1-3.jpg', 'ENABLE'),
(8, 'Vadapav', 25, 'this is bombay vadapav', 'https://www.cookwithmanali.com/wp-content/uploads/2018/04/Vada-Pav-500x500.jpg', 'ENABLE'),
(9, 'Bhel', 50, 'this is ahmedabadi', 'https://shwetainthekitchen.com/wp-content/uploads/2022/01/bhel-puri.jpg', 'ENABLE'),
(10, 'biriyani', 250, 'this is hydrabadi dum biriyani', 'https://www.indianhealthyrecipes.com/wp-content/uploads/2021/12/chicken-biryani-recipe.jpg', 'ENABLE'),
(11, 'Chinese bhel', 90, 'this is chinese bhel', 'https://i0.wp.com/foodontvnetwork.com/wp-content/uploads/2017/07/Easy-Chinese-Bhel-Recipe-Photo..jpg?resize=696%2C392&ssl=1', 'ENABLE'),
(12, 'Samosa', 20, 'this is Samosa', 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Samosachutney.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `foodorder`
--

CREATE TABLE `foodorder` (
  `id` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL DEFAULT curdate(),
  `order_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foodorder`
--

INSERT INTO `foodorder` (`id`, `name`, `price`, `quantity`, `order_date`, `order_id`) VALUES
(21, 'Gujarati thali', 110, 1, '2022-05-02', '665596'),
(22, 'Punjabi thali', 150, 3, '2022-05-02', '665596'),
(23, 'Vadapav', 25, 3, '2022-05-02', '665596'),
(24, 'Dabeli', 20, 1, '2022-05-02', '371599'),
(25, 'Italian Pizza', 200, 1, '2022-05-02', '371599'),
(26, 'Bhel', 50, 5, '2022-05-02', '371599'),
(27, 'Noodles with manchurian', 110, 2, '2022-05-02', '371599'),
(28, 'Gujarati thali', 110, 3, '2022-05-05', '142263'),
(29, 'Italian Pizza', 200, 2, '2022-05-05', '142263'),
(30, 'Dabeli', 20, 2, '2022-05-05', '142263');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foodlist`
--
ALTER TABLE `foodlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foodorder`
--
ALTER TABLE `foodorder`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `foodlist`
--
ALTER TABLE `foodlist`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `foodorder`
--
ALTER TABLE `foodorder`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

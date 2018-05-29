-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 03, 2018 at 07:23 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Buffet`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_credential`
--

CREATE TABLE `admin_credential` (
  `id` int(1) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_credential`
--

INSERT INTO `admin_credential` (`id`, `password`) VALUES
(1, 'ankit');

-- --------------------------------------------------------

--
-- Table structure for table `blog_feeds`
--

CREATE TABLE `blog_feeds` (
  `blog_id` int(10) NOT NULL,
  `user` int(5) NOT NULL,
  `url` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `timestamp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_feeds`
--

INSERT INTO `blog_feeds` (`blog_id`, `user`, `url`, `caption`, `timestamp`) VALUES
(1, 1, 'http://res.cloudinary.com/buffet/image/upload/v1509286835/aj8jwmlja26gwpuhtdvw.png', 'Yeah...Enjoying', '1509303499'),
(2, 2, 'http://res.cloudinary.com/buffet/image/upload/v1509652780/vuhb9nftxmzfayghtcsx.jpg', 'Its Yummy..Everyone should try this.', '1509652963'),
(3, 1, 'http://res.cloudinary.com/buffet/image/upload/v1509652780/vuhb9nftxmzfayghtcsx.jpg', 'Yes its nice', '1509652993'),
(4, 1, 'http://res.cloudinary.com/buffet/image/upload/v1509652780/vuhb9nftxmzfayghtcsx.jpg', 'Pizza is always delicious', '1509652963'),
(5, 1, 'http://res.cloudinary.com/buffet/image/upload/v1509652780/vuhb9nftxmzfayghtcsx.jpg', 'Pizza is always delicious part 2', '1509652963'),
(6, 1, 'http://res.cloudinary.com/buffet/image/upload/v1509652780/vuhb9nftxmzfayghtcsx.jpg', 'Pizza is always delicious part 3', '1509652963'),
(7, 1, 'http://res.cloudinary.com/buffet/image/upload/v1509652780/vuhb9nftxmzfayghtcsx.jpg', 'Pizza is always delicious part 4', '1509652963'),
(8, 1, 'http://res.cloudinary.com/buffet/image/upload/v1509652780/vuhb9nftxmzfayghtcsx.jpg', 'Pizza is always delicious part 5', '1509652963');

-- --------------------------------------------------------

--
-- Table structure for table `blog_likes`
--

CREATE TABLE `blog_likes` (
  `id` int(5) NOT NULL,
  `blog_id` int(10) NOT NULL,
  `likes` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_likes`
--

INSERT INTO `blog_likes` (`id`, `blog_id`, `likes`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 4, 1),
(5, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `combo_menu`
--

CREATE TABLE `combo_menu` (
  `combo_id` int(10) NOT NULL,
  `combo_details` varchar(255) NOT NULL,
  `offer_detail` varchar(255) NOT NULL,
  `price` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `extra_menu`
--

CREATE TABLE `extra_menu` (
  `extra_id` int(10) NOT NULL,
  `menu_id` int(10) NOT NULL,
  `extra_topping` int(11) NOT NULL,
  `topping_type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu_category`
--

CREATE TABLE `menu_category` (
  `cat_id` int(10) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `sub_category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_category`
--

INSERT INTO `menu_category` (`cat_id`, `category_name`, `sub_category_name`) VALUES
(1, 'Sides', 'Breads'),
(2, 'Sides', 'Pasta'),
(3, 'Pizza', 'Veg Singles'),
(4, 'Pizza', 'Veg Divine'),
(5, 'Pizza', 'Veg Delight'),
(6, 'Pizza', 'Veg Delicious'),
(7, 'Chinese', 'Veg Delicious'),
(8, 'Mexican', 'Veg Delicious'),
(9, 'Italian', 'Mix Delicious'),
(10, 'Continental', 'Veg Delicious'),
(11, 'Desserts', 'Veg Delicious'),
(12, 'Dim Sum', 'Fast Food'),
(13, 'French', 'Mix Delicious'),
(14, 'Grill', 'Veg Delicious'),
(15, 'Gujarati', 'Veg Delicious'),
(16, 'Hyderabadi', 'Veg Delicious'),
(17, 'Indonesian', 'Veg Delicious'),
(18, 'Kashmiri', 'Veg Delicious'),
(19, 'Kebab', 'Veg Delicious'),
(20, 'Seafood', 'Veg Delicious'),
(21, 'South Indian', 'Veg Delicious'),
(22, 'Spanish', 'Veg Delicious'),
(23, 'Drinks', 'Mix');

-- --------------------------------------------------------

--
-- Table structure for table `menu_initial`
--

CREATE TABLE `menu_initial` (
  `id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `price` varchar(10) NOT NULL,
  `size` varchar(10) NOT NULL,
  `offer_id` int(5) NOT NULL,
  `topping_count` int(2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_initial`
--

INSERT INTO `menu_initial` (`id`, `category_id`, `menu_name`, `price`, `size`, `offer_id`, `topping_count`, `image`) VALUES
(1, 1, 'Cheese Bomb', '69', 'Regular', 1, 1, 'http://del.h-cdn.co/assets/17/17/1024x512/landscape-1493410249-mac-and-cheese-bombs-3.jpg'),
(2, 1, 'Cheese Garlic Bread', '89', 'Regular', 1, 1, 'http://del.h-cdn.co/assets/17/17/1024x512/landscape-1493410249-mac-and-cheese-bombs-3.jpg'),
(3, 1, 'Stuffed Garlic Bread', '99', 'Regular', 1, 1, 'http://del.h-cdn.co/assets/17/17/1024x512/landscape-1493410249-mac-and-cheese-bombs-3.jpg'),
(4, 2, 'Stuffed Red Sauce Pasta', '119', 'Regular', 1, 1, 'http://del.h-cdn.co/assets/17/17/1024x512/landscape-1493410249-mac-and-cheese-bombs-3.jpg'),
(5, 2, 'Authentic White Sauce Pasta', '129', 'Regular', 1, 1, 'http://del.h-cdn.co/assets/17/17/1024x512/landscape-1493410249-mac-and-cheese-bombs-3.jpg'),
(6, 2, 'Mac And Cheese', '159', 'Regular', 1, 1, 'http://del.h-cdn.co/assets/17/17/1024x512/landscape-1493410249-mac-and-cheese-bombs-3.jpg'),
(7, 2, 'YP Pasta', '179', 'Regular', 1, 1, 'http://del.h-cdn.co/assets/17/17/1024x512/landscape-1493410249-mac-and-cheese-bombs-3.jpg'),
(8, 3, 'Veggie Signles', '55', 'Regular', 1, 1, 'https://images2.alphacoders.com/970/97040.jpg'),
(9, 3, 'Yours Signles', '65', 'Regular', 1, 1, 'https://images2.alphacoders.com/970/97040.jpg'),
(10, 3, 'Cheesy Signles', '65', 'Regular', 1, 1, 'https://images2.alphacoders.com/970/97040.jpg'),
(11, 4, 'Yours Pizza', '179', 'Regular', 1, 1, 'http://mosaicon.hu/wallpapers/etel---ital/fullhd-hatterkep-mosaicon-583478859-pizza_largethumb.jpg'),
(12, 4, 'Yours Pizza', '239', 'Medium', 1, 1, 'http://mosaicon.hu/wallpapers/etel---ital/fullhd-hatterkep-mosaicon-583478859-pizza_largethumb.jpg'),
(13, 4, 'Yours Pizza', '345', 'Large', 1, 1, 'http://mosaicon.hu/wallpapers/etel---ital/fullhd-hatterkep-mosaicon-583478859-pizza_largethumb.jpg'),
(14, 4, 'Pine Pizza', '365', 'Large', 1, 1, 'http://mosaicon.hu/wallpapers/etel---ital/fullhd-hatterkep-mosaicon-583478859-pizza_largethumb.jpg'),
(15, 4, 'Pine Pizza', '259', 'Medium', 1, 1, 'http://mosaicon.hu/wallpapers/etel---ital/fullhd-hatterkep-mosaicon-583478859-pizza_largethumb.jpg'),
(16, 4, 'Pine Pizza', '199', 'Regular', 1, 1, 'http://mosaicon.hu/wallpapers/etel---ital/fullhd-hatterkep-mosaicon-583478859-pizza_largethumb.jpg'),
(17, 4, 'Pizza Spicy', '209', 'Regular', 1, 1, 'http://mosaicon.hu/wallpapers/etel---ital/fullhd-hatterkep-mosaicon-583478859-pizza_largethumb.jpg'),
(18, 4, 'Pizza Spicy', '289', 'Medium', 1, 1, 'http://mosaicon.hu/wallpapers/etel---ital/fullhd-hatterkep-mosaicon-583478859-pizza_largethumb.jpg'),
(19, 4, 'Pizza Spicy', '385', 'Large', 1, 1, 'http://mosaicon.hu/wallpapers/etel---ital/fullhd-hatterkep-mosaicon-583478859-pizza_largethumb.jpg'),
(20, 4, 'Pizza Heaven', '475', 'Large', 1, 1, 'http://mosaicon.hu/wallpapers/etel---ital/fullhd-hatterkep-mosaicon-583478859-pizza_largethumb.jpg'),
(21, 4, 'Pizza Heaven', '339', 'Medium', 1, 1, 'http://mosaicon.hu/wallpapers/etel---ital/fullhd-hatterkep-mosaicon-583478859-pizza_largethumb.jpg'),
(22, 4, 'Pizza Heaven', '339', 'Regular', 1, 1, 'http://mosaicon.hu/wallpapers/etel---ital/fullhd-hatterkep-mosaicon-583478859-pizza_largethumb.jpg'),
(23, 5, 'BBQ Delight', '350', 'Medium', 1, 1, 'http://dinosdeli.us/wp-content/uploads/2016/05/Pita-Pizza-Dinos-menu-card.jpg'),
(24, 5, 'Country Delight', '370', 'Medium', 1, 1, 'http://dinosdeli.us/wp-content/uploads/2016/05/Pita-Pizza-Dinos-menu-card.jpg'),
(25, 5, 'YP Delight', '390', 'Medium', 1, 1, 'http://dinosdeli.us/wp-content/uploads/2016/05/Pita-Pizza-Dinos-menu-card.jpg'),
(26, 6, 'Cheese Pizza', '69', 'Regular', 1, 1, 'http://www.primantibros.com/resources/images/our-food_pizza.jpg'),
(27, 6, 'Cheese Tomato Pizza', '89', 'Regular', 1, 1, 'http://www.primantibros.com/resources/images/our-food_pizza.jpg'),
(28, 6, 'Cheese Tomato Pizza', '169', 'Medium', 1, 1, 'http://www.primantibros.com/resources/images/our-food_pizza.jpg'),
(29, 6, 'Cheese Tomato Pizza', '205', 'Large', 1, 1, 'http://www.primantibros.com/resources/images/our-food_pizza.jpg'),
(30, 6, 'Cheese Pizza', '195', 'Large', 1, 1, 'http://www.primantibros.com/resources/images/our-food_pizza.jpg'),
(31, 6, 'Cheese Pizza', '149', 'Medium', 1, 1, 'http://www.primantibros.com/resources/images/our-food_pizza.jpg'),
(32, 6, 'Pizza Veggie', '189', 'Medium', 1, 1, 'http://www.primantibros.com/resources/images/our-food_pizza.jpg'),
(33, 6, 'Pizza Veggie', '149', 'Regular', 1, 1, 'http://www.primantibros.com/resources/images/our-food_pizza.jpg'),
(34, 6, 'Pizza Veggie', '265', 'Large', 1, 1, 'http://www.primantibros.com/resources/images/our-food_pizza.jpg'),
(35, 6, 'Pizza Paneer', '285', 'Large', 1, 1, 'http://www.primantibros.com/resources/images/our-food_pizza.jpg'),
(36, 6, 'Pizza Paneer', '199', 'Medium', 1, 1, 'http://www.primantibros.com/resources/images/our-food_pizza.jpg'),
(37, 6, 'Pizza Paneer', '139', 'Regular', 1, 1, 'http://www.primantibros.com/resources/images/our-food_pizza.jpg'),
(38, 6, 'Pizza Mushroom', '139', 'Regular', 1, 1, 'http://www.primantibros.com/resources/images/our-food_pizza.jpg'),
(39, 6, 'Pizza Mushroom', '199', 'Medium', 1, 1, 'http://www.primantibros.com/resources/images/our-food_pizza.jpg'),
(40, 6, 'Pizza Mushroom', '285', 'Large', 1, 1, 'http://www.primantibros.com/resources/images/our-food_pizza.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `offer_id` int(20) NOT NULL,
  `offer_details` varchar(255) NOT NULL,
  `discount_price` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`offer_id`, `offer_details`, `discount_price`) VALUES
(1, 'N/A', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `orders_history`
--

CREATE TABLE `orders_history` (
  `order_id` int(255) NOT NULL,
  `date` varchar(15) NOT NULL,
  `menu_id` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `order_type` varchar(25) NOT NULL,
  `order_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `toppings`
--

CREATE TABLE `toppings` (
  `topping_id` int(11) NOT NULL,
  `topping_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toppings`
--

INSERT INTO `toppings` (`topping_id`, `topping_name`) VALUES
(1, 'Extra Cheese, Allepano'),
(2, 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `users_profile`
--

CREATE TABLE `users_profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_profile`
--

INSERT INTO `users_profile` (`user_id`, `name`, `phone`, `email`, `dob`, `gender`, `location`) VALUES
(1, 'Ankit Maurya', '8630381197', 'ankitmaurya1994@gmail.com', '05/11/1994', 'm', 'KIET, Ghaziabad'),
(2, 'Akshay Sharma', '7017898915', 'akshaybmsa96@gmail.com', '15/08/1996', 'm', 'Muradnagar, Ghaziabad');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_details`
--

CREATE TABLE `wallet_details` (
  `id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `qr_image` varchar(255) NOT NULL,
  `balance` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_details`
--

INSERT INTO `wallet_details` (`id`, `user_id`, `qr_image`, `balance`) VALUES
(1, 1, 'http://res.cloudinary.com/buffet/image/upload/v1514699706/chart_o4mre1.png', '2499');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_service`
--

CREATE TABLE `wallet_service` (
  `id` int(2) NOT NULL,
  `userID` int(3) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `service` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_service`
--

INSERT INTO `wallet_service` (`id`, `userID`, `mobile`, `service`) VALUES
(1, 1, '9532572177', 'Activate');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `transaction_id` varchar(20) NOT NULL,
  `details` varchar(255) NOT NULL,
  `timestamp` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_transactions`
--

INSERT INTO `wallet_transactions` (`id`, `user_id`, `transaction_id`, `details`, `timestamp`, `status`) VALUES
(1, 1, 'txn125853', 'Paid 500', '1514698021', 'Paid'),
(2, 1, 'txn878362', 'Paid 497', '1514698035', 'Paid'),
(3, 1, 'txn787392', 'Paid 349', '1514698060', 'Pending'),
(4, 1, 'txn676902', 'Paid 2300', '1514698076', 'Paid');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_credential`
--
ALTER TABLE `admin_credential`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_feeds`
--
ALTER TABLE `blog_feeds`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_likes`
--
ALTER TABLE `blog_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `combo_menu`
--
ALTER TABLE `combo_menu`
  ADD PRIMARY KEY (`combo_id`);

--
-- Indexes for table `extra_menu`
--
ALTER TABLE `extra_menu`
  ADD PRIMARY KEY (`extra_id`);

--
-- Indexes for table `menu_category`
--
ALTER TABLE `menu_category`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `cat_id_2` (`cat_id`),
  ADD KEY `cat_id_3` (`cat_id`);

--
-- Indexes for table `menu_initial`
--
ALTER TABLE `menu_initial`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `orders_history`
--
ALTER TABLE `orders_history`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `toppings`
--
ALTER TABLE `toppings`
  ADD PRIMARY KEY (`topping_id`);

--
-- Indexes for table `users_profile`
--
ALTER TABLE `users_profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wallet_details`
--
ALTER TABLE `wallet_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_service`
--
ALTER TABLE `wallet_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_credential`
--
ALTER TABLE `admin_credential`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `blog_feeds`
--
ALTER TABLE `blog_feeds`
  MODIFY `blog_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `blog_likes`
--
ALTER TABLE `blog_likes`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `combo_menu`
--
ALTER TABLE `combo_menu`
  MODIFY `combo_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `extra_menu`
--
ALTER TABLE `extra_menu`
  MODIFY `extra_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu_category`
--
ALTER TABLE `menu_category`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `menu_initial`
--
ALTER TABLE `menu_initial`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `offer_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orders_history`
--
ALTER TABLE `orders_history`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toppings`
--
ALTER TABLE `toppings`
  MODIFY `topping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_profile`
--
ALTER TABLE `users_profile`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wallet_details`
--
ALTER TABLE `wallet_details`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wallet_service`
--
ALTER TABLE `wallet_service`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

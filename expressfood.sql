-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 04, 2021 at 04:46 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `expressfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `postal_code` char(5) NOT NULL,
  `city` varchar(255) NOT NULL,
  `street_number` varchar(255) NOT NULL,
  `number` varchar(5) NOT NULL,
  `residence` varchar(255) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `floor` varchar(2) DEFAULT NULL,
  `flat_number` varchar(10) DEFAULT NULL,
  `indications` varchar(500) DEFAULT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dataset `address`
--

INSERT INTO `address` (`id`, `postal_code`, `city`, `street_number`, `number`, `residence`, `code`, `floor`, `flat_number`, `indications`, `customer_id`) VALUES
(1, '75000', 'Paris', 'Rue de la Pompe', '12', NULL, NULL, NULL, NULL, NULL, 1),
(2, '77000', 'Melun', 'Avenue Thiers', '4', NULL, NULL, NULL, NULL, NULL, 3),
(3, '93390', 'Clichy-sous-bois', 'Rue de la Facture', '89', 'Les Ulis', '945C', '2', '5', NULL, 4),
(4, '64570', 'Lourdiois', 'Sentier de tercy', '1', NULL, NULL, NULL, NULL, 'Attention au chien !', 2),
(5, '25780', 'Kersan', 'Rue de la Baste', '6', NULL, NULL, NULL, NULL, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `bill_number` int(11) NOT NULL,
  `payment_date` datetime NOT NULL,
  `vat_rate` decimal(6,4) NOT NULL,
  `totalprice_ht` decimal(8,2) NOT NULL,
  `payment_modality` varchar(45) NOT NULL,
  `orders_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dataset `bill`
--

INSERT INTO `bill` (`id`, `bill_number`, `payment_date`, `vat_rate`, `totalprice_ht`, `payment_modality`, `orders_id`) VALUES
(1, 6, '2020-12-30 21:16:30', '10.0000', '12.50', 'Paypal', 2),
(2, 8, '2020-12-30 22:16:30', '10.0000', '50.40', 'CB', 3),
(3, 11, '2020-12-30 23:16:30', '10.0000', '64.10', 'CB', 4),
(4, 15, '2020-12-31 00:02:30', '10.0000', '121.10', 'Paypal', 5),
(5, 18, '2020-12-30 00:05:30', '10.0000', '18.35', 'CB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chief`
--

CREATE TABLE `chief` (
  `id` int(11) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `phone` char(10) NOT NULL,
  `password` varchar(70) NOT NULL,
  `email` varchar(255) NOT NULL,
  `restaurant` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dataset `chief`
--

INSERT INTO `chief` (`id`, `lastname`, `firstname`, `phone`, `password`, `email`, `restaurant`) VALUES
(1, 'Pate', 'Troy', '0673218220', 'EJZ88TKX5AA', 'nec.malesuada.ut@maurisSuspendisse.ca', 'La Belle Vie'),
(2, 'Mathews', 'Linda', '0680555342', 'OUP53KPZ8BB', 'sit.amet@Duis.net', 'Chez Marc'),
(3, 'Ochoa', 'Quentin', '0657170196', 'ARD84YXQ7CC', 'sit.amet@gravidaPraesenteu.edu', 'La Tour blanche.'),
(4, 'Eaton', 'Rogan', '0608282824', 'TTP61QGO3DD', 'eros.Proin.ultrices@sociisnatoque.co.uk', 'Luigi'),
(5, 'Anderson', 'Lamar', '0648242136', 'HLJ37GRA2EE', 'risus.Duis.a@nislarcuiaculis.org', 'Frère Tang');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `phone` char(10) NOT NULL,
  `password` varchar(70) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dataset `customer`
--

INSERT INTO `customer` (`id`, `lastname`, `firstname`, `phone`, `password`, `email`) VALUES
(1, 'Strickland', 'Larissa', '0635194580', 'EJZ88TKX5NZ', 'cubilia@nibhlaciniaorci.edu'),
(2, 'Larsen', 'Tarik', '0699148934', 'OUP53KPZ8NY', 'elit@Praesenteudui.ca'),
(3, 'Matthews', 'Alan', '0676924227', 'ARD84YXQ7ED', 'at@Phasellusat.edu'),
(4, 'Steele', 'Justin', '0673799288', 'TTP61QGO3KP', 'sit.amet.consectetuer@eleifend.org'),
(5, 'Francis', 'Elliott', '0650057487', 'HLJ37GRA2CE', 'et@semNulla.edu');

-- --------------------------------------------------------

--
-- Table structure for table `deliverer`
--

CREATE TABLE `deliverer` (
  `id` int(11) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `phone` char(10) NOT NULL,
  `password` varchar(70) NOT NULL,
  `email` varchar(255) NOT NULL,
  `available` tinyint(4) NOT NULL,
  `latitude` decimal(10,6) DEFAULT NULL,
  `longitude` decimal(10,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dataset `deliverer`
--

INSERT INTO `deliverer` (`id`, `lastname`, `firstname`, `phone`, `password`, `email`, `available`, `latitude`, `longitude`) VALUES
(1, 'Casey', 'Boris', '0675488387', 'HNH17JCW2SK', 'rhoncus.id@feugiat.com', 1, '-2.241380', '-55.018410'),
(2, 'Rodriquez', 'Iliana', '0601048649', 'QCT40QWL6OV', 'dis.parturient@vitaealiquam.co.uk', 1, '30.420130', '20.780830'),
(3, 'Keller', 'Ashton', '0620604094', 'EVH41YST1BP', 'amet.dapibus.id@ultrices.edu', 1, '52.661270', '-162.158380'),
(4, 'Knowles', 'Zeph', '0641395039', 'EBI08XDW4BN', 'leo.in.lobortis@vel.net', 0, '31.276040', '-152.583820'),
(5, 'Compton', 'Chandler', '0618386240', 'LXY33FUG9NG', 'adipiscing@semperegestasurna.edu', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deliverer_has_product`
--

CREATE TABLE `deliverer_has_product` (
  `deliverer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deliverer_has_product`
--

INSERT INTO `deliverer_has_product` (`deliverer_id`, `product_id`, `quantity`) VALUES
(1, 8, 3),
(2, 7, 4),
(3, 3, 1),
(4, 2, 3),
(5, 4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_number` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `totalprice_ht` decimal(8,2) NOT NULL,
  `vat_rate` decimal(6,4) NOT NULL,
  `payment_modality` varchar(45) NOT NULL,
  `validation` tinyint(4) NOT NULL,
  `in_progress` tinyint(4) NOT NULL,
  `estimated_time` time NOT NULL,
  `deliverer_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
--  Dataset `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `date`, `totalprice_ht`, `vat_rate`, `payment_modality`, `validation`, `in_progress`, `estimated_time`, `deliverer_id`, `customer_id`) VALUES
(1, 6, '2020-12-30 21:16:30', '20.15', '10.0000', 'Paypal', 1, 1, '00:14:35', 2, 2),
(2, 4, '2020-12-30 21:43:45', '101.70', '10.0000', 'CB', 1, 0, '00:09:00', 1, 3),
(3, 9, '2020-12-30 22:02:07', '5.15', '10.0000', 'Paypal', 0, 0, '00:07:12', 5, 4),
(4, 11, '2020-12-30 22:30:49', '14.99', '10.0000', 'Paypal', 1, 1, '00:19:18', 3, 5),
(5, 23, '2020-12-30 22:30:58', '37.15', '10.0000', 'CB,', 1, 1, '00:03:50', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders_has_product`
--

CREATE TABLE `orders_has_product` (
  `orders_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dataset `orders_has_product`
--

INSERT INTO `orders_has_product` (`orders_id`, `product_id`, `quantity`) VALUES
(1, 7, 3),
(2, 5, 4),
(3, 10, 1),
(4, 2, 3),
(5, 4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `descriptive` varchar(255) NOT NULL,
  `unitprice_ht` decimal(6,2) NOT NULL,
  `vat_rate` decimal(6,4) NOT NULL,
  `category` varchar(45) NOT NULL,
  `daily_specials` tinyint(4) NOT NULL,
  `chief_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dataset `product`
--

INSERT INTO `product` (`id`, `name`, `descriptive`, `unitprice_ht`, `vat_rate`, `category`, `daily_specials`, `chief_id`) VALUES
(1, 'sandwich jambon', 'Texte descriptif', '10.00', '5.2000', 'plat', 1, 2),
(2, 'pate bolognaise', 'Texte descriptif', '10.00', '6.1000', 'plat', 0, 3),
(3, 'tarte aux fraises', 'Texte descriptif', '10.00', '4.0500', 'dessert', 1, 4),
(4, 'Gateau au chocolat', 'Texte descriptif', '10.00', '3.8000', 'dessert', 1, 5),
(5, 'Raclette', 'Texte descriptif', '10.00', '9.3000', 'plat', 1, 1),
(6, 'Croissant', 'Texte descriptif', '10.00', '2.4000', 'dessert', 0, 3),
(7, 'Tajine', 'Texte descriptif', '10.00', '7.5000', 'plat', 0, 4),
(8, 'Riz', 'Texte descriptif', '10.00', '1.5000', 'plat', 0, 5),
(9, 'Pâtes', 'Texte descriptif', '10.00', '3.0000', 'plat', 0, 2),
(10, 'Caramel', 'Texte descriptif', '10.00', '4.8500', 'plat', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`,`customer_id`),
  ADD KEY `fk_address_customer1_idx` (`customer_id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bill_order1_idx` (`orders_id`);

--
-- Indexes for table `chief`
--
ALTER TABLE `chief`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliverer`
--
ALTER TABLE `deliverer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliverer_has_product`
--
ALTER TABLE `deliverer_has_product`
  ADD PRIMARY KEY (`deliverer_id`,`product_id`),
  ADD KEY `fk_deliverer_has_product_product1_idx` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Commande_livreur21_idx` (`deliverer_id`),
  ADD KEY `fk_Commande_client2_idx` (`customer_id`);

--
-- Indexes for table `orders_has_product`
--
ALTER TABLE `orders_has_product`
  ADD PRIMARY KEY (`orders_id`,`product_id`),
  ADD KEY `fk_orders_has_product_product1_idx` (`product_id`),
  ADD KEY `fk_orders_has_product_orders1_idx` (`orders_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_chief1_idx` (`chief_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chief`
--
ALTER TABLE `chief`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `deliverer`
--
ALTER TABLE `deliverer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `fk_address_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `fk_bill_order1` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `deliverer_has_product`
--
ALTER TABLE `deliverer_has_product`
  ADD CONSTRAINT `fk_deliverer_has_product_deliverer1` FOREIGN KEY (`deliverer_id`) REFERENCES `deliverer` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_deliverer_has_product_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_Commande_client2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Commande_livreur21` FOREIGN KEY (`deliverer_id`) REFERENCES `deliverer` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `orders_has_product`
--
ALTER TABLE `orders_has_product`
  ADD CONSTRAINT `fk_orders_has_product_orders1` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orders_has_product_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_chief1` FOREIGN KEY (`chief_id`) REFERENCES `chief` (`id`) ON UPDATE CASCADE;
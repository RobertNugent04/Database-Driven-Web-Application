--
-- Database: `guitar_shop`
--
CREATE DATABASE IF NOT EXISTS `guitar_shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `guitar_shop`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `productCode` varchar(10) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `listPrice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `productCode`, `productName`, `listPrice`) VALUES
(1, 'strat', 'Fender Stratocaster', '699.00'),
(2, 'les_paul', 'Gibson Les Paul', '1199.00'),
(3, 'sg', 'Gibson SG', '2517.00'),
(4, 'fg700s', 'Yamaha FG700S', '489.99'),
(5, 'washburn', 'Washburn D10S', '299.00'),
(6, 'rodriguez', 'Rodriguez Caballero 11', '415.00'),
(7, 'precision', 'Fender Precision', '799.99'),
(8, 'hofner', 'Hofner Icon', '499.99'),
(9, 'ludwig', 'Ludwig 5-piece Drum Set with Cymbals', '699.99');


--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`),
  ADD UNIQUE KEY `productCode` (`productCode`);

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


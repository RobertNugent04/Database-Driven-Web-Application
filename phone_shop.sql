--
-- Database: `phone_shop`
--
CREATE DATABASE IF NOT EXISTS `phone_shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `phone_shop`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS phones;
CREATE TABLE phones 
(
    phoneID	INT(5),
    osID INT(5),
    companyID INT(5),
    phoneName VARCHAR(30),
    RAM	INT(5),
    storage	INT(5),
    stars	INT(1),
    price	FLOAT(7),
    images	VARCHAR(500)
);

INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('1', '2', '1', 'Apple iPhone 13 ', '4', '128', '5', '699', 'https://media.currys.biz/i/currysprod/M10230581_black_001?$l-large$&fmt=auto');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('2', '2', '1', 'Apple iPhone 14 ', '6', '256', '4.5', '794', 'https://hniesfp.imgix.net/8/images/detailed/342/iPhone_Apple_IPHONE14256GBBLUE.jpg?fit=fill&bg=0FFF&w=1500&h=1000&auto=format,compress');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('3', '1', '2', 'HUAWEI P50 Pro', '8', '256', '4', '699', 'https://snapcraze.co.za/wp-content/uploads/2022/05/p50-pro-black.jpeg');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('4', '1', '3', 'Samsung Galaxy A03s', '3', '32', '4.5', '109.9', 'https://i5.walmartimages.com/asr/c89c849d-e744-490c-b0ca-5bd40cdfdf95.0dcc0cd03d0b1e504e3bdfff7977b644.jpeg?odnHeight=450&odnWidth=450&odnBg=ffffff');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('5', '1', '3', 'Samsung Galaxy M23', '4', '128', '4.5', '258.92', 'https://dakauf.eu/wp-content/uploads/2022/10/Samsung-M23_-light_blue.jpg');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('6', '1', '4', 'Sony Xperia XA2', '4', '32', '4', '170.99', 'https://m.media-amazon.com/images/I/81CAOW1WC8L._AC_SS450_.jpg');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('7', '3', '5', 'Nokia Lumia 635', '0.5', '8', '3.5', '80.99', 'https://m.media-amazon.com/images/I/81UppCaSApS._AC_SS450_.jpg');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('8', '3', '5', 'Nokia Lumia 520', '8', '64', '3.5', '90', 'https://www.gsmasia.net/wp-content/uploads/2016/12/Nokia-Lumia-520.jpg');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('9', '1', '4', 'Sony Xperia L3', '3', '32', '4.5', '159.99', 'https://m.media-amazon.com/images/I/81ZXRk9CikL._AC_SS450_.jpg');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('10', '3', '6', 'Microsoft Lumia 650', '2', '16', '4', '160', 'https://m.media-amazon.com/images/I/81VghfQTabL._AC_SS450_.jpg');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('11', '2', '1', 'Apple iPhone 12', '4', '128', '4.5', '499.99', 'https://cdn.shopify.com/s/files/1/0824/3121/products/iphone-green_3ab1c6d4-fa9e-47a5-bb20-f47cf302bea2_1024x1024.jpg?v=1658394945');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('12', '2', '1', 'Apple iPhone 7', '3', '128', '4', '249.99', 'https://cdn.shopify.com/s/files/1/0022/6728/3545/products/Apple_iPhone_7_-_Black_800x.jpg?v=1653391180');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('13', '2', '1', 'Apple iPhone 8', '4', '256', '4.5', '199.99', 'https://files.refurbed.com/ii/apple-iphone-8-plus-1639478333.jpg');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('14', '1', '2', 'Huawei P30 Lite', '4', '128', '5', '225', 'https://cdn.shopify.com/s/files/1/0242/8138/2946/products/P30LITE_1_41f1fb6f-5d25-4c63-ad57-c2e31bd4759c.jpg?v=1655621176');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('15', '1', '2', 'Huawei Nova 5T', '4', '128', '5', '399.99', 'https://specs-tech.com/wp-content/uploads/2019/09/Huawei-nova-5T.jpg');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('16', '1', '2', 'Huawei P Smart', '4', '256', '5', '145', 'https://m.media-amazon.com/images/I/61-oalD1jUL._AC_SS450_.jpg');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('17', '1', '2', 'Huawei P40 Pro', '8', '256', '5', '999.99', 'https://d1eh9yux7w8iql.cloudfront.net/product_images/343826_abaffe0f-03b3-4ed5-8ee4-b3076d35f3ea.jpg');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('18', '1', '4', 'Sony Xperia 5 III', '5', '256', '4', '599', 'https://m.media-amazon.com/images/I/617QvfVAyvL._AC_SS450_.jpg');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('19', '3', '6', 'Microsoft Lumia 950', '4', '32', '3.5', '199.99', 'https://m.media-amazon.com/images/I/71n8u+3+NIL._AC_SS450_.jpg');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('20', '1', '3', 'Samsung Galaxy A13', '4', '64', '5', '141', 'https://expertlaois.ie/wp-content/uploads/2023/01/samsung-a13.png');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('21', '1', '3', 'Samsung Galaxy S23', '5', '256', '4', '1049', 'https://cdn11.bigcommerce.com/s-8ek7z3h3jn/images/stencil/1280x1280/products/8254/40872/samsung-galaxy-s23-128gb-purple-or-sm-s911blideub__02061.1675817133.jpg?c=1');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('22', '3', '6', 'Microsoft Lumia 640', '2', '8', '4', '145', 'https://i.ebayimg.com/images/g/Aj0AAOSwGUdhMKFK/s-l1600.jpg');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('23', '1', '4', 'Sony Xperia 10 IV', '5', '6', '4.5', '379.99', 'https://www.mytrendyphone.ie/images/Sony-Xperia-10-IV-128GB-Black-4589771645628-15082022-01-p.webp');
INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images) VALUES ('24', '2', '1', 'Apple iPhone 11', '5', '128', '4.5', '489', 'https://itrepairs.ie/wp-content/uploads/2022/05/iphone11-black-select-2019_GEO_EMEA.jpg');

DROP TABLE IF EXISTS companies;
CREATE TABLE `phone_store`.`companies` (`companyID` INT(5) NOT NULL , `companyName` VARCHAR(20) NOT NULL , PRIMARY KEY (`companyID`)) ENGINE = InnoDB;
INSERT INTO `companies` (`companyID`, `companyName`) VALUES ('1', 'Apple');
INSERT INTO `companies` (`companyID`, `companyName`) VALUES ('2', 'Huawei');
INSERT INTO `companies` (`companyID`, `companyName`) VALUES ('3', 'Samsung');
INSERT INTO `companies` (`companyID`, `companyName`) VALUES ('4', 'Sony');
INSERT INTO `companies` (`companyID`, `companyName`) VALUES ('6', 'Nokia');
INSERT INTO `companies` (`companyID`, `companyName`) VALUES ('7', 'Microsoft');
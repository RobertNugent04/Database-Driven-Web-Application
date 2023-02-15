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
CREATE TABLE phones(
   phoneID    int(5) NOT NULL PRIMARY KEY AUTO_INCREMENT
  ,phoneName varchar(44) NOT NULL
  ,company    varchar(8) NOT NULL
  ,RAM_GB     int(2)  NOT NULL
  ,space      int(3)  NOT NULL
  ,ratings    int(7)  NOT NULL
  ,stars      decimal(3,1) NOT NULL
  ,listPrice  int(5)  NOT NULL
);
INSERT INTO phones(phoneID,phoneName,company,RAM_GB,space,ratings,stars,listPrice) VALUES
 (1,'Redmi 8 (Onyx Black, 64 GB)','Redmi',4,64,674638,4.4,10999)
,(2,'Realme 5i (Forest Green, 64 GB)','Realme',4,64,243106,4.5,10999)
,(3,'Realme 5i (Aqua Blue, 64 GB)','Realme',4,64,243106,4.5,10999)
,(4,'Redmi 8 (Sapphire Blue, 64 GB)','Redmi',4,32,674638,4.4,10999)
,(5,'POCO X2 (Matrix Purple, 128 GB)','POCO',6,64,133486,4.5,19999)
,(6,'POCO X2 (Atlantis Blue, 64 GB)','POCO',6,64,133486,4.5,18999)
,(7,'Realme 6 (Comet Blue, 64 GB)','Realme',6,64,30619,4.4,17999)
,(8,'POCO X2 (Atlantis Blue, 128 GB)','POCO',6,64,133486,4.5,19999)
,(9,'Realme C11 (Rich Green, 32 GB)','Realme',2,128,17476,4.6,8999)
,(10,'Realme C11 (Rich Grey, 32 GB)','Realme',2,32,17476,4.6,8999)
,(11,'Realme Narzo 10A (So White, 32 GB)','Realme',3,32,42968,4.6,9999)
,(12,'Realme Narzo 10A (So Blue, 64 GB)','Realme',4,64,17313,4.6,10999)
,(13,'Realme Narzo 10A (So White, 64 GB)','Realme',4,32,17313,4.6,10999)
,(14,'Realme Narzo 10A (So Blue, 32 GB)','Realme',3,64,42968,4.6,9999)
,(15,'POCO X2 (Matrix Purple, 64 GB)','POCO',6,64,133486,4.5,18999)
,(16,'Realme 6 (Comet White, 64 GB)','Realme',6,64,30619,4.4,17999)
,(17,'Apple iPhone XR (Black, 64 GB)','Apple',0,32,11572,4.6,52500)
,(18,'Infinix S5 Pro (Violet, 64 GB)','Infinix',4,64,12764,4.5,12999)
,(19,'Motorola G8 Power Lite (Royal Blue, 64 GB)','Motorola',4,64,27992,4.4,9999)
,(20,'Realme 6 Pro (Lightning Blue, 64 GB)','Realme',6,16,27363,4.5,17999)
,(21,'Realme 6 Pro (Lightning Orange, 64 GB)','Realme',6,64,27363,4.5,17999)
,(22,'Infinix Hot 9 Pro (Ocean Wave, 64 GB)','Infinix',4,64,17040,4.5,12999)
,(23,'Infinix Hot 9 Pro (Violet, 64 GB)','Infinix',4,64,17040,4.5,12999)
,(24,'Motorola G8 Power Lite (Arctic Blue, 64 GB)','Motorola',4,64,27992,4.4,9999)
,(25,'Motorola G8 Power Lite (Arctic Blue, 64 GB)','Motorola',4,64,27992,4.4,9999)
,(26,'Apple iPhone SE (White, 64 GB)','Apple',0,64,12954,4.5,42500)
,(27,'OPPO A9 2020 (Space Purple, 128 GB)','OPPO',4,64,31725,4.3,18990)
,(28,'OPPO A9 2020 (Marine Green, 128 GB)','OPPO',4,128,31725,4.3,18990)
,(29,'Realme 6 Pro (Lightning Blue, 128 GB)','Realme',6,128,27363,4.5,18999)
,(30,'Apple iPhone SE (Black, 64 GB)','Apple',0,32,12954,4.5,42500)
,(31,'Apple iPhone XR ((PRODUCT)RED, 64 GB)','Apple',0,64,11572,4.6,52500)
,(32,'Redmi Note 8 Pro (Electric Blue, 128 GB)','Redmi',6,64,55815,4.4,17999)
,(33,'Apple iPhone SE (Red, 64 GB)','Apple',0,128,12954,4.5,42500)
,(34,'Vivo Y15 (Burgundy Red, 64 GB)','Vivo',4,64,20969,4.4,15990)
,(35,'Vivo Y15 (Aqua Blue, 64 GB)','Vivo',4,64,20969,4.4,15990)
,(36,'Redmi 8A Dual (Sea Blue, 64 GB)','Redmi',3,64,974,4.3,9750)
,(37,'Redmi 8A Dual (Sea Blue, 32 GB)','Redmi',2,64,1246,4.2,8320)
,(38,'Redmi 8A Dual (Sky White, 32 GB)','Redmi',2,64,1246,4.2,8499)
,(39,'Vivo Y12 (Aqua Blue, 64 GB)','Vivo',3,64,13266,4.4,13990)
,(40,'Vivo Y12 (Burgundy Red, 64 GB)','Vivo',3,16,13266,4.4,13990)
,(41,'OPPO A5s (Blue, 32 GB)','OPPO',2,32,5815,4.3,12990)
,(42,'OPPO A5s (Black, 64 GB)','OPPO',4,32,5365,4.3,15990)
,(43,'Redmi Note 8 Pro (Halo White, 128 GB)','Redmi',6,64,55815,4.4,17999)
,(44,'Apple iPhone SE (Black, 128 GB)','Apple',0,64,12954,4.5,47800)
,(45,'Realme 6 Pro (Lightning Orange, 128 GB)','Realme',6,64,27363,4.5,18999)
,(46,'OPPO A31 (Mystery Black, 64 GB)','OPPO',4,32,9454,4.3,12990)
,(47,'OPPO A31 (Fantasy White, 64 GB)','OPPO',4,64,9454,4.3,12990)
,(48,'Apple iPhone XR (Blue, 64 GB)','Apple',0,128,11572,4.6,52500)
,(49,'Apple iPhone XR (Blue, 64 GB)','Apple',0,64,11572,4.6,52500)
,(50,'I Kall K6 (Red, 32 GB)','I Kall',4,64,615,3,7299)
,(51,'Vivo Y11 (Agate Red, 32 GB)','Vivo',3,64,4744,4.4,9990)
,(52,'Vivo Y11 (Mineral Blue, 32 GB)','Vivo',3,128,4744,4.4,9990)
,(53,'Vivo U10 (Electric Blue, 32 GB)','Vivo',3,128,34333,4.4,10990)
,(54,'I Kall K1000 (Blue, 64 GB)','I Kall',4,32,840,2.9,7699)
,(55,'Vivo U10 (Thunder Black, 32 GB)','Vivo',3,64,34333,4.4,10990)
,(56,'POCO X2 (Atlantis Blue, 256 GB)','POCO',8,64,42062,4.5,22999)
,(57,'Redmi Note 8 Pro (Shadow Black, 128 GB)','Redmi',6,128,55815,4.4,17999)
,(58,'Realme 6 (Comet White, 128 GB)','Realme',6,64,30620,4.4,16999)
,(59,'OPPO A9 2020 (Space Purple, 128 GB)','OPPO',8,64,11436,4.3,21990)
,(60,'I Kall K220 (Blue, 16 GB)','I Kall',2,64,58,3.1,5699)
,(61,'OPPO A9 2020 (Marine Green, 128 GB)','OPPO',8,64,11436,4.3,21990)
,(62,'Infinix Smart 4 Plus (Violet, 32 GB)','Infinix',3,64,53,4.2,9999)
,(63,'Infinix Smart 4 Plus (Ocean Wave, 32 GB)','Infinix',3,64,53,4.2,9999)
,(64,'I Kall K400 (Blue, 64 GB)','I Kall',4,16,512,2.8,7299)
,(65,'Infinix Smart 4 Plus (Midnight Black, 32 GB)','Infinix',3,32,53,4.2,9999)
,(66,'OPPO A12 (Black, 32 GB)','OPPO',3,32,10388,4.3,10990)
,(67,'OPPO A12 (Blue, 64 GB)','OPPO',4,64,666,4.4,11990)
,(68,'OPPO A12 (Blue, 32 GB)','OPPO',3,64,10388,4.3,10990)
,(69,'OPPO A12 (Black, 64 GB)','OPPO',4,64,666,4.4,11990)
,(70,'OPPO A5s (Green, 64 GB)','OPPO',4,32,5365,4.3,15990)
,(71,'OPPO A5s (Gold, 64 GB)','OPPO',4,64,5365,4.3,15990)
,(72,'Realme Narzo 10 (That Green, 128 GB)','Realme',4,128,74661,4.5,12999)
,(73,'Vivo Z1x (Fusion Blue, 64 GB)','Vivo',6,128,146650,4.4,19990)
,(74,'I Kall K6 (Red, 32 GB)','I Kall',4,32,615,3,7299)
,(75,'Vivo Z1x (Phantom Purple, 64 GB)','Vivo',6,128,146650,4.4,19990)
,(76,'Vivo Z1x (Fusion Blue, 128 GB)','Vivo',8,32,19380,4.4,24990)
,(77,'Nokia 105 SS','Nokia',4,64,75730,4.3,1299)
,(78,'Apple iPhone 7 Plus (Black, 32 GB)','Apple',0,64,27442,4.5,37900)
,(79,'Realme 6 (Comet White, 128 GB)','Realme',8,128,23466,4.4,17999)
,(80,'I Kall K1000 (Blue, 64 GB)','I Kall',4,64,840,2.9,7699)
,(81,'Tecno Spark Power 2 (Misty Grey, 64 GB)','Tecno',4,4,9603,4.4,11999)
,(82,'Realme Narzo 10 (That White, 128 GB)','Realme',4,32,74661,4.5,12999)
,(83,'Realme Narzo 10 (That Blue, 128 GB)','Realme',4,128,74661,4.5,12999)
,(84,'I Kall K220 (Blue, 16 GB)','I Kall',2,16,58,3.1,5699)
,(85,'OPPO F15 (Unicorn White, 128 GB)','OPPO',8,64,10277,4.4,22990)
,(86,'OPPO F15 (Blazing Blue, 128 GB)','OPPO',8,128,10277,4.4,22990)
,(87,'Redmi Note 8 Pro (Shadow Black, 128 GB)','Redmi',8,128,7137,4.4,19999)
,(88,'Vivo Y91i (Fusion Black, 32 GB)','Vivo',2,128,21196,4.3,9990)
,(89,'Vivo Y91i (Ocean Blue, 32 GB)','Vivo',2,128,21196,4.3,9990)
,(90,'I Kall K400 (Blue, 64 GB)','I Kall',4,64,512,2.8,7299)
,(91,'Vivo S1 Pro (Mystic Black, 128 GB)','Vivo',8,128,11571,4.4,20990)
,(92,'Tecno Camon 15 (Fascinating Purple, 64 GB)','Tecno',4,32,2219,4.2,12499)
,(93,'Tecno Camon 15 (SHOAL GOLD, 64 GB)','Tecno',4,32,2219,4.2,12499)
,(94,'Vivo Y30 (Emerald Black, 128 GB)','Vivo',4,32,604,4.3,18990)
,(95,'Vivo Y30 (Dazzle Blue, 128 GB)','Vivo',4,128,604,4.3,18990)
,(96,'Apple iPhone XR (White, 128 GB)','Apple',0,64,11572,4.6,57800)
,(97,'Realme C3 (Blazing Red, 32 GB)','Realme',3,32,67430,4.5,8999)
,(98,'Realme C3 (Frozen Blue, 32 GB)','Realme',3,32,67430,4.5,8999)
,(99,'Realme C3 (Frozen Blue, 64 GB)','Realme',4,64,117862,4.5,9999)
,(100,'I Kall K6 (Red, 32 GB)','I Kall',4,32,615,3,7299)
,(101,'Realme C2 (Diamond Blue, 32 GB)','Realme',2,32,805006,4.4,7999)
,(102,'Realme C2 (Diamond Black, 32 GB)','Realme',2,32,805006,4.4,7999)
,(103,'Realme C2 (Diamond Black, 32 GB)','Realme',3,32,133935,4.4,8999)
,(104,'I Kall K1000 (Blue, 64 GB)','I Kall',4,64,840,2.9,7699)
,(105,'Infinix S5 Pro (Forest Green, 64 GB)','Infinix',4,64,12764,4.5,12999)
,(106,'Realme C2 (Diamond Sapphire, 32 GB)','Realme',3,32,133935,4.4,8999)
,(107,'Realme C2 (Diamond Ruby, 32 GB)','Realme',3,32,133935,4.4,8999)
,(108,'I Kall K220 (Blue, 16 GB)','I Kall',2,16,58,3.1,5699)
,(109,'Realme C2 (Diamond Blue, 32 GB)','Realme',3,32,133935,4.4,8999)
,(110,'Infinix S5 Pro (Sea Blue, 64 GB)','Infinix',4,64,12764,4.5,12999)
,(111,'Realme 6 (Comet Blue, 64 GB)','Realme',4,64,59665,4.4,14999)
,(112,'I Kall K400 (Blue, 64 GB)','I Kall',4,64,512,2.8,7299)
,(113,'Realme 6 (Comet White, 64 GB)','Realme',4,64,59665,4.4,14999)
,(114,'Redmi 8A Dual (Midnight Grey, 32 GB)','Redmi',3,32,974,4.3,7999)
,(115,'Realme 6 Pro (Lightning Orange, 128 GB)','Realme',6,128,27365,4.5,18999)
,(116,'Lava 34 Plus','Lava',32,32,361,4.1,1699)
,(117,'Realme 6 (Comet Blue, 128 GB)','Realme',6,128,30622,4.4,16999)
,(118,'Realme 6 Pro (Lightning Orange, 128 GB)','Realme',8,128,14361,4.4,19999)
,(119,'I Kall K14 New','I Kall',32,64,7229,3.4,609)
,(120,'Apple iPhone XR (White, 64 GB)','Apple',0,64,11572,4.6,52500);

--
-- Indexes for table `products`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`phoneID`),

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `phones`,
  MODIFY `phoneID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


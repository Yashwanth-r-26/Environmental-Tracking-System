CREATE DATABASE  IF NOT EXISTS `dbms_project1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbms_project1`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: dbms_project1
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `env_parameters2`
--

DROP TABLE IF EXISTS `env_parameters2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `env_parameters2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `state` varchar(255) DEFAULT NULL,
  `t_2m:C` decimal(5,2) DEFAULT NULL,
  `relative_humidity_2m:p` decimal(5,2) DEFAULT NULL,
  `air_quality:idx` int DEFAULT NULL,
  `pm2p5:ugm3` decimal(5,2) DEFAULT NULL,
  `pm10:ugm3` decimal(5,2) DEFAULT NULL,
  `co:ugm3` decimal(5,2) DEFAULT NULL,
  `so2:ugm3` decimal(5,2) DEFAULT NULL,
  `tc_no2:ugm2` decimal(10,2) DEFAULT NULL,
  `noise_level` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `env_parameters2`
--

LOCK TABLES `env_parameters2` WRITE;
/*!40000 ALTER TABLE `env_parameters2` DISABLE KEYS */;
INSERT INTO `env_parameters2` VALUES (1,'AN',23.60,97.60,2,18.97,43.49,166.43,0.50,2102.24,50.00),(2,'AP',22.90,98.30,0,9.66,14.85,180.31,1.17,5595.15,55.00),(3,'AR',14.40,95.90,1,14.05,20.26,190.46,0.20,3592.93,45.00),(4,'AS',18.10,94.00,3,28.53,48.05,238.36,1.52,3460.27,48.00),(5,'BR',19.10,91.40,4,70.26,109.90,503.43,9.96,7168.93,60.00),(6,'CH',17.70,54.70,1,18.79,35.55,288.30,5.65,6802.05,52.00),(7,'CT',20.80,70.80,3,40.75,62.42,499.45,23.46,14002.83,47.00),(8,'DL',17.80,64.40,4,40.18,131.55,279.80,10.05,7525.40,65.00),(9,'DN',21.80,80.70,3,28.13,47.39,298.51,11.26,5563.99,53.00),(10,'GA',23.80,77.70,1,17.12,29.26,254.49,2.89,5192.84,55.00),(11,'GJ',13.20,56.90,3,27.77,64.29,232.24,3.02,5065.36,62.00),(12,'HP',5.70,51.40,0,8.16,13.07,234.29,1.83,5324.88,42.00),(13,'HR',17.10,71.40,5,36.24,175.07,265.63,6.40,5895.65,58.00),(14,'JH',19.60,84.10,3,47.37,74.85,359.96,7.11,7001.08,54.00),(15,'JK',18.80,94.20,5,143.37,224.75,668.65,10.84,7048.03,40.00),(16,'KA',24.70,58.00,3,30.39,47.21,451.54,5.01,7903.50,63.00),(17,'KL',26.00,89.10,3,31.32,51.34,266.69,3.59,5780.90,50.00),(18,'LA',26.90,87.80,1,15.40,35.41,114.55,0.63,3998.20,38.00),(19,'LD',26.60,90.40,2,20.76,38.18,147.83,0.57,4264.79,49.00),(20,'MH',23.10,37.50,1,18.65,29.18,269.17,6.02,5598.67,64.00),(21,'ML',12.20,92.80,3,25.61,42.50,226.77,3.65,3831.65,51.00),(22,'MN',16.10,77.80,1,18.65,29.80,395.87,4.23,2712.74,43.00),(23,'MP',21.70,45.00,1,15.95,30.77,213.99,3.14,5676.71,61.00),(24,'MZ',16.40,90.10,1,17.77,28.86,242.94,1.08,2679.94,44.00),(25,'NL',13.70,81.00,1,11.76,17.03,236.15,0.87,2903.01,41.00),(26,'OR',20.00,94.90,3,46.55,70.50,485.08,12.13,9701.00,56.00),(27,'PB',17.10,69.40,3,42.22,88.15,684.28,6.43,8545.82,59.00),(28,'PY',24.00,85.80,1,19.40,31.84,256.01,1.18,5253.99,48.00),(29,'RJ',21.50,42.20,3,27.29,75.26,265.15,4.66,4932.03,62.00),(30,'SK',12.40,64.60,1,4.96,8.91,195.75,0.24,3973.88,39.00),(31,'TG',24.00,50.60,1,17.78,28.02,190.66,3.83,4991.31,60.00),(32,'TN',23.10,95.20,1,18.31,28.03,366.22,9.20,10846.26,57.00),(33,'TR',20.30,90.70,3,38.89,58.48,369.12,2.44,3216.67,45.00),(34,'UP',18.60,61.40,4,41.92,106.40,286.22,10.95,6958.47,63.00),(35,'UT',1.10,57.30,1,13.88,20.56,330.66,1.97,4439.81,50.00),(36,'WB',22.20,97.80,3,27.56,40.54,297.77,8.54,6808.07,55.00);
/*!40000 ALTER TABLE `env_parameters2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `State_code` varchar(2) NOT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `state_capital` varchar(255) DEFAULT NULL,
  `state_area` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`State_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES ('AN','Andaman and Nicobar Islands','Port Blair',8249.09),('AP','Andhra Pradesh','Amaravati',160205.65),('AR','Arunachal Pradesh','Itanagar',83743.20),('AS','Assam','Dispur',78438.90),('BR','Bihar','Patna',94163.02),('CH','Chandigarh','Chandigarh',114.09),('CT','Chhattisgarh','Raipur',135192.11),('DL','Delhi','New Delhi',1484.02),('DN','Dadra and Nagar Haveli and Daman and Diu','Daman',603.00),('GA','Goa','Panaji',3702.77),('GJ','Gujarat','Gandhinagar',196024.20),('HP','Himachal Pradesh','Shimla',55673.98),('HR','Haryana','Chandigarh',44212.12),('JH','Jharkhand','Ranchi',79716.54),('JK','Jammu and Kashmir','Srinagar (summer), Jammu (winter)',42241.32),('KA','Karnataka','Bengaluru',191791.87),('KL','Kerala','Thiruvananthapuram',38863.98),('LA','Ladakh','Leh (summer), Kargil (winter)',59146.12),('LD','Lakshadweep','Kavaratti',32.09),('MH','Maharashtra','Mumbai',307713.45),('ML','Meghalaya','Shillong',22429.76),('MN','Manipur','Imphal',22327.22),('MP','Madhya Pradesh','Bhopal',308252.19),('MZ','Mizoram','Aizawl',21081.87),('NL','Nagaland','Kohima',16579.61),('OR','Odisha','Bhubaneswar',155707.11),('PB','Punjab','Chandigarh',50362.98),('PY','Puducherry','Puducherry',479.09),('RJ','Rajasthan','Jaipur',342239.11),('SK','Sikkim','Gangtok',7096.23),('TG','Telangana','Hyderabad',112077.22),('TN','Tamil Nadu','Chennai',130058.42),('TR','Tripura','Agartala',10491.23),('UP','Uttar Pradesh','Lucknow',240928.33),('UT','Uttarakhand','Dehradun',53483.34),('WB','West Bengal','Kolkata',88752.14);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `natural_resources`
--

DROP TABLE IF EXISTS `natural_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `natural_resources` (
  `State_code` varchar(2) NOT NULL,
  `state_area` decimal(10,2) DEFAULT NULL,
  `forest_area` decimal(10,2) DEFAULT NULL,
  `water_bodies` decimal(10,0) DEFAULT NULL,
  `sanctuary_nationalpark` decimal(5,0) DEFAULT NULL,
  PRIMARY KEY (`State_code`),
  CONSTRAINT `natural_resources_ibfk_1` FOREIGN KEY (`State_code`) REFERENCES `location` (`State_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `natural_resources`
--

LOCK TABLES `natural_resources` WRITE;
/*!40000 ALTER TABLE `natural_resources` DISABLE KEYS */;
INSERT INTO `natural_resources` VALUES ('AN',8249.09,7171.00,3528,106),('AP',160205.65,37258.00,190777,27),('AR',83743.20,51540.00,993,13),('AS',78438.90,26836.00,172492,20),('BR',94163.02,7442.00,45793,12),('CH',114.09,32.00,188,2),('CT',135192.11,59816.00,34000,14),('DL',1484.02,103.00,893,1),('DN',603.00,204.00,10,2),('GA',3702.77,1271.00,1463,7),('GJ',196024.20,21870.00,54069,27),('HP',55673.98,37948.00,88017,37),('HR',44212.12,1559.00,14898,10),('JH',79716.54,25118.00,107598,12),('JK',42241.32,12551.00,9765,18),('KA',191791.87,38284.00,27013,30),('KL',38863.98,11522.00,55734,22),('LA',59146.12,17643.00,20,1),('LD',32.09,27.10,665,2),('MH',307713.45,61952.00,97062,42),('ML',22429.76,9496.74,13332,5),('MN',22327.22,17418.00,1658,3),('MP',308252.19,94689.00,250,34),('MZ',21081.87,7479.00,2185,9),('NL',16579.61,8623.00,1432,4),('OR',155707.11,61204.00,181837,21),('PB',50362.98,3084.00,16012,17),('PY',479.09,143.00,1171,1),('RJ',342239.11,32863.00,16939,30),('SK',7096.23,5841.00,134,8),('TG',112077.22,27688.00,64055,11),('TN',130058.42,23188.00,106957,28),('TR',10491.23,6294.00,36239,6),('UP',240928.33,17384.00,245087,24),('UT',53483.34,38000.00,3096,15),('WB',88752.14,11879.00,747480,21);
/*!40000 ALTER TABLE `natural_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state_desc2`
--

DROP TABLE IF EXISTS `state_desc2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state_desc2` (
  `State_code` varchar(2) NOT NULL,
  `State_Animal` varchar(255) DEFAULT NULL,
  `State_Bird` varchar(255) DEFAULT NULL,
  `State_Tree` varchar(255) DEFAULT NULL,
  `State_Flower` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`State_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state_desc2`
--

LOCK TABLES `state_desc2` WRITE;
/*!40000 ALTER TABLE `state_desc2` DISABLE KEYS */;
INSERT INTO `state_desc2` VALUES ('AN','Sea Cow','Andaman Wood Pigeon','Andaman Padauk','Pyinma'),('AP','Blackbuck','Indian Roller','Neem','Lotus'),('AR','Mithun','Great Hornbill','Hollong','Lady Slipper Orchid'),('AS','One-horned Rhinoceros','White-winged Wood Duck','Hollong','Fox Tail Orchids'),('BR','Ox','House Sparrow','Peepal','Kachnar'),('CH','Indian Grey Mangoose','Indian Grey Hornbill','Mango Tree','Dhak Flower'),('CT','Wild Buffalo','Hill Myna','Sal','Jasmine'),('DL','Nilgai','House Sparrow','-','-'),('DN','-','-','-','-'),('GA','Gaur','Ruby Throated Yellow Bulbul','Matti','-'),('GJ','Asiatic Lion','Greater Flamingo','Mango','Marigold'),('HP','Snow Leopard','Western Tragopan','Himalayan Ceder','Pink Rhododendron'),('HR','Black Buck Antelop','Black Francolin','Peepul','Lotus'),('JH','Elephant','Koel','Sal','Palash'),('JK','Hangul','Black Necked Crane','Chinar','Lotus'),('KA','Indian Elephant','Indian Roller','Sandal','Lotus'),('KL','Elephant','Great Hornbill','Coconut','Golden Shower Tree'),('LD','Butterfly Fish','Sooty Tern','Bread Fruit','-'),('MH','Indian Giant Squirrel','Green Pigeon','Mango','Tamhan/Jarul'),('ML','Clouded Leopard','Hill Myna','White Teak','Lady Slipper Orchid'),('MN','Sangai','Nongyeen','Unigthou','Shirui Llily'),('MP','Swamp Deer','Asian Paradise Flycatcher','Banyan','Parrot Tree'),('MZ','Serow','Humes Bartailed Pheasant','Mesual Ferrea/Nahar','Red Vanda'),('NL','Mithun','Tragopan Blythii','Alder','Rhododendron'),('OR','Sambar','Indian Roller','Aswattha','Asoka'),('PB','Black Buck','Baj/Northern Goshawk','Sheesham','Lilium candidum'),('PY','Squirrel','Asian Koel','Vilva Tree','Cannonball'),('RJ','Camel','Great Indian Bustard','Khejri','Rohida'),('SK','Red Panda','Blood Pheasant','Rhododendron','Noble Orchid'),('TG','Deer','Indian Roller','Jammi','Tangedu'),('TN','Nilgiri Tahr','Emerald Dove','Palmyra Palm','Kandhal'),('TR','Phayres Langur','Green Imperial Pigeon','Agar','Nageswar'),('UP','Swamp Deer','Saras Crane','Ashok','Palash'),('UT','Musk Deer','Himalayan Monal','Burans','Brahm Kamal'),('WB','Fishing Cat','White Throated Kingfisher','Chatian','Shephali');
/*!40000 ALTER TABLE `state_desc2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weather_events`
--

DROP TABLE IF EXISTS `weather_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weather_events` (
  `State_code` varchar(2) NOT NULL,
  `hazards` varchar(255) DEFAULT NULL,
  `lives_lost` int DEFAULT NULL,
  PRIMARY KEY (`State_code`),
  CONSTRAINT `weather_events_ibfk_1` FOREIGN KEY (`State_code`) REFERENCES `location` (`State_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather_events`
--

LOCK TABLES `weather_events` WRITE;
/*!40000 ALTER TABLE `weather_events` DISABLE KEYS */;
INSERT INTO `weather_events` VALUES ('AN','Tsunami(2004)',7000),('AP','Floods/Rain(1977)',59),('AR','Flood(2022)',18),('AS','Flood(2019)',149),('BR','Flood(2004)',1300),('CH','Lightning(2020)',60),('CT','Rain(2022)',26),('DL','Earthquake(2015)',9000),('DN','Rain(2023)',10),('GA','Flood(2021)',80),('GJ','Earthquake(2001)',20000),('HP','Flood(2023)',330),('HR','Earthquake(2023)',0),('JH','Lightning(2020-2021)',300),('JK','Flood(2014)',227),('KA','Flood(2021)',248),('KL','Flood(2018)',483),('LA','Cyclone(2017)',22),('LD','Flood(2010)',234),('MH','Flood/Landslides(2021)',192),('ML','Landslide(2023)',34),('MN','Landslide(2022)',58),('MP','Flood(2021)',24),('MZ','Landslide(2013)',17),('NL','Flood(2018)',12),('OR','Flood/Drought(2018)',468),('PB','Flood(2023)',43),('PY','Tsunami(2004)',7000),('RJ','Flood/Rain',13),('SK','Flood(2023)',30),('TG','Flood/Rain(2023)',44),('TN','Flood/Rain(2023)',31),('TR','Cyclone(2019)',24),('UP','Rain/Lightning(2023)',34),('UT','Flood(2021)',200),('WB','Flood(2017)',50);
/*!40000 ALTER TABLE `weather_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dbms_project1'
--

--
-- Dumping routines for database 'dbms_project1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-19 18:29:47

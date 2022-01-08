CREATE DATABASE  IF NOT EXISTS `choco` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `choco`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: choco
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `boid` int NOT NULL AUTO_INCREMENT,
  `proname` varchar(45) NOT NULL,
  `mcontent` varchar(450) NOT NULL,
  `proid` varchar(45) NOT NULL,
  PRIMARY KEY (`boid`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'芬蘭Fazer伏特加酒心巧克力','14',''),(2,'芬蘭Fazer伏特加酒心巧克力','15',''),(3,'芬蘭Fazer伏特加酒心巧克力',' ad',''),(4,'明治 代可可脂黑巧克力',' 挖屋',''),(5,'明治 代可可脂黑巧克力',' 挖屋',''),(22,'明治 代可可脂黑巧克力',' asd',''),(23,'明治 代可可脂黑巧克力',' 不可能吧',''),(33,'明治 代可可脂黑巧克力',' hu',''),(34,'明治 代可可脂黑巧克力',' 2323',''),(35,'明治 代可可脂黑巧克力',' ss',''),(36,'明治 代可可脂黑巧克力',' ㄚㄚㄚㄚㄚ',''),(37,'明治 代可可脂黑巧克力',' f',''),(38,'明治 代可可脂黑巧克力',' sDAD',''),(39,'明治 代可可脂黑巧克力',' 部會吧',''),(40,'明治 代可可脂黑巧克力',' sDAD',''),(41,'明治 代可可脂黑巧克力',' z',''),(42,'芬蘭Fazer伏特加酒心巧克力',' frew',''),(43,'芬蘭Fazer伏特加酒心巧克力',' sss',''),(44,'芬蘭Fazer伏特加酒心巧克力',' uuuu','1'),(45,'義大利萊卡Laica綜合酒心巧克力',' iujiujuj','2'),(46,'巨蛋金莎',' 送給女友吧!','11'),(47,'義大利萊卡Laica綜合酒心巧克力',' 醉了','2'),(48,'健達繽紛樂',' 好吃的巧克力，好吃的鵝啊間','8'),(49,'The CHOYA梅酒酒瓶造型黑巧克力',' 誇張好吃ㄟ!','3'),(50,'OREO巧克力夾心蛋',' 嗚嗚~我也想要別人買給我，但是沒有人，只好自己買Q','10'),(51,'Lindt瑞士蓮 極醇系列78%巧克力片',' 身為喝全糖的人，這個真的蠻苦的','18'),(52,'芬蘭Fazer伏特加酒心巧克力',' o','1'),(53,'芬蘭Fazer伏特加酒心巧克力',' oo','1'),(54,'芬蘭Fazer伏特加酒心巧克力',' ii','1'),(55,'芬蘭Fazer伏特加酒心巧克力',' pp','1'),(56,'芬蘭Fazer伏特加酒心巧克力',' jjjjjjjjjjjjjjjj','1'),(57,'張貝伃',' 太高不給過','23');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus` (
  `idbus` int NOT NULL AUTO_INCREMENT,
  `uaccount` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `gmail` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `say` varchar(45) NOT NULL,
  `where` varchar(45) NOT NULL,
  `totonum` int NOT NULL,
  `totoprice` int NOT NULL,
  PRIMARY KEY (`idbus`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus`
--

LOCK TABLES `bus` WRITE;
/*!40000 ALTER TABLE `bus` DISABLE KEYS */;
INSERT INTO `bus` VALUES (24,'home','侯文家','0000000000','信用卡','信實宿舍603','今天點單，五分鐘後送達','1',2,58),(29,'123','陳品叡','0987734567','現金','回家','','1',31,3379),(32,'123','陳品叡','0987734567','現金','回家','','1',36,3024),(33,'123','陳品叡','0987734567','現金','回家','','1',2,218),(34,'123','陳品叡','0987734567','現金','回家','','1',117,10656),(41,'123','陳品叡','0987734567','現金','回家','','1',18,1699);
/*!40000 ALTER TABLE `bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `idcar` int NOT NULL AUTO_INCREMENT,
  `uaccount` varchar(45) NOT NULL,
  `proid` varchar(45) NOT NULL,
  `proname` varchar(45) NOT NULL,
  `img` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `pronum` int NOT NULL,
  `xx` varchar(45) NOT NULL,
  PRIMARY KEY (`idcar`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counter` (
  `counter` varchar(45) NOT NULL,
  PRIMARY KEY (`counter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES ('10005');
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `uaccount` varchar(45) NOT NULL,
  `psw` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `uphone` varchar(45) NOT NULL,
  `uadress` varchar(45) NOT NULL,
  `memberid` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`memberid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('W','W','W','W','W',1),('0505','0929','陳郁樺','0963918929','新莊',2),('123','1009','陳品叡','0987734567','你家',3),('44132','0101','張阿貝','0908863412','地球',4),('2432','8787','唐唐小朋友','0123456789','深海的大鳳梨裡',5),('60301','0327','文家','091111111111','信實',11),('147','147','wer','0545616515','',12),('aaaa','aaaa','陳品叡','0987734567','aaaaa',13),('home','0800','侯文家','0000000000','信實宿舍603',14),('8787','7878','海王','023546855','信實宿舍的地下室得旁邊的上面',15);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `img` varchar(45) NOT NULL,
  `content` varchar(450) NOT NULL,
  `price` int NOT NULL,
  `figure` varchar(450) NOT NULL,
  `sub` varchar(45) NOT NULL,
  `num` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'芬蘭Fazer伏特加酒心巧克力','酒心1.png','砂糖.可可漿.葡萄糖漿.可可脂.食用酒精.水.蛋黃粉.全脂奶粉.蔗糖酶.乳化劑(大豆卵磷脂.交酯化蓖麻酸聚合甘油酯).香料.本產品含有蛋.牛奶.大豆.本產品含有堅果.杏仁和小麥.',179,'                        共3種口味：原味／檸檬／蔓越莓，特殊之處在於多層次的口感，內層的糖殼包裹純液態的Vodka，推薦食用方式為一口一顆，體會巧克力與Vodka的雙重享受。','alcohol',99),(2,'義大利萊卡Laica綜合酒心巧克力','酒心2.png','巧克力外殼:砂糖.可可漿.可可脂.乳化劑:大豆卵磷脂.天然香草香料、葡萄糖果糖糖漿.威士忌奶油(奶油.威士忌.乳蛋',169,'共五種類酒心巧克力，每一種都令人著迷，一口咬下，酒心即在你嘴裡蔓延，搭著酒心一同在你味蕾裡漫遊。','alcohol',99),(3,'The CHOYA梅酒酒瓶造型黑巧克力','酒心3.png','	砂糖、可可漿、轉化糖 (果糖、葡萄糖)、可可脂、CHOYA梅酒(梅子、砂糖、酒精)、食用酒精、葵花籽卵磷脂、香草萃取物 本產品生產設備管線有處理堅果.牛奶 可可固形物含量51%以上',109,'不同於一般的梅酒，最純粹梅酒，採用100%紀州南高梅，咬開瓶蓋部位，先喝梅酒酒心，顛覆你對巧克力的印象！','alcohol',99),(4,'SNEAKER巧克力','童年1.png','牛奶巧克力（白砂糖，可可液塊，可可脂，脫脂乳粉，乳糖，乳脂肪，精煉食用植物油，乳化劑（大豆磷脂），食用香料），花生仁，葡萄糖漿，白砂糖，脫脂乳粉，乳脂肪，精煉食用植物油，食用鹽，雞蛋蛋白粉，食用香料。',29,'香濃的巧克力包覆著香脆花生，香脆花生與焦糖，讓人愛不釋手。','childhood',99),(5,'M&M巧克力','童年2.png','牛奶巧克力（白砂糖，可可液塊，可可脂，脫脂乳粉，乳糖，乳脂肪，精煉食用植物油，乳化劑（大豆磷脂），食用香料），花生仁，葡萄糖漿，白砂糖，脫脂乳粉，乳脂肪，精煉食用植物油，食用鹽，雞蛋蛋白粉，食用香料。',29,'香濃的巧克力包覆著香脆花生，香脆花生與焦糖，讓人愛不釋手。','childhood',99),(6,'義美QQ巧克力球','童年3.png','牛奶巧克力（白砂糖，可可液塊，可可脂，脫脂乳粉，乳糖，乳脂肪，精煉食用植物油，乳化劑（大豆磷脂），食用香料），花生仁，葡萄糖漿，白砂糖，脫脂乳粉，乳脂肪，精煉食用植物油，食用鹽，雞蛋蛋白粉，食用香料。',29,'香濃的巧克力包覆著香脆花生，香脆花生與焦糖，讓人愛不釋手。','childhood',99),(7,'大波露巧克力','童年4.png','牛奶巧克力（白砂糖，可可液塊，可可脂，脫脂乳粉，乳糖，乳脂肪，精煉食用植物油，乳化劑（大豆磷脂），食用香料），花生仁，葡萄糖漿，白砂糖，脫脂乳粉，乳脂肪，精煉食用植物油，食用鹽，雞蛋蛋白粉，食用香料。',29,'香濃的巧克力包覆著香脆花生，香脆花生與焦糖，讓人愛不釋手。','childhood',99),(8,'健達繽紛樂','童年5.png','牛奶巧克力（白砂糖，可可液塊，可可脂，脫脂乳粉，乳糖，乳脂肪，精煉食用植物油，乳化劑（大豆磷脂），食用香料），花生仁，葡萄糖漿，白砂糖，脫脂乳粉，乳脂肪，精煉食用植物油，食用鹽，雞蛋蛋白粉，食用香料。',29,'香濃的巧克力包覆著香脆花生，香脆花生與焦糖，讓人愛不釋手。','childhood',99),(9,'77乳加巧克力','童年6.png','牛奶巧克力（白砂糖，可可液塊，可可脂，脫脂乳粉，乳糖，乳脂肪，精煉食用植物油，乳化劑（大豆磷脂），食用香料），花生仁，葡萄糖漿，白砂糖，脫脂乳粉，乳脂肪，精煉食用植物油，食用鹽，雞蛋蛋白粉，食用香料。',29,'香濃的巧克力包覆著香脆花生，香脆花生與焦糖，讓人愛不釋手。','childhood',99),(10,'OREO巧克力夾心蛋','節1.jpg','牛奶巧克力（白砂糖，可可液塊，可可脂，脫脂乳粉，乳糖，乳脂肪，精煉食用植物油，乳化劑（大豆磷脂），食用香料），花生仁，葡萄糖漿，白砂糖，脫脂乳粉，乳脂肪，精煉食用植物油，食用鹽，雞蛋蛋白粉，食用香料。',29,'香濃的巧克力包覆著香脆花生，香脆花生與焦糖，讓人愛不釋手。','holiday',99),(11,'巨蛋金莎','節2.jpg','牛奶巧克力（白砂糖，可可液塊，可可脂，脫脂乳粉，乳糖，乳脂肪，精煉食用植物油，乳化劑（大豆磷脂），食用香料），花生仁，葡萄糖漿，白砂糖，脫脂乳粉，乳脂肪，精煉食用植物油，食用鹽，雞蛋蛋白粉，食用香料。',29,'香濃的巧克力包覆著香脆花生，香脆花生與焦糖，讓人愛不釋手。','holiday',99),(12,'萬聖節南瓜巧克力','節3.png','牛奶巧克力（白砂糖，可可液塊，可可脂，脫脂乳粉，乳糖，乳脂肪，精煉食用植物油，乳化劑（大豆磷脂），食用香料），花生仁，葡萄糖漿，白砂糖，脫脂乳粉，乳脂肪，精煉食用植物油，食用鹽，雞蛋蛋白粉，食用香料。',290,'香濃的巧克力包覆著香脆花生，香脆花生與焦糖，讓人愛不釋手。','holiday',99),(13,'歐維氏72％醇黑巧克力','苦1.png','牛奶巧克力（白砂糖，可可液塊，可可脂，脫脂乳粉，乳糖，乳脂肪，精煉食用植物油，乳化劑（大豆磷脂），食用香料），花生仁，葡萄糖漿，白砂糖，脫脂乳粉，乳脂肪，精煉食用植物油，食用鹽，雞蛋蛋白粉，食用香料。',120,'香濃的巧克力包覆著香脆花生，香脆花生與焦糖，讓人愛不釋手。','high',99),(14,'歐維氏85％醇黑巧克力','苦2.png','牛奶巧克力（白砂糖，可可液塊，可可脂，脫脂乳粉，乳糖，乳脂肪，精煉食用植物油，乳化劑（大豆磷脂），食用香料），花生仁，葡萄糖漿，白砂糖，脫脂乳粉，乳脂肪，精煉食用植物油，食用鹽，雞蛋蛋白粉，食用香料。',120,'香濃的巧克力包覆著香脆花生，香脆花生與焦糖，讓人愛不釋手。','high',99),(15,'CACAO 86%黑巧克力','苦3.png','牛奶巧克力（白砂糖，可可液塊，可可脂，脫脂乳粉，乳糖，乳脂肪，精煉食用植物油，乳化劑（大豆磷脂），食用香料），花生仁，葡萄糖漿，白砂糖，脫脂乳粉，乳脂肪，精煉食用植物油，食用鹽，雞蛋蛋白粉，食用香料。',120,'香濃的巧克力包覆著香脆花生，香脆花生與焦糖，讓人愛不釋手。','high',99),(16,'CACAO 95%黑巧克力','苦4.png','牛奶巧克力（白砂糖，可可液塊，可可脂，脫脂乳粉，乳糖，乳脂肪，精煉食用植物油，乳化劑（大豆磷脂），食用香料），花生仁，葡萄糖漿，白砂糖，脫脂乳粉，乳脂肪，精煉食用植物油，食用鹽，雞蛋蛋白粉，食用香料。',120,'香濃的巧克力包覆著香脆花生，香脆花生與焦糖，讓人愛不釋手。','high',99),(17,'明治 代可可脂黑巧克力','苦5.png','牛奶巧克力（白砂糖，可可液塊，可可脂，脫脂乳粉，乳糖，乳脂肪，精煉食用植物油，乳化劑（大豆磷脂），食用香料），花生仁，葡萄糖漿，白砂糖，脫脂乳粉，乳脂肪，精煉食用植物油，食用鹽，雞蛋蛋白粉，食用香料。',120,'香濃的巧克力包覆著香脆花生，香脆花生與焦糖，讓人愛不釋手。','high',99),(18,'Lindt瑞士蓮 極醇系列78%巧克力片','苦6.png','牛奶巧克力（白砂糖，可可液塊，可可脂，脫脂乳粉，乳糖，乳脂肪，精煉食用植物油，乳化劑（大豆磷脂），食用香料），花生仁，葡萄糖漿，白砂糖，脫脂乳粉，乳脂肪，精煉食用植物油，食用鹽，雞蛋蛋白粉，食用香料。',120,'香濃的巧克力包覆著香脆花生，香脆花生與焦糖，讓人愛不釋手。','high',99),(22,'陳品叡','品.jpg','一日男友出租(也可月租，價錢可議)',2000,'冷冷的聖誕節沒人陪?跨年要出去和姊妹嗨嗨沒男友沒面子?沒關c~我們為你準備了優質出租男友!優點：顏值高、貼心、細心、最佳男友代表、你想的到的 你希望有的，他都有!缺點：就一句話 165以上先不要','dd',1),(23,'張貝伃','貝.jpg','沒用',100000,'dd','dd',1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-07 23:49:03

-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: geekbrains
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `models_id` int NOT NULL,
  `volume` int NOT NULL,
  `filter_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (1,1,1200,1),(2,1,1300,1),(3,2,750,2),(4,4,1000,2),(69,5,250,4),(70,6,400,4),(71,7,125,6),(72,7,200,6),(73,7,250,5),(74,7,390,5),(75,11,125,6),(76,11,200,6),(77,11,250,5),(78,11,650,5),(79,16,650,7),(80,16,750,7),(81,17,400,8),(82,17,600,8),(83,17,620,8),(84,17,695,9),(85,17,750,9),(86,17,800,9),(87,17,900,10),(88,17,1000,11),(89,27,250,12),(90,27,400,12),(91,28,800,13),(92,29,1000,14),(93,30,400,15),(94,31,125,16),(95,32,400,17),(96,32,600,17),(97,35,1250,18),(98,36,600,19),(99,37,650,20);
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'KTM'),(2,'Honda'),(3,'Kawasaki'),(4,'BMW'),(6,'Yamaha'),(7,'Suzuki'),(8,'Ducati'),(10,'Husqvarna');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `user_id` int DEFAULT '0',
  `session_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (105,66,4,0,'vrga5sonhkjhhmjv7m65a70vp8s3ogep'),(106,68,3,0,'vrga5sonhkjhhmjv7m65a70vp8s3ogep'),(107,65,6,0,'vrga5sonhkjhhmjv7m65a70vp8s3ogep'),(108,68,2,0,'6n58kou38dcvo9tbkanf4urcolo7rp8c'),(111,68,2,6,'6n58kou38dcvo9tbkanf4urcolo7rp8c'),(112,66,1,0,'jt22at3tbl59186qmp0b8l607hvqv9fv'),(113,68,1,0,'jt22at3tbl59186qmp0b8l607hvqv9fv'),(114,66,1,0,'1pfqc86stsu6640epibb47coeql36uug'),(115,68,1,0,'1pfqc86stsu6640epibb47coeql36uug'),(116,66,1,7,'1pfqc86stsu6640epibb47coeql36uug'),(117,68,1,7,'1pfqc86stsu6640epibb47coeql36uug'),(130,71,1,0,'s0du2tut85ipt3frcvn9agkiof745bi2'),(131,66,1,0,'s0du2tut85ipt3frcvn9agkiof745bi2'),(132,68,2,0,'e10hmfi55aceunafmpaffqnhjmh9nad8'),(133,66,1,0,'e10hmfi55aceunafmpaffqnhjmh9nad8'),(159,66,2,0,'rkgu46vanhnndci3jl9r2k3kg6jmj47c'),(161,69,2,0,'pfa2tam7cd41ag85e0rdbsgi5pu56ve3'),(165,69,1,0,'qspqbmhq86ei9hqbtcddigjb0js78v8a'),(167,69,1,0,'7i7iadv9uhvmhp6nhmt4sj69fi66mtf9'),(168,5,1,0,'7i7iadv9uhvmhp6nhmt4sj69fi66mtf9'),(179,69,7,1,'7i7iadv9uhvmhp6nhmt4sj69fi66mtf9'),(180,71,6,1,'7i7iadv9uhvmhp6nhmt4sj69fi66mtf9'),(181,66,6,1,'7i7iadv9uhvmhp6nhmt4sj69fi66mtf9'),(184,69,1,9,'7i7iadv9uhvmhp6nhmt4sj69fi66mtf9'),(185,77,2,0,'u98kuh4mduv5i854ubpg26gkg7glakf3');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Защита для мотоцикла'),(2,'Расходные материалы'),(3,'Масло и мотохимия'),(4,'Мотозапчасти');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'admin','Все ок'),(4,'Кто то ','Привет'),(5,'admin','Забаню'),(6,'Админ','Привет мир');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback_product`
--

DROP TABLE IF EXISTS `feedback_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `feedback_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_product`
--

LOCK TABLES `feedback_product` WRITE;
/*!40000 ALTER TABLE `feedback_product` DISABLE KEYS */;
INSERT INTO `feedback_product` VALUES (1,'Дмитрий','Ноутбук игровой ASUS F571GT-BQ703T нереально крут!',3),(2,'Иван И.','ASUS TUF Gaming FX705 AMD Edition бомбический ноут!',4),(4,'Михаил','Отличный ноут. Отзывы поправил.',3),(5,'Вася','Люблю Mac',5),(9,'Дмитрий','Привет Димон',4),(10,'Стив Джобс','Купил ноут. Все супер',3),(25,'Купивший','Немного ноутов на сайте с ценой до 50000. Этот оптимальный по цене/качеству.',66),(26,'Стив Джобс','Еще отзыв',66),(27,'Стив Джобс','Новый отзыв',66),(28,'Саша','Привет 1',3);
/*!40000 ALTER TABLE `feedback_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `views` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` VALUES (1,'01.jpg',111456,2),(2,'02.jpg',70076,0),(3,'03.jpg',70215,0),(4,'04.jpg',61733,0),(5,'05.jpg',160617,0),(6,'06.jpg',89871,0),(7,'07.jpg',99418,0),(8,'08.jpg',103775,0),(9,'09.jpg',81022,0),(10,'10.jpg',97127,0),(11,'11.jpg',98579,0),(12,'12.jpg',139286,0),(13,'13.jpg',113016,0),(14,'14.jpg',151814,0),(15,'15.jpg',112488,1);
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `models`
--

DROP TABLE IF EXISTS `models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `models` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `models`
--

LOCK TABLES `models` WRITE;
/*!40000 ALTER TABLE `models` DISABLE KEYS */;
INSERT INTO `models` VALUES (1,'XJR (1994-2015г.)','6'),(2,'Z750 (2003-2006г.)','3'),(4,'Z1000 (2003-2006г.)','3'),(5,'EX250 (2008-2012г.)','3'),(6,'CB400SF (1992-1998г.)','2'),(7,'DUKE (2013-2016г.)','1'),(11,'DUKE (2017-2019г.)','1'),(16,'GSF (2007-2014г.)','7'),(17,'Monster (1994-2008г.)','8'),(27,'DRZ (2005-2013г.)','7'),(28,'CB (2009-2013г.)','2'),(29,'VTR (1997-2002г.)','2'),(30,'Svartpilen (2018г.)','10'),(31,'YBR (2005-2014г.)','6'),(32,'Ninja (2010-2011г.)','3'),(35,'FTR (2011г.)','2'),(36,'Diversion (1992-1998г.)','6'),(37,'F650 (2001г.)','4');
/*!40000 ALTER TABLE `models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Новые детали уже в наличии!','Для заказа пишите или звоните'),(2,'Мы наконец-то открылись','Очень надеюсь что всё получится');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderId` int NOT NULL,
  `productId` int NOT NULL,
  `quantity` int NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`orderId`,`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (4,3,3,15,49990),(5,3,4,3,79990),(6,3,5,2,59990),(16,7,3,15,49990),(17,7,4,3,79990),(18,7,5,2,59990),(19,8,3,15,49990),(20,8,4,3,79990),(21,8,5,2,59990),(22,9,3,15,49990),(23,9,4,3,79990),(24,9,5,2,59990),(25,10,3,15,49990),(26,10,4,3,79990),(27,10,5,2,59990),(28,11,3,1,49990),(29,12,4,1,79990),(30,12,3,1,49990),(32,13,3,1,49990),(33,14,4,1,79990),(34,15,3,1,49990),(35,15,4,1,79990),(37,16,3,1,49990),(38,17,3,1,49990),(39,17,4,1,79990),(41,18,3,7,49990),(42,18,5,1,59990),(44,19,5,19,59990),(45,19,4,5,79990),(46,20,3,7,49990),(47,20,4,16,79990),(48,29,69,5,56060),(49,29,3,5,49990),(50,29,68,1,47910),(51,29,3,6,49990),(52,30,69,5,56060),(53,30,3,5,49990),(54,30,68,1,47910),(55,30,3,6,49990),(56,31,5,1,59990),(57,31,66,1,47540),(58,32,68,1,4791),(59,32,66,1,4754),(60,33,69,1,5606),(61,0,71,1,5060),(62,34,67,1,5113),(63,35,68,1,4791),(64,35,66,1,4754),(65,36,71,1,5060),(66,37,71,1,9990),(67,37,69,1,9990);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userId` int NOT NULL,
  `status` enum('Новый','Подтвержден','Оплачен','Выдан','Отменен') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Новый',
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `uId` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_id` (`uId`),
  KEY `user_id` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (3,'2020-10-17 17:36:18',0,'Отменен','Дмитрий',7,'lllll','7667690415f8affca5a42b2.56442037'),(7,'2020-10-17 18:08:40',0,'Оплачен','Дмитрий',79771175704,'Москва','15470743565f8b08f8260fa3.69380903'),(8,'2020-10-17 18:35:42',0,'Новый','Дмитрий',79771175704,'Москва, Верхняя Красносельская 10к7а, 120','7831725235f8b0f4e165908.35482044'),(9,'2020-10-17 18:38:25',0,'Отменен','Дмитрий',79771175704,'Москва','9882337285f8b0ff1570814.36086473'),(32,'2021-12-27 13:24:57',8,'Подтвержден','Bogdanova Marina',79655739552,'Ореховая ','15581449461c994790c7342.58669941'),(33,'2021-12-27 13:43:05',8,'Выдан','Bogdanova Marina',79655739552,'Ореховая 95, ','6586176761c998b9791897.83885758'),(34,'2021-12-27 14:02:45',8,'Оплачен','Bogdanova Marina',79655739552,'Ореховая 95','114968970961c99d55f13298.21658342'),(35,'2021-12-27 14:10:12',0,'Подтвержден','arin',89655739552,'Ореховая 95, ','213922467461c99f14c18688.89275017'),(36,'2021-12-27 15:08:07',0,'Оплачен','Bogdanova',89655739552,'Ореховая 95, ','120913144061c9aca7ece053.46984194'),(37,'2022-04-05 22:21:24',9,'Новый','vffffff',79129867022,'ghghghghg 21','1291137098624c96b476ed28.46885539');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `quantity_stock` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Нет в наличии',
  `categories_id` int DEFAULT NULL,
  `filter_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `name` (`name`,`description`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (3,'Клетка на мотоцикл HONDA CB600F Hornet','Усиленная клетка серии PRO, Crashbars Engine Guard для: HONDA CBR650F 2014-2018 HONDA CBR650FA 2014-2018 HONDA CB650FA 2014-2018 HONDA CB650F 2014-2018 специально спроектированная нами для мотоциклистов которые ценят комфорт, безопасность и надежность. Клетка усилена ребрами, образующими жесткие узлы во избежание продольных и поперечных деформаций. В комплекте вы найдете 4 сменных слайдера (по 2 на каждую сторону), которые располагаются таким образом, что динамический коэффициент при падении мотоцикла распределяется равномерно на все точки крепления каркасов. Важно! - Клетка очень компактна и не ощущается райдером. Ее габариты оставляют маневренность мотоцикла на прежнем уровне как и без обвеса! Обратите внимание что клетка поставляется в классическом черном цвете.','honda_CBR650F.jpeg',16990,'Нет в наличии',1,4),(4,'Дуги учебные на мотоцикл KTM Duke 125,200 2014-2019г','Дуги учебные на мотоцикл KTM Duke 125, Duke 390 до -`16, Duke 200 `12-`21 специально спроектированна для использования мотоцикла новичками первосезонниками или для частых падений на учебных площадках. В районе подножек и лапок тормоза и переключения передач нами предусмотрено расширение каркасов клетки. Теперь Вам не придется подваривать подножки после каждого соприкосновения мотоцикла с асфальтом. Узлы мотоклетки усилены стяжками образующими жесткие узлы во избежание продольных и поперечных деформаций. Покраска в цвет отличный от черного или оранжевого опционально по каталогу RAL.','ktm_DUKE125.jpeg',11990,'Под заказ',1,6),(5,'Дуги на мотоцикл Svartpilen 401','Дуги безопасности для Honda CRF300 Крепление осуществляется на 2 точки с каждой стороны мотоцикла. Левая и правая половинки соединены дополнительно между собой через две стальные штанги, что делает конструкцию максимально прочной. ','honda_CRF300.jpeg',10990,'30',1,15),(64,'Клетка на мотоцикл KAWASAKI Ninja 650R','Клетки серии DAMPER пришли в мир дорожных мотоциклов из стантрайдинга и являются продолжением нашей знаменитой серии клеток PRO. Геометрия клетки DAMPER идентична клеткам PRO, но основное отличие этих клеток в слайдерах. В данном случае вварены четрыре демпферных узла. Демпферный узел - это система со слайдером, которая закреплена на клетке не жестко, а имеет возможность двигаться под воздействием внешней силы. При этом большая часть этой силы уходит на сжимание демпфирующего элемента и не передается на раму и двигатель мотоцикла! Конечно такая конструкция делает клетку несколько шире, однако мы настоятельно рекомендуем их новичкам, мотошколам и многим продвинутым райдерам.','kawasaki_NINJA650R.jpeg',25990,'Нет в наличии',1,17),(65,'Дуги на мотоцикл Suzuki DRZ400(SM)','Дуги безопасности Crash Cage на мотоцикл BMW G310GS Могут быть установлены на все года выпуска Высокая степень защиты мотоцикла достигается за счет устойчивой сварной конструкции с креплением на две точки с каждой стороны. В третьей точке два каркаса соединяются между собой перемычкой под радиатором. Дуги довольно высоко поднимают мотор над асфальтом сводя вероятность его повреждения практически к нулю.','bmw_G310GS.jpeg',11990,'Ожидается поставка',1,12),(66,'Дуги на мотоцикл KTM Duke 250, 390 2014-2019','Дуги безопасности для: KTM Duke 390 2021- Дуги имеют 2 независимых точки крепления с каждой стороны и перемычку между каркасами, что делает конструкцию невероятно крепкой. Поэтому такие дуги э то надежная защита крышек двигателя и значительное снижение вероятности повреждения переднего пластика и бака.','ktm_DUKE250.jpeg',10990,'1',1,5),(67,'Клетка на мотоцикл HONDA CB400SF','Клетки серии DAMPER пришли в мир дорожных мотоциклов из стантрайдинга и являются продолжением нашей знаменитой серии клеток PRO. Геометрия клетки DAMPER одинаковая с клеткой PRO, но основное отличие этих клеток - они предназначены для использования с демпферными слайдерами. Демпферный слайдер - это слайдер который закреплен на клетке не жестко, а имеет возможность двигаться под воздействием внешней силы. При этом большая часть этой силы уходит на сжимание демпфирующего элемента и не передается на раму и двигатель мотоцикла! Конечно такая конструкция делает клетку несколько шире, однако мы настоятельно рекомендуем их новичкам, мотошколам и многим продвинутым райдерам. Обратите внимание, что клетка достойно отрабатыает падения как самостоятельно так и в комплекте с сабкейджем.','honda_NC750X.jpeg',25990,'20',1,4),(68,'Дуги на мотоцикл YAMAHA XJR 1200, 1300 ','Защитные дуги изготовлены из сочленения бесшовного профиля диаметром 27 и 22 мм с толщиной стенки 2,5 мм. Несущие каркасы выполнены более мощными, нежели соединяющие их перемычки. Таким образом мы добились уменьшения веса без снижения защитных свойств дуг. Тип дуг ближе к туристическому. Каркасы заведены вверх для защиты обтекателя. Крышки мотора также находятся под прикрытием. Под радиатором левый и правый каркас соединяются между собой в единый узел, это способствует более лучшему распределению удара и его гашению. Конфигурация дуг позволяет закрепить на них дополнительный свет, экшн камеру, держатель для бутылки и тд. ','yamaha_TRACER900.jpeg',15990,'5',1,1),(69,'Дуги на мотоцикл SUZUKI Z750, Z1000','Защитные дуги crash cage для Suzuki GSXR 600 и GSXR 750 от 2011 года выпуска и моложе В комплект поставки входят слайдеры на дуги. Крепление осуществляется на 3 точки с каждой стороны. Требуется доработка пластика в передней точке крепления дуги Очень надежная конструкция. ','suzuki_GSX-R600.jpeg',9990,'45',1,2),(70,'Дуги на мотоцикл Monster 400,600,620','Дуги безопасности для BAJAJ Dominar 2016-2018 г.в. Независимое крепление на 3 точки с каждой стороны.','bajaj_DOMINAR.jpeg',9490,'Нет в наличии',1,8),(71,'Дуги на мотоцикл BMW F650','Дуги безопасности Crash Cage на мотоцикл F650 .Могут быть установлены на модификации 2014-2016 годов выпуска Дуги имеют по три точки крепления дуг с каждой стороны. В комплекте вы найдете пару слайдеров высотой 40мм, которые можно приобрести отдельно в случае их повреждения. Высокопрочный крепеж твердостью 10.9 Для тех, кто считает подобную конструкцию не достаточно весомой для своей манеры езды - наша компания предлагает установить мотоклетку серии PRO, сабкейдж и колесные пеги.','bmw_S1000R.jpeg',9990,'3',1,20),(72,'Дуги на мотоцикл HONDA VTR1000F','Дуги безопасности для Honda VTR1000F. Крепление осуществляется на 3 точки с каждой стороны.','honda_CB1000R.jpeg',9990,'10',1,14),(74,'Масло вилочное ВМП 10W, 0,94л','Вилочное масло для всех типов амортизаторов мототехники Содержит пакет противопенных, антифрикционных и антикоррозийных присадок Совместимо с эластомерами Предотвращает образование пузырьков и обеспечивает стабильную работу амортизаторов Защищает от коррозии и продлевает срок службы деталей Стабильно и не образует осадка. Прекрасно подходит как спортивным, так и городским мотоциклам Устойчиво к окислению. Позволяет эксплуатировать мотоцикл в самых разнообразных климатических условиях Безопасно для сальников, так как не воздействует на эластомеры Класс вязкости SAE J 300 10W Сделано в России','undefined.jpg',700,'10',2,14),(75,'Масло моторное MOTUL минеральное ATV-UTV 4T 10W-40, 4л.','Моторное масло для 4-тактных двигателей утилитарных мотовездеходов Минеральное Применение Моторное масло предназначено для утилитарных квадроциклов и мотовездеходов, оснащенных четырехтактным двигателем, который может быть совмещен с коробкой передач. Может применяться в технике с сухим сцеплением или сцеплением в масляной ванне. Применимо для двигателей, выполняющих нормы Euro 2 и Euro 3, оснащенные системами нейтрализации отработавших газов: каталитическим нейтрализатором, подачей воздуха в систему выпуска. Используется в технике для отдыха и развлечений. Применяется со всеми типами топлива: этилированный и неэтилированный бензин, биотопливо. Классификации: API SL /SJ Соответствует требованиям: JASO MA Класс вязкости, SAE J 300: 10W-40 Замена производится в предусмотренные производителем сроки, которые могут быть скорректированы в зависимости от условий эксплуатации. Может смешиваться с синтетическими и минеральными маслами.','undefined.jpg',3555,'1',2,0),(76,'Смазка для цепи мотоцикла ВМП внедорожная, 400мл','Противоизносная смазка для цепей внедорожных мотоциклов (мотокросс, эндуро) и квадроциклов Обладает проникающим эффектом Продлевает срок службы цепи и звёзд Устойчива к смыванию, защищает от коррозии Не копит абразив (песок, пыль и др.) Смазка светится в УФ-свете Сделано в России','undefined.jpg',550,'5',2,0),(77,'Присадка для очистки топливной системы MOTUL BOOST & CLEAN MOTO','MOTUL BOOST AND CLEAN MOTO это присадка для очистки топливной системы двигателей мотоциклов и увеличения октанового числа бензина Мощная формула позволяет повысить октановое число бензина, а также удалить отложения на карбюраторе, клапанах, впускных и выпускных окнах, инжекторах, камерах сгорания Оптимизирует горение топлива и повышаетпроизводительность двигателя Облегчает запуск двигателя и динамические характеристики Сохраняет камеру сгорания чистой Снижает шум и вибрацию за счёт предотвращения детонации РЕКОМЕНДАЦИИ: Залейте содержимое одного флакона 200 мл MOTUL BOOST AND CLEAN MOTO в топливный бак перед его заправкой Для обеспечения оптимальной производительности рекомендуется использовать MOTUL BOOST AND CLEAN MOTO регулярно при каждой второй заправке топливного бака','undefined.jpg',150,'1',2,0),(78,'Тормозные колодки для мотоцикла AP RACING LMP257ST (MCB634)','Тормозные колодки AP RACING идеально подходят как для ежедневной езды на мотоцикле, так и для треков. Тормозные системы от британского производителя отличаются высокой износостойкостью и длительным сроком службы. Причиной такой выносливости стало использование высококачественных фрикционных материалов и технологических инноваций.','undefined.jpg',1850,'5',2,1),(79,'Тормозные колодки для мотоцикла AP RACING LMP106SR (MCB19SH)','Тормозные колодки AP RACING идеально подходят как для ежедневной езды на мотоцикле, так и для треков. Тормозные системы от британского производителя отличаются высокой износостойкостью и длительным сроком службы. Причиной такой выносливости стало использование высококачественных фрикционных материалов и технологических инноваций.','undefined.jpg',5150,'1',2,20),(80,'Фильтр воздушный MIW Y4213 YAMAHA XP500','Тормозные колодки AP RACING идеально подходят как для ежедневной езды на мотоцикле, так и для треков. Тормозные системы от британского производителя отличаются высокой износостойкостью и длительным сроком службы. Причиной такой выносливости стало использование высококачественных фрикционных материалов и технологических инноваций.','undefined.jpg',2850,'5',2,1),(81,'Фильтр масляный HIFLOFILTRO HF562','Тормозные колодки AP RACING идеально подходят как для ежедневной езды на мотоцикле, так и для треков. Тормозные системы от британского производителя отличаются высокой износостойкостью и длительным сроком службы. Причиной такой выносливости стало использование высококачественных фрикционных материалов и технологических инноваций.','undefined.jpg',400,'1',2,19),(82,'Шланг тормозной HONDA CBR600RR ABS','Тормозные колодки AP RACING идеально подходят как для ежедневной езды на мотоцикле, так и для треков. Тормозные системы от британского производителя отличаются высокой износостойкостью и длительным сроком службы. Причиной такой выносливости стало использование высококачественных фрикционных материалов и технологических инноваций.','undefined.jpg',150,'5',4,4),(83,'Зеркала для мотоцикла универсальные EMGO EL CHICO, универсальные','Тормозные колодки AP RACING идеально подходят как для ежедневной езды на мотоцикле, так и для треков. Тормозные системы от британского производителя отличаются высокой износостойкостью и длительным сроком службы. Причиной такой выносливости стало использование высококачественных фрикционных материалов и технологических инноваций.','undefined.jpg',550,'1',4,0),(84,'Вставка в ручку газа PW , для рулей 22мм','Тормозные колодки AP RACING идеально подходят как для ежедневной езды на мотоцикле, так и для треков. Тормозные системы от британского производителя отличаются высокой износостойкостью и длительным сроком службы. Причиной такой выносливости стало использование высококачественных фрикционных материалов и технологических инноваций.','undefined.jpg',2850,'5',4,18),(85,'Проставки стоек руля мотоцилка 28мм высота 49мм, межосевое 39мм','Тормозные колодки AP RACING идеально подходят как для ежедневной езды на мотоцикле, так и для треков. Тормозные системы от британского производителя отличаются высокой износостойкостью и длительным сроком службы. Причиной такой выносливости стало использование высококачественных фрикционных материалов и технологических инноваций.','undefined.jpg',2400,'1',4,16),(86,'Масло универсальное','масло','undefined.jpg',2000000,'Нет в наличии',3,0),(87,'Тормозная жидкость','жижа','undefined.jpg',32221,'Нет в наличии',3,0),(88,'Свечи зажигания универсальные','Свечи зажигания','undefined.jpg',122785278,'Нет в наличии',2,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cookie_hash` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_action` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_admin` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','Администратор','$2y$10$5WKMYg9MUNS6BThn4gHtLuoZlK3N5IcVNnYXRSVNt1FSh9eJCUovK','','2020-10-15 05:37:24',_binary ''),(3,'vasya','Вася','$2y$10$4ZDj9KyPZ56Un5KDw6WEHeguaDYS4g5QrKtV0Q3KyLwNf3x0jO1au','9262738935f8c414506ef47.65101352','2020-10-17 18:20:05',_binary '\0'),(4,'test2','Вася','$2y$10$AIN2fMls4LB7V69ZwTwxHuia9l5RMmkOJYe/7LqdAX4M9bo5rpPPe',NULL,'2020-11-12 08:08:40',_binary '\0'),(5,'www','Василий1','$2y$10$ZaUFeGObVSnmSKnRon6c3OcGL2.SkHjQ4aPJQN7y47vxhaZ2ZtlSS','','2020-11-13 20:38:54',_binary '\0'),(6,'seil','Марина','$2y$10$W8OS2BznCfLw/kG9a2mljOdU3C4FwuCesP4KTHleN7ZXymwdPP3Cq',NULL,'2021-11-15 11:59:11',_binary '\0'),(7,'qwerty','Марина22','$2y$10$RYYltSATLEZXUHvHtU9oDOkgmNpj8xQYchgJzTJSeLQkJqYcz0uCO',NULL,'2021-12-03 11:26:36',_binary '\0'),(8,'souls','Bogdanova Marina','$2y$10$H0dOTxUw/h0fnbIFRWR9jegd4fnGZJ4ea8xfBAHkr1Kp729kqTP.G',NULL,'2021-12-27 09:24:21',_binary '\0'),(9,'qweqwe','vffffff','$2y$10$8ljcK9amLqXo/QM1w8dEquuZZpA68qVcqqlSElJ4Xuy/IuGmfUXIW',NULL,'2022-04-05 19:18:55',_binary '\0');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-16 19:02:42

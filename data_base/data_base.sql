-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: spring_mvc_new
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `categorycode` varchar(255) DEFAULT NULL,
  `categoryname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,NULL,NULL,NULL,NULL,'sp-xuong-khop','Sản phẩm xương khớp'),(2,NULL,NULL,NULL,NULL,'sp-dai-trang','Sản phẩm đại tràng'),(3,NULL,NULL,NULL,NULL,'sp-nao','Sản phẩm não');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `commentcontent` text,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qadidjn2h0dqbc1nseh5bo4ff` (`product_id`),
  KEY `FK_mxoojfj9tmy8088avf57mpm02` (`user_id`),
  CONSTRAINT `FK_mxoojfj9tmy8088avf57mpm02` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_qadidjn2h0dqbc1nseh5bo4ff` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay`
--

DROP TABLE IF EXISTS `pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pay` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `status` bigint(20) DEFAULT NULL,
  `totalprice` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_f10hru8jcdijmvhv7hgk1bs8y` (`user_id`),
  CONSTRAINT `FK_f10hru8jcdijmvhv7hgk1bs8y` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay`
--

LOCK TABLES `pay` WRITE;
/*!40000 ALTER TABLE `pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paydetail`
--

DROP TABLE IF EXISTS `paydetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `paydetail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `codeimg` varchar(255) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `productprice` bigint(20) DEFAULT NULL,
  `pay_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_a0f7x8stb8nb6nhvmeqclv9ad` (`pay_id`),
  CONSTRAINT `FK_a0f7x8stb8nb6nhvmeqclv9ad` FOREIGN KEY (`pay_id`) REFERENCES `pay` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paydetail`
--

LOCK TABLES `paydetail` WRITE;
/*!40000 ALTER TABLE `paydetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `paydetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `codeimg` varchar(255) DEFAULT NULL,
  `productcode` varchar(255) DEFAULT NULL,
  `productcontent` text,
  `productname` varchar(255) DEFAULT NULL,
  `productprice` bigint(20) DEFAULT NULL,
  `productpriceOld` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_rlaghtegr0yx2c1q1s6nkqjlh` (`category_id`),
  CONSTRAINT `FK_rlaghtegr0yx2c1q1s6nkqjlh` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'admin','2022-05-30 15:21:15','admin','2022-05-30 15:21:15','sp2.png','khuong-thao-dan','khương thảo đan có tác dụng chữa xương khớp','Khương thảo đan ',875000,875000,1),(2,'admin','2022-05-30 15:22:02','admin','2022-05-30 15:22:02','sp7.jpg','cortripro','Cortripro có tác dụng chữa xương khớp','Cortripro',583000,583000,1),(3,'admin','2022-05-30 15:23:02','admin','2022-05-30 15:23:02','sp1.jpg','vuong-bao','Vương bảo có tác dụng chữa xương khớp','Vương bảo',629000,629000,1),(4,'admin','2022-05-30 15:24:09','admin','2022-05-30 15:24:09','sp3.jpg','trang-phuc-linh','Tràng phục linh chưa xương khớp','Tràng Phục Linh',564000,564000,1),(5,'admin','2022-05-30 15:24:57','admin','2022-05-30 15:24:57','spk1.png','ampelop','Ampelop có tác dụng chữa đại tràng','Ampelop',595000,595000,2),(6,'admin','2022-05-30 15:25:43','admin','2022-05-30 15:25:43','spk2.png','boganic','boganic chữa đại tràng','Boganic',425000,425000,2),(7,'admin','2022-05-30 15:26:30','admin','2022-05-30 15:26:30','spk3.png','cebraton','Cebraton chữa đại tràng','Cebraton',875000,875000,2),(8,'admin','2022-05-30 15:27:14','admin','2022-05-30 15:27:14','spk4.png','nuoc-rua-tay','dùng cho đại tràng','Nước rửa tay',741000,741000,2),(9,'admin','2022-05-30 15:27:54','admin','2022-05-30 15:27:54','spk5.png','evita','Evita dùng cho đại tràng','Evita',762000,762000,2),(10,'admin','2022-05-30 15:28:45','admin','2022-05-30 15:28:45','spk6.png','ha-thu-o','Hà thủ Ô đại tràng','Hà Thủ Ô',930000,930000,2),(11,'admin','2022-05-30 15:29:40','admin','2022-05-30 15:29:40','spk7.png','an-than','An thần - đại tràng','An Thần',569000,569000,2),(12,'admin','2022-05-30 15:34:13','admin','2022-05-30 15:34:13','spk8.png','hoan-dieu','hoàn điều cho đại tràng','Hoàn Điều',595000,595000,2),(13,'admin','2022-05-30 15:35:06','admin','2022-05-30 15:35:06','spk9.png','hoat-huyet','hoạt huyết chữa bệnh não','Hoạt huyết',741000,741000,3),(14,'admin','2022-05-30 15:36:02','admin','2022-05-30 15:36:02','spk10.png','ich-mau','ích mẫu cho bệnh não','Ích Mẫu ',815000,815000,3),(15,'admin','2022-05-30 15:37:09','admin','2022-05-30 15:37:09','spk11.png','dia-hoang','đại hoàng dùng cho bệnh não','Địa Hoàng',875000,875000,3);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productadd`
--

DROP TABLE IF EXISTS `productadd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `productadd` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `numberadd` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ns1j0puwx6u2oeetlmew721ie` (`product_id`),
  KEY `FK_nt762q1adyos0eawg3qbrwnwf` (`user_id`),
  CONSTRAINT `FK_ns1j0puwx6u2oeetlmew721ie` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FK_nt762q1adyos0eawg3qbrwnwf` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productadd`
--

LOCK TABLES `productadd` WRITE;
/*!40000 ALTER TABLE `productadd` DISABLE KEYS */;
INSERT INTO `productadd` VALUES (1,'nguyenvana','2022-05-30 15:38:15','nguyenvana','2022-05-30 15:38:15',1,1,2),(2,'nguyenvana','2022-05-30 15:38:16','nguyenvana','2022-05-30 15:38:16',1,2,2),(3,'nguyenvana','2022-05-30 15:38:17','nguyenvana','2022-05-30 15:38:17',1,3,2),(4,'nguyenvana','2022-05-30 15:38:18','nguyenvana','2022-05-30 15:38:18',1,4,2);
/*!40000 ALTER TABLE `productadd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `rolecode` varchar(255) DEFAULT NULL,
  `rolename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,NULL,NULL,NULL,NULL,'ADMIN','Quản trị'),(2,NULL,NULL,NULL,NULL,'USER','Người dùng'),(3,NULL,NULL,NULL,NULL,'STAFF','Nhân viên'),(4,NULL,NULL,NULL,NULL,'MANAGER','Trưởng phòng');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phoneemail` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qleu8ddawkdltal07p8e6hgva` (`role_id`),
  CONSTRAINT `FK_qleu8ddawkdltal07p8e6hgva` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,NULL,NULL,NULL,'Giám đốc','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','bsang',1,'admin',1),(2,NULL,NULL,NULL,NULL,'Nguyễn Văn A','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','bxsang260699',1,'nguyenvana',2),(3,NULL,NULL,NULL,NULL,'Nguyễn Văn B','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','bxsang26',1,'nguyenvanb',2),(4,NULL,NULL,NULL,NULL,'Trưởng phòng C','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','bdtrong',1,'nguyenvanc',4),(5,NULL,NULL,NULL,NULL,'Nhân viên D','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','bdtrong060996',1,'nguyenvand',3);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-07 15:06:07

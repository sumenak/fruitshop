-- MySQL dump 10.14  Distrib 5.5.65-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: fruit
-- ------------------------------------------------------
-- Server version	5.7.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add 轮播图',7,'add_banner'),(26,'Can change 轮播图',7,'change_banner'),(27,'Can delete 轮播图',7,'delete_banner'),(28,'Can view 轮播图',7,'view_banner'),(29,'Can add 用户浏览记录',8,'add_goodsbrowser'),(30,'Can change 用户浏览记录',8,'change_goodsbrowser'),(31,'Can delete 用户浏览记录',8,'delete_goodsbrowser'),(32,'Can view 用户浏览记录',8,'view_goodsbrowser'),(33,'Can add 用户信息',9,'add_userinfo'),(34,'Can change 用户信息',9,'change_userinfo'),(35,'Can delete 用户信息',9,'delete_userinfo'),(36,'Can view 用户信息',9,'view_userinfo'),(37,'Can add 侧边广告',10,'add_advert'),(38,'Can change 侧边广告',10,'change_advert'),(39,'Can delete 侧边广告',10,'delete_advert'),(40,'Can view 侧边广告',10,'view_advert'),(41,'Can add 商品',11,'add_goodsinfo'),(42,'Can change 商品',11,'change_goodsinfo'),(43,'Can delete 商品',11,'delete_goodsinfo'),(44,'Can view 商品',11,'view_goodsinfo'),(45,'Can add 商品类型',12,'add_typeinfo'),(46,'Can change 商品类型',12,'change_typeinfo'),(47,'Can delete 商品类型',12,'delete_typeinfo'),(48,'Can view 商品类型',12,'view_typeinfo'),(49,'Can add Bookmark',13,'add_bookmark'),(50,'Can change Bookmark',13,'change_bookmark'),(51,'Can delete Bookmark',13,'delete_bookmark'),(52,'Can view Bookmark',13,'view_bookmark'),(53,'Can add log entry',14,'add_log'),(54,'Can change log entry',14,'change_log'),(55,'Can delete log entry',14,'delete_log'),(56,'Can view log entry',14,'view_log'),(57,'Can add User Setting',15,'add_usersettings'),(58,'Can change User Setting',15,'change_usersettings'),(59,'Can delete User Setting',15,'delete_usersettings'),(60,'Can view User Setting',15,'view_usersettings'),(61,'Can add User Widget',16,'add_userwidget'),(62,'Can change User Widget',16,'change_userwidget'),(63,'Can delete User Widget',16,'delete_userwidget'),(64,'Can view User Widget',16,'view_userwidget'),(65,'Can add captcha store',17,'add_captchastore'),(66,'Can change captcha store',17,'change_captchastore'),(67,'Can delete captcha store',17,'delete_captchastore'),(68,'Can view captcha store',17,'view_captchastore'),(69,'Can add 订单详情',18,'add_orderdetailinfo'),(70,'Can change 订单详情',18,'change_orderdetailinfo'),(71,'Can delete 订单详情',18,'delete_orderdetailinfo'),(72,'Can view 订单详情',18,'view_orderdetailinfo'),(73,'Can add 订单',19,'add_orderinfo'),(74,'Can change 订单',19,'change_orderinfo'),(75,'Can delete 订单',19,'delete_orderinfo'),(76,'Can view 订单',19,'view_orderinfo'),(77,'Can add 购物车',20,'add_cartinfo'),(78,'Can change 购物车',20,'change_cartinfo'),(79,'Can delete 购物车',20,'delete_cartinfo'),(80,'Can view 购物车',20,'view_cartinfo');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$fwrz5w4OOYiA$GN8lItmc0BnE0ohSMs3j/+TJ57L/MnjCAEEVqve63+M=','2021-09-26 17:45:10.275854',1,'admin','','','admin@qq.com',1,1,'2021-03-27 11:51:35.353600');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_cart`
--

DROP TABLE IF EXISTS `bookshop_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookshop_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_goods_num` int(11) NOT NULL,
  `c_is_select` tinyint(1) NOT NULL,
  `c_goods_id` int(11) NOT NULL,
  `c_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bookshop_cart_c_goods_id_a13cf02a_fk_bookshop_goods_id` (`c_goods_id`),
  KEY `bookshop_cart_c_user_id_32eb1ff7_fk_bookshop_user_id` (`c_user_id`),
  CONSTRAINT `bookshop_cart_c_goods_id_a13cf02a_fk_bookshop_goods_id` FOREIGN KEY (`c_goods_id`) REFERENCES `bookshop_goods` (`id`),
  CONSTRAINT `bookshop_cart_c_user_id_32eb1ff7_fk_bookshop_user_id` FOREIGN KEY (`c_user_id`) REFERENCES `bookshop_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_cart`
--

LOCK TABLES `bookshop_cart` WRITE;
/*!40000 ALTER TABLE `bookshop_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookshop_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_foodtype`
--

DROP TABLE IF EXISTS `bookshop_foodtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookshop_foodtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) NOT NULL,
  `typenames` varchar(32) NOT NULL,
  `childtypenames` varchar(255) NOT NULL,
  `typesort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_foodtype`
--

LOCK TABLES `bookshop_foodtype` WRITE;
/*!40000 ALTER TABLE `bookshop_foodtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookshop_foodtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_goods`
--

DROP TABLE IF EXISTS `bookshop_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookshop_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) NOT NULL,
  `productimg` varchar(255) NOT NULL,
  `productlongname` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `marketprice` double NOT NULL,
  `categoryid` int(11) NOT NULL,
  `childcid` int(11) NOT NULL,
  `childcidname` varchar(128) NOT NULL,
  `dealerid` int(11) NOT NULL,
  `productnum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_goods`
--

LOCK TABLES `bookshop_goods` WRITE;
/*!40000 ALTER TABLE `bookshop_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookshop_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_mainshow`
--

DROP TABLE IF EXISTS `bookshop_mainshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookshop_mainshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `name` varchar(64) NOT NULL,
  `trackid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `childcid1` int(11) NOT NULL,
  `productid1` int(11) NOT NULL,
  `longname1` varchar(128) NOT NULL,
  `price1` double NOT NULL,
  `marketprice1` double NOT NULL,
  `img2` varchar(255) NOT NULL,
  `childcid2` int(11) NOT NULL,
  `productid2` int(11) NOT NULL,
  `longname2` varchar(128) NOT NULL,
  `price2` double NOT NULL,
  `marketprice2` double NOT NULL,
  `img3` varchar(255) NOT NULL,
  `childcid3` int(11) NOT NULL,
  `productid3` int(11) NOT NULL,
  `longname3` varchar(128) NOT NULL,
  `price3` double NOT NULL,
  `marketprice3` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_mainshow`
--

LOCK TABLES `bookshop_mainshow` WRITE;
/*!40000 ALTER TABLE `bookshop_mainshow` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookshop_mainshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_user`
--

DROP TABLE IF EXISTS `bookshop_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookshop_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_username` varchar(64) NOT NULL,
  `u_password` varchar(256) NOT NULL,
  `u_email` varchar(64) NOT NULL,
  `u_icon` varchar(100) NOT NULL,
  `is_activate` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_username` (`u_username`),
  UNIQUE KEY `u_email` (`u_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_user`
--

LOCK TABLES `bookshop_user` WRITE;
/*!40000 ALTER TABLE `bookshop_user` DISABLE KEYS */;
INSERT INTO `bookshop_user` VALUES (1,'test','pbkdf2_sha256$120000$hRJDSJUlHarj$CqQ2wSvT59rUdMnve1STBhtc8BrNxkcBM+FPh0jK65M=','123@qq.com','icon/2021/07/15/2.jpg',1,0);
/*!40000 ALTER TABLE `bookshop_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshop_wheel`
--

DROP TABLE IF EXISTS `bookshop_wheel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookshop_wheel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `name` varchar(64) NOT NULL,
  `trackid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop_wheel`
--

LOCK TABLES `bookshop_wheel` WRITE;
/*!40000 ALTER TABLE `bookshop_wheel` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookshop_wheel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `response` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `hashkey` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_captchastore`
--

LOCK TABLES `captcha_captchastore` WRITE;
/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_cartinfo`
--

DROP TABLE IF EXISTS `cart_cartinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_cartinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_cartinfo_goods_id_081e92fa_fk_goods_goodsinfo_id` (`goods_id`),
  KEY `cart_cartinfo_user_id_8b68d4b3_fk_user_userinfo_id` (`user_id`),
  CONSTRAINT `cart_cartinfo_goods_id_081e92fa_fk_goods_goodsinfo_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goodsinfo` (`id`),
  CONSTRAINT `cart_cartinfo_user_id_8b68d4b3_fk_user_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `user_userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_cartinfo`
--

LOCK TABLES `cart_cartinfo` WRITE;
/*!40000 ALTER TABLE `cart_cartinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_cartinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(17,'captcha','captchastore'),(20,'cart','cartinfo'),(5,'contenttypes','contenttype'),(11,'goods','goodsinfo'),(12,'goods','typeinfo'),(18,'order','orderdetailinfo'),(19,'order','orderinfo'),(6,'sessions','session'),(10,'user','advert'),(7,'user','banner'),(8,'user','goodsbrowser'),(9,'user','userinfo'),(13,'xadmin','bookmark'),(14,'xadmin','log'),(15,'xadmin','usersettings'),(16,'xadmin','userwidget');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-03-27 11:34:01.204100'),(2,'auth','0001_initial','2021-03-27 11:34:03.199600'),(3,'admin','0001_initial','2021-03-27 11:34:03.506100'),(4,'admin','0002_logentry_remove_auto_add','2021-03-27 11:34:03.528100'),(5,'admin','0003_logentry_add_action_flag_choices','2021-03-27 11:34:03.546100'),(6,'contenttypes','0002_remove_content_type_name','2021-03-27 11:34:03.800600'),(7,'auth','0002_alter_permission_name_max_length','2021-03-27 11:34:03.915600'),(8,'auth','0003_alter_user_email_max_length','2021-03-27 11:34:04.090100'),(9,'auth','0004_alter_user_username_opts','2021-03-27 11:34:04.108600'),(10,'auth','0005_alter_user_last_login_null','2021-03-27 11:34:04.238600'),(11,'auth','0006_require_contenttypes_0002','2021-03-27 11:34:04.252100'),(12,'auth','0007_alter_validators_add_error_messages','2021-03-27 11:34:04.269600'),(13,'auth','0008_alter_user_username_max_length','2021-03-27 11:34:04.407100'),(14,'auth','0009_alter_user_last_name_max_length','2021-03-27 11:34:04.516100'),(15,'captcha','0001_initial','2021-03-27 11:34:04.590600'),(16,'goods','0001_initial','2021-03-27 11:34:04.910100'),(17,'user','0001_initial','2021-03-27 11:34:05.360100'),(18,'cart','0001_initial','2021-03-27 11:34:05.581100'),(19,'order','0001_initial','2021-03-27 11:34:06.028100'),(20,'sessions','0001_initial','2021-03-27 11:34:06.091600'),(21,'user','0002_advert','2021-03-27 11:34:06.169100'),(22,'user','0003_advert_adtype','2021-03-27 11:34:06.274100'),(23,'xadmin','0001_initial','2021-03-27 11:34:06.852100');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('00vqlff3tws1xmkdrqnbckn9wwqekpt3','MzMwODQxZjBhMWEwMzhkNTVlNzIzZGM1ODQ5ZjhkZjZlNDk2MWU3Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWNmZDQxMmQyNjQ0NGViZmQ3MDVhOTllMDI2YTkzZWM0YWZkYTJiIiwiTElTVF9RVUVSWSI6W1siZ29vZHMiLCJnb29kc2luZm8iXSwiIl19','2021-04-11 11:55:02.641600'),('9z35x9fe77e4te9nafm4jtzalgq0mosh','NmVhNDFhNGExNmNjNWNiZGZkYjUxMmYxZTQxZmJiOTQwMGJiZjBhNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWNmZDQxMmQyNjQ0NGViZmQ3MDVhOTllMDI2YTkzZWM0YWZkYTJiIiwiTElTVF9RVUVSWSI6W1sidXNlciIsImJhbm5lciJdLCIiXX0=','2021-04-11 12:02:31.734600'),('b87ilmghlxvn4rjip3ghs0scflh4ask6','MzMwODQxZjBhMWEwMzhkNTVlNzIzZGM1ODQ5ZjhkZjZlNDk2MWU3Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWNmZDQxMmQyNjQ0NGViZmQ3MDVhOTllMDI2YTkzZWM0YWZkYTJiIiwiTElTVF9RVUVSWSI6W1siZ29vZHMiLCJnb29kc2luZm8iXSwiIl19','2021-10-10 17:32:22.572056'),('bffn0exxwwvk0rq5go99zo553thwrjij','MDJhYzAyNmEyMjFhYWU5NWFhYWYwNzYyYTI0Y2Y3Nzg5OGFiNDJkYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWNmZDQxMmQyNjQ0NGViZmQ3MDVhOTllMDI2YTkzZWM0YWZkYTJiIiwiTElTVF9RVUVSWSI6W1siZ29vZHMiLCJ0eXBlaW5mbyJdLCIiXSwidXNlcl9pZCI6MSwidXNlcl9uYW1lIjoidGVzdDEifQ==','2021-10-10 16:46:33.173803'),('dkj26vjo7frgn0gw0i8nh1btc6ud9syt','YzdhNTFiZWMzNTZiNzA3ZDZjMDFjNGExNDNmYTM0MmIxMDE2MTRlYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWNmZDQxMmQyNjQ0NGViZmQ3MDVhOTllMDI2YTkzZWM0YWZkYTJiIiwiTElTVF9RVUVSWSI6W1siZ29vZHMiLCJ0eXBlaW5mbyJdLCIiXX0=','2021-04-11 11:53:43.791100'),('efgr5lo9arrpgf9ftlszmjcbiuyc7h5z','YzdhNTFiZWMzNTZiNzA3ZDZjMDFjNGExNDNmYTM0MmIxMDE2MTRlYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWNmZDQxMmQyNjQ0NGViZmQ3MDVhOTllMDI2YTkzZWM0YWZkYTJiIiwiTElTVF9RVUVSWSI6W1siZ29vZHMiLCJ0eXBlaW5mbyJdLCIiXX0=','2021-05-04 09:33:07.603000'),('hd4vuy6mgll142xmuax88ftqtqyb1xe8','MDYxZWZmNDdkNWJlZjM0ZjQ4OWQ1MTQ1NzQxODRmYjY3MzNlNThhMjp7InVzZXJfaWQiOjIsInVzZXJfbmFtZSI6InRlc3QyIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjE1Y2ZkNDEyZDI2NDQ0ZWJmZDcwNWE5OWUwMjZhOTNlYzRhZmRhMmIiLCJMSVNUX1FVRVJZIjpbWyJhdXRoIiwicGVybWlzc2lvbiJdLCIiXX0=','2021-09-23 01:37:50.042957'),('sjvdm276ktqhk4goeh94667mfs545r1u','MjNiNGI5ZTNiMzJjMzE0MWVkYmFkOWVjMzE5OTI0YTY3MDI3ZmEzYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWNmZDQxMmQyNjQ0NGViZmQ3MDVhOTllMDI2YTkzZWM0YWZkYTJiIiwiTElTVF9RVUVSWSI6W1sidXNlciIsInVzZXJpbmZvIl0sIiJdfQ==','2021-10-10 17:50:16.214388'),('z996cwv9ykfq7ulkrqdk9w83y6pj33a0','MGVlZjU4ZGVkMWI1ZDVhNWY0OTc2MWU1YmU1MjczM2QwYzZmZWIzNzp7InVzZXJfaWQiOjEsInVzZXJfbmFtZSI6InRlc3QxIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjE1Y2ZkNDEyZDI2NDQ0ZWJmZDcwNWE5OWUwMjZhOTNlYzRhZmRhMmIiLCJMSVNUX1FVRVJZIjpbWyJnb29kcyIsImdvb2RzaW5mbyJdLCIiXX0=','2021-04-12 15:33:09.666100');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_goodsinfo`
--

DROP TABLE IF EXISTS `goods_goodsinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_goodsinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `gtitle` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `gpic` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gprice` decimal(5,2) NOT NULL,
  `gunit` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `gclick` int(11) NOT NULL,
  `gjianjie` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gkucun` int(11) NOT NULL,
  `gcontent` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gtype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gtitle` (`gtitle`),
  KEY `goods_goodsinfo_gtype_id_b02b0e32_fk_goods_typeinfo_id` (`gtype_id`),
  CONSTRAINT `goods_goodsinfo_gtype_id_b02b0e32_fk_goods_typeinfo_id` FOREIGN KEY (`gtype_id`) REFERENCES `goods_typeinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_goodsinfo`
--

LOCK TABLES `goods_goodsinfo` WRITE;
/*!40000 ALTER TABLE `goods_goodsinfo` DISABLE KEYS */;
INSERT INTO `goods_goodsinfo` VALUES (1,0,'橘子','goods/2021/09/橙子.jpg',12.00,'g',12,'橘子',100,'<p>橘子</p>',1),(2,0,'柠檬','goods/2021/09/柠檬_t8eHVgr.png',22.00,'g',13,'柠檬',52,'<p>柠檬</p>',4),(3,0,'樱桃','goods/2021/09/樱桃_4SKnbUi.png',23.00,'g',138,'樱桃',522,'<p>樱桃</p>',2),(4,0,'香蕉','goods/2021/09/香蕉.jpg',32.00,'g',1323,'香蕉',52,'<p>香蕉</p>',3),(5,0,'柚子','goods/2021/09/柚子.jpg',34.00,'g',21,'柚子',52,'<p><span style=\"color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">柚子</span></p>',4),(6,0,'黄皮果','goods/2021/09/黄皮果.jpg',11.00,'g',13,'黄皮果',522,'<p>黄皮果</p>',4),(7,0,'梨','goods/2021/09/梨.png',32.00,'g',1227,'梨',12,'<p>梨</p>',2),(8,0,'哈密瓜','goods/2021/09/哈密瓜.jpg',55.00,'g',19,'哈密瓜',87,'<p>哈密瓜</p>',2),(9,0,'山楂','goods/2021/09/山楂.jpg',76.00,'g',137,'山楂',32,'<h1 style=\"margin: 0px 10px 0px 0px; padding: 0px; font-size: 34px; color: rgb(51, 51, 51); display: inline; line-height: 1.15; font-weight: 400; vertical-align: sub; font-family: arial, tahoma, &quot;Microsoft Yahei&quot;, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">山楂</h1>',2),(10,0,'草莓','goods/2021/09/草莓.jpg',111.00,'g',1111,'草莓',123,'<p>草莓</p>',5),(11,0,'木瓜','goods/2021/09/木瓜.jpg',132.00,'g',123,'木瓜',11,'<p>木瓜</p>',5),(12,0,'西瓜','goods/2021/09/大西瓜.jpg',43.00,'g',136,'西瓜',123,'<p>西瓜</p>',1),(13,0,'猕猴桃','goods/2021/09/猕猴桃.png',23.00,'g',11112,'猕猴桃',87,'<p>猕猴桃</p>',1),(14,0,'菠萝蜜','goods/2021/09/菠萝蜜.jpg',21.00,'g',15,'菠萝蜜',12,'<p>菠萝蜜</p>',1),(15,0,'桑葚','goods/2021/09/桑葚.jpg',23.00,'g',168,'桑葚',64,'<p>桑葚</p>',1);
/*!40000 ALTER TABLE `goods_goodsinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_typeinfo`
--

DROP TABLE IF EXISTS `goods_typeinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_typeinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `tpic` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ttitle` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_typeinfo`
--

LOCK TABLES `goods_typeinfo` WRITE;
/*!40000 ALTER TABLE `goods_typeinfo` DISABLE KEYS */;
INSERT INTO `goods_typeinfo` VALUES (1,0,'goods/2021/09/樱桃.png','核果类'),(2,0,'goods/2021/09/西瓜_TbujxCW.png','仁果类'),(3,0,'goods/2021/09/葡萄.png','浆果类'),(4,0,'goods/2021/09/柠檬.png','柑果类'),(5,0,'goods/2021/09/杂果.png','复果、聚合果');
/*!40000 ALTER TABLE `goods_typeinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_orderdetailinfo`
--

DROP TABLE IF EXISTS `order_orderdetailinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_orderdetailinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(6,2) NOT NULL,
  `count` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `order_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_orderdetailinfo_goods_id_8157f17f_fk_goods_goodsinfo_id` (`goods_id`),
  KEY `order_orderdetailinfo_order_id_1c4e2bce_fk_order_orderinfo_oid` (`order_id`),
  CONSTRAINT `order_orderdetailinfo_goods_id_8157f17f_fk_goods_goodsinfo_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goodsinfo` (`id`),
  CONSTRAINT `order_orderdetailinfo_order_id_1c4e2bce_fk_order_orderinfo_oid` FOREIGN KEY (`order_id`) REFERENCES `order_orderinfo` (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_orderdetailinfo`
--

LOCK TABLES `order_orderdetailinfo` WRITE;
/*!40000 ALTER TABLE `order_orderdetailinfo` DISABLE KEYS */;
INSERT INTO `order_orderdetailinfo` VALUES (3,23.00,1,15,'202109090137082');
/*!40000 ALTER TABLE `order_orderdetailinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_orderinfo`
--

DROP TABLE IF EXISTS `order_orderinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_orderinfo` (
  `oid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `odate` datetime(6) NOT NULL,
  `oIsPay` tinyint(1) NOT NULL,
  `ototal` decimal(8,2) NOT NULL,
  `oaddress` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `order_orderinfo_user_id_ac29fa2b_fk_user_userinfo_id` (`user_id`),
  CONSTRAINT `order_orderinfo_user_id_ac29fa2b_fk_user_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `user_userinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_orderinfo`
--

LOCK TABLES `order_orderinfo` WRITE;
/*!40000 ALTER TABLE `order_orderinfo` DISABLE KEYS */;
INSERT INTO `order_orderinfo` VALUES ('202103281118071','2021-03-28 11:18:07.867600',0,78.00,'',1),('202103281121391','2021-03-28 11:21:39.355100',0,20.00,'',1),('202109090137082','2021-09-09 01:37:08.202305',0,33.00,'',2);
/*!40000 ALTER TABLE `order_orderinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_addr`
--

DROP TABLE IF EXISTS `shop_addr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_addr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `A_order_id` int(11) NOT NULL,
  `A_city_id` int(11) NOT NULL,
  `A_detail` varchar(125) NOT NULL,
  `A_user_name` varchar(125) NOT NULL,
  `A_tell` varchar(64) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `A_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_addr_A_user_id_edf1cee5_fk_bookshop_user_id` (`A_user_id`),
  CONSTRAINT `shop_addr_A_user_id_edf1cee5_fk_bookshop_user_id` FOREIGN KEY (`A_user_id`) REFERENCES `bookshop_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_addr`
--

LOCK TABLES `shop_addr` WRITE;
/*!40000 ALTER TABLE `shop_addr` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_addr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_city`
--

DROP TABLE IF EXISTS `shop_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_city` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_city`
--

LOCK TABLES `shop_city` WRITE;
/*!40000 ALTER TABLE `shop_city` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order`
--

DROP TABLE IF EXISTS `shop_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `o_price` double NOT NULL,
  `o_time` datetime(6) NOT NULL,
  `o_status` int(11) NOT NULL,
  `o_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_order_o_user_id_263d6f53_fk_bookshop_user_id` (`o_user_id`),
  CONSTRAINT `shop_order_o_user_id_263d6f53_fk_bookshop_user_id` FOREIGN KEY (`o_user_id`) REFERENCES `bookshop_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order`
--

LOCK TABLES `shop_order` WRITE;
/*!40000 ALTER TABLE `shop_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_ordergoods`
--

DROP TABLE IF EXISTS `shop_ordergoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_ordergoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `o_goods_num` int(11) NOT NULL,
  `o_goods_id` int(11) NOT NULL,
  `o_order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_ordergoods_o_goods_id_b179b12b_fk_bookshop_goods_id` (`o_goods_id`),
  KEY `shop_ordergoods_o_order_id_8883f0e9_fk_shop_order_id` (`o_order_id`),
  CONSTRAINT `shop_ordergoods_o_goods_id_b179b12b_fk_bookshop_goods_id` FOREIGN KEY (`o_goods_id`) REFERENCES `bookshop_goods` (`id`),
  CONSTRAINT `shop_ordergoods_o_order_id_8883f0e9_fk_shop_order_id` FOREIGN KEY (`o_order_id`) REFERENCES `shop_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_ordergoods`
--

LOCK TABLES `shop_ordergoods` WRITE;
/*!40000 ALTER TABLE `shop_ordergoods` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_ordergoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_advert`
--

DROP TABLE IF EXISTS `user_advert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_advert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `adimage` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `adurl` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `adindex` int(11) NOT NULL,
  `ad_time` datetime(6) NOT NULL,
  `adtype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_advert_adtype_id_c4366ad4_fk_goods_typeinfo_id` (`adtype_id`),
  CONSTRAINT `user_advert_adtype_id_c4366ad4_fk_goods_typeinfo_id` FOREIGN KEY (`adtype_id`) REFERENCES `goods_typeinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_advert`
--

LOCK TABLES `user_advert` WRITE;
/*!40000 ALTER TABLE `user_advert` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_advert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_banner`
--

DROP TABLE IF EXISTS `user_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_banner`
--

LOCK TABLES `user_banner` WRITE;
/*!40000 ALTER TABLE `user_banner` DISABLE KEYS */;
INSERT INTO `user_banner` VALUES (4,'葡萄','banner/2021/09/葡萄.png','http://127.0.0.1:8000/',100,'2021-09-07 22:51:00.000000'),(5,'苹果','banner/2021/09/苹果.png','http://127.0.0.1:8000/',100,'2021-09-07 22:53:00.000000'),(6,'杂果','banner/2021/09/杂果.png','http://127.0.0.1:8000/',100,'2021-09-07 22:53:00.000000');
/*!40000 ALTER TABLE `user_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_goodsbrowser`
--

DROP TABLE IF EXISTS `user_goodsbrowser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_goodsbrowser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `browser_time` datetime(6) NOT NULL,
  `good_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_goodsbrowser_good_id_26d9110f_fk_goods_goodsinfo_id` (`good_id`),
  KEY `user_goodsbrowser_user_id_e301f1c8_fk_user_userinfo_id` (`user_id`),
  CONSTRAINT `user_goodsbrowser_good_id_26d9110f_fk_goods_goodsinfo_id` FOREIGN KEY (`good_id`) REFERENCES `goods_goodsinfo` (`id`),
  CONSTRAINT `user_goodsbrowser_user_id_e301f1c8_fk_user_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `user_userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_goodsbrowser`
--

LOCK TABLES `user_goodsbrowser` WRITE;
/*!40000 ALTER TABLE `user_goodsbrowser` DISABLE KEYS */;
INSERT INTO `user_goodsbrowser` VALUES (10,'2021-09-09 01:31:19.663605',6,1),(11,'2021-09-26 16:17:33.690126',5,1),(12,'2021-09-09 01:31:24.572479',2,1),(13,'2021-09-09 01:33:43.991750',12,1),(14,'2021-09-09 01:36:10.625436',14,2),(15,'2021-09-09 01:36:14.603960',13,2),(16,'2021-09-09 01:36:17.454008',15,2),(17,'2021-09-26 16:17:38.896198',14,1);
/*!40000 ALTER TABLE `user_goodsbrowser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_userinfo`
--

DROP TABLE IF EXISTS `user_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `upwd` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `uemail` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ushou` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `uaddress` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `uyoubian` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `uphone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uname` (`uname`),
  UNIQUE KEY `uemail` (`uemail`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_userinfo`
--

LOCK TABLES `user_userinfo` WRITE;
/*!40000 ALTER TABLE `user_userinfo` DISABLE KEYS */;
INSERT INTO `user_userinfo` VALUES (1,'test1','7c4a8d09ca3762af61e59520943dc26494f8941b','test1@qq.com','image/default.jpg','test1','广东省广州市番禺区','524061','1316964322'),(2,'test2','7c4a8d09ca3762af61e59520943dc26494f8941b','test2@qq.com','image/default.jpg','test2','广东广州','456356','13542011211');
/*!40000 ALTER TABLE `user_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_bookmark`
--

DROP TABLE IF EXISTS `xadmin_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `url_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `query` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_bookmark`
--

LOCK TABLES `xadmin_bookmark` WRITE;
/*!40000 ALTER TABLE `xadmin_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_log`
--

DROP TABLE IF EXISTS `xadmin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_log`
--

LOCK TABLES `xadmin_log` WRITE;
/*!40000 ALTER TABLE `xadmin_log` DISABLE KEYS */;
INSERT INTO `xadmin_log` VALUES (1,'2021-03-28 12:02:31.570100','127.0.0.1','1','篮球(位于第100位)','create','已添加。',7,1),(2,'2021-03-28 12:54:05.733600','192.168.6.98','1','篮球(位于第100位)','change','修改 image 和 url',7,1),(3,'2021-03-28 12:54:27.753600','192.168.6.98','2','樱桃(位于第100位)','create','已添加。',7,1),(4,'2021-03-28 12:54:47.325600','192.168.6.98','3','草莓(位于第100位)','create','已添加。',7,1),(5,'2021-03-28 23:06:25.178100','192.168.6.98','1','广告测试(位于第100位)','create','已添加。',10,1),(6,'2021-03-28 23:12:42.801100','192.168.6.98','23','橘子','create','已添加。',11,1),(7,'2021-04-19 23:14:20.242000','127.0.0.1','3','草莓(位于第100位)','change','修改 image 和 url',7,1),(8,'2021-04-19 23:14:33.118000','127.0.0.1','2','樱桃(位于第100位)','change','修改 image 和 url',7,1),(9,'2021-04-19 23:14:47.146000','127.0.0.1','1','篮球(位于第100位)','change','修改 image 和 url',7,1),(10,'2021-04-19 23:16:26.750000','127.0.0.1',NULL,'','delete','批量删除 1 个 商品类型',NULL,1),(11,'2021-04-19 23:16:39.442000','127.0.0.1',NULL,'','delete','批量删除 4 个 商品类型',NULL,1),(12,'2021-04-19 23:18:34.279000','127.0.0.1','24','橘子1','create','已添加。',11,1),(13,'2021-04-19 23:19:24.649000','127.0.0.1','25','草莓','create','已添加。',11,1),(14,'2021-04-19 23:20:51.261000','127.0.0.1','25','草莓','change','修改 gpic 和 gtype',11,1),(15,'2021-04-19 23:21:17.660000','127.0.0.1','24','苹果','change','修改 gtitle，gpic 和 gtype',11,1),(16,'2021-04-19 23:22:00.994000','127.0.0.1','26','秋刀鱼','create','已添加。',11,1),(17,'2021-04-19 23:23:20.403000','127.0.0.1','7','速冻1','change','修改 gtitle，gpic，gjianjie 和 gcontent',11,1),(18,'2021-09-07 22:47:48.505610','127.0.0.1',NULL,'','delete','批量删除 3 个 轮播图',NULL,1),(19,'2021-09-07 22:52:55.698089','127.0.0.1','4','书架(位于第100位)','create','已添加。',7,1),(20,'2021-09-07 22:53:19.538337','127.0.0.1','5','拿书(位于第100位)','create','已添加。',7,1),(21,'2021-09-07 22:53:50.040768','127.0.0.1','6','明朝那些事(位于第100位)','create','已添加。',7,1),(22,'2021-09-07 22:54:26.815424','127.0.0.1',NULL,'','delete','批量删除 6 个 商品',NULL,1),(23,'2021-09-07 22:54:49.473832','127.0.0.1',NULL,'','delete','批量删除 2 个 商品类型',NULL,1),(24,'2021-09-07 22:55:04.901573','127.0.0.1',NULL,'','delete','批量删除 3 个 商品类型',NULL,1),(25,'2021-09-07 22:55:37.630051','127.0.0.1','12','长篇小说','create','已添加。',12,1),(26,'2021-09-07 22:57:27.358616','127.0.0.1','13','短篇小说','create','已添加。',12,1),(27,'2021-09-07 22:59:49.472383','127.0.0.1','14','诗经','create','已添加。',12,1),(28,'2021-09-07 23:00:49.634497','127.0.0.1',NULL,'','delete','批量删除 3 个 商品类型',NULL,1),(29,'2021-09-07 23:01:47.731135','127.0.0.1','15','诗经','create','已添加。',12,1),(30,'2021-09-07 23:03:31.507616','127.0.0.1','1','长篇小说','change','修改 tpic 和 ttitle',12,1),(31,'2021-09-07 23:04:17.669171','127.0.0.1','16','短篇小说','create','已添加。',12,1),(32,'2021-09-07 23:05:49.327061','127.0.0.1','17','儿童读物','create','已添加。',12,1),(33,'2021-09-07 23:06:18.652636','127.0.0.1',NULL,'','delete','批量删除 1 个 商品',NULL,1),(34,'2021-09-09 00:25:04.448766','127.0.0.1','27','穆斯林的葬礼','create','已添加。',11,1),(35,'2021-09-09 00:35:57.883046','127.0.0.1','28','格林童话','create','已添加。',11,1),(36,'2021-09-09 00:37:04.773836','127.0.0.1','29','动物故事','create','已添加。',11,1),(37,'2021-09-09 00:38:01.024497','127.0.0.1','30','狼来了','create','已添加。',11,1),(38,'2021-09-09 00:38:35.327573','127.0.0.1','31','发现更棒的自己','create','已添加。',11,1),(39,'2021-09-09 00:41:03.002098','127.0.0.1','32','白雪公主和七个小矮人','create','已添加。',11,1),(40,'2021-09-09 00:49:26.776978','127.0.0.1',NULL,'','delete','批量删除 6 个 商品',NULL,1),(41,'2021-09-09 00:49:46.272285','127.0.0.1',NULL,'','delete','批量删除 3 个 商品类型',NULL,1),(42,'2021-09-09 00:50:01.439051','127.0.0.1',NULL,'','delete','批量删除 1 个 商品类型',NULL,1),(43,'2021-09-09 00:53:06.418097','127.0.0.1','1','长篇小说','create','已添加。',12,1),(44,'2021-09-09 00:53:46.961132','127.0.0.1','2','短篇小说','create','已添加。',12,1),(45,'2021-09-09 00:53:59.358689','127.0.0.1','3','儿童读物','create','已添加。',12,1),(46,'2021-09-09 00:54:10.211438','127.0.0.1','4','诗经','create','已添加。',12,1),(47,'2021-09-09 00:54:52.257277','127.0.0.1','1','穆斯林的葬礼','create','已添加。',11,1),(48,'2021-09-09 00:55:18.699240','127.0.0.1','2','格林童话','create','已添加。',11,1),(49,'2021-09-09 00:56:29.268693','127.0.0.1','3','狼图腾','create','已添加。',11,1),(50,'2021-09-09 00:57:01.195097','127.0.0.1','4','诗经','create','已添加。',11,1),(51,'2021-09-09 00:58:16.044226','127.0.0.1','4','诗经','change','修改 gpic 和 gtype',11,1),(52,'2021-09-09 00:59:22.251414','127.0.0.1','5','动物故事','create','已添加。',11,1),(53,'2021-09-09 01:00:12.537662','127.0.0.1','6','狼来了','create','已添加。',11,1),(54,'2021-09-09 01:00:27.935419','127.0.0.1','5','动物故事','change','修改 gpic 和 gtype',11,1),(55,'2021-09-09 01:00:47.732663','127.0.0.1','2','格林童话','change','修改 gpic 和 gtype',11,1),(56,'2021-09-09 01:04:54.946841','127.0.0.1','7','三味书屋','create','已添加。',11,1),(57,'2021-09-09 01:06:07.631913','127.0.0.1','8','狂人日记','create','已添加。',11,1),(58,'2021-09-09 01:07:12.069448','127.0.0.1','9','呐喊','create','已添加。',11,1),(59,'2021-09-09 01:08:51.526983','127.0.0.1','9','呐喊','change','修改 gpic，gunit 和 gcontent',11,1),(60,'2021-09-09 01:09:21.267644','127.0.0.1','8','狂人日记','change','修改 gpic 和 gunit',11,1),(61,'2021-09-09 01:15:31.408824','127.0.0.1','5','技术书籍','create','已添加。',12,1),(62,'2021-09-09 01:20:51.614188','127.0.0.1','10','Java','create','已添加。',11,1),(63,'2021-09-09 01:21:13.471704','127.0.0.1','11','PHP','create','已添加。',11,1),(64,'2021-09-09 01:25:56.777163','127.0.0.1','12','追风筝的人','create','已添加。',11,1),(65,'2021-09-09 01:26:49.510583','127.0.0.1','13','围城','create','已添加。',11,1),(66,'2021-09-09 01:27:33.304182','127.0.0.1','14','乖摸摸头','create','已添加。',11,1),(67,'2021-09-09 01:28:46.534013','127.0.0.1','15','明朝那些事','create','已添加。',11,1),(68,'2021-09-26 16:22:55.142595','127.0.0.1','6','杂果(位于第100位)','change','修改 title 和 image',7,1),(69,'2021-09-26 16:23:09.800984','127.0.0.1','5','苹果(位于第100位)','change','修改 title 和 image',7,1),(70,'2021-09-26 16:23:22.323017','127.0.0.1','4','葡萄(位于第100位)','change','修改 title 和 image',7,1),(71,'2021-09-26 16:28:01.948563','127.0.0.1','1','凉性水果','change','修改 tpic 和 ttitle',12,1),(72,'2021-09-26 16:28:28.175183','127.0.0.1','2','中性水果','change','修改 tpic 和 ttitle',12,1),(73,'2021-09-26 16:44:53.439410','127.0.0.1','3','浆果类','change','修改 tpic 和 ttitle',12,1),(74,'2021-09-26 16:45:25.681742','127.0.0.1','1','核果类','change','修改 tpic 和 ttitle',12,1),(75,'2021-09-26 16:45:51.153459','127.0.0.1','2','仁果类','change','修改 tpic 和 ttitle',12,1),(76,'2021-09-26 16:46:12.864320','127.0.0.1','4','柑果类','change','修改 tpic 和 ttitle',12,1),(77,'2021-09-26 16:46:33.000268','127.0.0.1','5','复果、聚合果','change','修改 tpic 和 ttitle',12,1),(78,'2021-09-26 17:18:20.623049','127.0.0.1','1','橘子','change','修改 gtitle，gpic，gunit，gjianjie 和 gcontent',11,1),(79,'2021-09-26 17:19:27.148990','127.0.0.1','2','柠檬','change','修改 gtitle，gpic，gunit，gjianjie 和 gcontent',11,1),(80,'2021-09-26 17:20:23.153705','127.0.0.1','3','樱桃','change','修改 gtitle，gpic，gunit，gjianjie 和 gcontent',11,1),(81,'2021-09-26 17:21:22.105477','127.0.0.1','4','香蕉','change','修改 gtitle，gpic，gunit，gjianjie 和 gcontent',11,1),(82,'2021-09-26 17:22:40.423566','127.0.0.1','5','柚子','change','修改 gtitle，gpic，gunit，gjianjie 和 gcontent',11,1),(83,'2021-09-26 17:23:47.812952','127.0.0.1','6','黄皮果','change','修改 gtitle，gpic，gunit，gjianjie 和 gcontent',11,1),(84,'2021-09-26 17:26:11.999462','127.0.0.1','7','梨','change','修改 gtitle，gpic，gunit，gjianjie 和 gcontent',11,1),(85,'2021-09-26 17:27:14.473536','127.0.0.1','8','哈密瓜','change','修改 gtitle，gpic，gunit，gjianjie 和 gcontent',11,1),(86,'2021-09-26 17:27:39.086214','127.0.0.1','9','山楂','change','修改 gtitle，gpic，gunit，gjianjie 和 gcontent',11,1),(87,'2021-09-26 17:29:46.427633','127.0.0.1','10','草莓','change','修改 gtitle，gpic，gunit，gjianjie 和 gcontent',11,1),(88,'2021-09-26 17:30:15.071524','127.0.0.1','11','木瓜','change','修改 gtitle，gpic，gunit，gjianjie 和 gcontent',11,1),(89,'2021-09-26 17:30:45.834226','127.0.0.1','12','西瓜','change','修改 gtitle，gpic，gunit，gjianjie 和 gcontent',11,1),(90,'2021-09-26 17:31:07.593060','127.0.0.1','13','猕猴桃','change','修改 gtitle，gpic，gunit，gjianjie 和 gcontent',11,1),(91,'2021-09-26 17:31:37.552909','127.0.0.1','14','菠萝蜜','change','修改 gtitle，gpic，gunit，gjianjie 和 gcontent',11,1),(92,'2021-09-26 17:32:22.281833','127.0.0.1','15','桑葚','change','修改 gtitle，gpic，gunit，gjianjie 和 gcontent',11,1);
/*!40000 ALTER TABLE `xadmin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_usersettings`
--

DROP TABLE IF EXISTS `xadmin_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_usersettings`
--

LOCK TABLES `xadmin_usersettings` WRITE;
/*!40000 ALTER TABLE `xadmin_usersettings` DISABLE KEYS */;
INSERT INTO `xadmin_usersettings` VALUES (1,'dashboard:home:pos','1',1),(2,'site-theme','https://bootswatch.com/3/flatly/bootstrap.min.css',1);
/*!40000 ALTER TABLE `xadmin_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_userwidget`
--

DROP TABLE IF EXISTS `xadmin_userwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `widget_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_userwidget`
--

LOCK TABLES `xadmin_userwidget` WRITE;
/*!40000 ALTER TABLE `xadmin_userwidget` DISABLE KEYS */;
INSERT INTO `xadmin_userwidget` VALUES (1,'home','html','{\"title\": \"test\", \"content\": \"test\"}',1);
/*!40000 ALTER TABLE `xadmin_userwidget` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-26 18:02:44

-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm75sl2
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-01-22 09:18:48',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-01-22 09:18:48',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-01-22 09:18:48',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-01-22 09:18:48',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-01-22 09:18:48',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-01-22 09:18:48',6,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'gongyipinxianhuaxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (41,'2021-01-22 09:18:48',1,1,'提问1','回复1',1),(42,'2021-01-22 09:18:48',2,2,'提问2','回复2',2),(43,'2021-01-22 09:18:48',3,3,'提问3','回复3',3),(44,'2021-01-22 09:18:48',4,4,'提问4','回复4',4),(45,'2021-01-22 09:18:48',5,5,'提问5','回复5',5),(46,'2021-01-22 09:18:48',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm75sl2/upload/1611307350094.jpg'),(2,'picture2','http://localhost:8080/ssm75sl2/upload/1611307360662.jpg'),(3,'picture3','http://localhost:8080/ssm75sl2/upload/1611307369466.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussgongyipinxianhuaxinxi`
--

DROP TABLE IF EXISTS `discussgongyipinxianhuaxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussgongyipinxianhuaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='工艺品鲜花信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussgongyipinxianhuaxinxi`
--

LOCK TABLES `discussgongyipinxianhuaxinxi` WRITE;
/*!40000 ALTER TABLE `discussgongyipinxianhuaxinxi` DISABLE KEYS */;
INSERT INTO `discussgongyipinxianhuaxinxi` VALUES (101,'2021-01-22 09:18:48',1,1,'评论内容1','回复内容1'),(102,'2021-01-22 09:18:48',2,2,'评论内容2','回复内容2'),(103,'2021-01-22 09:18:48',3,3,'评论内容3','回复内容3'),(104,'2021-01-22 09:18:48',4,4,'评论内容4','回复内容4'),(105,'2021-01-22 09:18:48',5,5,'评论内容5','回复内容5'),(106,'2021-01-22 09:18:48',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussgongyipinxianhuaxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongyipinxianhuaxinxi`
--

DROP TABLE IF EXISTS `gongyipinxianhuaxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongyipinxianhuaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xianhuamingcheng` varchar(200) NOT NULL COMMENT '鲜花名称',
  `huacaixuanze` varchar(200) NOT NULL COMMENT '花材选择',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `cailiao` varchar(200) DEFAULT NULL COMMENT '材料',
  `xiangguanhuayu` varchar(200) DEFAULT NULL COMMENT '相关花语',
  `xianhuayongtu` varchar(200) DEFAULT NULL COMMENT '鲜花用途',
  `zengsongduixiang` varchar(200) DEFAULT NULL COMMENT '赠送对象',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `jifen` int(11) DEFAULT '-1' COMMENT '积分',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='工艺品鲜花信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongyipinxianhuaxinxi`
--

LOCK TABLES `gongyipinxianhuaxinxi` WRITE;
/*!40000 ALTER TABLE `gongyipinxianhuaxinxi` DISABLE KEYS */;
INSERT INTO `gongyipinxianhuaxinxi` VALUES (31,'2021-01-22 09:18:48','鲜花名称1','花材选择1','http://localhost:8080/ssm75sl2/upload/gongyipinxianhuaxinxi_tupian1.jpg','材料1','相关花语1','爱情','恋人','商品详情1','2021-01-22 17:18:48',1,10000,99.9),(32,'2021-01-22 09:18:48','鲜花名称2','花材选择2','http://localhost:8080/ssm75sl2/upload/1611307316172.jpg','材料2','相关花语2','爱情','恋人','<p>商品详情2</p>','2021-01-22 17:21:47',3,10000,99.9),(33,'2021-01-22 09:18:48','鲜花名称3','花材选择3','http://localhost:8080/ssm75sl2/upload/1611307288823.jpg','材料3','相关花语3','爱情','恋人','<p>商品详情3</p>','2021-01-22 17:21:15',4,10000,99.9),(34,'2021-01-22 09:18:48','鲜花名称4','花材选择4','http://localhost:8080/ssm75sl2/upload/1611307301743.jpg','材料4','相关花语4','爱情','恋人','<p>商品详情4</p>','2021-01-22 17:21:34',5,10000,99.9),(35,'2021-01-22 09:18:48','鲜花名称5','花材选择5','http://localhost:8080/ssm75sl2/upload/1611307331454.jpg','材料5','相关花语5','爱情','恋人','<p>商品详情5</p>','2021-01-22 17:22:01',6,10000,99.9),(36,'2021-01-22 09:18:48','鲜花名称6','花材选择6','http://localhost:8080/ssm75sl2/upload/1611307468141.jpg','材料6','相关花语6','爱情','恋人','<p>商品详情6</p>','2021-01-22 17:24:22',7,10000,99.9);
/*!40000 ALTER TABLE `gongyipinxianhuaxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huacaixuanze`
--

DROP TABLE IF EXISTS `huacaixuanze`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huacaixuanze` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huacaixuanze` varchar(200) NOT NULL COMMENT '花材选择',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huacaixuanze` (`huacaixuanze`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='花材选择';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huacaixuanze`
--

LOCK TABLES `huacaixuanze` WRITE;
/*!40000 ALTER TABLE `huacaixuanze` DISABLE KEYS */;
INSERT INTO `huacaixuanze` VALUES (21,'2021-01-22 09:18:48','花材选择1'),(22,'2021-01-22 09:18:48','花材选择2'),(23,'2021-01-22 09:18:48','花材选择3'),(24,'2021-01-22 09:18:48','花材选择4'),(25,'2021-01-22 09:18:48','花材选择5'),(26,'2021-01-22 09:18:48','花材选择6');
/*!40000 ALTER TABLE `huacaixuanze` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='工艺品鲜花资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-01-22 09:18:48','标题1','简介1','http://localhost:8080/ssm75sl2/upload/1611307381284.jpg','<p>内容1</p>'),(92,'2021-01-22 09:18:48','标题2','简介2','http://localhost:8080/ssm75sl2/upload/1611307446929.jpg','<p>内容2</p>'),(93,'2021-01-22 09:18:48','标题3','简介3','http://localhost:8080/ssm75sl2/upload/1611307395767.jpg','<p>内容3</p>'),(94,'2021-01-22 09:18:48','标题4','简介4','http://localhost:8080/ssm75sl2/upload/1611307412289.jpg','<p>内容4</p>'),(95,'2021-01-22 09:18:48','标题5','简介5','http://localhost:8080/ssm75sl2/upload/1611307424803.jpg','<p>内容5</p>'),(96,'2021-01-22 09:18:48','标题6','简介6','http://localhost:8080/ssm75sl2/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'gongyipinxianhuaxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','pf617a9a5nha19ax97550ydgquik7rdk','2021-01-22 09:20:42','2021-01-22 10:20:42');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-22 09:18:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jifen` int(11) DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-01-22 09:18:48','用户1','123456','姓名1','http://localhost:8080/ssm75sl2/upload/yonghu_touxiang1.jpg','男','13823888881',10000,100),(12,'2021-01-22 09:18:48','用户2','123456','姓名2','http://localhost:8080/ssm75sl2/upload/yonghu_touxiang2.jpg','男','13823888882',10000,100),(13,'2021-01-22 09:18:48','用户3','123456','姓名3','http://localhost:8080/ssm75sl2/upload/yonghu_touxiang3.jpg','男','13823888883',10000,100),(14,'2021-01-22 09:18:48','用户4','123456','姓名4','http://localhost:8080/ssm75sl2/upload/yonghu_touxiang4.jpg','男','13823888884',10000,100),(15,'2021-01-22 09:18:48','用户5','123456','姓名5','http://localhost:8080/ssm75sl2/upload/yonghu_touxiang5.jpg','男','13823888885',10000,100),(16,'2021-01-22 09:18:48','用户6','123456','姓名6','http://localhost:8080/ssm75sl2/upload/yonghu_touxiang6.jpg','男','13823888886',10000,100);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-22 19:25:06

-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: fyouku
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `advert`
--

DROP TABLE IF EXISTS `advert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '广告标题',
  `sub_title` varchar(255) DEFAULT NULL COMMENT '广告副标题',
  `channel_id` int(11) DEFAULT '0' COMMENT '所属频道 0=首页',
  `img` varchar(255) DEFAULT NULL COMMENT '广告图片',
  `sort` varchar(255) DEFAULT NULL COMMENT '排序',
  `add_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `url` varchar(255) DEFAULT NULL COMMENT '跳转地址',
  `status` tinyint(2) DEFAULT '0' COMMENT '0=关闭 1=开启',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advert`
--

LOCK TABLES `advert` WRITE;
/*!40000 ALTER TABLE `advert` DISABLE KEYS */;
INSERT INTO `advert` VALUES (1,'黑色四叶草','黑色暴牛骑士团',1,'/static/data/new/1b.png','1',1581600338,'/show?id=9',1),(2,'黑色四叶草','黑色暴牛骑士团',1,'/static/data/channel/5a8a66c214824da7911cc3d64377d0d5.png','1',1581600338,'/show?id=9',0);
/*!40000 ALTER TABLE `advert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aliyun_video`
--

DROP TABLE IF EXISTS `aliyun_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aliyun_video` (
  `id` int(11) DEFAULT NULL,
  `video_id` varchar(255) DEFAULT NULL,
  `add_time` int(11) DEFAULT '0',
  `log` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aliyun_video`
--

LOCK TABLES `aliyun_video` WRITE;
/*!40000 ALTER TABLE `aliyun_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `aliyun_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barrage`
--

DROP TABLE IF EXISTS `barrage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barrage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '评论内容',
  `add_time` int(11) DEFAULT '0' COMMENT '评论时间',
  `user_id` int(11) DEFAULT '0' COMMENT '评论用户',
  `status` tinyint(2) DEFAULT '0' COMMENT '状态0=未审核 1=审核通过',
  `current_time` int(11) DEFAULT '1' COMMENT '视频当前播放时间',
  `episodes_id` int(11) DEFAULT '0' COMMENT '评论视频',
  `video_id` int(11) DEFAULT '0' COMMENT '所属视频',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barrage`
--

LOCK TABLES `barrage` WRITE;
/*!40000 ALTER TABLE `barrage` DISABLE KEYS */;
INSERT INTO `barrage` VALUES (31,'这个面看着真好吃',1585229073,10,1,196,1,1),(32,'厉害',1585229126,10,1,15,1,1),(33,'佐助貌似没有准备时间',1585229139,10,1,28,1,1),(34,'鸣人加油',1585229161,10,1,50,1,1),(35,'这个太牛了',1585229213,10,1,70,1,1),(36,'有机会一定吃一次',1585229233,10,1,138,1,1),(37,'满满的回忆呀',1585411138,10,1,15,1,1),(38,'满满的回忆',1585411216,10,1,10,1,1),(39,'好厉害呀',1585413908,10,1,25,1,1),(40,'佐助',1585413920,10,1,36,1,1),(41,'好可爱哦',1585413932,10,1,49,1,1),(42,'真帅',1585413946,10,1,62,1,1),(43,'真酷',1585416023,10,1,21,6,39),(44,'我说了才算',1585416052,10,1,77,6,39),(45,'太震撼了',1585416072,10,1,96,6,39),(46,'buc',1585424451,10,1,42,1,1),(47,'222',1631886160,1,1,11,1,1),(48,'222',1631886169,1,1,11,1,1),(49,'222',1632029482,1,1,11,1,1);
/*!40000 ALTER TABLE `barrage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel`
--

DROP TABLE IF EXISTS `channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '频道名',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(2) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel`
--

LOCK TABLES `channel` WRITE;
/*!40000 ALTER TABLE `channel` DISABLE KEYS */;
INSERT INTO `channel` VALUES (1,'动漫',1581410084,1),(2,'电影',1581410084,1),(3,'体育',1581410084,1);
/*!40000 ALTER TABLE `channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_region`
--

DROP TABLE IF EXISTS `channel_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `status` varchar(255) DEFAULT NULL COMMENT '状态',
  `add_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `channel_id` int(11) DEFAULT NULL COMMENT '所属频道',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_region`
--

LOCK TABLES `channel_region` WRITE;
/*!40000 ALTER TABLE `channel_region` DISABLE KEYS */;
INSERT INTO `channel_region` VALUES (1,'日本','1',1581424714,1,2),(2,'中国大陆','1',1581424714,1,3),(3,'美国','1',1581424714,1,1);
/*!40000 ALTER TABLE `channel_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_type`
--

DROP TABLE IF EXISTS `channel_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `status` varchar(255) DEFAULT NULL COMMENT '状态',
  `add_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `channel_id` int(11) DEFAULT NULL COMMENT '所属频道',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_type`
--

LOCK TABLES `channel_type` WRITE;
/*!40000 ALTER TABLE `channel_type` DISABLE KEYS */;
INSERT INTO `channel_type` VALUES (1,'少女','1',1581424714,1,6),(2,'热血','1',1581424714,1,5),(3,'青春','1',1581424714,1,4),(4,'社会','1',1581424714,1,3),(5,'科幻','1',1581424714,1,2),(6,'搞笑','1',1581424714,1,1);
/*!40000 ALTER TABLE `channel_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '评论内容',
  `add_time` int(11) DEFAULT '0' COMMENT '评论时间',
  `user_id` int(11) DEFAULT '0' COMMENT '评论用户',
  `status` tinyint(2) DEFAULT '0' COMMENT '状态0=未审核 1=审核通过',
  `stamp` tinyint(2) DEFAULT '0' COMMENT '盖章1=热评2=公告',
  `praise_count` int(11) DEFAULT '0' COMMENT '点赞数',
  `episodes_id` int(11) DEFAULT NULL COMMENT '评论视频',
  `video_id` int(11) DEFAULT '0' COMMENT '所属视频',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'好期待下一集，净眼马上又要看到了，浦式看到了肯定会说出它的秘密',1581772341,10,1,0,1,1,1),(2,'博人智商很高，在忍者学校成绩都满分。悟性也都是很高螺旋丸很快就能掌握，但不知道为什么博人在战斗的时候总分不清情况。什么时候该打，什么时候该跑总是表现得一股脑。无论敌人什么实力总是要向前冲，一点也表现不出博人的战术分析。按理说博人比鸣人更有理智，但表现得总是差强人意。我偶尔就看的十分尴尬。',1581772593,10,1,1,186,1,1),(3,'考试来啦！轻松看剧，认真答题',1581772606,10,1,2,3459,1,1),(4,'太精彩了',1581913200,10,1,0,0,1,1),(13,'火影忍者太好看了',1584303404,10,1,0,0,1,1),(14,'满满的回忆呀',1585230607,10,1,0,0,1,1),(15,'鸣人、雏田、佐助、小樱',1585230726,10,1,0,0,1,1),(16,'漂亮的火',1586610931,10,1,0,0,1,1),(35,'1',1586686560,10,1,0,0,1,1),(36,'2',1586686812,10,1,0,0,1,1),(37,'buco',1587217184,10,1,0,0,1,1),(38,'qq',1587217316,10,1,0,0,1,1),(39,'pinlun',1587217428,10,1,0,0,1,1),(40,'评论一下',1587224714,10,1,0,0,1,1),(41,'再来',1587224736,10,1,0,0,1,1),(42,'1111',1631884234,1,1,0,0,1,2),(43,'1111',1632056818,1,1,0,0,1,2),(44,'1111',1632057496,1,1,0,0,1,2),(45,'1111',1632058304,1,1,0,0,1,2);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '消息内容',
  `add_time` int(11) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (29,'aaa',1584989876),(30,'aaa',1584989901),(31,'haha',1584991350),(32,'cvcv',1584991360),(33,'bnbn',1584991380),(34,'',1584993495),(35,'asd',1584993499),(36,'您有新的消息',1585403108),(37,'mq消息',1586662210),(38,'mq消息',1586662299),(39,'mq测试信息',1586687610),(40,'111',1587233301),(41,'11',1587233346),(42,'ceshi',1587235700),(43,'asdf',1631885098),(44,'asdf',1631885968),(45,'asdf',1632057031),(46,'asdf111',1632057076),(47,'asdf111',1632058328),(48,'asdf111',1632058985),(49,'asdf111',1632060320);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_user`
--

DROP TABLE IF EXISTS `message_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) DEFAULT '0' COMMENT '所属消息',
  `user_id` int(11) DEFAULT '0' COMMENT '所属用户',
  `add_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `status` tinyint(2) DEFAULT '0' COMMENT '状态 1=展示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_user`
--

LOCK TABLES `message_user` WRITE;
/*!40000 ALTER TABLE `message_user` DISABLE KEYS */;
INSERT INTO `message_user` VALUES (29,30,8,1584989901,1),(30,30,9,1584989901,1),(31,31,8,1584991350,1),(32,32,456,1584991360,1),(33,33,4,1584991380,1),(34,33,5,1584991380,1),(35,33,6,1584991380,1),(36,34,0,1584993495,1),(37,35,1,1584993499,1),(38,35,2,1584993499,1),(39,36,10,1585403108,1),(40,36,11,1585403108,1),(41,38,10,1586662539,1),(42,38,11,1586662539,1),(43,39,8,1586687723,1),(44,39,9,1586687723,1),(45,39,10,1586687723,1),(46,39,11,1586687723,1),(47,43,1,1631885098,1),(48,43,2,1631885098,1),(49,43,3,1631885098,1),(50,43,4,1631885098,1),(51,44,1,1631885968,1),(52,44,2,1631885968,1),(53,44,3,1631885968,1),(54,44,4,1631885968,1),(55,47,1,1632058934,1),(56,47,2,1632058934,1),(57,48,1,1632058985,1),(58,48,2,1632058985,1),(59,49,1,1632060320,1),(60,49,2,1632060320,1);
/*!40000 ALTER TABLE `message_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `add_time` int(11) DEFAULT '0' COMMENT '注册时间',
  `status` tinyint(2) DEFAULT '1' COMMENT '状态',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (8,'zhja','49b3589f3155c8f322990a631a34743f',1579170320,0,NULL,NULL),(10,'青蛙','8e5d36fe2ca0e27b6914ecec5ec49754',1579257632,0,'18600001111','/static/data/user/zhja.png'),(11,'张三','78a4c1932deffeb1a2367ddd08b42218',1579258028,0,'123123',NULL),(12,'李四','78a4c1932deffeb1a2367ddd08b42218',1579258214,0,'18600002222',NULL),(13,'王五','781305f065731d4dffc1033493b03c9c',1581631477,0,'18699993333',NULL),(14,'test3',NULL,1583293416,0,'18600008888','我是头像'),(15,'test3',NULL,1583293420,0,'18600008888','我是头像'),(16,'','8e5d36fe2ca0e27b6914ecec5ec49754',1584176714,1,'18678787878',NULL),(17,'','ec38f95ed3b590273973f510a7c4e983',1584247509,0,'',NULL),(18,'','781305f065731d4dffc1033493b03c9c',1584247668,0,'186ddd00001111',NULL),(19,'','781305f065731d4dffc1033493b03c9c',1584260475,1,'18600003333',''),(20,'','8e5d36fe2ca0e27b6914ecec5ec49754',1584261355,1,'18600005555',''),(21,'','d41d8cd98f00b204e9800998ecf8427e',1631718297,1,'13800138000',''),(22,'','d41d8cd98f00b204e9800998ecf8427e',1631718300,1,'138001380001',''),(23,'','d89f3a35931c386956c1a402a8e09941',1631718331,1,'13800138001',''),(24,'','e10adc3949ba59abbe56e057f20f883e',1631718709,1,'13800138002',''),(25,'','e10adc3949ba59abbe56e057f20f883e',1631718732,1,'13800138003','');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '视频ID',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `sub_title` varchar(255) DEFAULT NULL COMMENT '副标题',
  `status` tinyint(2) DEFAULT '0' COMMENT '状态,-1=下架,0=审核中,1=正常',
  `add_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `img` varchar(255) DEFAULT NULL COMMENT '横版缩略图',
  `img1` varchar(255) DEFAULT NULL COMMENT '竖版缩略图',
  `channel_id` int(11) DEFAULT '0' COMMENT '所属频道',
  `type_id` int(11) DEFAULT '0' COMMENT '频道类型ID',
  `region_id` int(11) DEFAULT '0' COMMENT '地区ID',
  `user_id` int(11) DEFAULT '0' COMMENT '所属用户',
  `episodes_count` int(11) DEFAULT '0' COMMENT '集数',
  `episodes_update_time` int(11) DEFAULT '0' COMMENT '集数更新时间',
  `is_end` tinyint(2) DEFAULT '0' COMMENT '是否完结0=未完结 1=已完结',
  `is_hot` tinyint(2) DEFAULT '0' COMMENT '1=正在热播',
  `is_recommend` tinyint(2) DEFAULT '0' COMMENT '1=推荐 0=否',
  `comment` int(11) DEFAULT '0' COMMENT '评论数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,'火影忍者','孤独少年忍者世界英雄梦',1,1581423724,'/static/data/new/14.png','/static/data/new/14a.png',1,2,1,10,720,0,1,1,0,10077212),(2,'阿衰 第二季','怕踢学校搞笑故事再次归来',1,1581423724,'/static/data/new/2.png','/static/data/new/2a.png',1,2,2,10,15,0,0,1,1,17864),(3,'名侦探柯南','万年小学生的推理生涯',1,1581423724,'/static/data/new/3.png','/static/data/new/3a.png',1,3,1,0,1021,0,0,1,0,29876),(4,'博人传 火影忍者新时代','鸣人之子续写忍者传奇',1,1581423724,'/static/data/new/4.png','/static/data/new/4a.png',1,2,1,0,137,0,0,1,0,18976),(5,'一拳超人 第二季','一拳埼玉热血回归',1,1581423724,'/static/data/new/5.png','/static/data/new/5a.png',1,2,1,0,13,0,0,1,0,98761),(6,'排球少年 第四季','排球部迎接更艰巨的挑战',1,1581423724,'/static/data/new/6.png','/static/data/new/6a.png',1,3,1,0,5,0,0,1,0,23564),(7,'秦时明月之沧海横流','十年国漫十年秦时',1,1581423724,'/static/data/new/7.png','/static/data/new/7a.png',1,2,2,0,1,0,0,1,0,0),(8,'猫和老鼠','汤姆和杰瑞的搞笑日常',1,1581423724,'/static/data/new/39.png','/static/data/new/39a.png',1,1,3,0,140,0,1,1,0,0),(9,'黑色四叶草','黑色暴牛骑士团',1,1581423724,'/static/data/new/37.png','/static/data/new/37a.png',1,2,1,0,122,0,0,1,0,0),(10,'蜡笔小新 第二季','人小鬼大的野原新之助',1,1581423724,'/static/data/new/10.png','/static/data/new/10a.png',1,1,1,0,873,0,1,0,1,0),(11,'猎人 重制版','主人公寻父的冒险路',1,1581423724,'/static/data/new/11.png','/static/data/new/11a.png',1,2,1,0,148,0,1,0,1,0),(12,'银魂','跟银魂比吐槽你输定了',1,1581423724,'/static/data/new/18.png','/static/data/new/18a.png',1,2,1,0,368,0,1,0,1,0),(13,'蜡笔小新 第三季','野原新之助的日常生活',1,1581423724,'/static/data/new/13.png','/static/data/new/13a.png',1,1,1,0,156,0,1,0,1,0),(14,'网球王子','运动美少年热血故事',1,1581423724,'/static/data/new/14.png','/static/data/new/14a.png',1,1,1,0,178,0,1,0,1,0),(15,'守护甜心 第一季','能实现愿望的魔法蛋',1,1581423724,'/static/data/new/15.png','/static/data/new/15a.png',1,1,1,0,51,0,1,0,1,0),(16,'精灵宝可梦 第四季','星球上不可思议的生物',1,1581423724,'/static/data/new/16.png','/static/data/new/16a.png',1,1,1,0,144,0,1,0,1,0),(17,'BLEACH 境&middot;界','古惑仔之人在地府',1,1581423724,'/static/data/new/17.png','/static/data/new/17a.png',1,2,1,0,366,0,1,0,1,0),(18,'犬夜叉','寻找四魂碎片的旅程',1,1581423724,'/static/data/new/38.png','/static/data/new/38a.png',1,1,1,0,167,0,1,0,1,0),(19,'伍六七之最强发型师','强着对手不断现身',1,1581423724,'/static/data/new/19.png','/static/data/new/19a.png',1,3,3,0,10,0,1,0,0,0),(20,'刺客伍六七','刺客的奇葩伪装术',1,1581423724,'/static/data/new/20.png','/static/data/new/20a.png',1,3,3,0,14,0,1,0,0,0),(21,'海贼王','路飞再踏热血征程',1,1581423724,'/static/data/new/21.png','/static/data/new/21a.png',1,1,1,0,920,0,0,0,0,0),(22,'元气少女缘结神 第一季','软萌少女结缘狐神',1,1581423724,'/static/data/new/22.png','/static/data/new/22a.png',1,1,1,0,13,0,1,0,0,9988),(23,'爱神巧克力','高中生成后宫之王',1,1581423724,'/static/data/new/23.png','/static/data/new/23a.png',1,1,1,0,15,0,1,0,0,9678),(24,'魔法使的新娘','骨叔新娘养成计划',1,1581423724,'/static/data/new/24.png','/static/data/new/24a.png',1,1,1,0,24,0,1,0,0,8080),(25,'悬崖上的金鱼公主','宫崎骏版小美人鱼',1,1581423724,'/static/data/new/25.png','/static/data/new/25a.png',1,1,1,0,1,0,1,0,0,5674),(26,'飞天小女警Z','超能力少女卫东京',1,1581423724,'/static/data/new/26.png','/static/data/new/26a.png',1,1,1,0,52,0,1,0,0,8735),(27,'一起来看流星雨','灰姑娘的校园爱情',1,1581423724,'/static/data/new/27.png','/static/data/new/27a.png',1,1,1,0,52,0,1,0,0,3476),(28,'罗小黑战记','同名大电影热映中',1,1581423724,'/static/data/new/28.png','/static/data/new/28a.png',1,2,2,0,28,0,1,0,1,0),(29,'秦时明月之君临天下','沧海横流 江湖再见',1,1581423724,'/static/data/new/29.png','/static/data/new/29a.png',1,2,2,0,75,0,1,0,1,0),(30,'镇魂街','吸纳亡灵镇压恶灵之地',1,1581423724,'/static/data/new/30.png','/static/data/new/30a.png',1,2,2,0,24,0,1,0,1,0),(31,'秦时明月之诸子百家','出机关城伪装入桑海',1,1581423724,'/static/data/new/31.png','/static/data/new/31a.png',1,2,2,0,34,0,1,0,1,0),(32,'少年锦衣卫','三盗大闹皇宫劫公主',1,1581423724,'/static/data/new/32.png','/static/data/new/32a.png',1,2,2,0,28,0,1,0,1,0),(33,'十万个冷笑话 第三季','经典角色悉数回归爆笑玩梗',1,1581423724,'/static/data/new/33.png','/static/data/new/33a.png',1,2,2,0,52,0,1,0,1,0),(34,'超神学院','英雄联盟改编人气动画',1,1581423724,'/static/data/new/34.png','/static/data/new/34a.png',1,2,2,0,30,0,1,0,1,0),(35,'秦时明月之万里长城','铸造帝国的万里长城',1,1581423724,'/static/data/new/35.png','/static/data/new/35a.png',1,2,2,0,37,0,1,0,1,0),(36,'天行九歌','战国末年一局权力游戏',1,1581423724,'/static/data/new/36.png','/static/data/new/36a.png',1,2,2,0,60,0,1,0,1,0),(37,'1','2',1,1632031126,'','',3,1,2,1,1,1632031126,1,0,0,0);
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_episodes`
--

DROP TABLE IF EXISTS `video_episodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_episodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `add_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `num` int(11) DEFAULT '0' COMMENT '第几集',
  `video_id` int(11) DEFAULT '0' COMMENT '所属时间',
  `play_url` text COMMENT '播放地址',
  `status` tinyint(2) DEFAULT '0' COMMENT '0=不展示 1= 展示',
  `comment` int(11) DEFAULT '0' COMMENT '评论数',
  `aliyun_video_id` varchar(255) DEFAULT NULL COMMENT '阿里云ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_episodes`
--

LOCK TABLES `video_episodes` WRITE;
/*!40000 ALTER TABLE `video_episodes` DISABLE KEYS */;
INSERT INTO `video_episodes` VALUES (1,'漩涡鸣人登场',1581423724,1,1,'/static/video/coverr-sparks-of-bonfire-1573980240958.mp4',1,10058215,''),(2,'我是木叶丸',1581423724,2,1,'http://valipl.cp31.ott.cibntv.net/6975FF784E44171ADFFEC2C8F/03000500005DFA480C8BB7800000001B2BD8F5-D527-4D34-B6BF-9421CC1386AE-1-114.m3u8',1,0,''),(3,'宿敌 佐助和小樱',1581423724,3,1,'http://valipl.cp31.ott.cibntv.net/65732AA09E93E71999F465E15/03000300005C3EE91602EA4011BA6ABCA65B2E-C656-4A40-A2DF-0D5615BBDC9A-1-114.m3u8?ccode=0502&duration=1422&expire=18000&psid=cc2bdefaf31ebf17a11d7a0d8f481af3&ups_client_netip=3b6ddb32&ups_ts=1584294982&ups_userid=1074229826&utid=iibzDpga4F4CAW%2FKOdow37WF&vid=XNTI4NjEwODg4&vkey=B3d057b782ea13d7eb639640801d05569&sm=1&operate_type=1&dre=u37&si=73&eo=0&dst=1&iv=0&s=cc001f06962411de83b1&bc=2',1,0,''),(5,'哪吒-我命由我不由天',1585301248,1,38,'/static/video/087f28d02fa53ed22e913605387f13ae.mp4',1,0,''),(6,'我命由我不由天',1585415987,1,39,'/static/video/e63181ae03e3700b054cd66cfe7d9224.mp4',1,0,''),(7,'蜡笔小新樱桃小丸子',1586312105,1,40,'/static/video/coverr-sparks-of-bonfire-1573980240958.mp4',1,0,''),(8,'我命由我不由天',1587653999,1,40,'e92510a60e6643f190a3cd9cd5d092fb',1,0,''),(9,'我命由我不由天1',1587654100,1,41,'323ddc1b044c4fa09dfb3e792ad685b8',1,0,NULL),(10,'我命由我不由天44',1587654541,1,45,'d2fe7f9743c9418ca03a3ce755e4a30f',1,0,''),(11,'我命由我不由天55',1587654713,1,46,'',1,0,'92702186ab754e77ae7a96cd732e9329'),(12,'我命由我不由天66',1587825692,1,47,'',1,0,'ffaa9f3a939645268b20b188ca9f9792'),(13,'2',1632031126,1,37,'',1,0,'2');
/*!40000 ALTER TABLE `video_episodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'fyouku'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-19 23:22:35

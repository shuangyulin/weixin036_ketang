/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm9t859
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm9t859` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm9t859`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615276144524 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (71,'2021-03-09 15:31:55',1,1,'提问1','回复1',1),(72,'2021-03-09 15:31:55',2,2,'提问2','回复2',2),(73,'2021-03-09 15:31:55',3,3,'提问3','回复3',3),(74,'2021-03-09 15:31:55',4,4,'提问4','回复4',4),(75,'2021-03-09 15:31:55',5,5,'提问5','回复5',5),(76,'2021-03-09 15:31:55',6,6,'提问6','回复6',6),(1615276099394,'2021-03-09 15:48:18',1615276019197,NULL,'我有个问题',NULL,0),(1615276136928,'2021-03-09 15:48:56',1615276019197,1,NULL,'回复回复',0),(1615276144523,'2021-03-09 15:49:04',1615276019197,NULL,'asdasd',NULL,1);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm9t859/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm9t859/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm9t859/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussgonggaolan` */

DROP TABLE IF EXISTS `discussgonggaolan`;

CREATE TABLE `discussgonggaolan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='公告栏评论表';

/*Data for the table `discussgonggaolan` */

insert  into `discussgonggaolan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-03-09 15:31:55',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-09 15:31:55',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-09 15:31:55',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-09 15:31:55',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-09 15:31:55',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-09 15:31:55',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusskechengxinxi` */

DROP TABLE IF EXISTS `discusskechengxinxi`;

CREATE TABLE `discusskechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615276053118 DEFAULT CHARSET=utf8 COMMENT='课程信息评论表';

/*Data for the table `discusskechengxinxi` */

insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-03-09 15:31:55',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-09 15:31:55',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-09 15:31:55',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-09 15:31:55',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-09 15:31:55',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-09 15:31:55',6,6,'用户名6','评论内容6','回复内容6'),(1615276053117,'2021-03-09 15:47:32',31,1615276019197,'1','12456sad','');

/*Table structure for table `gonggaolan` */

DROP TABLE IF EXISTS `gonggaolan`;

CREATE TABLE `gonggaolan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `gonggaoleixing` varchar(200) NOT NULL COMMENT '公告类型',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='公告栏';

/*Data for the table `gonggaolan` */

insert  into `gonggaolan`(`id`,`addtime`,`gonggaobiaoti`,`gonggaoleixing`,`fengmiantupian`,`neirong`,`faburiqi`,`faburen`) values (61,'2021-03-09 15:31:55','公告标题1','公告类型1','http://localhost:8080/ssm9t859/upload/gonggaolan_fengmiantupian1.jpg','内容1','2021-03-09','发布人1'),(62,'2021-03-09 15:31:55','公告标题2','公告类型2','http://localhost:8080/ssm9t859/upload/gonggaolan_fengmiantupian2.jpg','内容2','2021-03-09','发布人2'),(63,'2021-03-09 15:31:55','公告标题3','公告类型3','http://localhost:8080/ssm9t859/upload/gonggaolan_fengmiantupian3.jpg','内容3','2021-03-09','发布人3'),(64,'2021-03-09 15:31:55','公告标题4','公告类型4','http://localhost:8080/ssm9t859/upload/gonggaolan_fengmiantupian4.jpg','内容4','2021-03-09','发布人4'),(65,'2021-03-09 15:31:55','公告标题5','公告类型5','http://localhost:8080/ssm9t859/upload/gonggaolan_fengmiantupian5.jpg','内容5','2021-03-09','发布人5'),(66,'2021-03-09 15:31:55','公告标题6','公告类型6','http://localhost:8080/ssm9t859/upload/gonggaolan_fengmiantupian6.jpg','内容6','2021-03-09','发布人6');

/*Table structure for table `kechengdingyue` */

DROP TABLE IF EXISTS `kechengdingyue`;

CREATE TABLE `kechengdingyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingyuebianhao` varchar(200) DEFAULT NULL COMMENT '订阅编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `renkelaoshi` varchar(200) DEFAULT NULL COMMENT '任课老师',
  `kechengjiage` varchar(200) DEFAULT NULL COMMENT '课程价格',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingyuebianhao` (`dingyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615276061357 DEFAULT CHARSET=utf8 COMMENT='课程订阅';

/*Data for the table `kechengdingyue` */

insert  into `kechengdingyue`(`id`,`addtime`,`dingyuebianhao`,`kechengmingcheng`,`kechengfenlei`,`kechengtupian`,`renkelaoshi`,`kechengjiage`,`yonghuzhanghao`,`yonghuxingming`,`yonghushouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (41,'2021-03-09 15:31:55','订阅编号1','课程名称1','课程分类1','http://localhost:8080/ssm9t859/upload/kechengdingyue_kechengtupian1.jpg','任课老师1','课程价格1','用户账号1','用户姓名1','用户手机1','是','','未支付',1),(42,'2021-03-09 15:31:55','订阅编号2','课程名称2','课程分类2','http://localhost:8080/ssm9t859/upload/kechengdingyue_kechengtupian2.jpg','任课老师2','课程价格2','用户账号2','用户姓名2','用户手机2','是','','未支付',2),(43,'2021-03-09 15:31:55','订阅编号3','课程名称3','课程分类3','http://localhost:8080/ssm9t859/upload/kechengdingyue_kechengtupian3.jpg','任课老师3','课程价格3','用户账号3','用户姓名3','用户手机3','是','','未支付',3),(44,'2021-03-09 15:31:55','订阅编号4','课程名称4','课程分类4','http://localhost:8080/ssm9t859/upload/kechengdingyue_kechengtupian4.jpg','任课老师4','课程价格4','用户账号4','用户姓名4','用户手机4','是','','未支付',4),(45,'2021-03-09 15:31:55','订阅编号5','课程名称5','课程分类5','http://localhost:8080/ssm9t859/upload/kechengdingyue_kechengtupian5.jpg','任课老师5','课程价格5','用户账号5','用户姓名5','用户手机5','是','','未支付',5),(46,'2021-03-09 15:31:55','订阅编号6','课程名称6','课程分类6','http://localhost:8080/ssm9t859/upload/kechengdingyue_kechengtupian6.jpg','任课老师6','课程价格6','用户账号6','用户姓名6','用户手机6','是','','未支付',6),(1615276061356,'2021-03-09 15:47:40','1615276056694','课程名称1','课程分类1','http://localhost:8080/ssm9t859/upload/kechengxinxi_kechengtupian1.jpg','任课老师1','课程价格1','1','xxx用户','12345678910','是','通过','已支付',1615276019197);

/*Table structure for table `kechengfenlei` */

DROP TABLE IF EXISTS `kechengfenlei`;

CREATE TABLE `kechengfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='课程分类';

/*Data for the table `kechengfenlei` */

insert  into `kechengfenlei`(`id`,`addtime`,`kechengfenlei`) values (21,'2021-03-09 15:31:55','语文'),(22,'2021-03-09 15:31:55','课程分类2'),(23,'2021-03-09 15:31:55','课程分类3'),(24,'2021-03-09 15:31:55','课程分类4'),(25,'2021-03-09 15:31:55','课程分类5'),(26,'2021-03-09 15:31:55','课程分类6');

/*Table structure for table `kechengshipin` */

DROP TABLE IF EXISTS `kechengshipin`;

CREATE TABLE `kechengshipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingyuebianhao` varchar(200) DEFAULT NULL COMMENT '订阅编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `renkelaoshi` varchar(200) DEFAULT NULL COMMENT '任课老师',
  `kechengshipin` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615276177370 DEFAULT CHARSET=utf8 COMMENT='课程视频';

/*Data for the table `kechengshipin` */

insert  into `kechengshipin`(`id`,`addtime`,`dingyuebianhao`,`kechengmingcheng`,`kechengfenlei`,`kechengtupian`,`renkelaoshi`,`kechengshipin`,`fabushijian`,`yonghuzhanghao`,`yonghuxingming`,`userid`) values (51,'2021-03-09 15:31:55','订阅编号1','课程名称1','课程分类1','http://localhost:8080/ssm9t859/upload/kechengshipin_kechengtupian1.jpg','任课老师1','','2021-03-09 15:31:55','用户账号1','用户姓名1',1),(52,'2021-03-09 15:31:55','订阅编号2','课程名称2','课程分类2','http://localhost:8080/ssm9t859/upload/kechengshipin_kechengtupian2.jpg','任课老师2','','2021-03-09 15:31:55','用户账号2','用户姓名2',2),(53,'2021-03-09 15:31:55','订阅编号3','课程名称3','课程分类3','http://localhost:8080/ssm9t859/upload/kechengshipin_kechengtupian3.jpg','任课老师3','','2021-03-09 15:31:55','用户账号3','用户姓名3',3),(54,'2021-03-09 15:31:55','订阅编号4','课程名称4','课程分类4','http://localhost:8080/ssm9t859/upload/kechengshipin_kechengtupian4.jpg','任课老师4','','2021-03-09 15:31:55','用户账号4','用户姓名4',4),(55,'2021-03-09 15:31:55','订阅编号5','课程名称5','课程分类5','http://localhost:8080/ssm9t859/upload/kechengshipin_kechengtupian5.jpg','任课老师5','','2021-03-09 15:31:55','用户账号5','用户姓名5',5),(56,'2021-03-09 15:31:55','订阅编号6','课程名称6','课程分类6','http://localhost:8080/ssm9t859/upload/kechengshipin_kechengtupian6.jpg','任课老师6','','2021-03-09 15:31:55','用户账号6','用户姓名6',6),(1615276177369,'2021-03-09 15:49:36','1615276056694','课程名称1','课程分类1','http://localhost:8080/ssm9t859/upload/kechengxinxi_kechengtupian1.jpg','任课老师1','http://localhost:8080/ssm9t859/upload/1615276174816.mp4','2021-03-09 15:49:32','1','xxx用户',1615276019197);

/*Table structure for table `kechengxinxi` */

DROP TABLE IF EXISTS `kechengxinxi`;

CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `renkelaoshi` varchar(200) DEFAULT NULL COMMENT '任课老师',
  `kechengjiage` varchar(200) DEFAULT NULL COMMENT '课程价格',
  `yulanshipin` varchar(200) DEFAULT NULL COMMENT '预览视频',
  `kechengjieshao` longtext COMMENT '课程介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kechengxinxi` */

insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengfenlei`,`kechengtupian`,`renkelaoshi`,`kechengjiage`,`yulanshipin`,`kechengjieshao`) values (31,'2021-03-09 15:31:55','课程名称1','课程分类1','http://localhost:8080/ssm9t859/upload/kechengxinxi_kechengtupian1.jpg','任课老师1','课程价格1','http://localhost:8080/ssm9t859/upload/1615275939078.mp4','<h1>课程介绍1</h1><p>dsfdsf</p>'),(32,'2021-03-09 15:31:55','课程名称2','课程分类2','http://localhost:8080/ssm9t859/upload/kechengxinxi_kechengtupian2.jpg','任课老师2','课程价格2','','课程介绍2'),(33,'2021-03-09 15:31:55','课程名称3','课程分类3','http://localhost:8080/ssm9t859/upload/kechengxinxi_kechengtupian3.jpg','任课老师3','课程价格3','','课程介绍3'),(34,'2021-03-09 15:31:55','课程名称4','课程分类4','http://localhost:8080/ssm9t859/upload/kechengxinxi_kechengtupian4.jpg','任课老师4','课程价格4','','课程介绍4'),(35,'2021-03-09 15:31:55','课程名称5','课程分类5','http://localhost:8080/ssm9t859/upload/kechengxinxi_kechengtupian5.jpg','任课老师5','课程价格5','','课程介绍5'),(36,'2021-03-09 15:31:55','课程名称6','课程分类6','http://localhost:8080/ssm9t859/upload/kechengxinxi_kechengtupian6.jpg','任课老师6','课程价格6','','课程介绍6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615276104252 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (91,'2021-03-09 15:31:55',1,'用户名1','留言内容1','回复内容1'),(92,'2021-03-09 15:31:55',2,'用户名2','留言内容2','回复内容2'),(93,'2021-03-09 15:31:55',3,'用户名3','留言内容3','回复内容3'),(94,'2021-03-09 15:31:55',4,'用户名4','留言内容4','回复内容4'),(95,'2021-03-09 15:31:55',5,'用户名5','留言内容5','回复内容5'),(96,'2021-03-09 15:31:55',6,'用户名6','留言内容6','回复内容6'),(1615276104251,'2021-03-09 15:48:23',1615276019197,'1','sadasda','');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615276083030 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615276083029,'2021-03-09 15:48:02',1615276019197,32,'kechengxinxi','课程名称2','http://localhost:8080/ssm9t859/upload/kechengxinxi_kechengtupian2.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','zp3zrxou75okjjl4a1foy2pxtg609nt1','2021-03-09 15:43:40','2021-03-09 16:48:39'),(2,1615276019197,'1','yonghu','用户','64mhmoyrt2xl3p9syk9ks77rrfaa6wch','2021-03-09 15:47:03','2021-03-09 16:47:03');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-09 15:31:55');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615276019198 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`nianling`,`touxiang`,`yonghushouji`) values (11,'2021-03-09 15:31:55','用户1','123456','用户姓名1','男',1,'http://localhost:8080/ssm9t859/upload/yonghu_touxiang1.jpg','13823888881'),(12,'2021-03-09 15:31:55','用户2','123456','用户姓名2','男',2,'http://localhost:8080/ssm9t859/upload/yonghu_touxiang2.jpg','13823888882'),(13,'2021-03-09 15:31:55','用户3','123456','用户姓名3','男',3,'http://localhost:8080/ssm9t859/upload/yonghu_touxiang3.jpg','13823888883'),(14,'2021-03-09 15:31:55','用户4','123456','用户姓名4','男',4,'http://localhost:8080/ssm9t859/upload/yonghu_touxiang4.jpg','13823888884'),(15,'2021-03-09 15:31:55','用户5','123456','用户姓名5','男',5,'http://localhost:8080/ssm9t859/upload/yonghu_touxiang5.jpg','13823888885'),(16,'2021-03-09 15:31:55','用户6','123456','用户姓名6','男',6,'http://localhost:8080/ssm9t859/upload/yonghu_touxiang6.jpg','13823888886'),(1615276019197,'2021-03-09 15:46:59','1','1','xxx用户','男',22,'http://localhost:8080/ssm9t859/upload/1615276041444.jpg','12345678910');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

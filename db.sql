/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - meishituijian
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`meishituijian` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `meishituijian`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/meishituijian/upload/1618802822165.jpg'),(2,'picture2','http://localhost:8080/meishituijian/upload/1618802830590.jpg'),(3,'picture3','http://localhost:8080/meishituijian/upload/1618802844044.jpg'),(6,'homepage','http://localhost:8080/meishituijian/upload/1618802854612.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-19 11:21:31'),(2,'sex_types','性别',2,'女',NULL,'2021-04-19 11:21:31'),(3,'kouwei_types','口味名称',1,'口味1',NULL,'2021-04-19 11:21:31'),(4,'kouwei_types','口味名称',2,'口味2',NULL,'2021-04-19 11:21:31'),(5,'kouwei_types','口味名称',3,'口味3',NULL,'2021-04-19 11:21:31'),(6,'dianzhi_types','店址名称',1,'店址1',NULL,'2021-04-19 11:21:31'),(7,'dianzhi_types','店址名称',2,'店址2',NULL,'2021-04-19 11:21:31'),(8,'dianzhi_types','店址名称',3,'xx附近',NULL,'2021-04-19 11:21:31');

/*Table structure for table `meishi` */

DROP TABLE IF EXISTS `meishi`;

CREATE TABLE `meishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_name` varchar(200) DEFAULT NULL COMMENT '美食名称 Search111',
  `meishi_money` decimal(10,2) DEFAULT NULL COMMENT '美食价格',
  `kouwei_types` int(200) DEFAULT NULL COMMENT '口味 Search111',
  `dianzhi_types` int(200) DEFAULT NULL COMMENT '店址 Search111',
  `meishi_photo` varchar(200) DEFAULT NULL COMMENT '图片 ',
  `meishi_jieyue` int(200) DEFAULT NULL COMMENT '点击率',
  `meishi_content` text COMMENT '详情信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='美食信息';

/*Data for the table `meishi` */

insert  into `meishi`(`id`,`meishi_name`,`meishi_money`,`kouwei_types`,`dianzhi_types`,`meishi_photo`,`meishi_jieyue`,`meishi_content`,`create_time`) values (22,'美食1','1.00',1,1,'http://localhost:8080/meishituijian/file/download?fileName=1618802638726.jpg',9,'详情信息1\r\n','2021-04-19 11:24:41'),(23,'美食2','2.00',2,2,'http://localhost:8080/meishituijian/file/download?fileName=1618802692027.jpg',4,'详情信息2\r\n','2021-04-19 11:24:57'),(24,'美食3','3.00',3,3,'http://localhost:8080/meishituijian/file/download?fileName=1618802707570.jpg',5,'详情信息3\r\n','2021-04-19 11:25:11'),(25,'美食4','4.00',1,1,'http://localhost:8080/meishituijian/file/download?fileName=1618802724480.jpg',2,'详情信息4\r\n','2021-04-19 11:25:29'),(26,'美食5','5.00',2,1,'http://localhost:8080/meishituijian/file/download?fileName=1618819587743.jpg',5,'详情信息11\r\n','2021-04-19 16:06:40');

/*Table structure for table `meishi_collection` */

DROP TABLE IF EXISTS `meishi_collection`;

CREATE TABLE `meishi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int(11) DEFAULT NULL COMMENT '美食id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='美食收藏';

/*Data for the table `meishi_collection` */

insert  into `meishi_collection`(`id`,`meishi_id`,`yonghu_id`,`insert_time`,`create_time`) values (2,26,1,'2021-04-19 16:18:40','2021-04-19 16:18:40');

/*Table structure for table `meishi_liuyan` */

DROP TABLE IF EXISTS `meishi_liuyan`;

CREATE TABLE `meishi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int(11) DEFAULT NULL COMMENT '美食id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `meishi_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='美食留言';

/*Data for the table `meishi_liuyan` */

insert  into `meishi_liuyan`(`id`,`meishi_id`,`yonghu_id`,`meishi_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,26,1,'132123112312\r\n','123123123123\r\n','2021-04-19 16:18:46','2021-04-19 16:18:46');

/*Table structure for table `meishi_order` */

DROP TABLE IF EXISTS `meishi_order`;

CREATE TABLE `meishi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int(11) DEFAULT NULL COMMENT '美食id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `order_number` int(11) DEFAULT NULL COMMENT '预定数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='美食订单';

/*Data for the table `meishi_order` */

insert  into `meishi_order`(`id`,`meishi_id`,`yonghu_id`,`order_number`,`insert_time`,`create_time`) values (1,23,1,1,'2021-04-19 14:21:17','2021-04-19 14:21:17'),(2,26,1,10,'2021-04-19 16:18:37','2021-04-19 16:18:37');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '博主推荐名称  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '博主推荐图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '博主推荐时间',
  `news_content` text COMMENT '博主推荐详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='博主推荐';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'博主推荐名称1','http://localhost:8080/meishituijian/file/download?fileName=1618802785382.jpg','2021-04-19 11:26:29','博主推荐详情1\r\n','2021-04-19 11:26:29'),(2,'博主推荐名称2','http://localhost:8080/meishituijian/file/download?fileName=1618802802610.jpg','2021-04-19 11:26:44','博主推荐详情2\r\n','2021-04-19 11:26:44');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','fwjd8stj3oadp5i1xwnlazvh7gc8crol','2021-04-19 10:30:04','2021-04-19 17:21:36'),(2,1,'111','yonghu','用户','2zrwfp44dgzbxx4xxjmd9b8nb958bgzh','2021-04-19 11:04:24','2021-04-19 16:22:19'),(3,2,'222','yonghu','用户','3noaccts1twzz25rmsv19ovwrhedk9ea','2021-04-19 16:20:14','2021-04-19 17:20:14');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `kouwei_types` int(200) DEFAULT NULL COMMENT '口味 Search111',
  `dianzhi_types` int(200) DEFAULT NULL COMMENT '住址 Search111',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`kouwei_types`,`dianzhi_types`,`new_money`,`create_time`) values (1,'111','123456','用户1',2,'410882200011061211','17754466541','http://localhost:8080/meishituijian/file/download?fileName=1618813034916.jpg',3,2,'50.00','2021-04-19 14:18:27'),(2,'222','123456','用户2',2,'410882200011061212','17754466542','http://localhost:8080/meishituijian/file/download?fileName=1618813122070.jpg',2,3,'0.00','2021-04-19 14:18:45');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

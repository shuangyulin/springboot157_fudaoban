/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xianshangfudaoban
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xianshangfudaoban` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xianshangfudaoban`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/xianshangfudaoban/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/xianshangfudaoban/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/xianshangfudaoban/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-02-24 16:59:49'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-02-24 16:59:49'),(3,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-02-24 16:59:49'),(4,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-02-24 16:59:49'),(5,'kecheng_types','课程类型',1,'课程类型1',NULL,NULL,'2022-02-24 16:59:49'),(6,'kecheng_types','课程类型',2,'课程类型2',NULL,NULL,'2022-02-24 16:59:49'),(7,'kecheng_types','课程类型',3,'课程类型3',NULL,NULL,'2022-02-24 16:59:49'),(8,'kecheng_types','课程类型',4,'课程类型4',NULL,NULL,'2022-02-24 16:59:49'),(9,'kecheng_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-02-24 16:59:49'),(10,'kecheng_collection_types','收藏表类型',2,'赞',NULL,NULL,'2022-02-24 16:59:49'),(11,'kecheng_collection_types','收藏表类型',3,'踩',NULL,NULL,'2022-02-24 16:59:49'),(12,'kecheng_baoming_yesno_types','状态',1,'待审核',NULL,NULL,'2022-02-24 16:59:50'),(13,'kecheng_baoming_yesno_types','状态',2,'同意',NULL,NULL,'2022-02-24 16:59:50'),(14,'kecheng_baoming_yesno_types','状态',3,'拒绝',NULL,NULL,'2022-02-24 16:59:50'),(15,'gongkaike_types','公开课类型',1,'公开课类型1',NULL,NULL,'2022-02-24 16:59:50'),(16,'gongkaike_types','公开课类型',2,'公开课类型2',NULL,NULL,'2022-02-24 16:59:50'),(17,'gongkaike_types','公开课类型',3,'公开课类型3',NULL,NULL,'2022-02-24 16:59:50'),(18,'gongkaike_types','公开课类型',4,'公开课类型4',NULL,NULL,'2022-02-24 16:59:50'),(19,'forum_types','帖子类型',1,'帖子类型1',NULL,NULL,'2022-02-24 16:59:50'),(20,'forum_types','帖子类型',2,'帖子类型2',NULL,NULL,'2022-02-24 16:59:50'),(21,'forum_types','帖子类型',3,'帖子类型3',NULL,NULL,'2022-02-24 16:59:50'),(22,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-02-24 16:59:50'),(23,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-02-24 16:59:50');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,'发布内容1',NULL,1,1,'2022-02-24 17:00:01','2022-02-24 17:00:01','2022-02-24 17:00:01'),(2,'帖子标题2',2,NULL,'发布内容2',NULL,2,1,'2022-02-24 17:00:01','2022-02-24 17:00:01','2022-02-24 17:00:01'),(3,'帖子标题3',2,NULL,'发布内容3',NULL,2,1,'2022-02-24 17:00:01','2022-02-24 17:00:01','2022-02-24 17:00:01'),(4,'帖子标题4',3,NULL,'发布内容4',NULL,1,1,'2022-02-24 17:00:01','2022-02-24 17:00:01','2022-02-24 17:00:01'),(5,'帖子标题5',2,NULL,'发布内容5',NULL,3,1,'2022-02-24 17:00:01','2022-02-24 17:00:01','2022-02-24 17:00:01'),(6,NULL,2,NULL,'回帖222',5,NULL,2,'2022-02-24 17:42:34',NULL,'2022-02-24 17:42:34');

/*Table structure for table `gongkaike` */

DROP TABLE IF EXISTS `gongkaike`;

CREATE TABLE `gongkaike` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongkaike_name` varchar(200) DEFAULT NULL COMMENT '公开课名称  Search111 ',
  `gongkaike_photo` varchar(200) DEFAULT NULL COMMENT '公开课照片',
  `gongkaike_types` int(11) DEFAULT NULL COMMENT '公开课类型 Search111',
  `gongkaike_video` varchar(200) DEFAULT NULL COMMENT '公开课视频',
  `gongkaike_content` text COMMENT '公开课介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公开课';

/*Data for the table `gongkaike` */

insert  into `gongkaike`(`id`,`gongkaike_name`,`gongkaike_photo`,`gongkaike_types`,`gongkaike_video`,`gongkaike_content`,`insert_time`,`create_time`) values (1,'公开课名称1','http://localhost:8080/xianshangfudaoban/upload/gongkaike1.jpg',4,'http://localhost:8080/xianshangfudaoban/upload/video.mp4','公开课介绍1','2022-02-24 17:00:01','2022-02-24 17:00:01'),(2,'公开课名称2','http://localhost:8080/xianshangfudaoban/upload/gongkaike2.jpg',1,'http://localhost:8080/xianshangfudaoban/upload/video.mp4','公开课介绍2','2022-02-24 17:00:01','2022-02-24 17:00:01'),(3,'公开课名称3','http://localhost:8080/xianshangfudaoban/upload/gongkaike3.jpg',2,'http://localhost:8080/xianshangfudaoban/upload/video.mp4','公开课介绍3','2022-02-24 17:00:01','2022-02-24 17:00:01'),(4,'公开课名称4','http://localhost:8080/xianshangfudaoban/upload/gongkaike4.jpg',3,'http://localhost:8080/xianshangfudaoban/upload/video.mp4','公开课介绍4','2022-02-24 17:00:01','2022-02-24 17:00:01'),(5,'公开课名称5','http://localhost:8080/xianshangfudaoban/upload/gongkaike5.jpg',3,'http://localhost:8080/xianshangfudaoban/upload/video.mp4','公开课介绍5','2022-02-24 17:00:01','2022-02-24 17:00:01');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称  Search111 ',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '课程照片',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '课程类型 Search111',
  `kecheng_laoshi` varchar(200) DEFAULT NULL COMMENT '上课老师  Search111 ',
  `kaike_time` date DEFAULT NULL COMMENT '开课日期',
  `shangke_shijian` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `kecheng_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `kecheng_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `kecheng_content` text COMMENT '课程介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='课程';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`kecheng_name`,`kecheng_photo`,`kecheng_types`,`kecheng_laoshi`,`kaike_time`,`shangke_shijian`,`kecheng_clicknum`,`shangxia_types`,`kecheng_delete`,`kecheng_content`,`insert_time`,`create_time`) values (1,'课程名称1','http://localhost:8080/xianshangfudaoban/upload/kecheng1.jpg',2,'上课老师1','2022-02-24','上课时间1',176,1,1,'课程介绍1','2022-02-24 17:00:01','2022-02-24 17:00:01'),(2,'课程名称2','http://localhost:8080/xianshangfudaoban/upload/kecheng2.jpg',3,'上课老师2','2022-02-24','上课时间2',150,1,1,'课程介绍2','2022-02-24 17:00:01','2022-02-24 17:00:01'),(3,'课程名称3','http://localhost:8080/xianshangfudaoban/upload/kecheng3.jpg',3,'上课老师3','2022-02-24','上课时间3',114,1,1,'课程介绍3','2022-02-24 17:00:01','2022-02-24 17:00:01'),(4,'课程名称4','http://localhost:8080/xianshangfudaoban/upload/kecheng3.jpg',2,'上课老师4','2022-02-24','上课时间4',111,1,1,'课程介绍3','2022-02-24 17:00:01','2022-02-24 17:00:01');

/*Table structure for table `kecheng_baoming` */

DROP TABLE IF EXISTS `kecheng_baoming`;

CREATE TABLE `kecheng_baoming` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_baoming_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名流水号 Search111 ',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kecheng_baoming_yesno_types` int(11) DEFAULT NULL COMMENT '状态 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '报名时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='课程报名';

/*Data for the table `kecheng_baoming` */

insert  into `kecheng_baoming`(`id`,`kecheng_baoming_uuid_number`,`kecheng_id`,`yonghu_id`,`kecheng_baoming_yesno_types`,`insert_time`,`create_time`) values (1,'16456932020094',1,2,1,'2022-02-24 17:00:01','2022-02-24 17:00:01'),(2,'164569320200920',2,2,1,'2022-02-24 17:00:01','2022-02-24 17:00:01'),(3,'164569320200917',3,1,1,'2022-02-24 17:00:01','2022-02-24 17:00:01'),(4,'16456932020095',1,1,1,'2022-02-24 17:00:01','2022-02-24 17:00:01'),(5,'16456932020093',1,3,1,'2022-02-24 17:00:01','2022-02-24 17:00:01'),(6,'1645695788174',3,2,2,'2022-02-24 17:43:08','2022-02-24 17:43:08'),(7,'1645695795372',4,2,2,'2022-02-24 17:43:15','2022-02-24 17:43:15');

/*Table structure for table `kecheng_collection` */

DROP TABLE IF EXISTS `kecheng_collection`;

CREATE TABLE `kecheng_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kecheng_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='课程收藏';

/*Data for the table `kecheng_collection` */

insert  into `kecheng_collection`(`id`,`kecheng_id`,`yonghu_id`,`kecheng_collection_types`,`insert_time`,`create_time`) values (1,3,2,1,'2022-02-24 17:00:01','2022-02-24 17:00:01'),(3,2,2,1,'2022-02-24 17:00:01','2022-02-24 17:00:01'),(4,2,3,1,'2022-02-24 17:00:01','2022-02-24 17:00:01'),(5,3,1,1,'2022-02-24 17:00:01','2022-02-24 17:00:01');

/*Table structure for table `kecheng_liuyan` */

DROP TABLE IF EXISTS `kecheng_liuyan`;

CREATE TABLE `kecheng_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kecheng_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='课程留言';

/*Data for the table `kecheng_liuyan` */

insert  into `kecheng_liuyan`(`id`,`kecheng_id`,`yonghu_id`,`kecheng_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,2,1,'留言内容1','2022-02-24 17:00:01','回复信息1','2022-02-24 17:00:01','2022-02-24 17:00:01'),(2,3,1,'留言内容2','2022-02-24 17:00:01','回复信息2','2022-02-24 17:00:01','2022-02-24 17:00:01'),(3,2,1,'留言内容3','2022-02-24 17:00:01','回复信息3','2022-02-24 17:00:01','2022-02-24 17:00:01'),(4,1,1,'留言内容4','2022-02-24 17:00:01','回复信息4','2022-02-24 17:00:01','2022-02-24 17:00:01'),(5,1,1,'留言内容5','2022-02-24 17:00:01','回复信息5','2022-02-24 17:00:01','2022-02-24 17:00:01'),(6,3,2,'客户的','2022-02-24 17:42:53','ssss','2022-02-24 17:46:12','2022-02-24 17:42:53');

/*Table structure for table `shizililiang` */

DROP TABLE IF EXISTS `shizililiang`;

CREATE TABLE `shizililiang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shizililiang_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `shizililiang_xuexiao` varchar(200) DEFAULT NULL COMMENT '毕业学校',
  `jiaoxuenianxian` varchar(200) DEFAULT NULL COMMENT '教学年限',
  `shanchangkecheng` varchar(200) DEFAULT NULL COMMENT '擅长课程 Search111 ',
  `shizililiang_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `shizililiang_content` text COMMENT '详细介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='师资力量';

/*Data for the table `shizililiang` */

insert  into `shizililiang`(`id`,`shizililiang_name`,`shizililiang_xuexiao`,`jiaoxuenianxian`,`shanchangkecheng`,`shizililiang_photo`,`sex_types`,`shizililiang_content`,`create_time`) values (1,'老师姓名1','毕业学校1','教学年限1','擅长课程1','http://localhost:8080/xianshangfudaoban/upload/laoshi1.jpg',1,'详细介绍1','2022-02-24 17:00:01'),(2,'老师姓名2','毕业学校2','教学年限2','擅长课程2','http://localhost:8080/xianshangfudaoban/upload/laoshi2.jpg',1,'详细介绍2','2022-02-24 17:00:01'),(3,'老师姓名3','毕业学校3','教学年限3','擅长课程3','http://localhost:8080/xianshangfudaoban/upload/laoshi3.jpg',1,'详细介绍3','2022-02-24 17:00:01'),(4,'老师姓名4','毕业学校4','教学年限4','擅长课程4','http://localhost:8080/xianshangfudaoban/upload/laoshi4.jpg',1,'详细介绍4','2022-02-24 17:00:01'),(5,'老师姓名5','毕业学校5','教学年限5','擅长课程5','http://localhost:8080/xianshangfudaoban/upload/laoshi5.jpg',1,'详细介绍5','2022-02-24 17:00:01'),(6,'老师999','毕业学校999','三年资深教师','音乐和英语','http://localhost:8080/xianshangfudaoban/upload/1645696071701.jpg',2,'<p>该老水的详细介绍</p>','2022-02-24 17:48:03');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','w99neba438ymlwwe602c2u1176h450kp','2022-02-24 16:11:47','2022-02-24 18:49:22'),(2,1,'a1','yonghu','用户','uex9l2vg5imb8zdi1gl393g009xyqqhk','2022-02-24 16:49:08','2022-02-24 17:49:09'),(3,2,'a2','yonghu','用户','e0to4vgjqw4kcb5y3xx3f1efndj6j5uv','2022-02-24 17:42:07','2022-02-24 18:43:52');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2021-04-27 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/xianshangfudaoban/upload/yonghu1.jpg',2,'1@qq.com','2022-02-24 17:00:01'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/xianshangfudaoban/upload/yonghu2.jpg',2,'2@qq.com','2022-02-24 17:00:01'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/xianshangfudaoban/upload/yonghu3.jpg',2,'3@qq.com','2022-02-24 17:00:01');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

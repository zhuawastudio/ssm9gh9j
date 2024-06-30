/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm9gh9j
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm9gh9j` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm9gh9j`;

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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (41,'2021-04-24 14:22:42',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (42,'2021-04-24 14:22:42',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (43,'2021-04-24 14:22:42',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (44,'2021-04-24 14:22:42',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (45,'2021-04-24 14:22:42',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (46,'2021-04-24 14:22:42',6,6,'提问6','回复6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm9gh9j/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm9gh9j/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm9gh9j/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `fenlei` */

DROP TABLE IF EXISTS `fenlei`;

CREATE TABLE `fenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='分类';

/*Data for the table `fenlei` */

insert  into `fenlei`(`id`,`addtime`,`fenlei`) values (21,'2021-04-24 14:22:42','分类1');
insert  into `fenlei`(`id`,`addtime`,`fenlei`) values (22,'2021-04-24 14:22:42','分类2');
insert  into `fenlei`(`id`,`addtime`,`fenlei`) values (23,'2021-04-24 14:22:42','分类3');
insert  into `fenlei`(`id`,`addtime`,`fenlei`) values (24,'2021-04-24 14:22:42','分类4');
insert  into `fenlei`(`id`,`addtime`,`fenlei`) values (25,'2021-04-24 14:22:42','分类5');
insert  into `fenlei`(`id`,`addtime`,`fenlei`) values (26,'2021-04-24 14:22:42','分类6');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'yanchanghui' COMMENT '商品表名',
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
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','nkseppblwhlilo5m2g4s5heiyknv3pd3','2021-04-24 14:23:35','2021-04-24 15:23:43');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-24 14:22:42');

/*Table structure for table `yanchanghui` */

DROP TABLE IF EXISTS `yanchanghui`;

CREATE TABLE `yanchanghui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `haibao` varchar(200) DEFAULT NULL COMMENT '海报',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `guimo` varchar(200) DEFAULT NULL COMMENT '规模',
  `geshou` varchar(200) DEFAULT NULL COMMENT '歌手',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  `chengshi` varchar(200) DEFAULT NULL COMMENT '城市',
  `didian` varchar(200) DEFAULT NULL COMMENT '地点',
  `xuanchuanpian` varchar(200) DEFAULT NULL COMMENT '宣传片',
  `xiangqing` longtext COMMENT '详情',
  `price` float NOT NULL COMMENT '价格',
  `number` int(11) NOT NULL COMMENT '座位总数',
  `selected` longtext COMMENT '已选座位[用,号隔开]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='演唱会';

/*Data for the table `yanchanghui` */

insert  into `yanchanghui`(`id`,`addtime`,`mingcheng`,`haibao`,`fenlei`,`guimo`,`geshou`,`shijian`,`chengshi`,`didian`,`xuanchuanpian`,`xiangqing`,`price`,`number`,`selected`) values (31,'2021-04-24 14:22:42','名称1','http://localhost:8080/ssm9gh9j/upload/yanchanghui_haibao1.jpg','分类1','小型','歌手1','2021-04-24 14:22:42','城市1','地点1','','详情1',99.9,20,'1,3,5,7,9');
insert  into `yanchanghui`(`id`,`addtime`,`mingcheng`,`haibao`,`fenlei`,`guimo`,`geshou`,`shijian`,`chengshi`,`didian`,`xuanchuanpian`,`xiangqing`,`price`,`number`,`selected`) values (32,'2021-04-24 14:22:42','名称2','http://localhost:8080/ssm9gh9j/upload/yanchanghui_haibao2.jpg','分类2','小型','歌手2','2021-04-24 14:22:42','城市2','地点2','','详情2',99.9,20,'1,3,5,7,9');
insert  into `yanchanghui`(`id`,`addtime`,`mingcheng`,`haibao`,`fenlei`,`guimo`,`geshou`,`shijian`,`chengshi`,`didian`,`xuanchuanpian`,`xiangqing`,`price`,`number`,`selected`) values (33,'2021-04-24 14:22:42','名称3','http://localhost:8080/ssm9gh9j/upload/yanchanghui_haibao3.jpg','分类3','小型','歌手3','2021-04-24 14:22:42','城市3','地点3','','详情3',99.9,20,'1,3,5,7,9');
insert  into `yanchanghui`(`id`,`addtime`,`mingcheng`,`haibao`,`fenlei`,`guimo`,`geshou`,`shijian`,`chengshi`,`didian`,`xuanchuanpian`,`xiangqing`,`price`,`number`,`selected`) values (34,'2021-04-24 14:22:42','名称4','http://localhost:8080/ssm9gh9j/upload/yanchanghui_haibao4.jpg','分类4','小型','歌手4','2021-04-24 14:22:42','城市4','地点4','','详情4',99.9,20,'1,3,5,7,9');
insert  into `yanchanghui`(`id`,`addtime`,`mingcheng`,`haibao`,`fenlei`,`guimo`,`geshou`,`shijian`,`chengshi`,`didian`,`xuanchuanpian`,`xiangqing`,`price`,`number`,`selected`) values (35,'2021-04-24 14:22:42','名称5','http://localhost:8080/ssm9gh9j/upload/yanchanghui_haibao5.jpg','分类5','小型','歌手5','2021-04-24 14:22:42','城市5','地点5','','详情5',99.9,20,'1,3,5,7,9');
insert  into `yanchanghui`(`id`,`addtime`,`mingcheng`,`haibao`,`fenlei`,`guimo`,`geshou`,`shijian`,`chengshi`,`didian`,`xuanchuanpian`,`xiangqing`,`price`,`number`,`selected`) values (36,'2021-04-24 14:22:42','名称6','http://localhost:8080/ssm9gh9j/upload/yanchanghui_haibao6.jpg','分类6','小型','歌手6','2021-04-24 14:22:42','城市6','地点6','','详情6',99.9,20,'1,3,5,7,9');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`youxiang`,`money`) values (11,'2021-04-24 14:22:42','用户1','123456','用户姓名1','http://localhost:8080/ssm9gh9j/upload/yonghu_touxiang1.jpg','男','年龄1','13823888881','773890001@qq.com',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`youxiang`,`money`) values (12,'2021-04-24 14:22:42','用户2','123456','用户姓名2','http://localhost:8080/ssm9gh9j/upload/yonghu_touxiang2.jpg','男','年龄2','13823888882','773890002@qq.com',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`youxiang`,`money`) values (13,'2021-04-24 14:22:42','用户3','123456','用户姓名3','http://localhost:8080/ssm9gh9j/upload/yonghu_touxiang3.jpg','男','年龄3','13823888883','773890003@qq.com',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`youxiang`,`money`) values (14,'2021-04-24 14:22:42','用户4','123456','用户姓名4','http://localhost:8080/ssm9gh9j/upload/yonghu_touxiang4.jpg','男','年龄4','13823888884','773890004@qq.com',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`youxiang`,`money`) values (15,'2021-04-24 14:22:42','用户5','123456','用户姓名5','http://localhost:8080/ssm9gh9j/upload/yonghu_touxiang5.jpg','男','年龄5','13823888885','773890005@qq.com',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`youxiang`,`money`) values (16,'2021-04-24 14:22:42','用户6','123456','用户姓名6','http://localhost:8080/ssm9gh9j/upload/yonghu_touxiang6.jpg','男','年龄6','13823888886','773890006@qq.com',100);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

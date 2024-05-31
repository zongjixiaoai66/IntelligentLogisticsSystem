/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t085`;
CREATE DATABASE IF NOT EXISTS `t085` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t085`;

DROP TABLE IF EXISTS `bumenfenlei`;
CREATE TABLE IF NOT EXISTS `bumenfenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='部门分类';

DELETE FROM `bumenfenlei`;
INSERT INTO `bumenfenlei` (`id`, `addtime`, `leixing`) VALUES
	(61, '2021-04-27 03:11:30', '类型1'),
	(62, '2021-04-27 03:11:30', '类型2'),
	(63, '2021-04-27 03:11:30', '类型3'),
	(64, '2021-04-27 03:11:30', '类型4'),
	(65, '2021-04-27 03:11:30', '类型5'),
	(66, '2021-04-27 03:11:30', '类型6');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot142f7/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot142f7/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot142f7/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `dianzhu`;
CREATE TABLE IF NOT EXISTS `dianzhu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianzhuzhanghao` varchar(200) NOT NULL COMMENT '店主账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `dianzhuxingming` varchar(200) NOT NULL COMMENT '店主姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dianzhuzhanghao` (`dianzhuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='店主';

DELETE FROM `dianzhu`;
INSERT INTO `dianzhu` (`id`, `addtime`, `dianzhuzhanghao`, `mima`, `dianzhuxingming`, `xingbie`, `lianxidianhua`, `youxiang`, `shenfenzheng`, `tupian`) VALUES
	(31, '2021-04-27 03:11:30', '店主1', '123456', '店主姓名1', '男', '13823888881', '773890001@qq.com', '440300199101010001', 'http://localhost:8080/springboot142f7/upload/dianzhu_tupian1.jpg'),
	(32, '2021-04-27 03:11:30', '店主2', '123456', '店主姓名2', '男', '13823888882', '773890002@qq.com', '440300199202020002', 'http://localhost:8080/springboot142f7/upload/dianzhu_tupian2.jpg'),
	(33, '2021-04-27 03:11:30', '店主3', '123456', '店主姓名3', '男', '13823888883', '773890003@qq.com', '440300199303030003', 'http://localhost:8080/springboot142f7/upload/dianzhu_tupian3.jpg'),
	(34, '2021-04-27 03:11:30', '店主4', '123456', '店主姓名4', '男', '13823888884', '773890004@qq.com', '440300199404040004', 'http://localhost:8080/springboot142f7/upload/dianzhu_tupian4.jpg'),
	(35, '2021-04-27 03:11:30', '店主5', '123456', '店主姓名5', '男', '13823888885', '773890005@qq.com', '440300199505050005', 'http://localhost:8080/springboot142f7/upload/dianzhu_tupian5.jpg'),
	(36, '2021-04-27 03:11:30', '店主6', '123456', '店主姓名6', '男', '13823888886', '773890006@qq.com', '440300199606060006', 'http://localhost:8080/springboot142f7/upload/dianzhu_tupian6.jpg');

DROP TABLE IF EXISTS `dingdanxinxi`;
CREATE TABLE IF NOT EXISTS `dingdanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `mendianmingcheng` varchar(200) DEFAULT NULL COMMENT '门店名称',
  `dingdanzhonglei` varchar(200) DEFAULT NULL COMMENT '订单种类',
  `pinming` varchar(200) DEFAULT NULL COMMENT '品名',
  `jingzhong` varchar(200) DEFAULT NULL COMMENT '净重',
  `shifadi` varchar(200) DEFAULT NULL COMMENT '始发地',
  `mudedi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `kehubeizhu` longtext COMMENT '客户备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `gukexingming` varchar(200) DEFAULT NULL COMMENT '顾客姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='订单信息';

DELETE FROM `dingdanxinxi`;
INSERT INTO `dingdanxinxi` (`id`, `addtime`, `dingdanbianhao`, `mendianmingcheng`, `dingdanzhonglei`, `pinming`, `jingzhong`, `shifadi`, `mudedi`, `kehubeizhu`, `zhanghao`, `gukexingming`, `sfsh`, `shhf`) VALUES
	(71, '2021-04-27 03:11:30', '订单编号1', '门店名称1', '小件', '品名1', '净重1', '始发地1', '目的地1', '客户备注1', '账号1', '顾客姓名1', '是', ''),
	(72, '2021-04-27 03:11:30', '订单编号2', '门店名称2', '小件', '品名2', '净重2', '始发地2', '目的地2', '客户备注2', '账号2', '顾客姓名2', '是', ''),
	(73, '2021-04-27 03:11:30', '订单编号3', '门店名称3', '小件', '品名3', '净重3', '始发地3', '目的地3', '客户备注3', '账号3', '顾客姓名3', '是', ''),
	(74, '2021-04-27 03:11:30', '订单编号4', '门店名称4', '小件', '品名4', '净重4', '始发地4', '目的地4', '客户备注4', '账号4', '顾客姓名4', '是', ''),
	(75, '2021-04-27 03:11:30', '订单编号5', '门店名称5', '小件', '品名5', '净重5', '始发地5', '目的地5', '客户备注5', '账号5', '顾客姓名5', '是', ''),
	(76, '2021-04-27 03:11:30', '订单编号6', '门店名称6', '小件', '品名6', '净重6', '始发地6', '目的地6', '客户备注6', '账号6', '顾客姓名6', '是', '');

DROP TABLE IF EXISTS `gongzuorizhi`;
CREATE TABLE IF NOT EXISTS `gongzuorizhi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `dianzhuzhanghao` varchar(200) DEFAULT NULL COMMENT '店主账号',
  `mendianmingcheng` varchar(200) DEFAULT NULL COMMENT '门店名称',
  `gongzuoxiangmu` varchar(200) DEFAULT NULL COMMENT '工作项目',
  `gongzuoneirong` longtext COMMENT '工作内容',
  `wanchengzhuangkuang` varchar(200) DEFAULT NULL COMMENT '完成状况',
  `daijiejuewenti` longtext COMMENT '待解决问题',
  `gongzuozongjie` longtext COMMENT '工作总结',
  `beizhu` longtext COMMENT '备注',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 COMMENT='工作日志';

DELETE FROM `gongzuorizhi`;
INSERT INTO `gongzuorizhi` (`id`, `addtime`, `gonghao`, `yuangongxingming`, `bumen`, `dianzhuzhanghao`, `mendianmingcheng`, `gongzuoxiangmu`, `gongzuoneirong`, `wanchengzhuangkuang`, `daijiejuewenti`, `gongzuozongjie`, `beizhu`, `riqi`, `sfsh`, `shhf`) VALUES
	(81, '2021-04-27 03:11:30', '工号1', '员工姓名1', '部门1', '店主账号1', '门店名称1', '工作项目1', '工作内容1', '已完成', '待解决问题1', '工作总结1', '备注1', '2021-04-27', '是', ''),
	(82, '2021-04-27 03:11:30', '工号2', '员工姓名2', '部门2', '店主账号2', '门店名称2', '工作项目2', '工作内容2', '已完成', '待解决问题2', '工作总结2', '备注2', '2021-04-27', '是', ''),
	(83, '2021-04-27 03:11:30', '工号3', '员工姓名3', '部门3', '店主账号3', '门店名称3', '工作项目3', '工作内容3', '已完成', '待解决问题3', '工作总结3', '备注3', '2021-04-27', '是', ''),
	(84, '2021-04-27 03:11:30', '工号4', '员工姓名4', '部门4', '店主账号4', '门店名称4', '工作项目4', '工作内容4', '已完成', '待解决问题4', '工作总结4', '备注4', '2021-04-27', '是', ''),
	(85, '2021-04-27 03:11:30', '工号5', '员工姓名5', '部门5', '店主账号5', '门店名称5', '工作项目5', '工作内容5', '已完成', '待解决问题5', '工作总结5', '备注5', '2021-04-27', '是', ''),
	(86, '2021-04-27 03:11:30', '工号6', '员工姓名6', '部门6', '店主账号6', '门店名称6', '工作项目6', '工作内容6', '已完成', '待解决问题6', '工作总结6', '备注6', '2021-04-27', '是', '');

DROP TABLE IF EXISTS `guke`;
CREATE TABLE IF NOT EXISTS `guke` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `gukexingming` varchar(200) NOT NULL COMMENT '顾客姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='顾客';

DELETE FROM `guke`;
INSERT INTO `guke` (`id`, `addtime`, `zhanghao`, `mima`, `gukexingming`, `xingbie`, `shouji`, `youxiang`, `shenfenzheng`, `dizhi`, `tupian`) VALUES
	(11, '2021-04-27 03:11:30', '顾客1', '123456', '顾客姓名1', '男', '13823888881', '773890001@qq.com', '440300199101010001', '地址1', 'http://localhost:8080/springboot142f7/upload/guke_tupian1.jpg'),
	(12, '2021-04-27 03:11:30', '顾客2', '123456', '顾客姓名2', '男', '13823888882', '773890002@qq.com', '440300199202020002', '地址2', 'http://localhost:8080/springboot142f7/upload/guke_tupian2.jpg'),
	(13, '2021-04-27 03:11:30', '顾客3', '123456', '顾客姓名3', '男', '13823888883', '773890003@qq.com', '440300199303030003', '地址3', 'http://localhost:8080/springboot142f7/upload/guke_tupian3.jpg'),
	(14, '2021-04-27 03:11:30', '顾客4', '123456', '顾客姓名4', '男', '13823888884', '773890004@qq.com', '440300199404040004', '地址4', 'http://localhost:8080/springboot142f7/upload/guke_tupian4.jpg'),
	(15, '2021-04-27 03:11:30', '顾客5', '123456', '顾客姓名5', '男', '13823888885', '773890005@qq.com', '440300199505050005', '地址5', 'http://localhost:8080/springboot142f7/upload/guke_tupian5.jpg'),
	(16, '2021-04-27 03:11:30', '顾客6', '123456', '顾客姓名6', '男', '13823888886', '773890006@qq.com', '440300199606060006', '地址6', 'http://localhost:8080/springboot142f7/upload/guke_tupian6.jpg');

DROP TABLE IF EXISTS `mendianxinxi`;
CREATE TABLE IF NOT EXISTS `mendianxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mendianmingcheng` varchar(200) DEFAULT NULL COMMENT '门店名称',
  `mendianweizhi` varchar(200) DEFAULT NULL COMMENT '门店位置',
  `mendianjieshao` longtext COMMENT '门店介绍',
  `mendiantupian` varchar(200) DEFAULT NULL COMMENT '门店图片',
  `chuangjianriqi` date DEFAULT NULL COMMENT '创建日期',
  `dianzhuzhanghao` varchar(200) DEFAULT NULL COMMENT '店主账号',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='门店信息';

DELETE FROM `mendianxinxi`;
INSERT INTO `mendianxinxi` (`id`, `addtime`, `mendianmingcheng`, `mendianweizhi`, `mendianjieshao`, `mendiantupian`, `chuangjianriqi`, `dianzhuzhanghao`, `lianxidianhua`, `sfsh`, `shhf`) VALUES
	(41, '2021-04-27 03:11:30', '门店名称1', '门店位置1', '门店介绍1', 'http://localhost:8080/springboot142f7/upload/mendianxinxi_mendiantupian1.jpg', '2021-04-27', '店主账号1', '13823888881', '是', ''),
	(42, '2021-04-27 03:11:30', '门店名称2', '门店位置2', '门店介绍2', 'http://localhost:8080/springboot142f7/upload/mendianxinxi_mendiantupian2.jpg', '2021-04-27', '店主账号2', '13823888882', '是', ''),
	(43, '2021-04-27 03:11:30', '门店名称3', '门店位置3', '门店介绍3', 'http://localhost:8080/springboot142f7/upload/mendianxinxi_mendiantupian3.jpg', '2021-04-27', '店主账号3', '13823888883', '是', ''),
	(44, '2021-04-27 03:11:30', '门店名称4', '门店位置4', '门店介绍4', 'http://localhost:8080/springboot142f7/upload/mendianxinxi_mendiantupian4.jpg', '2021-04-27', '店主账号4', '13823888884', '是', ''),
	(45, '2021-04-27 03:11:30', '门店名称5', '门店位置5', '门店介绍5', 'http://localhost:8080/springboot142f7/upload/mendianxinxi_mendiantupian5.jpg', '2021-04-27', '店主账号5', '13823888885', '是', ''),
	(46, '2021-04-27 03:11:30', '门店名称6', '门店位置6', '门店介绍6', 'http://localhost:8080/springboot142f7/upload/mendianxinxi_mendiantupian6.jpg', '2021-04-27', '店主账号6', '13823888886', '是', '');

DROP TABLE IF EXISTS `mendianyuangong`;
CREATE TABLE IF NOT EXISTS `mendianyuangong` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `gerenjianli` varchar(200) DEFAULT NULL COMMENT '个人简历',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `dianzhuzhanghao` varchar(200) DEFAULT NULL COMMENT '店主账号',
  `dianzhuxingming` varchar(200) DEFAULT NULL COMMENT '店主姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='门店员工';

DELETE FROM `mendianyuangong`;
INSERT INTO `mendianyuangong` (`id`, `addtime`, `gonghao`, `yuangongxingming`, `xingbie`, `bumen`, `shouji`, `shenfenzheng`, `gerenjianli`, `zhaopian`, `dianzhuzhanghao`, `dianzhuxingming`) VALUES
	(51, '2021-04-27 03:11:30', '工号1', '员工姓名1', '男', '部门1', '13823888881', '440300199101010001', '', 'http://localhost:8080/springboot142f7/upload/mendianyuangong_zhaopian1.jpg', '店主账号1', '店主姓名1'),
	(52, '2021-04-27 03:11:30', '工号2', '员工姓名2', '男', '部门2', '13823888882', '440300199202020002', '', 'http://localhost:8080/springboot142f7/upload/mendianyuangong_zhaopian2.jpg', '店主账号2', '店主姓名2'),
	(53, '2021-04-27 03:11:30', '工号3', '员工姓名3', '男', '部门3', '13823888883', '440300199303030003', '', 'http://localhost:8080/springboot142f7/upload/mendianyuangong_zhaopian3.jpg', '店主账号3', '店主姓名3'),
	(54, '2021-04-27 03:11:30', '工号4', '员工姓名4', '男', '部门4', '13823888884', '440300199404040004', '', 'http://localhost:8080/springboot142f7/upload/mendianyuangong_zhaopian4.jpg', '店主账号4', '店主姓名4'),
	(55, '2021-04-27 03:11:30', '工号5', '员工姓名5', '男', '部门5', '13823888885', '440300199505050005', '', 'http://localhost:8080/springboot142f7/upload/mendianyuangong_zhaopian5.jpg', '店主账号5', '店主姓名5'),
	(56, '2021-04-27 03:11:30', '工号6', '员工姓名6', '男', '部门6', '13823888886', '440300199606060006', '', 'http://localhost:8080/springboot142f7/upload/mendianyuangong_zhaopian6.jpg', '店主账号6', '店主姓名6');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'ecq1ql32pv9z7yxhtu4s1mu5nexjqcll', '2024-02-13 11:26:55', '2024-02-13 12:26:55');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-27 03:11:30');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `mendianmingcheng` varchar(200) DEFAULT NULL COMMENT '门店名称',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `addtime`, `gonghao`, `mima`, `yuangongxingming`, `xingbie`, `mendianmingcheng`, `bumen`, `shouji`, `shenfenzheng`, `tupian`) VALUES
	(21, '2021-04-27 03:11:30', '员工1', '123456', '员工姓名1', '男', '门店名称1', '773890001@qq.com', '13823888881', '440300199101010001', 'http://localhost:8080/springboot142f7/upload/yuangong_tupian1.jpg'),
	(22, '2021-04-27 03:11:30', '员工2', '123456', '员工姓名2', '男', '门店名称2', '773890002@qq.com', '13823888882', '440300199202020002', 'http://localhost:8080/springboot142f7/upload/yuangong_tupian2.jpg'),
	(23, '2021-04-27 03:11:30', '员工3', '123456', '员工姓名3', '男', '门店名称3', '773890003@qq.com', '13823888883', '440300199303030003', 'http://localhost:8080/springboot142f7/upload/yuangong_tupian3.jpg'),
	(24, '2021-04-27 03:11:30', '员工4', '123456', '员工姓名4', '男', '门店名称4', '773890004@qq.com', '13823888884', '440300199404040004', 'http://localhost:8080/springboot142f7/upload/yuangong_tupian4.jpg'),
	(25, '2021-04-27 03:11:30', '员工5', '123456', '员工姓名5', '男', '门店名称5', '773890005@qq.com', '13823888885', '440300199505050005', 'http://localhost:8080/springboot142f7/upload/yuangong_tupian5.jpg'),
	(26, '2021-04-27 03:11:30', '员工6', '123456', '员工姓名6', '男', '门店名称6', '773890006@qq.com', '13823888886', '440300199606060006', 'http://localhost:8080/springboot142f7/upload/yuangong_tupian6.jpg');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

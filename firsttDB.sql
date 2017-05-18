-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        10.1.19-MariaDB - mariadb.org binary distribution
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 zhang 的数据库结构
CREATE DATABASE IF NOT EXISTS `zhang` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `zhang`;


-- 导出  表 zhang.admin 结构
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_number` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  zhang.admin 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `username`, `password`) VALUES
	(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


-- 导出  表 zhang.company 结构
CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` char(56) NOT NULL COMMENT '公司名称',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `location` char(28) NOT NULL COMMENT '地址',
  `phone` bigint(20) NOT NULL COMMENT '公司电话',
  `property` set('国有企业','私营企业','其他') DEFAULT NULL COMMENT '企业性质',
  `email` char(64) NOT NULL COMMENT '公司邮箱',
  `code` int(11) NOT NULL COMMENT '企业代码',
  `cltime` int(11) NOT NULL COMMENT '成立时间',
  `detail` char(128) DEFAULT NULL COMMENT '公司简介',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- 正在导出表  zhang.company 的数据：~8 rows (大约)
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` (`id`, `cname`, `password`, `location`, `phone`, `property`, `email`, `code`, `cltime`, `detail`) VALUES
	(1, 'TW', '9d3dc7094d3dcb31ffe2960ad891dd04', '西安', 15664646679, '其他', '123@qq.com', 111111, 2001, '里克森卷福'),
	(3, 'QQ', '5b1b68a9abf4d2cd155c81a9225fd158', 'sz', 15664646679, '国有企业', '222@qq.com', 12345, 1999, '互联网企业'),
	(11, 'wangyi', '5b1b68a9abf4d2cd155c81a9225fd158', '浙江杭州', 164646679, '私营企业', 'wangyi@163.com', 12321, 1992, '互联网游戏公司'),
	(14, 'GE', '5b1b68a9abf4d2cd155c81a9225fd158', 'sz', 15664646679, '国有企业', '222@qq.com', 873, 1999, '互联网企业'),
	(15, 'xupe', '5b1b68a9abf4d2cd155c81a9225fd158', '西安市', 5566, '国有企业', 'sdaf@xupt.com', 55666, 1950, '一个大学'),
	(17, 'xupe', '5b1b68a9abf4d2cd155c81a9225fd158', '西安市', 5566, '国有企业', 'sdaf@xupt.com', 556, 1949, '一个大学'),
	(19, '中国人公司', '5b1b68a9abf4d2cd155c81a9225fd158', '地球', 120, '私营企业', 'afsdds@126.com', 9767, 1999, '哈哈哈'),
	(20, 'zhongguo', 'c56d0e9a7ccec67b4ea131655038d604', '中国陕西', 12021, '其他', 'boss@zhongguo.com', 4233, 2009, '面向中国人自己的公司');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;


-- 导出  表 zhang.desire 结构
CREATE TABLE IF NOT EXISTS `desire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sno` int(11) NOT NULL,
  `passport` char(18) NOT NULL,
  `examNum` char(10) NOT NULL,
  `willingone` char(56) DEFAULT NULL,
  `willingtwo` char(56) DEFAULT NULL,
  `willingthree` char(56) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_desire_stu_account` (`sno`),
  CONSTRAINT `FK_desire_stu_account` FOREIGN KEY (`sno`) REFERENCES `stu_account` (`sno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 正在导出表  zhang.desire 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `desire` DISABLE KEYS */;
INSERT INTO `desire` (`id`, `sno`, `passport`, `examNum`, `willingone`, `willingtwo`, `willingthree`) VALUES
	(1, 4131001, '131026199402222330', '23232322', '国企', '私企', '外企'),
	(3, 4131002, '131026199402222X', '23232322', '国企', '私企', '外企');
/*!40000 ALTER TABLE `desire` ENABLE KEYS */;


-- 导出  表 zhang.employmentinfo 结构
CREATE TABLE IF NOT EXISTS `employmentinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) DEFAULT NULL,
  `sno` int(11) NOT NULL COMMENT '学号参照学生账号表',
  `major` char(56) DEFAULT NULL COMMENT '专业',
  `gra_year` int(11) NOT NULL COMMENT '毕业年份',
  `status` int(11) DEFAULT NULL COMMENT '审核状态（0初始 1通过 -1驳回）',
  `passport` char(20) NOT NULL COMMENT '身份证号',
  `email` char(56) NOT NULL COMMENT '学生email',
  `gowhere` char(56) NOT NULL COMMENT '毕业去向',
  `salary` int(11) DEFAULT NULL COMMENT '薪水',
  `companyName` char(56) NOT NULL COMMENT '公司名称',
  `ccode` int(11) NOT NULL COMMENT '公司组织代码',
  `cproperties` char(16) NOT NULL COMMENT '公司性质',
  `ctrade` char(16) NOT NULL COMMENT '所属行业',
  `location` char(56) NOT NULL COMMENT '公司地址',
  `jobtitle` char(56) NOT NULL COMMENT '工作职位类别',
  `contacts` char(16) DEFAULT NULL COMMENT '公司联系人',
  `contactsPhone` char(12) DEFAULT NULL COMMENT '联系人电话',
  `cemail` char(36) DEFAULT NULL COMMENT '联系人email',
  PRIMARY KEY (`id`),
  KEY `FK_employmentinfo_stu_account` (`sno`),
  CONSTRAINT `FK_employmentinfo_stu_account` FOREIGN KEY (`sno`) REFERENCES `stu_account` (`sno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- 正在导出表  zhang.employmentinfo 的数据：~17 rows (大约)
/*!40000 ALTER TABLE `employmentinfo` DISABLE KEYS */;
INSERT INTO `employmentinfo` (`id`, `name`, `sno`, `major`, `gra_year`, `status`, `passport`, `email`, `gowhere`, `salary`, `companyName`, `ccode`, `cproperties`, `ctrade`, `location`, `jobtitle`, `contacts`, `contactsPhone`, `cemail`) VALUES
	(1, '张三', 4141987, '网络', 2017, 1, '610121199901017654', 'asdf@qq.com', '已经签约', 12, '公务员', 422, '私营企业', '互联网', '北京', 'IT', 'HR', '010-23423', 'Hr@BJ.com'),
	(2, '姚明', 4131002, '计科', 2017, 1, '131026199402226666', 'zxyoung94@gmial.com', '已经签约', 15, '百度', 32321, '私营企业', '互联网', '北京市', 'IT工程师', '李彦宏', '13800138', 'li@baidu.com'),
	(3, 'Tom', 4131004, '软工', 2016, 1, '131026199012042364', '359176585@qq.com', '已毕业', 18, '腾讯互联网有限公司', 1244221, '私营企业', '互联网', '广东省深圳市', 'IT工程师', '马化腾', '13800138', 'ma@tencent.com'),
	(4, '李四', 4131001, '网络', 2015, 1, '131026199203126666', '15664646679@163.com', '已经签约', 15, '西安邮电大学', 23213, '机关单位', '教育单位', '西安市', '教师', '校长是', '029-88164061', '110@xian.con'),
	(5, '罗斯', 4141004, '软工', 2017, 1, '12222222222222222', 'yao@china@qq.com', '已经签约', 15, 'CN移动', 876, '国有企业', '通信', '北京', '工程技术人员', '小莉', '123321', 'sdfg@163.com'),
	(6, '科比', 4141001, '计科', 2016, 1, '4342331', '11@qq.com', '已经签约', 18, '互联网', 4213, '私营企业', '互联网', '广州', '测试', 'HR', '3213423', 'UI@HR.com'),
	(7, '邓坤', 4151001, '计科', 2015, 1, '2343532455', 'yao@china@qq.com', '已经签约', 12, 'CN移动', 876, '国有企业', '通信', '北京', '工程技术人员', '小莉', '123321', 'sdfg@163.com'),
	(8, 'Jim', 4151002, '网络', 2016, 1, '610121199901017654', 'asdf@qq.com', '已经签约', 18, '公务员', 422, '私营企业', '互联网', '北京', 'IT', 'HR', '010-23423', 'Hr@BJ.com'),
	(9, '罗伊', 4151005, '软工', 2015, 1, '610110199102128421', 'zhang@gmail.com', '已经签约', 12, '去哪儿', 324, '国有企业', '网络', '北京', 'Big data', '哈哈', '2321', NULL),
	(10, '张强', 4151005, '软工', 2015, 0, '610110199102128421', 'zhang@gmail.com', '已经签约', 12, '去哪儿', 324, '国有企业', '网络', '北京', 'Big data', '哈哈', '2321', NULL),
	(11, '李丽', 4151005, '软工', 2015, 0, '610110199102128421', 'zhang@gmail.com', '已经签约', 12, '去哪儿', 324, '国有企业', '网络', '北京', 'Big data', '哈哈', '2321', NULL),
	(12, '张杰', 4151005, '软工', 2015, 0, '610110199102128421', 'zhang@gmail.com', '已经签约', 12, '去哪儿', 324, '国有企业', '网络', '北京', 'Big data', '哈哈', '2321', NULL),
	(13, '罗斯', 4141004, '软工', 2017, 1, '12222222222222222', 'yao@china@qq.com', '已经签约', 23, 'CN移动', 876, '国有企业', '通信', '北京', '工程技术人员', '小莉', '123321', 'sdfg@163.com'),
	(14, '罗斯', 4141004, '软工', 2017, 1, '12222222222222222', 'yao@china@qq.com', '已经签约', 25, 'CN移动', 876, '国有企业', '通信', '北京', '工程技术人员', '小莉', '123321', 'sdfg@163.com'),
	(15, '李四', 4131001, '网络', 2015, 1, '131026199203126666', '15664646679@163.com', '已经签约', 18, '西安邮电大学', 23213, '机关单位', '教育单位', '西安市', '教师', '校长是', '029-88164061', '110@xian.con'),
	(16, '李四', 4131001, '网络', 2015, 1, '131026199203126666', '15664646679@163.com', '已经签约', 11, '西安邮电大学', 23213, '机关单位', '教育单位', '西安市', '教师', '校长是', '029-88164061', '110@xian.con'),
	(17, '李四', 4131001, '网络', 2015, 1, '131026199203126666', '15664646679@163.com', '已经签约', 30, '西安邮电大学', 23213, '机关单位', '教育单位', '西安市', '教师', '校长是', '029-88164061', '110@xian.con');
/*!40000 ALTER TABLE `employmentinfo` ENABLE KEYS */;


-- 导出  表 zhang.notes 结构
CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(50) DEFAULT NULL,
  `content` text,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 正在导出表  zhang.notes 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` (`id`, `title`, `content`, `time`) VALUES
	(1, '中秋放假', '中秋放假三天', '2017-04-05 21:16:13'),
	(3, '端午节', '端午节倒休4天', '2017-04-05 23:25:39'),
	(4, '毕业设计进入最后阶段', '6月11日前完成毕业设计，将论文提交至毕设系统', '2017-05-16 14:27:18');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;


-- 导出  表 zhang.resume 结构
CREATE TABLE IF NOT EXISTS `resume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sno` int(11) DEFAULT NULL,
  `name` char(56) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `school` char(56) DEFAULT '西安邮电大学',
  `phone` int(16) NOT NULL,
  `email` char(56) NOT NULL,
  `major` char(30) DEFAULT 'CS',
  `experience` char(255) DEFAULT NULL,
  `selfintro` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sno` (`sno`),
  CONSTRAINT `FK_resume_stu_account` FOREIGN KEY (`sno`) REFERENCES `stu_account` (`sno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 正在导出表  zhang.resume 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `resume` DISABLE KEYS */;
INSERT INTO `resume` (`id`, `sno`, `name`, `age`, `school`, `phone`, `email`, `major`, `experience`, `selfintro`) VALUES
	(1, 4131001, '李四', 22, '西安邮电大学', 1566464667, 'lisi@qq.com', 'CS', '在多家互联网公司实习', '我是一个大学生，来自西安邮电大学'),
	(2, 4131002, 'tom', 22, '西安邮电大学', 1380013899, 'sadf!qq.com', 'CS', '西安读书', '我是陕西人'),
	(4, 4131003, '姚明', 33, '交大', 2323, 'yaoming@china.com', '篮球', '混过NBA', '打篮球的');
/*!40000 ALTER TABLE `resume` ENABLE KEYS */;


-- 导出  表 zhang.stu_account 结构
CREATE TABLE IF NOT EXISTS `stu_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sno` int(11) DEFAULT NULL COMMENT '8位学号',
  `password` varchar(50) DEFAULT 'e10adc3949ba59abbe56e057f20f883e' COMMENT '初始密码位123456',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- 正在导出表  zhang.stu_account 的数据：~11 rows (大约)
/*!40000 ALTER TABLE `stu_account` DISABLE KEYS */;
INSERT INTO `stu_account` (`id`, `sno`, `password`) VALUES
	(22, 4131001, 'e10adc3949ba59abbe56e057f20f883e'),
	(23, 4131002, 'e10adc3949ba59abbe56e057f20f883e'),
	(24, 4151005, 'e10adc3949ba59abbe56e057f20f883e'),
	(25, 4151001, 'e10adc3949ba59abbe56e057f20f883e'),
	(26, 4141001, 'e10adc3949ba59abbe56e057f20f883e'),
	(30, 4131004, 'e10adc3949ba59abbe56e057f20f883e'),
	(33, 4131003, 'e10adc3949ba59abbe56e057f20f883e'),
	(34, 4141987, 'e10adc3949ba59abbe56e057f20f883e'),
	(35, 4131984, 'e10adc3949ba59abbe56e057f20f883e'),
	(36, 4151002, 'e10adc3949ba59abbe56e057f20f883e'),
	(38, 4141004, 'e10adc3949ba59abbe56e057f20f883e');
/*!40000 ALTER TABLE `stu_account` ENABLE KEYS */;


-- 导出  表 zhang.stu_info 结构
CREATE TABLE IF NOT EXISTS `stu_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(50) NOT NULL COMMENT '姓名',
  `sex` set('男','女') DEFAULT NULL COMMENT '性别',
  `sno` int(11) NOT NULL COMMENT '学号',
  `password` char(50) DEFAULT '123456' COMMENT '密码',
  `major` char(50) NOT NULL COMMENT '专业',
  `origin` char(50) NOT NULL COMMENT '生源地',
  `entry_year` int(5) NOT NULL DEFAULT '2013' COMMENT '入学年份',
  `gra_year` int(5) NOT NULL COMMENT '毕业年份',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sno` (`sno`),
  CONSTRAINT `FK_stu_info_stu_account` FOREIGN KEY (`sno`) REFERENCES `stu_account` (`sno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- 正在导出表  zhang.stu_info 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `stu_info` DISABLE KEYS */;
INSERT INTO `stu_info` (`id`, `stu_name`, `sex`, `sno`, `password`, `major`, `origin`, `entry_year`, `gra_year`) VALUES
	(11, '李四', '男', 4131001, 'e10adc3949ba59abbe56e057f20f883e', 'CS', '河北', 2013, 2017),
	(12, 'tom', '男', 4131002, 'e10adc3949ba59abbe56e057f20f883e', '计算机科学与技术', '陕西西安', 2013, 2017),
	(18, '李四四', '男', 4131004, 'e10adc3949ba59abbe56e057f20f883e', '计算机科学与技术', '陕西', 2014, 2018),
	(19, '姚明', '男', 4131003, 'e10adc3949ba59abbe56e057f20f883e', '篮球', '上海', 2012, 2016);
/*!40000 ALTER TABLE `stu_info` ENABLE KEYS */;


-- 导出  表 zhang.user_t 结构
CREATE TABLE IF NOT EXISTS `user_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- 正在导出表  zhang.user_t 的数据：~29 rows (大约)
/*!40000 ALTER TABLE `user_t` DISABLE KEYS */;
INSERT INTO `user_t` (`id`, `user_name`, `password`, `age`) VALUES
	(17, '张鑫', 'zhangxin', 23),
	(19, '王五', 'wangwu', 34),
	(29, 'rose', 'tim', 41),
	(30, 'tom', 'tim', 41),
	(33, 'jim', 'jim', 12),
	(34, 'jack', 'jack', 12),
	(35, 'tommy', 'tommy', 12),
	(36, 'duncan', 'duncan', 12),
	(37, 'pop', 'pop', 12),
	(38, 'park', 'park', 12),
	(39, '张会闯', '12sdf', 23),
	(43, 'eeee', 'qwqeee', 44),
	(44, '李四', '122', 50),
	(45, '张三', '8u78u98', 222),
	(46, '王五', 'wangwu', 88),
	(47, '吕洞宾', 'lvdongbin', 800),
	(49, '老子', 'sadfsdf', 8000),
	(51, '孔子', '898989', 8000),
	(52, '孟子', 'sdlfjdsalijf', 688),
	(54, '班长', 'banzhang', 9),
	(56, 'jim', 'jim', 12),
	(57, 'jack', 'jack', 12),
	(58, 'tommy', 'tommy', 12),
	(59, 'duncan', 'duncan', 12),
	(60, 'pop', 'pop', 12),
	(61, 'park', 'park', 12),
	(62, 'sdafsd', 'sdfdsfdsfsdf', 6);
/*!40000 ALTER TABLE `user_t` ENABLE KEYS */;


-- 导出  表 zhang.zhaopin 结构
CREATE TABLE IF NOT EXISTS `zhaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `title` char(128) DEFAULT NULL,
  `jobtitle` char(50) DEFAULT NULL,
  `location` char(50) DEFAULT NULL,
  `content` char(255) DEFAULT NULL,
  `fbtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_zhaopin_company` (`code`),
  CONSTRAINT `FK_zhaopin_company` FOREIGN KEY (`code`) REFERENCES `company` (`code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- 正在导出表  zhang.zhaopin 的数据：~9 rows (大约)
/*!40000 ALTER TABLE `zhaopin` DISABLE KEYS */;
INSERT INTO `zhaopin` (`id`, `code`, `title`, `jobtitle`, `location`, `content`, `fbtime`) VALUES
	(1, 111111, '西安公司招聘', 'JAVA', '西安', '招聘java100人', '2017-01-18 00:00:00'),
	(4, 111111, '河北公司招聘', 'PHP', '石家庄', '招聘1000人', '2017-01-21 13:35:00'),
	(10, 12321, '网易游戏招聘', '产品运营', '北京', '招聘游戏开发50人', '2017-03-21 15:07:33'),
	(14, 12321, '网易招聘策划', '测试工程师', '杭州', '可以实习', '2017-03-21 00:00:00'),
	(15, 12321, '网易招聘产品经理', '产品经理', '北京', '要求5年工作经验', '2017-03-21 00:00:00'),
	(24, 12321, '中国太平洋财产保险股份有限公司陕西分公司', '销售', '深圳', '中国太平洋财产保险股份有限公司陕西分公司成立于1993年，先后承保了青藏铁路、亚太二号C卫星、工商银行、西合铁路、绕城高速、铜黄高速、咸阳机场等重大项目，为繁荣陕西省保险市场，促进地方经济发展起到了重要的作用。招聘岗位： 岗位要求： 1.全日制大学本科及以上学历； 2.专业符合岗位要求； 3.形象气质较好，沟通能力强，有一定的创新能力； 4.能熟练运用各类办公软件', '2017-03-27 00:00:00'),
	(25, 4233, '深圳广播电影电视集团', '客服', '深圳', '招聘信息： 股票分析员 任职要求： 1、本科及以上学历； 2、热爱金融行业，有强烈的意愿进入金融投资领域 3、具有良好的自我学习能力与团队合作精神； 4、具有较强的实战看盘能力，熟悉各类操盘工具； 5、耐心细致，善于观察分析；执行力强，有责任心； 6、具有很强的股票研究能力,善于进行题材挖掘能力。 工作内容： 1、负责对股票市场主流趋势，热点，主题投资策略分析； 2、建立个人模拟股票池并对相关收益进行分析； 3、分析、推荐股票，消息面汇总，建议操作方案并模拟实施； 4、按时保', '2017-03-28 16:32:54'),
	(26, 4233, '中信建投证券股份有限公司', '客户经理', '北京西城区', '招聘岗位：理财规划师 （若干） 岗位职责： 1、学历要求：全日制本科及以上学历； 2、吃苦耐劳，性格开朗大方，良好的沟通表达能力； 3、较强的学习和分析能力，对市场有敏锐洞察力； 4、讲求个人信誉，恪守职业道德。 Ø 需求专业： 金融类、理工科类专业', '2017-03-30 12:45:11'),
	(27, 4233, 'zhongguo公司招聘财务人员', '大堂经理', '咸阳', '1.要求：本科及以上学历；\r\n2.专业要求：专业不限，理工科优先；\r\n3.有实习经验者优先。', '2017-05-12 00:00:00');
/*!40000 ALTER TABLE `zhaopin` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

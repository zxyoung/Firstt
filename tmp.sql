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
-- 正在导出表  zhang.admin 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `username`, `password`) VALUES
	(1, 'admin', 'admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- 正在导出表  zhang.stu_account 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `stu_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `stu_account` ENABLE KEYS */;

-- 正在导出表  zhang.stu_info 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `stu_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `stu_info` ENABLE KEYS */;

-- 正在导出表  zhang.stu_resume 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `stu_resume` DISABLE KEYS */;
/*!40000 ALTER TABLE `stu_resume` ENABLE KEYS */;

-- 正在导出表  zhang.user_t 的数据：~29 rows (大约)
/*!40000 ALTER TABLE `user_t` DISABLE KEYS */;
INSERT INTO `user_t` (`id`, `user_name`, `password`, `age`) VALUES
	(17, '张鑫', 'zhangxin', 23),
	(19, '王五', 'wangwu', 34),
	(27, '张会闯', '12sdf', 23),
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
	(53, 'as', 'qwq', 89),
	(54, '班长', 'banzhang', 9),
	(55, 'pppp', 'ppppppp', 99),
	(56, 'jim', 'jim', 12),
	(57, 'jack', 'jack', 12),
	(58, 'tommy', 'tommy', 12),
	(59, 'duncan', 'duncan', 12),
	(60, 'pop', 'pop', 12),
	(61, 'park', 'park', 12);
/*!40000 ALTER TABLE `user_t` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

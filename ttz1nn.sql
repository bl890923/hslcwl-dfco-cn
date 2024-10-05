-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: qlyxnt1n.2412lan.dnstoo.com:3306
-- Generation Time: 2020-07-07 12:10:14
-- 服务器版本： 5.5.35.t15-log
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ttz1nn`
--

-- --------------------------------------------------------

--
-- 表的结构 `hswl_ecms_infoclass_news`
--

CREATE TABLE `hswl_ecms_infoclass_news` (
  `classid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_ftitle` text NOT NULL,
  `z_ftitle` varchar(255) NOT NULL DEFAULT '',
  `qz_ftitle` varchar(255) NOT NULL DEFAULT '',
  `save_ftitle` varchar(10) NOT NULL DEFAULT '',
  `zz_smalltext` text NOT NULL,
  `z_smalltext` varchar(255) NOT NULL DEFAULT '',
  `qz_smalltext` varchar(255) NOT NULL DEFAULT '',
  `save_smalltext` varchar(10) NOT NULL DEFAULT '',
  `zz_writer` text NOT NULL,
  `z_writer` varchar(255) NOT NULL DEFAULT '',
  `qz_writer` varchar(255) NOT NULL DEFAULT '',
  `save_writer` varchar(10) NOT NULL DEFAULT '',
  `zz_befrom` text NOT NULL,
  `z_befrom` varchar(255) NOT NULL DEFAULT '',
  `qz_befrom` varchar(255) NOT NULL DEFAULT '',
  `save_befrom` varchar(10) NOT NULL DEFAULT '',
  `zz_newstext` text NOT NULL,
  `z_newstext` varchar(255) NOT NULL DEFAULT '',
  `qz_newstext` varchar(255) NOT NULL DEFAULT '',
  `save_newstext` varchar(10) NOT NULL DEFAULT '',
  `zz_diggtop` text NOT NULL,
  `z_diggtop` varchar(255) NOT NULL DEFAULT '',
  `qz_diggtop` varchar(255) NOT NULL DEFAULT '',
  `save_diggtop` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_ecms_infotmp_news`
--

CREATE TABLE `hswl_ecms_infotmp_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `classid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `oldurl` varchar(200) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `truetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `keyboard` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `ftitle` varchar(120) NOT NULL DEFAULT '',
  `smalltext` varchar(255) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  `diggtop` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_ecms_news`
--

CREATE TABLE `hswl_ecms_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `ttid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `onclick` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `plnum` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `isgood` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastdotime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `fstb` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `restb` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_ecms_news`
--

INSERT INTO `hswl_ecms_news` (`id`, `classid`, `ttid`, `onclick`, `plnum`, `totaldown`, `newspath`, `filename`, `userid`, `username`, `firsttitle`, `isgood`, `ispic`, `istop`, `isqf`, `ismember`, `isurl`, `truetime`, `lastdotime`, `havehtml`, `groupid`, `userfen`, `titlefont`, `titleurl`, `stb`, `fstb`, `restb`, `keyboard`, `title`, `newstime`, `titlepic`, `eckuid`, `ftitle`, `smalltext`, `diggtop`) VALUES
(1, 17, 0, 0, 0, 0, '', 'index', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1592363452, 1592363452, 1, 0, 0, '', '/guanyu/jianjie/index.html', 1, 1, 1, '', '公司简介', 1592363359, '', 0, '', '公司简介', 0),
(2, 18, 0, 0, 0, 0, '', 'index', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1592363521, 1592375875, 1, 0, 0, '', '/guanyu/qiyeyoushi/index.html', 1, 1, 1, '', '企业优势', 1592363489, '', 0, '', '企业优势', 0),
(3, 19, 0, 0, 0, 0, '', 'index', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1592363641, 1592363641, 1, 0, 0, '', '/guanyu/zuzhijiagou/index.html', 1, 1, 1, '', '组织架构', 1592363580, '', 0, '', '组织架构', 0),
(4, 21, 0, 0, 0, 0, '', 'index', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1592364010, 1592364010, 1, 0, 0, '', '/guanyu/lianxi/index.html', 1, 1, 1, '', '联系我们', 1592363973, '', 0, '', '联系我们', 0),
(5, 5, 0, 0, 0, 0, '', 'index', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592374663, 1592375210, 1, 0, 0, '', '/fuwu/lenglianyunshu/index.html', 1, 1, 1, '', '冷链运输', 1592374643, '/images/fuwu1.jpg', 0, '', '随着人们生活水平的不断提高，对冷冻类食品的需求越来越多。但是冷冻食品不同于其他产品，它需要具有专业的冷链运输体系，才能确保冷冻冷藏类食品在规定的温度下保持其质量、品质', 0),
(6, 6, 0, 0, 0, 0, '', 'index', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592375170, 1592375227, 1, 0, 0, '', '/fuwu/peisongfuwu/index.html', 1, 1, 1, '', '配送服务', 1592374643, '/images/fuwu2.jpg', 0, '', '保证货物品质安全，重中之重——全程GPS监控、温度异常随时报警。时效是每一个客户的需求——公司车型齐全，专线运输直达让您更放心更省心。优秀的驾驶员团队——严格招聘、规', 0),
(7, 7, 0, 0, 0, 0, '', 'index', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592375487, 1592375487, 1, 0, 0, '', '/fuwu/cangchufuwu/index.html', 1, 1, 1, '', '仓储服务', 1592374643, '/images/fuwu3.jpg', 0, '', '仓库名称：招商局物流（我公司与招商仓库是长期合作伙伴）仓库地址：新都区物流大道399号（位于绕城外侧，进出城交通便利）', 0),
(8, 16, 0, 0, 0, 0, '', 'index', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1592375794, 1592375845, 1, 0, 0, '', '/shili/shouhoufuwu/index.html', 1, 1, 1, '', '售后服务', 1592363489, '', 0, '', '成都市华森物流有限公司 创立于2012年，位于成都市龙潭工业园区，是一家专业从事冷藏、普通货物业务的物流服务商。专注于各类食品、乳品、水产、果蔬、酒业等产品的干线运输及', 0),
(9, 20, 0, 0, 0, 0, '', '9', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592377499, 1592377499, 1, 0, 0, '', '/guanyu/gongsilueying/9.html', 1, 1, 1, '', '公司照片', 1592375903, '/images/pic1.jpg', 0, '', '公司照片', 0),
(10, 20, 0, 0, 0, 0, '', '10', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592377538, 1592377538, 1, 0, 0, '', '/guanyu/gongsilueying/10.html', 1, 1, 1, '', '公司车辆', 1592377501, '/images/pic2.jpg', 0, '', '公司车辆', 0),
(11, 20, 0, 0, 0, 0, '', '11', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592377642, 1592377715, 1, 0, 0, '', '/guanyu/gongsilueying/11.html', 1, 1, 1, '', '团队照片', 1592377540, '/images/pic3.jpg', 0, '', '团队照片', 0),
(12, 20, 0, 0, 0, 0, '', '12', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592377664, 1592377739, 1, 0, 0, '', '/guanyu/gongsilueying/12.html', 1, 1, 1, '', '办公室照片', 1592377644, '/images/pic4.jpg', 0, '', '办公室照片', 0),
(13, 13, 0, 0, 0, 0, '', 'index', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1592379898, 1592380089, 1, 0, 0, '', '/shili/lengcangshebei/index.html', 1, 1, 1, '', '冷藏设备', 1592379813, '', 0, '', '冷藏设备', 0),
(14, 22, 0, 0, 0, 0, '', '14', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592380394, 1592380571, 1, 0, 0, '', '/shili/anli/anli1/14.html', 1, 1, 1, '', '冷链运输案例', 1592374643, '/images/fuwu2.jpg', 0, '', '保证货物品质安全，重中之重——全程GPS监控、温度异常随时报警。时效是每一个客户的需求——公司车型齐全，专线运输直达让您更放心更省心。优秀的驾驶员团队——严格招聘、规', 0),
(15, 22, 0, 0, 0, 0, '', '15', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592380401, 1592380597, 1, 0, 0, '', '/shili/anli/anli1/15.html', 1, 1, 1, '', '冷链运输案例', 1592374643, '/images/fuwu3.jpg', 0, '', '仓库名称：招商局物流（我公司与招商仓库是长期合作伙伴）仓库地址：新都区物流大道399号（位于绕城外侧，进出城交通便利）', 0),
(16, 23, 0, 0, 0, 0, '', '16', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592380424, 1592380628, 1, 0, 0, '', '/shili/anli/anli2/16.html', 1, 1, 1, '', '配送服务案例', 1592374643, '/images/fuwu2.jpg', 0, '', '保证货物品质安全，重中之重——全程GPS监控、温度异常随时报警。时效是每一个客户的需求——公司车型齐全，专线运输直达让您更放心更省心。优秀的驾驶员团队——严格招聘、规', 0),
(17, 23, 0, 0, 0, 0, '', '17', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592380431, 1592380638, 1, 0, 0, '', '/shili/anli/anli2/17.html', 1, 1, 1, '', '配送服务案例', 1592374643, '/images/fuwu3.jpg', 0, '', '仓库名称：招商局物流（我公司与招商仓库是长期合作伙伴）仓库地址：新都区物流大道399号（位于绕城外侧，进出城交通便利）', 0),
(18, 22, 0, 0, 0, 0, '', '18', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592380478, 1592380606, 1, 0, 0, '', '/shili/anli/anli1/18.html', 1, 1, 1, '', '冷链运输案例', 1592374643, '/images/fuwu1.jpg', 0, '', '随着人们生活水平的不断提高，对冷冻类食品的需求越来越多。但是冷冻食品不同于其他产品，它需要具有专业的冷链运输体系，才能确保冷冻冷藏类食品在规定的温度下保持其质量、品质', 0),
(19, 23, 0, 0, 0, 0, '', '19', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592380536, 1592380645, 1, 0, 0, '', '/shili/anli/anli2/19.html', 1, 1, 1, '', '配送服务案例', 1592374643, '/images/fuwu1.jpg', 0, '', '随着人们生活水平的不断提高，对冷冻类食品的需求越来越多。但是冷冻食品不同于其他产品，它需要具有专业的冷链运输体系，才能确保冷冻冷藏类食品在规定的温度下保持其质量、品质', 0),
(20, 24, 0, 0, 0, 0, '', '20', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592380664, 1592380683, 1, 0, 0, '', '/shili/anli/anli3/20.html', 1, 1, 1, '', '仓储服务案例', 1592374643, '/images/fuwu2.jpg', 0, '', '保证货物品质安全，重中之重——全程GPS监控、温度异常随时报警。时效是每一个客户的需求——公司车型齐全，专线运输直达让您更放心更省心。优秀的驾驶员团队——严格招聘、规', 0),
(21, 24, 0, 0, 0, 0, '', '21', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592380664, 1592380692, 1, 0, 0, '', '/shili/anli/anli3/21.html', 1, 1, 1, '', '仓储服务案例', 1592374643, '/images/fuwu3.jpg', 0, '', '仓库名称：招商局物流（我公司与招商仓库是长期合作伙伴）仓库地址：新都区物流大道399号（位于绕城外侧，进出城交通便利）', 0),
(22, 24, 0, 0, 0, 0, '', '22', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592380664, 1592380702, 1, 0, 0, '', '/shili/anli/anli3/22.html', 1, 1, 1, '', '仓储服务案例', 1592374643, '/images/fuwu1.jpg', 0, '', '随着人们生活水平的不断提高，对冷冻类食品的需求越来越多。但是冷冻食品不同于其他产品，它需要具有专业的冷链运输体系，才能确保冷冻冷藏类食品在规定的温度下保持其质量、品质', 0),
(23, 14, 0, 0, 0, 0, '', '23', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592381141, 1592381223, 1, 0, 0, '', '/shili/hezuo/23.html', 1, 1, 1, '', '海底捞火锅', 1592381026, '/images/p1.jpg', 0, '', '海底捞火锅', 0),
(24, 14, 0, 0, 0, 0, '', '24', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592381153, 1593400005, 1, 0, 0, '', '/shili/hezuo/24.html', 1, 1, 1, '', '盒马鲜生', 1592381026, '/images/p2.jpg', 0, '', '盒马鲜生', 0),
(25, 14, 0, 0, 0, 0, '', '25', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592381166, 1592381432, 1, 0, 0, '', '/shili/hezuo/25.html', 1, 1, 1, '', '费列罗集团', 1592381026, '/images/p3.jpg', 0, '', '费列罗集团', 0),
(26, 14, 0, 0, 0, 0, '', '26', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592381166, 1592381551, 1, 0, 0, '', '/shili/hezuo/26.html', 1, 1, 1, '', '沃尔玛公司', 1592381026, '/images/p4.jpg', 0, '', '沃尔玛公司', 0),
(27, 14, 0, 0, 0, 0, '', '27', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592381178, 1592381585, 1, 0, 0, '', '/shili/hezuo/27.html', 1, 1, 1, '', '蒙牛集团', 1592381026, '/images/p5.jpg', 0, '', '蒙牛集团', 0),
(28, 14, 0, 0, 0, 0, '', '28', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592381190, 1593400094, 1, 0, 0, '', '/shili/hezuo/28.html', 1, 1, 1, '', '京东集团', 1592381026, '/images/p6.jpg', 0, '', '京东集团', 0),
(29, 14, 0, 0, 0, 0, '', '29', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592381190, 1592381690, 1, 0, 0, '', '/shili/hezuo/29.html', 1, 1, 1, '', '肯德基', 1592381026, '/images/p7.jpg', 0, '', '肯德基', 0),
(30, 14, 0, 0, 0, 0, '', '30', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592381190, 1593400127, 1, 0, 0, '', '/shili/hezuo/30.html', 1, 1, 1, '', '顺丰速运', 1592381026, '/images/p8.jpg', 0, '', '顺丰速运', 0),
(31, 14, 0, 0, 0, 0, '', '31', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592381190, 1592381793, 1, 0, 0, '', '/shili/hezuo/31.html', 1, 1, 1, '', '冰雪皇后', 1592381026, '/images/p9.jpg', 0, '', '冰雪皇后', 0),
(32, 14, 0, 0, 0, 0, '', '32', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592381190, 1592381830, 1, 0, 0, '', '/shili/hezuo/32.html', 1, 1, 1, '', '麦当劳', 1592381026, '/images/p10.jpg', 0, '', '麦当劳', 0),
(33, 15, 0, 0, 0, 0, '', '33', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592382133, 1592382133, 1, 0, 0, '', '/shili/rongyuzizhi/33.html', 1, 1, 1, '', '公司荣誉资质证书照片', 1592382035, '/images/zs.jpg', 0, '', '公司荣誉资质证书照片', 0),
(34, 15, 0, 0, 0, 0, '', '34', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592382154, 1592382154, 1, 0, 0, '', '/shili/rongyuzizhi/34.html', 1, 1, 1, '', '公司荣誉资质证书照片', 1592382035, '/images/zs.jpg', 0, '', '公司荣誉资质证书照片', 0),
(35, 15, 0, 0, 0, 0, '', '35', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592382182, 1592382182, 1, 0, 0, '', '/shili/rongyuzizhi/35.html', 1, 1, 1, '', '公司荣誉资质证书照片', 1592382035, '/images/zs.jpg', 0, '', '公司荣誉资质证书照片', 0),
(36, 15, 0, 0, 0, 0, '', '36', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592382182, 1592382182, 1, 0, 0, '', '/shili/rongyuzizhi/36.html', 1, 1, 1, '', '公司荣誉资质证书照片', 1592382035, '/images/zs.jpg', 0, '', '公司荣誉资质证书照片', 0),
(37, 15, 0, 0, 0, 0, '', '37', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592382192, 1592382192, 1, 0, 0, '', '/shili/rongyuzizhi/37.html', 1, 1, 1, '', '公司荣誉资质证书照片', 1592382035, '/images/zs.jpg', 0, '', '公司荣誉资质证书照片', 0),
(38, 15, 0, 0, 0, 0, '', '38', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592382192, 1592382192, 1, 0, 0, '', '/shili/rongyuzizhi/38.html', 1, 1, 1, '', '公司荣誉资质证书照片', 1592382035, '/images/zs.jpg', 0, '', '公司荣誉资质证书照片', 0),
(39, 8, 0, 0, 0, 0, '', '39', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592383051, 1592383051, 1, 0, 0, '', '/xinwen/gongsixinwen/39.html', 1, 1, 1, '', '华森物流召开安全消防培训', 1592382588, '/images/news1.jpg', 0, '', '为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防和减少火灾危害。\r\n成都市华森物流有限公司行政部\r\n2019年12月30日', 0),
(40, 8, 0, 0, 0, 0, '', '40', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592383074, 1592383295, 1, 0, 0, '', '/xinwen/gongsixinwen/40.html', 1, 1, 1, '', '华森物流2019年年终聚餐', 1592382588, '/images/news2.jpg', 0, '', '为喜迎新年的到来，答谢公司全体员工2019年来的辛勤工作与不懈努力，公司于2019年12月30 日在举办了团年聚餐活动。\r\n成都市华森物流有限公司行政部\r\n2019年12月30日', 0),
(41, 8, 0, 0, 0, 0, '', '41', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592383083, 1592383083, 1, 0, 0, '', '/xinwen/gongsixinwen/41.html', 1, 1, 1, '', '华森物流召开安全消防培训', 1592382588, '/images/news1.jpg', 0, '', '为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防和减少火灾危害。\r\n成都市华森物流有限公司行政部\r\n2019年12月30日', 0),
(42, 9, 0, 0, 0, 0, '', '42', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592383318, 1592383318, 1, 0, 0, '', '/xinwen/hangyedongtai/42.html', 1, 1, 1, '', '华森物流召开安全消防培训', 1592382588, '/images/news1.jpg', 0, '', '为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防和减少火灾危害。\r\n成都市华森物流有限公司行政部\r\n2019年12月30日', 0),
(43, 9, 0, 0, 0, 0, '', '43', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592383318, 1592383318, 1, 0, 0, '', '/xinwen/hangyedongtai/43.html', 1, 1, 1, '', '华森物流2019年年终聚餐', 1592382588, '/images/news2.jpg', 0, '', '为喜迎新年的到来，答谢公司全体员工2019年来的辛勤工作与不懈努力，公司于2019年12月30 日在举办了团年聚餐活动。\r\n成都市华森物流有限公司行政部\r\n2019年12月30日', 0),
(44, 9, 0, 0, 0, 0, '', '44', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592383318, 1592383318, 1, 0, 0, '', '/xinwen/hangyedongtai/44.html', 1, 1, 1, '', '华森物流召开安全消防培训', 1592382588, '/images/news1.jpg', 0, '', '为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防和减少火灾危害。\r\n成都市华森物流有限公司行政部\r\n2019年12月30日', 0),
(45, 10, 0, 0, 0, 0, '', '45', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592383327, 1592383327, 1, 0, 0, '', '/xinwen/meitijujiao/45.html', 1, 1, 1, '', '华森物流召开安全消防培训', 1592382588, '/images/news1.jpg', 0, '', '为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防和减少火灾危害。\r\n成都市华森物流有限公司行政部\r\n2019年12月30日', 0),
(46, 10, 0, 0, 0, 0, '', '46', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592383327, 1592383327, 1, 0, 0, '', '/xinwen/meitijujiao/46.html', 1, 1, 1, '', '华森物流2019年年终聚餐', 1592382588, '/images/news2.jpg', 0, '', '为喜迎新年的到来，答谢公司全体员工2019年来的辛勤工作与不懈努力，公司于2019年12月30 日在举办了团年聚餐活动。\r\n成都市华森物流有限公司行政部\r\n2019年12月30日', 0),
(47, 10, 0, 0, 0, 0, '', '47', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592383327, 1592383327, 1, 0, 0, '', '/xinwen/meitijujiao/47.html', 1, 1, 1, '', '华森物流召开安全消防培训', 1592382588, '/images/news1.jpg', 0, '', '为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防和减少火灾危害。\r\n成都市华森物流有限公司行政部\r\n2019年12月30日', 0),
(48, 11, 0, 0, 0, 0, '', '48', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592383335, 1592383335, 1, 0, 0, '', '/xinwen/changjianwenti/48.html', 1, 1, 1, '', '华森物流召开安全消防培训', 1592382588, '/images/news1.jpg', 0, '', '为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防和减少火灾危害。\r\n成都市华森物流有限公司行政部\r\n2019年12月30日', 0),
(49, 11, 0, 0, 0, 0, '', '49', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592383335, 1592383335, 1, 0, 0, '', '/xinwen/changjianwenti/49.html', 1, 1, 1, '', '华森物流2019年年终聚餐', 1592382588, '/images/news2.jpg', 0, '', '为喜迎新年的到来，答谢公司全体员工2019年来的辛勤工作与不懈努力，公司于2019年12月30 日在举办了团年聚餐活动。\r\n成都市华森物流有限公司行政部\r\n2019年12月30日', 0),
(50, 11, 0, 0, 0, 0, '', '50', 1, 'admin', 0, 0, 1, 0, 0, 0, 0, 1592383335, 1592383335, 1, 0, 0, '', '/xinwen/changjianwenti/50.html', 1, 1, 1, '', '华森物流召开安全消防培训', 1592382588, '/images/news1.jpg', 0, '', '为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防和减少火灾危害。\r\n成都市华森物流有限公司行政部\r\n2019年12月30日', 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_ecms_news_check`
--

CREATE TABLE `hswl_ecms_news_check` (
  `id` int(10) UNSIGNED NOT NULL,
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `ttid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `onclick` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `plnum` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `isgood` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastdotime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `fstb` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `restb` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_ecms_news_check_data`
--

CREATE TABLE `hswl_ecms_news_check_data` (
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_ecms_news_data_1`
--

CREATE TABLE `hswl_ecms_news_data_1` (
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_ecms_news_data_1`
--

INSERT INTO `hswl_ecms_news_data_1` (`id`, `classid`, `keyid`, `dokey`, `newstempid`, `closepl`, `haveaddfen`, `infotags`, `writer`, `befrom`, `newstext`) VALUES
(1, 17, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img src=\\\"/images/aboutimg.jpg\\\" alt=\\\"公司照片\\\" /></p>\r\n                    <p style=\\\"line-height: 1.75em; margin-top: 20px; margin-bottom: 15px; text-indent: 2em;\\\">\r\n                        <span style=\\\"color: rgb(47, 74, 141);\\\"><strong>成都市华森物流有限公司</strong></span>\r\n                        创立于2012年，位于成都市龙潭工业园区，是一家专业从事冷藏、普通货物业务的物流服务商。专注于各类食品、乳品、水产、果蔬、酒业等产品的干线运输及区域配送、物流业务咨询与仓储服务的物流企业。</p>\r\n                    \r\n                    <p style=\\\"line-height: 1.75em; margin-bottom: 20px; text-indent: 2em;\\\">\r\n                        公司在软件上，拥有一支高素质、专业化、年轻化的物流管理团队和资深专家顾问群，有现代化的物流信息平台，汇聚了丰富的物流服务经验和先进的管理服务理念。\r\n                        &nbsp;</p>\r\n                    <p style=\\\"line-height: 1.75em; margin-bottom: 20px; text-indent: 2em;\\\">\r\n                        公司在硬件上，自有车型齐全，3-30吨的冷藏车、普通货运车多部，以及其他车型的联营车。配置有GPS卫星定位系统，全程监控车辆的运营状态，安全性强、可靠性高；其中冷藏车的制冷性能稳定，最低可达到-28℃   。能够满足各类客户的运输质量要求和客户用车需要。\r\n                    </p>\r\n                    <p style=\\\"text-indent: 2em; line-height: 1.75em; margin-bottom: 15px;\\\">\r\n                        华森物流为国内广大食品、乳品、水产、果蔬、酒业等企业，提供专业的仓储物流服务；同时，也为各类企业提供原材料供应运输，产、成品转移，物流支持等。\r\n                    </p>'),
(2, 18, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"line-height: 1.75em; margin-top: 20px; margin-bottom: 15px; text-indent: 2em;\\\"><span style=\\\"color: rgb(47, 74, 141);\\\"><strong>成都市华森物流有限公司</strong></span> 创立于2012年，位于成都市龙潭工业园区，是一家专业从事冷藏、普通货物业务的物流服务商。专注于各类食品、乳品、水产、果蔬、酒业等产品的干线运输及区域配送、物流业务咨询与仓储服务的物流企业。</p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 20px; text-indent: 2em;\\\">公司在软件上，拥有一支高素质、专业化、年轻化的物流管理团队和资深专家顾问群，有现代化的物流信息平台，汇聚了丰富的物流服务经验和先进的管理服务理念。 &nbsp;</p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 20px; text-indent: 2em;\\\">公司在硬件上，自有车型齐全，3-30吨的冷藏车、普通货运车多部，以及其他车型的联营车。配置有GPS卫星定位系统，全程监控车辆的运营状态，安全性强、可靠性高；其中冷藏车的制冷性能稳定，最低可达到-28℃ 。能够满足各类客户的运输质量要求和客户用车需要。</p>\r\n<p style=\\\"text-indent: 2em; line-height: 1.75em; margin-bottom: 15px;\\\">华森物流为国内广大食品、乳品、水产、果蔬、酒业等企业，提供专业的仓储物流服务；同时，也为各类企业提供原材料供应运输，产、成品转移，物流支持等。</p>'),
(9, 20, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img src=\\\"/images/pic1.jpg\\\" alt=\\\"\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">公司照片</p>'),
(10, 20, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img src=\\\"/images/pic2.jpg\\\" alt=\\\"\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">公司车辆</p>'),
(3, 19, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/d/file/6ff96170947f926429afd18352680b4b.jpg\\\" /></p>'),
(4, 21, '', 1, 0, 0, 0, '', '', '', '关于华森 成都市华森物流有限公司创立于2012年，位于成都市龙潭工业园区，是一家专业从事冷藏、普通货物业 务的物流服务商。专注于各类食品、乳品、水产、果蔬、酒业等产品的干线运输及区域配送、物流业务咨询 与仓储服务的物流企业。'),
(5, 5, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img src=\\\"/images/1-1F32G5423S07.jpg\\\" alt=\\\"\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">随着人们生活水平的不断提高，对冷冻类食品的需求越来越多。但是冷冻食品不同于其他产品，它需要具有专业的冷链运输体系，才能确保冷冻冷藏类食品在规定的温度下保持其质量、品质，从而减少物品的损耗。</p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">华森物流是经过国家相关部门批准注册的企业，公司专注于速冻食品、冷藏食品、恒温产品的干线运输或者区域配送等冷链服务。我司开通有多条冷链运输路线，这些路线以成都为中心，辐射至北、上、广、山东、西藏、西安等全国的干线运输；具备成熟的云、贵、川、渝地区专线运输及区域内市区及二三级地区配送。涉及生产厂家、商贸流通、终端连锁等各类客户群体。</p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">公司所有车辆均装有GPS卫星定位系统、全程监控车辆，以保证车辆安全、制冷正常以及食品的安全。同时公司车辆制冷温度最低可达到零下25℃，可以满足各类用户客户的运输质量要求。</p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">如果你有产品需要进行运输或配送，那么请联系我们，我们将尽全力满足您的运输要求。由于目前冷链运输价格需要根据产品数量，冷冻条件等情况来决定，因此建议客户直接电话联系我们，以便获取实时的冷链运输报价。</p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img src=\\\"/images/1-1F32GG033A7.jpg\\\" alt=\\\"\\\" /></p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img src=\\\"/images/1-1F32G54513L3.jpg\\\" alt=\\\"\\\" /></p>'),
(6, 6, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">保证货物品质安全，重中之重——全程GPS监控、温度异常随时报警。</p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img src=\\\"/images/1-1F32G6164LX.jpg\\\" alt=\\\"\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">时效是每一个客户的需求——公司车型齐全，专线运输直达让您更放心更省心。</p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img src=\\\"/images/1-1F32G61FNO.jpg\\\" alt=\\\"\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">优秀的驾驶员团队——严格招聘、规范管理、定期体检、定期培训。</p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img src=\\\"/images/1-1F32G61H23H.jpg\\\" alt=\\\"\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">干净整洁的运输环境，微笑谦和的服务态度，让顾客放心！</p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img src=\\\"/images/1-1F32G61IE50.jpg\\\" alt=\\\"\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">路途再崎岖艰难，依然有我们华森的身影，服务至上！</p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img src=\\\"/images/1-1F32G61K15K.jpg\\\" alt=\\\"\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">零担业务流程图</p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img src=\\\"/images/1-1F32G61U2944.jpg\\\" alt=\\\"\\\" /></p>'),
(7, 7, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img src=\\\"/images/1-1F30G1262H59.jpg\\\" alt=\\\"\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">仓库名称：招商局物流（我公司与招商仓库是长期合作伙伴）</p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">仓库地址：新都区物流大道399号（位于绕城外侧，进出城交通便利）</p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img src=\\\"/images/1-1F32G61955410.jpg\\\" alt=\\\"\\\" /></p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img src=\\\"/images/1-1F30G12K3915.jpg\\\" alt=\\\"\\\" /></p>'),
(8, 16, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"line-height: 1.75em; margin-top: 20px; margin-bottom: 15px; text-indent: 2em;\\\"><span style=\\\"color: rgb(47, 74, 141);\\\"><strong>成都市华森物流有限公司</strong></span> 创立于2012年，位于成都市龙潭工业园区，是一家专业从事冷藏、普通货物业务的物流服务商。专注于各类食品、乳品、水产、果蔬、酒业等产品的干线运输及区域配送、物流业务咨询与仓储服务的物流企业。</p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 20px; text-indent: 2em;\\\">公司在软件上，拥有一支高素质、专业化、年轻化的物流管理团队和资深专家顾问群，有现代化的物流信息平台，汇聚了丰富的物流服务经验和先进的管理服务理念。 &nbsp;</p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 20px; text-indent: 2em;\\\">公司在硬件上，自有车型齐全，3-30吨的冷藏车、普通货运车多部，以及其他车型的联营车。配置有GPS卫星定位系统，全程监控车辆的运营状态，安全性强、可靠性高；其中冷藏车的制冷性能稳定，最低可达到-28℃ 。能够满足各类客户的运输质量要求和客户用车需要。</p>\r\n<p style=\\\"text-indent: 2em; line-height: 1.75em; margin-bottom: 15px;\\\">华森物流为国内广大食品、乳品、水产、果蔬、酒业等企业，提供专业的仓储物流服务；同时，也为各类企业提供原材料供应运输，产、成品转移，物流支持等。</p>'),
(11, 20, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/pic3.jpg\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">团队照片</p>'),
(12, 20, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/pic4.jpg\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">办公室照片</p>'),
(13, 13, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/hhh.jpg\\\" /></p>'),
(14, 22, '', 1, 0, 0, 0, '', '', '', '<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">保证货物品质安全，重中之重——全程GPS监控、温度异常随时报警。</p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-1F32G6164LX.jpg\" alt=\"\" /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">时效是每一个客户的需求——公司车型齐全，专线运输直达让您更放心更省心。</p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-1F32G61FNO.jpg\" alt=\"\" /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">优秀的驾驶员团队——严格招聘、规范管理、定期体检、定期培训。</p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-1F32G61H23H.jpg\" alt=\"\" /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">干净整洁的运输环境，微笑谦和的服务态度，让顾客放心！</p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-1F32G61IE50.jpg\" alt=\"\" /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">路途再崎岖艰难，依然有我们华森的身影，服务至上！</p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-1F32G61K15K.jpg\" alt=\"\" /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">零担业务流程图</p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-1F32G61U2944.jpg\" alt=\"\" /></p>'),
(15, 22, '', 1, 0, 0, 0, '', '', '', '<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-1F30G1262H59.jpg\" alt=\"\" /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">仓库名称：招商局物流（我公司与招商仓库是长期合作伙伴）</p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">仓库地址：新都区物流大道399号（位于绕城外侧，进出城交通便利）</p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-1F32G61955410.jpg\" alt=\"\" /></p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-1F30G12K3915.jpg\" alt=\"\" /></p>'),
(16, 23, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">保证货物品质安全，重中之重&mdash;&mdash;全程GPS监控、温度异常随时报警。</p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/1-1F32G6164LX.jpg\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">时效是每一个客户的需求&mdash;&mdash;公司车型齐全，专线运输直达让您更放心更省心。</p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/1-1F32G61FNO.jpg\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">优秀的驾驶员团队&mdash;&mdash;严格招聘、规范管理、定期体检、定期培训。</p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/1-1F32G61H23H.jpg\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">干净整洁的运输环境，微笑谦和的服务态度，让顾客放心！</p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/1-1F32G61IE50.jpg\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">路途再崎岖艰难，依然有我们华森的身影，服务至上！</p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/1-1F32G61K15K.jpg\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">零担业务流程图</p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/1-1F32G61U2944.jpg\\\" /></p>'),
(17, 23, '', 1, 0, 0, 0, '', '', '', '<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-1F30G1262H59.jpg\" alt=\"\" /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">仓库名称：招商局物流（我公司与招商仓库是长期合作伙伴）</p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">仓库地址：新都区物流大道399号（位于绕城外侧，进出城交通便利）</p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-1F32G61955410.jpg\" alt=\"\" /></p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-1F30G12K3915.jpg\" alt=\"\" /></p>'),
(18, 22, '', 1, 0, 0, 0, '', '', '', '<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-1F32G5423S07.jpg\" alt=\"\" /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">随着人们生活水平的不断提高，对冷冻类食品的需求越来越多。但是冷冻食品不同于其他产品，它需要具有专业的冷链运输体系，才能确保冷冻冷藏类食品在规定的温度下保持其质量、品质，从而减少物品的损耗。</p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">华森物流是经过国家相关部门批准注册的企业，公司专注于速冻食品、冷藏食品、恒温产品的干线运输或者区域配送等冷链服务。我司开通有多条冷链运输路线，这些路线以成都为中心，辐射至北、上、广、山东、西藏、西安等全国的干线运输；具备成熟的云、贵、川、渝地区专线运输及区域内市区及二三级地区配送。涉及生产厂家、商贸流通、终端连锁等各类客户群体。</p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">公司所有车辆均装有GPS卫星定位系统、全程监控车辆，以保证车辆安全、制冷正常以及食品的安全。同时公司车辆制冷温度最低可达到零下25℃，可以满足各类用户客户的运输质量要求。</p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">如果你有产品需要进行运输或配送，那么请联系我们，我们将尽全力满足您的运输要求。由于目前冷链运输价格需要根据产品数量，冷冻条件等情况来决定，因此建议客户直接电话联系我们，以便获取实时的冷链运输报价。</p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-1F32GG033A7.jpg\" alt=\"\" /></p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-1F32G54513L3.jpg\" alt=\"\" /></p>'),
(19, 23, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/1-1F32G5423S07.jpg\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">随着人们生活水平的不断提高，对冷冻类食品的需求越来越多。但是冷冻食品不同于其他产品，它需要具有专业的冷链运输体系，才能确保冷冻冷藏类食品在规定的温度下保持其质量、品质，从而减少物品的损耗。</p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">华森物流是经过国家相关部门批准注册的企业，公司专注于速冻食品、冷藏食品、恒温产品的干线运输或者区域配送等冷链服务。我司开通有多条冷链运输路线，这些路线以成都为中心，辐射至北、上、广、山东、西藏、西安等全国的干线运输；具备成熟的云、贵、川、渝地区专线运输及区域内市区及二三级地区配送。涉及生产厂家、商贸流通、终端连锁等各类客户群体。</p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">公司所有车辆均装有GPS卫星定位系统、全程监控车辆，以保证车辆安全、制冷正常以及食品的安全。同时公司车辆制冷温度最低可达到零下25℃，可以满足各类用户客户的运输质量要求。</p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">如果你有产品需要进行运输或配送，那么请联系我们，我们将尽全力满足您的运输要求。由于目前冷链运输价格需要根据产品数量，冷冻条件等情况来决定，因此建议客户直接电话联系我们，以便获取实时的冷链运输报价。</p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/1-1F32GG033A7.jpg\\\" /></p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/1-1F32G54513L3.jpg\\\" /></p>'),
(20, 24, '', 1, 0, 0, 0, '', '', '', '<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">保证货物品质安全，重中之重&mdash;&mdash;全程GPS监控、温度异常随时报警。</p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img alt=\"\" src=\"/images/1-1F32G6164LX.jpg\" /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">时效是每一个客户的需求&mdash;&mdash;公司车型齐全，专线运输直达让您更放心更省心。</p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img alt=\"\" src=\"/images/1-1F32G61FNO.jpg\" /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">优秀的驾驶员团队&mdash;&mdash;严格招聘、规范管理、定期体检、定期培训。</p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img alt=\"\" src=\"/images/1-1F32G61H23H.jpg\" /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">干净整洁的运输环境，微笑谦和的服务态度，让顾客放心！</p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img alt=\"\" src=\"/images/1-1F32G61IE50.jpg\" /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">路途再崎岖艰难，依然有我们华森的身影，服务至上！</p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img alt=\"\" src=\"/images/1-1F32G61K15K.jpg\" /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">零担业务流程图</p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img alt=\"\" src=\"/images/1-1F32G61U2944.jpg\" /></p>'),
(21, 24, '', 1, 0, 0, 0, '', '', '', '<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-1F30G1262H59.jpg\" alt=\"\" /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">仓库名称：招商局物流（我公司与招商仓库是长期合作伙伴）</p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">仓库地址：新都区物流大道399号（位于绕城外侧，进出城交通便利）</p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-1F32G61955410.jpg\" alt=\"\" /></p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-1F30G12K3915.jpg\" alt=\"\" /></p>'),
(22, 24, '', 1, 0, 0, 0, '', '', '', '<p style=\"margin-bottom: 15px; text-align: center;\"><img alt=\"\" src=\"/images/1-1F32G5423S07.jpg\" /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">随着人们生活水平的不断提高，对冷冻类食品的需求越来越多。但是冷冻食品不同于其他产品，它需要具有专业的冷链运输体系，才能确保冷冻冷藏类食品在规定的温度下保持其质量、品质，从而减少物品的损耗。</p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">华森物流是经过国家相关部门批准注册的企业，公司专注于速冻食品、冷藏食品、恒温产品的干线运输或者区域配送等冷链服务。我司开通有多条冷链运输路线，这些路线以成都为中心，辐射至北、上、广、山东、西藏、西安等全国的干线运输；具备成熟的云、贵、川、渝地区专线运输及区域内市区及二三级地区配送。涉及生产厂家、商贸流通、终端连锁等各类客户群体。</p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">公司所有车辆均装有GPS卫星定位系统、全程监控车辆，以保证车辆安全、制冷正常以及食品的安全。同时公司车辆制冷温度最低可达到零下25℃，可以满足各类用户客户的运输质量要求。</p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">如果你有产品需要进行运输或配送，那么请联系我们，我们将尽全力满足您的运输要求。由于目前冷链运输价格需要根据产品数量，冷冻条件等情况来决定，因此建议客户直接电话联系我们，以便获取实时的冷链运输报价。</p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img alt=\"\" src=\"/images/1-1F32GG033A7.jpg\" /></p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img alt=\"\" src=\"/images/1-1F32G54513L3.jpg\" /></p>'),
(23, 14, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/p1.jpg\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">海底捞火锅</p>'),
(24, 14, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/p2.jpg\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">盒马鲜生</p>'),
(25, 14, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/p3.jpg\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">费列罗集团</p>'),
(26, 14, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/p4.jpg\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">沃尔玛公司</p>'),
(27, 14, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/p5.jpg\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">蒙牛集团</p>'),
(28, 14, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/p6.jpg\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">京东集团</p>'),
(29, 14, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/p7.jpg\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">肯德基</p>'),
(30, 14, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/p8.jpg\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">顺丰速运</p>'),
(31, 14, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/p9.jpg\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">冰雪皇后</p>'),
(32, 14, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img alt=\\\"\\\" src=\\\"/images/p10.jpg\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">麦当劳</p>'),
(33, 15, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img src=\\\"/images/zs.jpg\\\" alt=\\\"\\\" /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\\\">公司荣誉资质证书照片</p>'),
(34, 15, '', 1, 0, 0, 0, '', '', '', '<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/zs.jpg\" alt=\"\" /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">公司荣誉资质证书照片</p>'),
(35, 15, '', 1, 0, 0, 0, '', '', '', '<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/zs.jpg\" alt=\"\" /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">公司荣誉资质证书照片</p>'),
(36, 15, '', 1, 0, 0, 0, '', '', '', '<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/zs.jpg\" alt=\"\" /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">公司荣誉资质证书照片</p>'),
(37, 15, '', 1, 0, 0, 0, '', '', '', '<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/zs.jpg\" alt=\"\" /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">公司荣誉资质证书照片</p>'),
(38, 15, '', 1, 0, 0, 0, '', '', '', '<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/zs.jpg\" alt=\"\" /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: center;\">公司荣誉资质证书照片</p>'),
(39, 8, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"line-height: 1.75em; margin-bottom: 15px;\\\">为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防和减少火灾危害。</p>\r\n<p><br /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: right;\\\">成都市华森物流有限公司行政部<br />2019年12月30日</p>'),
(40, 8, '', 1, 0, 0, 0, '', '', '', '<p style=\\\"line-height: 1.75em; margin-bottom: 15px;\\\">为喜迎新年的到来，答谢公司全体员工2019年来的辛勤工作与不懈努力，公司于2019年12月30 日在举办了团年聚餐活动。</p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img src=\\\"/images/1-200106005926337.jpg\\\" alt=\\\"\\\" /></p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img src=\\\"/images/1-20010600593O16.jpg\\\" alt=\\\"\\\" /></p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img src=\\\"/images/1-20010600594M25.jpg\\\" alt=\\\"\\\" /></p>\r\n<p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img src=\\\"/images/1-2001060059562W.jpg\\\" alt=\\\"\\\" /></p>\r\n<p><br /></p>\r\n<p style=\\\"line-height: 1.75em; margin-bottom: 15px; text-align: right;\\\">成都市华森物流有限公司行政部<br />2019年12月30日</p>'),
(41, 8, '', 1, 0, 0, 0, '', '', '', '<p style=\"line-height: 1.75em; margin-bottom: 15px;\">为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防和减少火灾危害。</p>\r\n<p><br /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: right;\">成都市华森物流有限公司行政部<br />2019年12月30日</p>'),
(42, 9, '', 1, 0, 0, 0, '', '', '', '<p style=\"line-height: 1.75em; margin-bottom: 15px;\">为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防和减少火灾危害。</p>\r\n<p><br /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: right;\">成都市华森物流有限公司行政部<br />2019年12月30日</p>'),
(43, 9, '', 1, 0, 0, 0, '', '', '', '<p style=\"line-height: 1.75em; margin-bottom: 15px;\">为喜迎新年的到来，答谢公司全体员工2019年来的辛勤工作与不懈努力，公司于2019年12月30 日在举办了团年聚餐活动。</p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-200106005926337.jpg\" alt=\"\" /></p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-20010600593O16.jpg\" alt=\"\" /></p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-20010600594M25.jpg\" alt=\"\" /></p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-2001060059562W.jpg\" alt=\"\" /></p>\r\n<p><br /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: right;\">成都市华森物流有限公司行政部<br />2019年12月30日</p>'),
(44, 9, '', 1, 0, 0, 0, '', '', '', '<p style=\"line-height: 1.75em; margin-bottom: 15px;\">为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防和减少火灾危害。</p>\r\n<p><br /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: right;\">成都市华森物流有限公司行政部<br />2019年12月30日</p>'),
(45, 10, '', 1, 0, 0, 0, '', '', '', '<p style=\"line-height: 1.75em; margin-bottom: 15px;\">为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防和减少火灾危害。</p>\r\n<p><br /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: right;\">成都市华森物流有限公司行政部<br />2019年12月30日</p>'),
(46, 10, '', 1, 0, 0, 0, '', '', '', '<p style=\"line-height: 1.75em; margin-bottom: 15px;\">为喜迎新年的到来，答谢公司全体员工2019年来的辛勤工作与不懈努力，公司于2019年12月30 日在举办了团年聚餐活动。</p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-200106005926337.jpg\" alt=\"\" /></p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-20010600593O16.jpg\" alt=\"\" /></p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-20010600594M25.jpg\" alt=\"\" /></p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-2001060059562W.jpg\" alt=\"\" /></p>\r\n<p><br /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: right;\">成都市华森物流有限公司行政部<br />2019年12月30日</p>'),
(47, 10, '', 1, 0, 0, 0, '', '', '', '<p style=\"line-height: 1.75em; margin-bottom: 15px;\">为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防和减少火灾危害。</p>\r\n<p><br /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: right;\">成都市华森物流有限公司行政部<br />2019年12月30日</p>'),
(48, 11, '', 1, 0, 0, 0, '', '', '', '<p style=\"line-height: 1.75em; margin-bottom: 15px;\">为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防和减少火灾危害。</p>\r\n<p><br /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: right;\">成都市华森物流有限公司行政部<br />2019年12月30日</p>'),
(49, 11, '', 1, 0, 0, 0, '', '', '', '<p style=\"line-height: 1.75em; margin-bottom: 15px;\">为喜迎新年的到来，答谢公司全体员工2019年来的辛勤工作与不懈努力，公司于2019年12月30 日在举办了团年聚餐活动。</p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-200106005926337.jpg\" alt=\"\" /></p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-20010600593O16.jpg\" alt=\"\" /></p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-20010600594M25.jpg\" alt=\"\" /></p>\r\n<p style=\"margin-bottom: 15px; text-align: center;\"><img src=\"/images/1-2001060059562W.jpg\" alt=\"\" /></p>\r\n<p><br /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: right;\">成都市华森物流有限公司行政部<br />2019年12月30日</p>'),
(50, 11, '', 1, 0, 0, 0, '', '', '', '<p style=\"line-height: 1.75em; margin-bottom: 15px;\">为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防和减少火灾危害。</p>\r\n<p><br /></p>\r\n<p style=\"line-height: 1.75em; margin-bottom: 15px; text-align: right;\">成都市华森物流有限公司行政部<br />2019年12月30日</p>');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_ecms_news_doc`
--

CREATE TABLE `hswl_ecms_news_doc` (
  `id` int(10) UNSIGNED NOT NULL,
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `ttid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `onclick` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `plnum` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `isgood` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastdotime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `fstb` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `restb` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_ecms_news_doc_data`
--

CREATE TABLE `hswl_ecms_news_doc_data` (
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_ecms_news_doc_index`
--

CREATE TABLE `hswl_ecms_news_doc_index` (
  `id` int(10) UNSIGNED NOT NULL,
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `truetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastdotime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_ecms_news_index`
--

CREATE TABLE `hswl_ecms_news_index` (
  `id` int(10) UNSIGNED NOT NULL,
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `truetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastdotime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_ecms_news_index`
--

INSERT INTO `hswl_ecms_news_index` (`id`, `classid`, `checked`, `newstime`, `truetime`, `lastdotime`, `havehtml`) VALUES
(1, 17, 1, 1592363359, 1592363452, 1592363452, 1),
(2, 18, 1, 1592363489, 1592363521, 1592375875, 1),
(3, 19, 1, 1592363580, 1592363641, 1592363641, 1),
(4, 21, 1, 1592363973, 1592364010, 1592364010, 1),
(5, 5, 1, 1592374643, 1592374663, 1592375210, 1),
(6, 6, 1, 1592374643, 1592375170, 1592375227, 1),
(7, 7, 1, 1592374643, 1592375487, 1592375487, 1),
(8, 16, 1, 1592363489, 1592375794, 1592375845, 1),
(9, 20, 1, 1592375903, 1592377499, 1592377499, 1),
(10, 20, 1, 1592377501, 1592377538, 1592377538, 1),
(11, 20, 1, 1592377540, 1592377642, 1592377715, 1),
(12, 20, 1, 1592377644, 1592377664, 1592377739, 1),
(13, 13, 1, 1592379813, 1592379898, 1592380089, 1),
(14, 22, 1, 1592374643, 1592380394, 1592380571, 1),
(15, 22, 1, 1592374643, 1592380401, 1592380597, 1),
(16, 23, 1, 1592374643, 1592380424, 1592380628, 1),
(17, 23, 1, 1592374643, 1592380431, 1592380638, 1),
(18, 22, 1, 1592374643, 1592380478, 1592380606, 1),
(19, 23, 1, 1592374643, 1592380536, 1592380645, 1),
(20, 24, 1, 1592374643, 1592380664, 1592380683, 1),
(21, 24, 1, 1592374643, 1592380664, 1592380692, 1),
(22, 24, 1, 1592374643, 1592380664, 1592380702, 1),
(23, 14, 1, 1592381026, 1592381141, 1592381223, 1),
(24, 14, 1, 1592381026, 1592381153, 1593400005, 1),
(25, 14, 1, 1592381026, 1592381166, 1592381432, 1),
(26, 14, 1, 1592381026, 1592381166, 1592381551, 1),
(27, 14, 1, 1592381026, 1592381178, 1592381585, 1),
(28, 14, 1, 1592381026, 1592381190, 1593400094, 1),
(29, 14, 1, 1592381026, 1592381190, 1592381690, 1),
(30, 14, 1, 1592381026, 1592381190, 1593400127, 1),
(31, 14, 1, 1592381026, 1592381190, 1592381793, 1),
(32, 14, 1, 1592381026, 1592381190, 1592381830, 1),
(33, 15, 1, 1592382035, 1592382133, 1592382133, 1),
(34, 15, 1, 1592382035, 1592382154, 1592382154, 1),
(35, 15, 1, 1592382035, 1592382182, 1592382182, 1),
(36, 15, 1, 1592382035, 1592382182, 1592382182, 1),
(37, 15, 1, 1592382035, 1592382192, 1592382192, 1),
(38, 15, 1, 1592382035, 1592382192, 1592382192, 1),
(39, 8, 1, 1592382588, 1592383051, 1592383051, 1),
(40, 8, 1, 1592382588, 1592383074, 1592383295, 1),
(41, 8, 1, 1592382588, 1592383083, 1592383083, 1),
(42, 9, 1, 1592382588, 1592383318, 1592383318, 1),
(43, 9, 1, 1592382588, 1592383318, 1592383318, 1),
(44, 9, 1, 1592382588, 1592383318, 1592383318, 1),
(45, 10, 1, 1592382588, 1592383327, 1592383327, 1),
(46, 10, 1, 1592382588, 1592383327, 1592383327, 1),
(47, 10, 1, 1592382588, 1592383327, 1592383327, 1),
(48, 11, 1, 1592382588, 1592383335, 1592383335, 1),
(49, 11, 1, 1592382588, 1592383335, 1592383335, 1),
(50, 11, 1, 1592382588, 1592383335, 1592383335, 1);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsad`
--

CREATE TABLE `hswl_enewsad` (
  `adid` int(10) UNSIGNED NOT NULL,
  `picurl` varchar(255) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `pic_width` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pic_height` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `onclick` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `adtype` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '',
  `alt` varchar(120) NOT NULL DEFAULT '',
  `starttime` date NOT NULL DEFAULT '0000-00-00',
  `endtime` date NOT NULL DEFAULT '0000-00-00',
  `adsay` varchar(255) NOT NULL DEFAULT '',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titlecolor` varchar(10) NOT NULL DEFAULT '',
  `htmlcode` text NOT NULL,
  `t` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ylink` tinyint(1) NOT NULL DEFAULT '0',
  `reptext` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsadclass`
--

CREATE TABLE `hswl_enewsadclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` char(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsadclass`
--

INSERT INTO `hswl_enewsadclass` (`classid`, `classname`) VALUES
(1, '默认广告分类');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsadminstyle`
--

CREATE TABLE `hswl_enewsadminstyle` (
  `styleid` smallint(5) UNSIGNED NOT NULL,
  `stylename` char(30) NOT NULL DEFAULT '',
  `path` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsadminstyle`
--

INSERT INTO `hswl_enewsadminstyle` (`styleid`, `stylename`, `path`, `isdefault`) VALUES
(1, '管理员后台界面', 1, 1),
(2, '编辑后台界面', 2, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsag`
--

CREATE TABLE `hswl_enewsag` (
  `agid` int(10) UNSIGNED NOT NULL,
  `agname` varchar(60) NOT NULL DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `auids` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsag`
--

INSERT INTO `hswl_enewsag` (`agid`, `agname`, `isadmin`, `auids`) VALUES
(1, '管理员', 9, ''),
(2, '版主', 5, '');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsautodo`
--

CREATE TABLE `hswl_enewsautodo` (
  `doid` bigint(20) UNSIGNED NOT NULL,
  `dotype` char(50) NOT NULL DEFAULT '',
  `classid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dotime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `ckstr` char(32) NOT NULL DEFAULT '',
  `fname` char(255) NOT NULL DEFAULT '',
  `ecmspno` char(32) NOT NULL DEFAULT '',
  `ckpass` char(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsbefrom`
--

CREATE TABLE `hswl_enewsbefrom` (
  `befromid` smallint(5) UNSIGNED NOT NULL,
  `sitename` char(60) NOT NULL DEFAULT '',
  `siteurl` char(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsbq`
--

CREATE TABLE `hswl_enewsbq` (
  `bqid` smallint(5) UNSIGNED NOT NULL,
  `bqname` varchar(60) NOT NULL DEFAULT '',
  `bqsay` text NOT NULL,
  `funname` varchar(60) NOT NULL DEFAULT '',
  `bq` varchar(60) NOT NULL DEFAULT '',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  `bqgs` text NOT NULL,
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `myorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsbq`
--

INSERT INTO `hswl_enewsbq` (`bqid`, `bqname`, `bqsay`, `funname`, `bq`, `issys`, `bqgs`, `isclose`, `classid`, `myorder`) VALUES
(1, '文字调用标签', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看栏目ID点<a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>，查看标题分类ID点<a onclick=\\\"window.open(\\\'../info/InfoType.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>,当前ID=\\\'selfinfo\\\'<br />\r\n            多个栏目ID与标题分类ID可用,号格开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示条数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示时间</div>\r\n            </td>\r\n            <td height=\\\"25\\\">是否在标题后显示时间，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">操作类型</div>\r\n            </td>\r\n            <td height=\\\"25\\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">时间格式化</div>\r\n            </td>\r\n            <td height=\\\"25\\\">形式：Y-m-d H:i:s．默认为：\\\'(m-d)\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\\"25\\\">附加调用条件，如：&quot;title=\\\'帝国\\\'&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示排序</div>\r\n            </td>\r\n            <td height=\\\"25\\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td colspan=\\\"2\\\">\r\n            <div align=\\\"center\\\">（注：在栏目ID中写大栏目，系统会自己搜索子栏目的信息）</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetClassNews', 'phomenews', 1, '[phomenews]栏目ID,显示条数,标题截取数,是否显示时间,操作类型,是否显示栏目名,\\\'时间格式化\\\',附加SQL条件,显示排序[/phomenews]', 0, 1, 9),
(22, '留言板调用', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\\\"40%\\\">\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td width=\\\"60%\\\">参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示信息数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示记录数</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"left\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\\"25\\\">模板标签变量说明：<br />\r\n            留言ID：[!--lyid--]，留言内容：[!--lytext--]<br />\r\n            回复内容：[!--retext--]，留言时间：[!--lytime--]<br />\r\n            留言者：[!--name--]，留言者邮箱：[!--email--]<br />\r\n            序号：[!--no--]</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">留言分类ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"left\\\">点击<strong><a onclick=\\\"window.open(\\\'../tool/GbookClass.php?[!--ehash--]\\\');\\\">这里</a></strong>查看分类ID，0为不限制</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ShowLyInfo', 'gbookinfo', 1, '[gbookinfo]显示信息数,标签模板ID,留言分类ID[/gbookinfo]', 0, 3, 5),
(23, '专题调用标签', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <p>模板标签变量说明：(list.var)<br />\r\n            [!--classurl--]：专题链接，[!--classname--]：专题名称<br />\r\n            [!--classid--]：专题id，[!--classimg--]：专题图片<br />\r\n            [!--intro--]：专题简介,[!--no--]：序号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">专题类别ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"left\\\">点击<strong><a onclick=\\\"window.open(\\\'../special/ListZtClass.php?[!--ehash--]\\\');\\\">这里</a></strong>查看分类ID，0为不限制，多个分类ID用逗号隔开，如\\\'1,2\\\'</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示专题数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不限制</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">所属栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">点击<strong><a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\">这里</a></strong>查看栏目ID，0为不限制，多个栏目ID用逗号隔开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ShowZtData', 'eshowzt', 1, '[eshowzt]标签模板ID,专题类别ID,显示专题数,所属栏目ID[/eshowzt]', 0, 2, 6),
(2, '图文信息调用(标题图片的信息)', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看栏目ID点<a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>，查看标题分类ID点<a onclick=\\\"window.open(\\\'../info/InfoType.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>,当前ID=\\\'selfinfo\\\'<br />\r\n            多个栏目ID与标题分类ID可用,号格开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">每行显示条数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">每行显示几个图片</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示总信息数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示信息总数</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">图片宽度，图片高度</div>\r\n            </td>\r\n            <td height=\\\"25\\\">图文信息图片大小</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示标题</div>\r\n            </td>\r\n            <td height=\\\"25\\\">是否在图片下显示标题，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td bgcolor=\\\"#ffffff\\\" height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td bgcolor=\\\"#ffffff\\\" height=\\\"25\\\">\r\n            <div align=\\\"center\\\">操作类型说明</div>\r\n            </td>\r\n            <td height=\\\"25\\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\\"25\\\">附加调用条件，如：&quot;title=\\\'帝国\\\'&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示排序</div>\r\n            </td>\r\n            <td height=\\\"25\\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetClassNewsPic', 'phomenewspic', 1, '[phomenewspic]栏目ID,每行显示条数,显示总信息数,图片宽度,图片高度,是否显示标题,标题截取数,操作类型,附加SQL条件,显示排序[/phomenewspic]', 0, 1, 9),
(5, '广告标签', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">广告ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看广告ID点<a onclick=\\\"window.open(\\\'../tool/ListAd.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetAd', 'phomead', 1, '[phomead]广告ID[/phomead]', 0, 3, 5),
(6, '投票标签', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">投票ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看投票ID点<a onclick=\\\"window.open(\\\'../tool/ListVote.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetVote', 'phomevote', 1, '[phomevote]投票ID[/phomevote]', 0, 3, 5),
(11, '带模板的信息调用标签[万能标签]', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看栏目ID点<a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>，查看标题分类ID点<a onclick=\\\"window.open(\\\'../info/InfoType.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>,当前ID=\\\'selfinfo\\\'<br />\r\n            多个栏目ID与标题分类ID可用,号格开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示条数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">操作类型</div>\r\n            </td>\r\n            <td height=\\\"25\\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">只显示有标题图片</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不限制，1为只显示有标题图片的信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\\"25\\\">附加调用条件，如：&quot;title=\\\'帝国\\\'&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示排序</div>\r\n            </td>\r\n            <td height=\\\"25\\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetEcmsInfo', 'ecmsinfo', 1, '[ecmsinfo]栏目ID,显示条数,标题截取数,是否显示栏目名,操作类型,模板ID,只显示有标题图片,附加SQL条件,显示排序[/ecmsinfo]', 0, 1, 10),
(12, '友情链接标签', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\\\"40%\\\">\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td width=\\\"60%\\\">参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">每行显示记录数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">每行显示记录数</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示总记录数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"left\\\">总记录数</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">操作类型</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"left\\\">0为所有记录，1为图片链接，2为文字链接</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">分类ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"left\\\">点击<strong><a onclick=\\\"window.open(\\\'../tool/LinkClass.php?[!--ehash--]\\\');\\\">这里</a></strong>查看分类ID，0为不限制</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示原链接</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"left\\\">0为统计点击链接，1为显示原链接</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetSitelink', 'phomelink', 1, '[phomelink]每行显示数,显示总数,操作类型,分类id,是否显示原链接[/phomelink]', 0, 3, 5),
(15, '引用文件标签', '<p>[includefile]\\\'文件地址\\\'[/includefile]<br />\r\n文件地址需要为相对地址,并且从后台目录算起：&quot;../../header.html&quot;（这个地址的header.html是放在ecms根目录）</p>', 'sys_IncludeFile', 'includefile', 1, '[includefile]\\\'文件地址\\\'[/includefile]', 1, 4, 4),
(16, '读取远程页面', '<p>[readhttp]\\\'页面地址\\\'[/readhttp]</p>', 'sys_ReadFile', 'readhttp', 1, '[readhttp]\\\'页面地址\\\'[/readhttp]', 1, 4, 4),
(17, '网站信息统计', '<p>操作类型说明：\r\n<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\">\r\n    <tbody>\r\n        <tr bgcolor=\\\"#dbeaf5\\\">\r\n            <td width=\\\"25%\\\">\r\n            <div align=\\\"center\\\">操作类型</div>\r\n            </td>\r\n            <td width=\\\"75%\\\">内容</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">0</div>\r\n            </td>\r\n            <td>统计栏目数据</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">1</div>\r\n            </td>\r\n            <td>统计标题分类</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">2</div>\r\n            </td>\r\n            <td>统计数据表</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<br />\r\n时间范围：0为不限；1为今日；2为本月；3为本年。<br />\r\n统计类型：0为统计信息数；1为统计评论数；2为统计点击数；3为统计下载数。<br />\r\n如果操作类型是&ldquo;统计数据表&rdquo;，栏目ID=\\\'数据表名\\\'</p>', 'sys_TotalData', 'totaldata', 1, '[totaldata]栏目ID,操作类型,时间范围,统计类型[/totaldata]', 0, 1, 7),
(18, 'FLASH幻灯信息调用', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">\r\n            <div align=\\\"center\\\">栏目ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看栏目ID点<a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>，查看标题分类ID点<a onclick=\\\"window.open(\\\'../info/InfoType.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>,当前ID=\\\'selfinfo\\\'<br />\r\n            多个栏目ID与标题分类ID可用,号格开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示总数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示信息总数</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">图片宽度，图片高度</div>\r\n            </td>\r\n            <td height=\\\"25\\\">图文信息图片大小</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示标题</div>\r\n            </td>\r\n            <td height=\\\"25\\\">是否在图片下显示标题，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td bgcolor=\\\"#ffffff\\\" height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td bgcolor=\\\"#ffffff\\\" height=\\\"25\\\">\r\n            <div align=\\\"center\\\">操作类型说明</div>\r\n            </td>\r\n            <td height=\\\"25\\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\\"25\\\">附加调用条件，如：&quot;title=\\\'帝国\\\'&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示排序</div>\r\n            </td>\r\n            <td height=\\\"25\\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_FlashPixpic', 'phomeflashpic', 1, '[phomeflashpic]栏目ID,显示总数,图片宽度,图片高度,是否显示标题,标题截取数,操作类型,停顿秒数,附加SQL条件,显示排序[/phomeflashpic]', 0, 1, 9),
(19, '搜索关键字调用标签', '<p>栏目id为0，则显示所有栏目的关键字</p>\r\n<p>操作类型：0为搜索热门排行，1为最新搜索排行</p>', 'sys_ShowSearchKey', 'showsearch', 1, '[showsearch]每行显示条数,总条数,栏目id,操作类型[/showsearch]', 0, 1, 7),
(20, '循环子栏目数据标签', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看栏目ID点<a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>，单个为父栏目ID，多栏目可用&quot;,&quot;格开<br />\r\n            当前栏目ID用：\\\'selfinfo\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示条数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">操作类型</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0：栏目最新<br />\r\n            1：栏目热门<br />\r\n            2：栏目推荐<br />\r\n            3：栏目评论排行<br />\r\n            4：栏目头条<br />\r\n            5：栏目下载排行</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">只显示有标题图片</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不限制，1为只显示有标题图片的信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示栏目数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不限制</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示头条操作类型</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0：不显示栏目头条<br />\r\n            1：栏目内容简介<br />\r\n            2：栏目推荐信息<br />\r\n            3：栏目头条信息<br />\r\n            4：栏目最新信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">头条标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">头条简介截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">头条只显示有标题图片</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不限制，1为只显示有标题图片的信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\\"25\\\">附加调用条件，如：&quot;title=\\\'帝国\\\'&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示排序</div>\r\n            </td>\r\n            <td height=\\\"25\\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">头条的模板变量<br />\r\n            (标签模板的页面模板内容中使用)</div>\r\n            </td>\r\n            <td height=\\\"25\\\">[!--sonclass.id--]：信息ID<br />\r\n            [!--sonclass.title--]：信息标题<br />\r\n            [!--sonclass.oldtitle--]：信息标题(不截取字数)<br />\r\n            [!--sonclass.titlepic--]：标题图片<br />\r\n            [!--sonclass.titleurl--]：信息链接<br />\r\n            [!--sonclass.text--]：信息简介</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ForSonclassData', 'listsonclass', 1, '[listsonclass]栏目ID,显示条数,标题截取数,是否显示栏目名,操作类型,模板ID,只显示有标题图片,显示栏目数,显示头条操作类型,头条标题截取数,头条简介截取数,头条只显示有标题图片,附加SQL条件,显示排序[/listsonclass]', 0, 1, 9),
(21, '带模板的栏目导航标签', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">父栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看栏目ID点<a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a><br />\r\n            \\\'0\\\'为显示所有一级栏目<br />\r\n            \\\'selfinfo\\\'显示本栏目下级栏目</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <p>模板标签变量说明：[!--bclassname--]：父栏目名,[!--bclassurl--]：父栏目链接,[!--bclassid--]：父栏目id</p>\r\n            <p>list.var模板标签：<br />\r\n            [!--classurl--]：栏目链接,[!--classname--]：栏目名称,[!--classid--]：栏目id,[!--classimg--]：栏目图片,[!--intro--]：栏目简介,[!--num--]：信息数,[!--no--]：序号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示栏目信息数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示栏目数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不限制</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ShowClassByTemp', 'showclasstemp', 1, '[showclasstemp]父栏目ID,标签模板ID,是否显示栏目信息数,显示栏目数[/showclasstemp]', 0, 2, 6),
(24, '图库模型分页标签', '<p>\r\n<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <p><strong>模板标签变量说明：</strong><br />\r\n            图片集JS数组：[!--photor--]，缩略图导航：[!--smalldh--]<br />\r\n            分页导航：[!--select--]，标题分页导航：[!--titleselect--]，分页列表式导航：[!--listpage--]</p>\r\n            <p><strong>list.var模板标签：</strong><br />\r\n            图片名称：[!--picname--]，图片地址：[!--picurl--]</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">导航图片宽度<br />\r\n            导航图片高度</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为按原图大小</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>', 'sys_PhotoMorepage', 'eshowphoto', 1, '[eshowphoto]标签模板ID,导航图片宽度,导航图片高度[/eshowphoto]', 0, 1, 7),
(25, '复选项输出函数', '<p>如：[echocheckbox]\\\'title\\\',\\\'&lt;br&gt;\\\'[/echocheckbox]：表示按回车分隔输出title字段的项</p>', 'sys_EchoCheckboxFValue', 'echocheckbox', 1, '[echocheckbox]\\\'字段\\\',\\\'分隔符\\\'[/echocheckbox]', 0, 3, 5),
(26, '相关链接标签', '<p><strong>标签模板ID</strong>：查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a><br />\r\n<strong>操作类型</strong>：0为默认；1为按表；2为按栏目；3为按标题分类<br />\r\n<strong>操作对象</strong>：对应操作类型的表/栏目/标题分类。空则为默认。<br />\r\n<strong>是否显示栏目名</strong>：0为不显示；1为显示<br />\r\n<strong>只显示标题图片的信息</strong>：0为不限；1为只显示标题图片的信息</p>', 'sys_GetOtherLinkInfo', 'otherlink', 1, '[otherlink]标签模板ID,操作对象,调用条数,标题截取字数,是否显示栏目名,操作类型,只显示标题图片的信息[/otherlink]', 0, 1, 9),
(27, '评论调用标签', '<p><strong>标签模板ID</strong>：查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a><br />\r\n<strong>栏目ID</strong>：0为不限调用栏目，父栏目会应用于子栏目<br />\r\n<strong>信息ID</strong>：0为不限<br />\r\n<strong>显示推荐评论</strong>：0为不限；1为只显示推荐评论<br />\r\n<strong>操作类型</strong>：0为按发布时间；1为按支持数；2为按反对数<br />\r\n<strong>标签模板说明</strong>：[!--title--]:信息标题；[!--titleurl--]:信息链接；[!--titlepic--]:信息标题图片；[!--id--]:信息ID<br />\r\n[!--classid--]:栏目ID；[!--plid--]:评论ID；[!--username--]:发表者；[!--no--]:编号<br />\r\n[!--pltext--]:评论内容；[!--pltime--]:评论时间；[!--zcnum--]:支持数；[!--fdnum--]:反对数</p>', 'sys_ShowPlInfo', 'showplinfo', 1, '[showplinfo]调用条数,标签模板ID,栏目ID,信息ID,显示推荐评论,操作类型[/showplinfo]', 0, 3, 5),
(28, '循环栏目导航标签', '<p>\r\n<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">父栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看栏目ID点<a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a><br />\r\n            \\\'0\\\'为显示所有一级栏目<br />\r\n            \\\'selfinfo\\\'显示本栏目下级栏目<br />\r\n            多栏目固定调用可用&quot;,&quot;格开</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <p>模板标签变量说明：[!--bclassname--]：父栏目名,[!--bclassurl--]：父栏目链接,[!--bclassid--]：父栏目id，[!--bclassimg--]：父栏目图片,[!--bintro--]：父栏目简介,[!--bnum--]：父栏目信息数,[!--bno--]：父栏目序号</p>\r\n            <p>list.var模板标签：<br />\r\n            [!--classurl--]：栏目链接,[!--classname--]：栏目名称,[!--classid--]：栏目id,[!--classimg--]：栏目图片,[!--intro--]：栏目简介,[!--num--]：信息数,[!--no--]：序号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示栏目信息数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示栏目数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不限制</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>', 'sys_ForShowSonClass', 'listshowclass', 1, '[listshowclass]父栏目ID,标签模板ID,是否显示栏目信息数,显示栏目数[/listshowclass]', 0, 2, 6),
(29, '调用TAGS的信息标签', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">TAGS的ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看TAGS的ID点<a onclick=\\\"window.open(\\\'../tags/ListTags.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a><br />\r\n            多个ID可以用,号格开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示条数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">限制只调用某一个或多个栏目的信息<br />\r\n            多个ID可以用,号格开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">系统模型ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">限制只调用某一个或多个系统模型的信息<br />\r\n            多个ID可以用,号格开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_eShowTagsInfo', 'tagsinfo', 0, '[tagsinfo]TAGS的ID,显示条数,标题截取数,标签模板ID,栏目ID,系统模型ID[/tagsinfo]', 0, 0, 9),
(30, '调用碎片的信息标签', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">碎片变量名</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看碎片变量名点<a onclick=\\\"window.open(\\\'../sp/ListSp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示条数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p><br />\r\n&nbsp;</p>\r\n<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td colspan=\\\"2\\\">\r\n            <div align=\\\"center\\\">碎片标签模板变量说明</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\" width=\\\"34%\\\">\r\n            <div align=\\\"center\\\">静态碎片</div>\r\n            </td>\r\n            <td height=\\\"25\\\" width=\\\"66%\\\">模板标签变量说明：[!--the.spname--]：碎片名称,[!--the.spid--]：碎片ID,[!--the.sppic--]：碎片效果图,[!--the.spsay--]：碎片描述\r\n            <p>list.var模板标签：<br />\r\n            [!--title--]：标题,[!--oldtitle--]：标题ALT,[!--newstime--]：发布时间,[!--id--]：碎片信息ID,[!--titleurl--]：标题链接,[!--titlepic--]：标题缩图,[!--bigpic--]：标题大图,[!--titlepre--]：标题左边,[!--titlenext--]：标题右边,[!--smalltext--]：内容简介,[!--no.num--]：编号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">动态碎片</div>\r\n            </td>\r\n            <td height=\\\"25\\\">模板标签变量说明：[!--the.spname--]：碎片名称,[!--the.spid--]：碎片ID,[!--the.sppic--]：碎片效果图,[!--the.spsay--]：碎片描述\r\n            <p>list.var模板标签：<br />\r\n            支持变量同模型信息调用</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">代码碎片</div>\r\n            </td>\r\n            <td height=\\\"25\\\">无需标签模板，直接显示代码内容</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_eShowSpInfo', 'spinfo', 0, '[spinfo]碎片变量名,显示条数,标题截取数[/spinfo]', 0, 0, 9),
(31, '调用TAGS标签', '<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">分类ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\\\'\\\'空为不限制，查看TAGS分类ID点<a onclick=\\\"window.open(\\\'../tags/TagsClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a><br />\r\n            多个可以用,号格开，如\\\'1,2\\\'<br />\r\n            内容页显示当前TAGS可以用\\\'selfinfo\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示数量</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示前几条记录，0为显示所有（\\\'selfinfo\\\'本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">每行显示数量</div>\r\n            </td>\r\n            <td height=\\\"25\\\">一行显示多少个TAGS，0为不换行</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示排序</div>\r\n            </td>\r\n            <td height=\\\"25\\\">使用默认设置\\\'\\\'空就可以，默认是\\\'tagid desc\\\'（\\\'selfinfo\\\'本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">只显示推荐</div>\r\n            </td>\r\n            <td height=\\\"25\\\">只显示推荐的TAGS，0为不限制，1为限制（\\\'selfinfo\\\'本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">推荐TAGS属性</div>\r\n            </td>\r\n            <td height=\\\"25\\\">如果是推荐的TAGS，内容是否要加粗或加红（\\\'selfinfo\\\'本设置无效）<br />\r\n            设置\\\'s\\\'表示加粗、\\\'r\\\'表示加红、同时加粗加红用\\\'s,r\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示间隔符</div>\r\n            </td>\r\n            <td height=\\\"25\\\">TAGS之间显示间隔符，默认是\\\' &amp;nbsp; \\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示信息数量</div>\r\n            </td>\r\n            <td height=\\\"25\\\">是否在TAGS后显示信息数量，0为不显示，1为显示（\\\'selfinfo\\\'本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">链接附加参数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">可指定在TAGS链接后面增加参数，比如：\\\'&amp;tempid=模板ID\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">链接变量名</div>\r\n            </td>\r\n            <td height=\\\"25\\\">可指定在链接使用的变量名(需加引号)：tagname或tagid，默认为tagname，比如：\\\'tagname\\\'</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_eShowTags', 'showtags', 0, '[showtags]分类ID,显示数量,每行显示数量,显示排序,只显示推荐,推荐TAGS属性,显示间隔符,是否显示信息数,链接附加参数,链接变量名[/showtags]', 0, 0, 9);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsbqclass`
--

CREATE TABLE `hswl_enewsbqclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` char(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsbqclass`
--

INSERT INTO `hswl_enewsbqclass` (`classid`, `classname`) VALUES
(1, '信息调用'),
(2, '栏目调用'),
(3, '非信息调用'),
(4, '其它标签');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsbqtemp`
--

CREATE TABLE `hswl_enewsbqtemp` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `modid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `temptext` text NOT NULL,
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `listvar` text NOT NULL,
  `subnews` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `rownum` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsbqtemp`
--

INSERT INTO `hswl_enewsbqtemp` (`tempid`, `tempname`, `modid`, `temptext`, `showdate`, `listvar`, `subnews`, `rownum`, `classid`, `docode`) VALUES
(1, '子栏目导航标签模板', 1, '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d', '<li><a href=\\\"[!--classurl--]\\\">[!--classname--]</a></li>', 0, 1, 0, 0),
(7, '循环子栏目标签', 1, '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d', '<dd><a href=\\\"[!--classurl--]\\\">[!--classname--]</a></dd>', 0, 1, 0, 0),
(12, '栏目tabs导航', 1, '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<li id=\"tabnav_btn_[!--no--]\" onmouseover=\"tabit(this)\"><a href=\"[!--classurl--]\">[!--classname--]</a></li>', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsbqtempclass`
--

CREATE TABLE `hswl_enewsbqtempclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` char(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsbqtemp_2`
--

CREATE TABLE `hswl_enewsbqtemp_2` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `modid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `temptext` text NOT NULL,
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `listvar` text NOT NULL,
  `subnews` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `rownum` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsbqtemp_2`
--

INSERT INTO `hswl_enewsbqtemp_2` (`tempid`, `tempname`, `modid`, `temptext`, `showdate`, `listvar`, `subnews`, `rownum`, `classid`, `docode`) VALUES
(1, '子栏目导航标签模板', 1, '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d', '<li><a href=\\\"/mobile[!--classurl--]\\\">[!--classname--]</a></li>', 0, 1, 0, 0),
(7, '循环子栏目标签', 1, '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d', '<dd><a href=\\\"[!--classurl--]\\\">[!--classname--]</a></dd>', 0, 1, 0, 0),
(12, '栏目tabs导航', 1, '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<li id=\\\"tabnav_btn_[!--no--]\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--classurl--]\\\">[!--classname--]</a></li>', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsbuybak`
--

CREATE TABLE `hswl_enewsbuybak` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` char(20) NOT NULL DEFAULT '',
  `card_no` char(120) NOT NULL DEFAULT '',
  `buytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cardfen` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `money` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `userdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsbuygroup`
--

CREATE TABLE `hswl_enewsbuygroup` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `gname` varchar(255) NOT NULL DEFAULT '',
  `gmoney` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gfen` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ggroupid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `gzgroupid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `buygroupid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `gsay` text NOT NULL,
  `myorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewscard`
--

CREATE TABLE `hswl_enewscard` (
  `cardid` int(10) UNSIGNED NOT NULL,
  `card_no` char(30) NOT NULL DEFAULT '',
  `password` char(20) NOT NULL DEFAULT '',
  `money` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cardfen` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` date NOT NULL DEFAULT '0000-00-00',
  `cardtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `carddate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cdgroupid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `cdzgroupid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsclass`
--

CREATE TABLE `hswl_enewsclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `bclassid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `classname` varchar(50) NOT NULL DEFAULT '',
  `sonclass` text NOT NULL,
  `is_zt` tinyint(1) NOT NULL DEFAULT '0',
  `lencord` smallint(6) NOT NULL DEFAULT '0',
  `link_num` tinyint(4) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `listtempid` smallint(6) NOT NULL DEFAULT '0',
  `featherclass` text NOT NULL,
  `islast` tinyint(1) NOT NULL DEFAULT '0',
  `classpath` text NOT NULL,
  `classtype` varchar(10) NOT NULL DEFAULT '',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` tinyint(1) NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `openpl` tinyint(1) NOT NULL DEFAULT '0',
  `openadd` tinyint(1) NOT NULL DEFAULT '0',
  `newline` int(11) NOT NULL DEFAULT '0',
  `hotline` int(11) NOT NULL DEFAULT '0',
  `goodline` int(11) NOT NULL DEFAULT '0',
  `classurl` varchar(200) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `filename_qz` varchar(20) NOT NULL DEFAULT '',
  `hotplline` tinyint(4) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `firstline` tinyint(4) NOT NULL DEFAULT '0',
  `bname` varchar(50) NOT NULL DEFAULT '',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `searchtempid` smallint(6) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `checkpl` tinyint(1) NOT NULL DEFAULT '0',
  `down_num` tinyint(4) NOT NULL DEFAULT '0',
  `online_num` tinyint(4) NOT NULL DEFAULT '0',
  `listorder` varchar(50) NOT NULL DEFAULT '',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `classimg` varchar(255) NOT NULL DEFAULT '',
  `jstempid` smallint(6) NOT NULL DEFAULT '0',
  `addinfofen` int(11) NOT NULL DEFAULT '0',
  `listdt` tinyint(1) NOT NULL DEFAULT '0',
  `showclass` tinyint(1) NOT NULL DEFAULT '0',
  `showdt` tinyint(1) NOT NULL DEFAULT '0',
  `checkqadd` tinyint(1) NOT NULL DEFAULT '0',
  `qaddlist` tinyint(1) NOT NULL DEFAULT '0',
  `qaddgroupid` text NOT NULL,
  `qaddshowkey` tinyint(1) NOT NULL DEFAULT '0',
  `adminqinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doctime` smallint(6) NOT NULL DEFAULT '0',
  `classpagekey` varchar(255) NOT NULL DEFAULT '',
  `dtlisttempid` smallint(6) NOT NULL DEFAULT '0',
  `classtempid` smallint(6) NOT NULL DEFAULT '0',
  `nreclass` tinyint(1) NOT NULL DEFAULT '0',
  `nreinfo` tinyint(1) NOT NULL DEFAULT '0',
  `nrejs` tinyint(1) NOT NULL DEFAULT '0',
  `nottobq` tinyint(1) NOT NULL DEFAULT '0',
  `ipath` varchar(255) NOT NULL DEFAULT '',
  `addreinfo` tinyint(1) NOT NULL DEFAULT '0',
  `haddlist` tinyint(4) NOT NULL DEFAULT '0',
  `sametitle` tinyint(1) NOT NULL DEFAULT '0',
  `definfovoteid` smallint(6) NOT NULL DEFAULT '0',
  `wburl` varchar(255) NOT NULL DEFAULT '',
  `qeditchecked` tinyint(1) NOT NULL DEFAULT '0',
  `wapstyleid` smallint(6) NOT NULL DEFAULT '0',
  `repreinfo` tinyint(1) NOT NULL DEFAULT '0',
  `pltempid` smallint(6) NOT NULL DEFAULT '0',
  `cgroupid` text NOT NULL,
  `yhid` smallint(6) NOT NULL DEFAULT '0',
  `wfid` smallint(6) NOT NULL DEFAULT '0',
  `cgtoinfo` tinyint(1) NOT NULL DEFAULT '0',
  `bdinfoid` varchar(25) NOT NULL DEFAULT '',
  `repagenum` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `keycid` smallint(6) NOT NULL DEFAULT '0',
  `allinfos` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `infos` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `oneinfo` tinyint(1) NOT NULL DEFAULT '0',
  `addsql` varchar(255) NOT NULL DEFAULT '',
  `wapislist` tinyint(1) NOT NULL DEFAULT '0',
  `fclast` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsclass`
--

INSERT INTO `hswl_enewsclass` (`classid`, `bclassid`, `classname`, `sonclass`, `is_zt`, `lencord`, `link_num`, `newstempid`, `onclick`, `listtempid`, `featherclass`, `islast`, `classpath`, `classtype`, `newspath`, `filename`, `filetype`, `openpl`, `openadd`, `newline`, `hotline`, `goodline`, `classurl`, `groupid`, `myorder`, `filename_qz`, `hotplline`, `modid`, `checked`, `firstline`, `bname`, `islist`, `searchtempid`, `tid`, `tbname`, `maxnum`, `checkpl`, `down_num`, `online_num`, `listorder`, `reorder`, `intro`, `classimg`, `jstempid`, `addinfofen`, `listdt`, `showclass`, `showdt`, `checkqadd`, `qaddlist`, `qaddgroupid`, `qaddshowkey`, `adminqinfo`, `doctime`, `classpagekey`, `dtlisttempid`, `classtempid`, `nreclass`, `nreinfo`, `nrejs`, `nottobq`, `ipath`, `addreinfo`, `haddlist`, `sametitle`, `definfovoteid`, `wburl`, `qeditchecked`, `wapstyleid`, `repreinfo`, `pltempid`, `cgroupid`, `yhid`, `wfid`, `cgtoinfo`, `bdinfoid`, `repagenum`, `keycid`, `allinfos`, `infos`, `addtime`, `oneinfo`, `addsql`, `wapislist`, `fclast`) VALUES
(1, 0, '服务范围', '|5|6|7|', 0, 9, 10, 0, 0, 2, '', 0, 'fuwu', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '服务范围', 1, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 2, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 1592302745, 0, '', 0, 1592302745),
(2, 0, '新闻中心', '|8|9|10|11|', 0, 10, 10, 0, 0, 1, '', 0, 'xinwen', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '新闻中心', 1, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 1592302797, 0, '', 0, 1592302797),
(3, 0, '公司实力', '|13|14|15|16|22|23|24|', 0, 25, 10, 0, 0, 0, '', 0, 'shili', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '公司实力', 2, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 0, 1, 1, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 1592302900, 0, '', 0, 1592302900),
(4, 0, '关于我们', '|17|18|19|20|21|', 0, 25, 10, 0, 0, 0, '', 0, 'guanyu', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '关于我们', 2, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 0, 1, 1, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 1592302977, 0, '', 0, 1592302977),
(5, 1, '冷链运输', '', 0, 9, 10, 2, 0, 2, '|1|', 1, 'fuwu/lenglianyunshu', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '冷链运输', 1, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 2, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 1, 1, 1592303014, 0, '', 0, 1592303014),
(6, 1, '配送服务', '', 0, 9, 10, 2, 0, 2, '|1|', 1, 'fuwu/peisongfuwu', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '配送服务', 1, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 2, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 1, 1, 1592303029, 0, '', 0, 1592303029),
(7, 1, '仓储服务', '', 0, 9, 10, 2, 0, 2, '|1|', 1, 'fuwu/cangchufuwu', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '仓储服务', 1, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 2, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 1, 1, 1592303042, 0, '', 0, 1592303042),
(8, 2, '公司新闻', '', 0, 10, 10, 1, 0, 1, '|2|', 1, 'xinwen/gongsixinwen', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '公司新闻', 1, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 3, 3, 1592303077, 0, '', 0, 1592303077),
(9, 2, '行业动态', '', 0, 10, 10, 1, 0, 1, '|2|', 1, 'xinwen/hangyedongtai', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '行业动态', 1, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 3, 3, 1592303118, 0, '', 0, 1592303118),
(10, 2, '媒体聚焦', '', 0, 10, 10, 1, 0, 1, '|2|', 1, 'xinwen/meitijujiao', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '媒体聚焦', 1, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 3, 3, 1592303131, 0, '', 0, 1592303131),
(11, 2, '常见问题', '', 0, 10, 10, 1, 0, 1, '|2|', 1, 'xinwen/changjianwenti', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '常见问题', 1, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 3, 3, 1592303147, 0, '', 0, 1592303147),
(12, 3, '成功案例', '|22|23|24|', 0, 12, 10, 0, 0, 2, '|3|', 0, 'shili/anli', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '成功案例', 1, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 2, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 1592303208, 0, '', 0, 1592303208),
(13, 3, '冷藏设备', '', 0, 12, 10, 2, 0, 2, '|3|', 1, 'shili/lengcangshebei', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '冷藏设备', 1, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 2, 1, 1, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 1, 1, 1592303271, 0, '', 0, 1592379803),
(14, 3, '合作伙伴', '', 0, 12, 10, 1, 0, 3, '|3|', 1, 'shili/hezuo', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '合作伙伴', 1, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 3, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 10, 10, 1592303298, 0, '', 0, 1592303298),
(15, 3, '荣誉资质', '', 0, 12, 10, 1, 0, 2, '|3|', 1, 'shili/rongyuzizhi', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '荣誉资质', 1, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 2, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 6, 6, 1592303320, 0, '', 0, 1592303320),
(16, 3, '售后服务', '', 0, 12, 10, 2, 0, 2, '|3|', 1, 'shili/shouhoufuwu', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '售后服务', 1, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 2, 1, 1, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 1, 1, 1592303347, 0, '', 0, 1592303347),
(17, 4, '公司简介', '', 0, 25, 10, 3, 0, 2, '|4|', 1, 'guanyu/jianjie', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '公司简介', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 2, 1, 1, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 1, 1, 1592303398, 0, '', 0, 1592303398),
(18, 4, '企业优势', '', 0, 25, 10, 2, 0, 2, '|4|', 1, 'guanyu/qiyeyoushi', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '企业优势', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 2, 1, 1, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 1, 1, 1592303431, 0, '', 0, 1592377823),
(19, 4, '组织架构', '', 0, 25, 10, 2, 0, 2, '|4|', 1, 'guanyu/zuzhijiagou', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '组织架构', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 2, 1, 1, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 1, 1, 1592303481, 0, '', 0, 1592377835),
(20, 4, '公司掠影', '', 0, 25, 10, 1, 0, 2, '|4|', 1, 'guanyu/gongsilueying', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '公司掠影', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 2, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 4, 4, 1592303506, 0, '', 0, 1592303506),
(21, 4, '联系我们', '', 0, 25, 10, 4, 0, 2, '|4|', 1, 'guanyu/lianxi', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '联系我们', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 2, 1, 1, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 1, 1, 1592303548, 0, '', 0, 1592303548),
(22, 12, '冷链运输', '', 0, 12, 10, 1, 0, 2, '|3|12|', 1, 'shili/anli/anli1', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '冷链运输', 1, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 2, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 3, 3, 1592303622, 0, '', 0, 1592303622),
(23, 12, '配送服务', '', 0, 12, 10, 1, 0, 2, '|3|12|', 1, 'shili/anli/anli2', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '配送服务', 1, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 2, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 3, 3, 1592303641, 0, '', 0, 1592303641),
(24, 12, '仓储服务', '', 0, 12, 10, 1, 0, 2, '|3|12|', 1, 'shili/anli/anli3', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '仓储服务', 1, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 2, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 3, 3, 1592303658, 0, '', 0, 1592303658);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsclassadd`
--

CREATE TABLE `hswl_enewsclassadd` (
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `classtext` mediumtext NOT NULL,
  `ttids` text NOT NULL,
  `eclasspagetext` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsclassadd`
--

INSERT INTO `hswl_enewsclassadd` (`classid`, `classtext`, `ttids`, `eclasspagetext`) VALUES
(1, '', '', ''),
(2, '', '', ''),
(3, '<!DOCTYPE html>\r\n<html lang=\\\"en\\\">\r\n<head>\r\n    <meta charset=\\\"UTF-8\\\">\r\n    <title>公司实力</title>\r\n</head>\r\n<body>\r\n    <script language=\\\"javascript\\\" type=\\\"text/javascript\\\"> \r\n    window.location.href=\\\"/shili/hezuo/\\\";\r\n    </script>\r\n</body>\r\n</html>', '', ''),
(4, '<!DOCTYPE html>\r\n<html lang=\\\"en\\\">\r\n<head>\r\n    <meta charset=\\\"UTF-8\\\">\r\n    <title>关于我们</title>\r\n</head>\r\n<body>\r\n    <script language=\\\"javascript\\\" type=\\\"text/javascript\\\"> \r\n    window.location.href=\\\"/guanyu/jianjie/\\\";\r\n    </script>\r\n</body>\r\n</html>', '', ''),
(5, '', '', ''),
(6, '', '', ''),
(7, '', '', ''),
(8, '', '', ''),
(9, '', '', ''),
(10, '', '', ''),
(11, '', '', ''),
(12, '', '', ''),
(13, '', '', ''),
(14, '', '', ''),
(15, '', '', ''),
(16, '', '', ''),
(17, '', '', ''),
(18, '', '', ''),
(19, '', '', ''),
(20, '', '', ''),
(21, '', '', ''),
(22, '', '', ''),
(23, '', '', ''),
(24, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsclassf`
--

CREATE TABLE `hswl_enewsclassf` (
  `fid` smallint(5) UNSIGNED NOT NULL,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  `fformsize` varchar(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsclassnavcache`
--

CREATE TABLE `hswl_enewsclassnavcache` (
  `navtype` char(16) NOT NULL DEFAULT '',
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsclassnavcache`
--

INSERT INTO `hswl_enewsclassnavcache` (`navtype`, `userid`, `modid`) VALUES
('listclass', 0, 0),
('listenews', 0, 0),
('jsclass', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsclasstemp`
--

CREATE TABLE `hswl_enewsclasstemp` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsclasstemp`
--

INSERT INTO `hswl_enewsclasstemp` (`tempid`, `tempname`, `temptext`, `classid`) VALUES
(1, '通用一级栏目模板', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - 成都舜王科技有限公司</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n<body class=\\\"channle\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"news_list\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n[listsonclass]\\\'selfinfo\\\',5,38,0,0,7,0,0[/listsonclass]</td>\r\n<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[phomenewspic]\\\'selfinfo\\\',2,4,128,90,1,20,2[/phomenewspic]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\\'selfinfo\\\',10,44,0,0,2,0[/ecmsinfo] \r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ol class=\\\"rank\\\">\r\n[ecmsinfo]\\\'selfinfo\\\',10,40,0,1,10,0[/ecmsinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0),
(2, '分类信息一级栏目模板', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - 成都舜王科技有限公司</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n<body class=\\\"channle\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"news_list\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n[listsonclass]\\\'selfinfo\\\',5,38,0,0,7,0,0[/listsonclass]</td>\r\n<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>分类信息搜索</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><form action=\\\"[!--news.url--]e/search/index.php\\\" method=\\\"post\\\" name=\\\"searchform\\\" id=\\\"searchform\\\">\r\n<table width=\\\"98%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"6\\\">\r\n<input type=\\\"hidden\\\" name=\\\"tbname\\\" value=\\\"info\\\">\r\n<input type=\\\"hidden\\\" name=\\\"tempid\\\" value=\\\"1\\\">\r\n<tr>\r\n<td><input name=\\\"keyboard\\\" type=\\\"text\\\" class=\\\"inputText\\\" id=\\\"keyboard\\\" size=\\\"18\\\" />\r\n<select name=\\\"show\\\">\r\n<option value=\\\"title,smalltext,myarea\\\" selected=\\\"selected\\\">不限</option>\r\n<option value=\\\"title\\\">信息标题</option>\r\n<option value=\\\"smalltext\\\">信息内容</option>\r\n<option value=\\\"myarea\\\">所在地</option>\r\n</select></td>\r\n</tr>\r\n<tr>\r\n<td><select name=\\\"classid\\\">\r\n<option value=\\\'9\\\'>所有分类</option>\r\n<option value=\\\'10\\\'>|-房屋信息</option>\r\n<option value=\\\'11\\\' >&nbsp;&nbsp;|-房屋求租</option>\r\n<option value=\\\'12\\\' >&nbsp;&nbsp;|-房屋出租</option>\r\n<option value=\\\'13\\\' >&nbsp;&nbsp;|-房屋求购</option>\r\n<option value=\\\'14\\\' >&nbsp;&nbsp;|-房屋出售</option>\r\n<option value=\\\'15\\\' >&nbsp;&nbsp;|-办公用房</option>\r\n<option value=\\\'16\\\' >&nbsp;&nbsp;|-旺铺门面</option>\r\n<option value=\\\'17\\\'>|-跳蚤市场</option>\r\n<option value=\\\'18\\\' >&nbsp;&nbsp;|-电脑配件</option>\r\n<option value=\\\'19\\\' >&nbsp;&nbsp;|-电器数码</option>\r\n<option value=\\\'20\\\' >&nbsp;&nbsp;|-通讯产品</option>\r\n<option value=\\\'21\\\' >&nbsp;&nbsp;|-居家用品</option>\r\n<option value=\\\'22\\\'>|-同城生活</option>\r\n<option value=\\\'23\\\' >&nbsp;&nbsp;|-本地新闻</option>\r\n<option value=\\\'24\\\' >&nbsp;&nbsp;|-购物打折</option>\r\n<option value=\\\'25\\\' >&nbsp;&nbsp;|-旅游活动</option>\r\n<option value=\\\'26\\\' >&nbsp;&nbsp;|-便民告示</option>\r\n<option value=\\\'27\\\'>|-求职招聘</option>\r\n<option value=\\\'28\\\' >&nbsp;&nbsp;|-工程技术</option>\r\n<option value=\\\'29\\\' >&nbsp;&nbsp;|-财务会计</option>\r\n<option value=\\\'30\\\' >&nbsp;&nbsp;|-餐饮行业</option>\r\n<option value=\\\'31\\\' >&nbsp;&nbsp;|-经营管理</option>\r\n</select>\r\n<input name=\\\"Submit2\\\" type=\\\"image\\\" value=\\\"搜索\\\" src=\\\"[!--news.url--]skin/default/images/search.gif\\\" />　\r\n[<a href=\\\"[!--news.url--]e/DoInfo/ChangeClass.php?mid=8\\\" target=\\\"_blank\\\">发布信息</a>]</td>\r\n</tr>\r\n</table>\r\n</form></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>地区导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[!--temp.infoarea--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>分类导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[!--temp.infoclassnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ol class=\\\"rank\\\">\r\n[ecmsinfo]\\\'selfinfo\\\',10,40,0,1,10,0[/ecmsinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsclasstempclass`
--

CREATE TABLE `hswl_enewsclasstempclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` char(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsclasstemp_2`
--

CREATE TABLE `hswl_enewsclasstemp_2` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsclasstemp_2`
--

INSERT INTO `hswl_enewsclasstemp_2` (`tempid`, `tempname`, `temptext`, `classid`) VALUES
(1, '通用一级栏目模板', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - 成都舜王科技有限公司</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"channle\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"news_list\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n[listsonclass]\\\'selfinfo\\\',5,38,0,0,7,0,0[/listsonclass]</td>\r\n<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[phomenewspic]\\\'selfinfo\\\',2,4,128,90,1,20,2[/phomenewspic]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\\'selfinfo\\\',10,44,0,0,2,0[/ecmsinfo] \r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ol class=\\\"rank\\\">\r\n[ecmsinfo]\\\'selfinfo\\\',10,40,0,1,10,0[/ecmsinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0),
(2, '分类信息一级栏目模板', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - 成都舜王科技有限公司</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"channle\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"news_list\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n[listsonclass]\\\'selfinfo\\\',5,38,0,0,7,0,0[/listsonclass]</td>\r\n<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>分类信息搜索</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><form action=\\\"[!--news.url--]e/search/index.php\\\" method=\\\"post\\\" name=\\\"searchform\\\" id=\\\"searchform\\\">\r\n<table width=\\\"98%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"6\\\">\r\n<input type=\\\"hidden\\\" name=\\\"tbname\\\" value=\\\"info\\\">\r\n<input type=\\\"hidden\\\" name=\\\"tempid\\\" value=\\\"1\\\">\r\n<tr>\r\n<td><input name=\\\"keyboard\\\" type=\\\"text\\\" class=\\\"inputText\\\" id=\\\"keyboard\\\" size=\\\"18\\\" />\r\n<select name=\\\"show\\\">\r\n<option value=\\\"title,smalltext,myarea\\\" selected=\\\"selected\\\">不限</option>\r\n<option value=\\\"title\\\">信息标题</option>\r\n<option value=\\\"smalltext\\\">信息内容</option>\r\n<option value=\\\"myarea\\\">所在地</option>\r\n</select></td>\r\n</tr>\r\n<tr>\r\n<td><select name=\\\"classid\\\">\r\n<option value=\\\'9\\\'>所有分类</option>\r\n<option value=\\\'10\\\'>|-房屋信息</option>\r\n<option value=\\\'11\\\' >&nbsp;&nbsp;|-房屋求租</option>\r\n<option value=\\\'12\\\' >&nbsp;&nbsp;|-房屋出租</option>\r\n<option value=\\\'13\\\' >&nbsp;&nbsp;|-房屋求购</option>\r\n<option value=\\\'14\\\' >&nbsp;&nbsp;|-房屋出售</option>\r\n<option value=\\\'15\\\' >&nbsp;&nbsp;|-办公用房</option>\r\n<option value=\\\'16\\\' >&nbsp;&nbsp;|-旺铺门面</option>\r\n<option value=\\\'17\\\'>|-跳蚤市场</option>\r\n<option value=\\\'18\\\' >&nbsp;&nbsp;|-电脑配件</option>\r\n<option value=\\\'19\\\' >&nbsp;&nbsp;|-电器数码</option>\r\n<option value=\\\'20\\\' >&nbsp;&nbsp;|-通讯产品</option>\r\n<option value=\\\'21\\\' >&nbsp;&nbsp;|-居家用品</option>\r\n<option value=\\\'22\\\'>|-同城生活</option>\r\n<option value=\\\'23\\\' >&nbsp;&nbsp;|-本地新闻</option>\r\n<option value=\\\'24\\\' >&nbsp;&nbsp;|-购物打折</option>\r\n<option value=\\\'25\\\' >&nbsp;&nbsp;|-旅游活动</option>\r\n<option value=\\\'26\\\' >&nbsp;&nbsp;|-便民告示</option>\r\n<option value=\\\'27\\\'>|-求职招聘</option>\r\n<option value=\\\'28\\\' >&nbsp;&nbsp;|-工程技术</option>\r\n<option value=\\\'29\\\' >&nbsp;&nbsp;|-财务会计</option>\r\n<option value=\\\'30\\\' >&nbsp;&nbsp;|-餐饮行业</option>\r\n<option value=\\\'31\\\' >&nbsp;&nbsp;|-经营管理</option>\r\n</select>\r\n<input name=\\\"Submit2\\\" type=\\\"image\\\" value=\\\"搜索\\\" src=\\\"[!--news.url--]skin/default/images/search.gif\\\" />　\r\n[<a href=\\\"[!--news.url--]e/DoInfo/ChangeClass.php?mid=8\\\" target=\\\"_blank\\\">发布信息</a>]</td>\r\n</tr>\r\n</table>\r\n</form></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>地区导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[!--temp.infoarea--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>分类导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[!--temp.infoclassnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ol class=\\\"rank\\\">\r\n[ecmsinfo]\\\'selfinfo\\\',10,40,0,1,10,0[/ecmsinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsclass_stats`
--

CREATE TABLE `hswl_enewsclass_stats` (
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `uptime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pvall` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pvyear` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pvhalfyear` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pvquarter` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pvmonth` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pvweek` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pvday` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pvyesterday` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ipall` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ipyear` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `iphalfyear` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ipquarter` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ipmonth` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ipweek` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ipday` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ipyesterday` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsclass_stats`
--

INSERT INTO `hswl_enewsclass_stats` (`classid`, `uptime`, `pvall`, `pvyear`, `pvhalfyear`, `pvquarter`, `pvmonth`, `pvweek`, `pvday`, `pvyesterday`, `ipall`, `ipyear`, `iphalfyear`, `ipquarter`, `ipmonth`, `ipweek`, `ipday`, `ipyesterday`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsclass_stats_ip`
--

CREATE TABLE `hswl_enewsclass_stats_ip` (
  `ip` char(21) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsclass_stats_set`
--

CREATE TABLE `hswl_enewsclass_stats_set` (
  `openstats` tinyint(1) NOT NULL DEFAULT '0',
  `pvtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `statsdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `changedate` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsclass_stats_set`
--

INSERT INTO `hswl_enewsclass_stats_set` (`openstats`, `pvtime`, `statsdate`, `changedate`) VALUES
(0, 3600, 0, 20170227);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsdiggips`
--

CREATE TABLE `hswl_enewsdiggips` (
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `ips` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsdo`
--

CREATE TABLE `hswl_enewsdo` (
  `doid` smallint(5) UNSIGNED NOT NULL,
  `doname` varchar(60) NOT NULL DEFAULT '',
  `dotime` smallint(6) NOT NULL DEFAULT '0',
  `isopen` tinyint(1) NOT NULL DEFAULT '0',
  `doing` tinyint(4) NOT NULL DEFAULT '0',
  `classid` text NOT NULL,
  `lasttime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsdo`
--

INSERT INTO `hswl_enewsdo` (`doid`, `doname`, `dotime`, `isopen`, `doing`, `classid`, `lasttime`) VALUES
(1, '自动刷新首页', 12, 0, 0, ',', 1273215883);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsdolog`
--

CREATE TABLE `hswl_enewsdolog` (
  `logid` bigint(20) NOT NULL,
  `logip` varchar(20) NOT NULL DEFAULT '',
  `logtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(30) NOT NULL DEFAULT '',
  `enews` varchar(30) NOT NULL DEFAULT '',
  `doing` varchar(255) NOT NULL DEFAULT '',
  `pubid` bigint(16) UNSIGNED NOT NULL DEFAULT '0',
  `ipport` varchar(6) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsdolog`
--

INSERT INTO `hswl_enewsdolog` (`logid`, `logip`, `logtime`, `username`, `enews`, `doing`, `pubid`, `ipport`) VALUES
(1, '127.0.0.1', '2020-06-16 17:20:08', 'admin', 'login', '---', 0, '63438'),
(2, '127.0.0.1', '2020-06-16 17:21:21', 'admin', 'SetEnews', '---', 0, '63480'),
(3, '127.0.0.1', '2020-06-16 17:25:11', 'admin', 'AddM', 'mid=1<br>m=新闻系统模型', 0, '63580'),
(4, '127.0.0.1', '2020-06-16 17:37:25', 'admin', 'EditTempvar', 'varid=1<br>var=header&amp;gid=1', 0, '63894'),
(5, '127.0.0.1', '2020-06-16 17:38:45', 'admin', 'EditTempvar', 'varid=2<br>var=footer&amp;gid=1', 0, '63927'),
(6, '127.0.0.1', '2020-06-16 17:45:26', 'admin', 'EditPublicTemp', 'gid=1', 0, '64112'),
(7, '127.0.0.1', '2020-06-16 17:54:31', 'admin', 'EditBqtemp', 'tempid=1<br>tempname=子栏目导航标签模板&amp;gid=1', 0, '64353'),
(8, '127.0.0.1', '2020-06-16 18:06:41', 'admin', 'EditListtemp', 'tempid=1<br>tempname=新闻列表模板&amp;gid=1', 0, '64630'),
(9, '127.0.0.1', '2020-06-16 18:07:28', 'admin', 'AddListtemp', 'tempid=2<br>tempname=通用列表模板&amp;gid=1', 0, '64653'),
(10, '127.0.0.1', '2020-06-16 18:08:20', 'admin', 'AddListtemp', 'tempid=3<br>tempname=合作列表模板&amp;gid=1', 0, '64671'),
(11, '127.0.0.1', '2020-06-16 18:08:35', 'admin', 'EditListtemp', 'tempid=3<br>tempname=合作列表模板&amp;gid=1', 0, '64682'),
(12, '127.0.0.1', '2020-06-16 18:11:37', 'admin', 'EditNewstemp', 'tempid=1<br>tempname=新闻内容模板&amp;gid=1', 0, '64760'),
(13, '127.0.0.1', '2020-06-16 18:12:38', 'admin', 'EditBqtemp', 'tempid=7<br>tempname=循环子栏目标签&amp;gid=1', 0, '64788'),
(14, '127.0.0.1', '2020-06-16 18:13:01', 'admin', 'EditBqtemp', 'tempid=7<br>tempname=循环子栏目标签&amp;gid=1', 0, '64803'),
(15, '127.0.0.1', '2020-06-16 18:14:25', 'admin', 'EditNewstemp', 'tempid=1<br>tempname=新闻内容模板&amp;gid=1', 0, '64833'),
(16, '127.0.0.1', '2020-06-16 18:15:00', 'admin', 'AddNewstemp', 'tempid=2<br>tempname=通用单页模板&amp;gid=1', 0, '64852'),
(17, '127.0.0.1', '2020-06-16 18:15:30', 'admin', 'AddNewstemp', 'tempid=3<br>tempname=关于单页模板&amp;gid=1', 0, '64870'),
(18, '127.0.0.1', '2020-06-16 18:16:39', 'admin', 'AddNewstemp', 'tempid=4<br>tempname=联系单页模板 &amp;gid=1', 0, '64894'),
(19, '127.0.0.1', '2020-06-16 18:19:06', 'admin', 'AddClass', 'classid=1<br>classname=服务范围', 0, '65083'),
(20, '127.0.0.1', '2020-06-16 18:19:57', 'admin', 'AddClass', 'classid=2<br>classname=新闻中心', 0, '65113'),
(21, '127.0.0.1', '2020-06-16 18:21:40', 'admin', 'AddClass', 'classid=3<br>classname=公司实力', 0, '65158'),
(22, '127.0.0.1', '2020-06-16 18:22:58', 'admin', 'AddClass', 'classid=4<br>classname=关于我们', 0, '65195'),
(23, '127.0.0.1', '2020-06-16 18:23:34', 'admin', 'AddClass', 'classid=5<br>classname=冷链运输', 0, '65222'),
(24, '127.0.0.1', '2020-06-16 18:23:49', 'admin', 'AddClass', 'classid=6<br>classname=配送服务', 0, '65222'),
(25, '127.0.0.1', '2020-06-16 18:24:02', 'admin', 'AddClass', 'classid=7<br>classname=仓储服务', 0, '65222'),
(26, '127.0.0.1', '2020-06-16 18:24:37', 'admin', 'AddClass', 'classid=8<br>classname=公司新闻', 0, '65268'),
(27, '127.0.0.1', '2020-06-16 18:25:18', 'admin', 'AddClass', 'classid=9<br>classname=行业动态', 0, '65294'),
(28, '127.0.0.1', '2020-06-16 18:25:31', 'admin', 'AddClass', 'classid=10<br>classname=媒体聚焦', 0, '65294'),
(29, '127.0.0.1', '2020-06-16 18:25:47', 'admin', 'AddClass', 'classid=11<br>classname=常见问题', 0, '65319'),
(30, '127.0.0.1', '2020-06-16 18:26:48', 'admin', 'AddClass', 'classid=12<br>classname=成功案例', 0, '65348'),
(31, '127.0.0.1', '2020-06-16 18:27:52', 'admin', 'AddClass', 'classid=13<br>classname=冷藏设备', 0, '65385'),
(32, '127.0.0.1', '2020-06-16 18:28:18', 'admin', 'AddClass', 'classid=14<br>classname=合作伙伴', 0, '65406'),
(33, '127.0.0.1', '2020-06-16 18:28:40', 'admin', 'AddClass', 'classid=15<br>classname=荣誉资质', 0, '65422'),
(34, '127.0.0.1', '2020-06-16 18:29:07', 'admin', 'AddClass', 'classid=16<br>classname=售后服务', 0, '65440'),
(35, '127.0.0.1', '2020-06-16 18:29:58', 'admin', 'AddClass', 'classid=17<br>classname=公司简介', 0, '65469'),
(36, '127.0.0.1', '2020-06-16 18:30:31', 'admin', 'AddClass', 'classid=18<br>classname=企业优势', 0, '65489'),
(37, '127.0.0.1', '2020-06-16 18:31:21', 'admin', 'AddClass', 'classid=19<br>classname=组织架构', 0, '65513'),
(38, '127.0.0.1', '2020-06-16 18:31:46', 'admin', 'AddClass', 'classid=20<br>classname=公司掠影', 0, '65534'),
(39, '127.0.0.1', '2020-06-16 18:32:28', 'admin', 'AddClass', 'classid=21<br>classname=联系我们', 0, '49178'),
(40, '127.0.0.1', '2020-06-16 18:33:42', 'admin', 'AddClass', 'classid=22<br>classname=冷链运输', 0, '49212'),
(41, '127.0.0.1', '2020-06-16 18:34:01', 'admin', 'AddClass', 'classid=23<br>classname=配送服务', 0, '49225'),
(42, '127.0.0.1', '2020-06-16 18:34:18', 'admin', 'AddClass', 'classid=24<br>classname=仓储服务', 0, '49239'),
(43, '127.0.0.1', '2020-06-16 18:34:36', 'admin', 'exit', '---', 0, '49250'),
(44, '127.0.0.1', '2020-06-17 10:47:55', 'admin', 'login', '---', 0, '51708'),
(45, '127.0.0.1', '2020-06-17 10:48:06', 'admin', 'ReIndex', '---', 0, '51717'),
(46, '127.0.0.1', '2020-06-17 11:06:07', 'admin', 'EditPublicTemp', 'gid=1', 0, '52626'),
(47, '127.0.0.1', '2020-06-17 11:09:13', 'admin', 'EditNewstemp', 'tempid=3<br>tempname=关于单页模板&amp;gid=1', 0, '52864'),
(48, '127.0.0.1', '2020-06-17 11:10:39', 'admin', 'SetMoreClass', '---', 0, '53002'),
(49, '127.0.0.1', '2020-06-17 11:10:52', 'admin', 'AddNews', 'classid=17<br>id=1<br>title=公司简介', 1000010000000001, '53019'),
(50, '127.0.0.1', '2020-06-17 11:12:01', 'admin', 'AddNews', 'classid=18<br>id=2<br>title=企业优势', 1000010000000002, '53119'),
(51, '127.0.0.1', '2020-06-17 11:14:01', 'admin', 'AddNews', 'classid=19<br>id=3<br>title=组织架构', 1000010000000003, '53280'),
(52, '127.0.0.1', '2020-06-17 11:15:19', 'admin', 'EditNewstemp', 'tempid=4<br>tempname=联系单页模板 &amp;gid=1', 0, '53380'),
(53, '127.0.0.1', '2020-06-17 11:20:10', 'admin', 'AddNews', 'classid=21<br>id=4<br>title=联系我们', 1000010000000004, '53731'),
(54, '127.0.0.1', '2020-06-17 13:58:03', 'admin', 'login', '---', 0, '52564'),
(55, '127.0.0.1', '2020-06-17 14:17:43', 'admin', 'AddNews', 'classid=5<br>id=5<br>title=冷链运输', 1000010000000005, '53101'),
(56, '127.0.0.1', '2020-06-17 14:18:53', 'admin', 'EditNewstemp', 'tempid=2<br>tempname=通用单页模板&amp;gid=1', 0, '53138'),
(57, '127.0.0.1', '2020-06-17 14:18:58', 'admin', 'ReSingleInfo', 'classid=5', 0, '53138'),
(58, '127.0.0.1', '2020-06-17 14:26:10', 'admin', 'AddNews', 'classid=6<br>id=6<br>title=配送服务', 1000010000000006, '53531'),
(59, '127.0.0.1', '2020-06-17 14:26:50', 'admin', 'EditInfoSimple', 'classid=5<br>id=5<br>title=冷链运输', 1000010000000005, '53552'),
(60, '127.0.0.1', '2020-06-17 14:27:07', 'admin', 'EditInfoSimple', 'classid=6<br>id=6<br>title=配送服务', 1000010000000006, '53558'),
(61, '127.0.0.1', '2020-06-17 14:31:27', 'admin', 'AddNews', 'classid=7<br>id=7<br>title=仓储服务', 1000010000000007, '53727'),
(62, '127.0.0.1', '2020-06-17 14:36:34', 'admin', 'CopyNews_all', 'classid=18<br>id=2<br>title=企业优势<br>to_classid=16', 1000010000000002, '54028'),
(63, '127.0.0.1', '2020-06-17 14:37:25', 'admin', 'EditNews', 'classid=16<br>id=8<br>title=售后服务', 1000010000000008, '54060'),
(64, '127.0.0.1', '2020-06-17 14:37:55', 'admin', 'EditNews', 'classid=18<br>id=2<br>title=企业优势', 1000010000000002, '54083'),
(65, '127.0.0.1', '2020-06-17 15:04:59', 'admin', 'AddNews', 'classid=20<br>id=9<br>title=公司照片', 1000010000000009, '55257'),
(66, '127.0.0.1', '2020-06-17 15:05:38', 'admin', 'AddNews', 'classid=20<br>id=10<br>title=公司车辆', 1000010000000010, '55274'),
(67, '127.0.0.1', '2020-06-17 15:07:22', 'admin', 'AddNews', 'classid=20<br>id=11<br>title=团队照片', 1000010000000011, '55322'),
(68, '127.0.0.1', '2020-06-17 15:07:44', 'admin', 'AddNews', 'classid=20<br>id=12<br>title=办公室照片', 1000010000000012, '55332'),
(69, '127.0.0.1', '2020-06-17 15:08:35', 'admin', 'EditNews', 'classid=20<br>id=11<br>title=团队照片', 1000010000000011, '55363'),
(70, '127.0.0.1', '2020-06-17 15:08:59', 'admin', 'EditNews', 'classid=20<br>id=12<br>title=办公室照片', 1000010000000012, '55376'),
(71, '127.0.0.1', '2020-06-17 15:09:30', 'admin', 'ReListHtml_all', '---', 0, '55392'),
(72, '127.0.0.1', '2020-06-17 15:10:23', 'admin', 'EditClass', 'classid=18<br>classname=企业优势', 0, '55430'),
(73, '127.0.0.1', '2020-06-17 15:10:35', 'admin', 'EditClass', 'classid=19<br>classname=组织架构', 0, '55439'),
(74, '127.0.0.1', '2020-06-17 15:10:48', 'admin', 'ReListHtml_all', '---', 0, '55449'),
(75, '127.0.0.1', '2020-06-17 15:27:52', 'admin', 'EditNewstemp', 'tempid=1<br>tempname=新闻内容模板&amp;gid=1', 0, '56647'),
(76, '127.0.0.1', '2020-06-17 15:28:19', 'admin', 'EditNewstemp', 'tempid=2<br>tempname=通用单页模板&amp;gid=1', 0, '56683'),
(77, '127.0.0.1', '2020-06-17 15:43:23', 'admin', 'EditClass', 'classid=13<br>classname=冷藏设备', 0, '57739'),
(78, '127.0.0.1', '2020-06-17 15:44:58', 'admin', 'AddNews', 'classid=13<br>id=13<br>title=冷藏设备', 1000010000000013, '57779'),
(79, '127.0.0.1', '2020-06-17 15:48:09', 'admin', 'EditNews', 'classid=13<br>id=13<br>title=冷藏设备', 1000010000000013, '57897'),
(80, '127.0.0.1', '2020-06-17 15:49:19', 'admin', 'ReInfoUrl', '---', 0, '57923'),
(81, '127.0.0.1', '2020-06-17 15:51:58', 'admin', 'EditMoreInfoTime', 'classid=6<br>classname=配送服务<br>id=6', 1000010000000006, '58029'),
(82, '127.0.0.1', '2020-06-17 15:52:06', 'admin', 'EditMoreInfoTime', 'classid=7<br>classname=仓储服务<br>id=7', 1000010000000007, '58039'),
(83, '127.0.0.1', '2020-06-17 15:52:09', 'admin', 'ReListHtml_all', '---', 0, '58039'),
(84, '127.0.0.1', '2020-06-17 15:53:14', 'admin', 'CopyNews_all', 'classid=6<br>id=6<br>title=配送服务<br>to_classid=22', 1000010000000006, '58112'),
(85, '127.0.0.1', '2020-06-17 15:53:21', 'admin', 'CopyNews_all', 'classid=7<br>id=7<br>title=仓储服务<br>to_classid=22', 1000010000000007, '58112'),
(86, '127.0.0.1', '2020-06-17 15:53:44', 'admin', 'CopyNews_all', 'classid=6<br>id=6<br>title=配送服务<br>to_classid=22', 1000010000000006, '58148'),
(87, '127.0.0.1', '2020-06-17 15:53:51', 'admin', 'CopyNews_all', 'classid=7<br>id=7<br>title=仓储服务<br>to_classid=22', 1000010000000007, '58157'),
(88, '127.0.0.1', '2020-06-17 15:54:38', 'admin', 'CopyNews_all', 'classid=5<br>id=5<br>title=冷链运输<br>to_classid=22', 1000010000000005, '58208'),
(89, '127.0.0.1', '2020-06-17 15:55:22', 'admin', 'MoveNews_all', 'classid=22<br>classname=冷链运输<br>to_classid=23', 0, '58235'),
(90, '127.0.0.1', '2020-06-17 15:55:36', 'admin', 'CopyNews_all', 'classid=22<br>id=18<br>title=冷链运输<br>to_classid=23', 1000010000000018, '58249'),
(91, '127.0.0.1', '2020-06-17 15:56:11', 'admin', 'EditInfoSimple', 'classid=22<br>id=14<br>title=冷链运输案例', 1000010000000014, '58283'),
(92, '127.0.0.1', '2020-06-17 15:56:37', 'admin', 'EditInfoSimple', 'classid=22<br>id=15<br>title=冷链运输案例', 1000010000000015, '58307'),
(93, '127.0.0.1', '2020-06-17 15:56:46', 'admin', 'EditInfoSimple', 'classid=22<br>id=18<br>title=冷链运输案例', 1000010000000018, '58315'),
(94, '127.0.0.1', '2020-06-17 15:57:08', 'admin', 'EditNews', 'classid=23<br>id=16<br>title=配送服务案例', 1000010000000016, '58336'),
(95, '127.0.0.1', '2020-06-17 15:57:18', 'admin', 'EditInfoSimple', 'classid=23<br>id=17<br>title=配送服务案例', 1000010000000017, '58336'),
(96, '127.0.0.1', '2020-06-17 15:57:25', 'admin', 'EditNews', 'classid=23<br>id=19<br>title=配送服务案例', 1000010000000019, '58336'),
(97, '127.0.0.1', '2020-06-17 15:57:44', 'admin', 'CopyNews_all', 'classid=23<br>classname=配送服务<br>to_classid=24', 0, '58372'),
(98, '127.0.0.1', '2020-06-17 15:58:03', 'admin', 'EditInfoSimple', 'classid=24<br>id=20<br>title=仓储服务案例', 1000010000000020, '58396'),
(99, '127.0.0.1', '2020-06-17 15:58:12', 'admin', 'EditInfoSimple', 'classid=24<br>id=21<br>title=仓储服务案例', 1000010000000021, '58396'),
(100, '127.0.0.1', '2020-06-17 15:58:22', 'admin', 'EditInfoSimple', 'classid=24<br>id=22<br>title=仓储服务案例', 1000010000000022, '58406'),
(101, '127.0.0.1', '2020-06-17 16:05:41', 'admin', 'AddNews', 'classid=14<br>id=23<br>title=海底捞火锅', 1000010000000023, '58648'),
(102, '127.0.0.1', '2020-06-17 16:05:53', 'admin', 'CopyNews_all', 'classid=14<br>id=23<br>title=海底捞火锅<br>to_classid=14', 1000010000000023, '58659'),
(103, '127.0.0.1', '2020-06-17 16:06:06', 'admin', 'CopyNews_all', 'classid=14<br>classname=合作伙伴<br>to_classid=14', 0, '58672'),
(104, '127.0.0.1', '2020-06-17 16:06:18', 'admin', 'CopyNews_all', 'classid=14<br>id=23<br>title=海底捞火锅<br>to_classid=14', 1000010000000023, '58681'),
(105, '127.0.0.1', '2020-06-17 16:06:30', 'admin', 'CopyNews_all', 'classid=14<br>classname=合作伙伴<br>to_classid=14', 0, '58691'),
(106, '127.0.0.1', '2020-06-17 16:07:03', 'admin', 'EditNews', 'classid=14<br>id=23<br>title=海底捞火锅', 1000010000000023, '58715'),
(107, '127.0.0.1', '2020-06-17 16:08:15', 'admin', 'EditNews', 'classid=14<br>id=24<br>title=爱普食品科技', 1000010000000024, '58750'),
(108, '127.0.0.1', '2020-06-17 16:10:32', 'admin', 'EditNews', 'classid=14<br>id=25<br>title=费列罗集团', 1000010000000025, '58816'),
(109, '127.0.0.1', '2020-06-17 16:12:31', 'admin', 'EditNews', 'classid=14<br>id=26<br>title=沃尔玛公司', 1000010000000026, '58885'),
(110, '127.0.0.1', '2020-06-17 16:13:05', 'admin', 'EditNews', 'classid=14<br>id=27<br>title=蒙牛集团', 1000010000000027, '58900'),
(111, '127.0.0.1', '2020-06-17 16:14:03', 'admin', 'EditNews', 'classid=14<br>id=28<br>title=星巴克', 1000010000000028, '58936'),
(112, '127.0.0.1', '2020-06-17 16:14:21', 'admin', 'EditNews', 'classid=14<br>id=28<br>title=星巴克', 1000010000000028, '58947'),
(113, '127.0.0.1', '2020-06-17 16:14:50', 'admin', 'EditNews', 'classid=14<br>id=29<br>title=肯德基', 1000010000000029, '58960'),
(114, '127.0.0.1', '2020-06-17 16:15:17', 'admin', 'EditNews', 'classid=14<br>id=30<br>title=棒约翰', 1000010000000030, '58971'),
(115, '127.0.0.1', '2020-06-17 16:16:33', 'admin', 'EditNews', 'classid=14<br>id=31<br>title=冰雪皇后', 1000010000000031, '59016'),
(116, '127.0.0.1', '2020-06-17 16:17:10', 'admin', 'EditNews', 'classid=14<br>id=32<br>title=麦当劳', 1000010000000032, '59042'),
(117, '127.0.0.1', '2020-06-17 16:17:15', 'admin', 'ReListHtml_all', '---', 0, '59045'),
(118, '127.0.0.1', '2020-06-17 16:22:13', 'admin', 'AddNews', 'classid=15<br>id=33<br>title=公司荣誉资质证书照片', 1000010000000033, '59376'),
(119, '127.0.0.1', '2020-06-17 16:22:34', 'admin', 'CopyNews_all', 'classid=15<br>id=33<br>title=公司荣誉资质证书照片<br>to_classid=15', 1000010000000033, '59393'),
(120, '127.0.0.1', '2020-06-17 16:23:02', 'admin', 'CopyNews_all', 'classid=15<br>classname=荣誉资质<br>to_classid=15', 0, '59413'),
(121, '127.0.0.1', '2020-06-17 16:23:12', 'admin', 'CopyNews_all', 'classid=15<br>classname=荣誉资质<br>to_classid=15', 0, '59421'),
(122, '127.0.0.1', '2020-06-17 16:23:24', 'admin', 'ReListHtml_all', '---', 0, '59428'),
(123, '127.0.0.1', '2020-06-17 16:37:31', 'admin', 'AddNews', 'classid=8<br>id=39<br>title=华森物流召开安全消防培训', 1000010000000039, '60804'),
(124, '127.0.0.1', '2020-06-17 16:37:54', 'admin', 'CopyNews_all', 'classid=8<br>id=39<br>title=华森物流召开安全消防培训<br>to_classid=8', 1000010000000039, '60842'),
(125, '127.0.0.1', '2020-06-17 16:38:03', 'admin', 'CopyNews_all', 'classid=8<br>id=40<br>title=华森物流召开安全消防培训<br>to_classid=8', 1000010000000040, '60855'),
(126, '127.0.0.1', '2020-06-17 16:41:35', 'admin', 'EditNews', 'classid=8<br>id=40<br>title=华森物流2019年年终聚餐', 1000010000000040, '61147'),
(127, '127.0.0.1', '2020-06-17 16:41:58', 'admin', 'CopyNews_all', 'classid=8<br>classname=公司新闻<br>to_classid=9', 0, '61182'),
(128, '127.0.0.1', '2020-06-17 16:42:07', 'admin', 'CopyNews_all', 'classid=8<br>classname=公司新闻<br>to_classid=10', 0, '61196'),
(129, '127.0.0.1', '2020-06-17 16:42:15', 'admin', 'CopyNews_all', 'classid=8<br>classname=公司新闻<br>to_classid=11', 0, '61213'),
(130, '127.0.0.1', '2020-06-17 16:42:31', 'admin', 'ReListHtml_all', '---', 0, '61231'),
(131, '127.0.0.1', '2020-06-17 16:44:10', 'admin', 'EditListtemp', 'tempid=1<br>tempname=新闻列表模板&amp;gid=1', 0, '61374'),
(132, '127.0.0.1', '2020-06-17 16:44:14', 'admin', 'ReListHtml_all', '---', 0, '61374'),
(133, '127.0.0.1', '2020-06-17 16:52:58', 'admin', 'EditTempvar', 'varid=1<br>var=header&amp;gid=1', 0, '61827'),
(134, '127.0.0.1', '2020-06-17 16:57:24', 'admin', 'EditTempvar', 'varid=2<br>var=footer&amp;gid=1', 0, '61940'),
(135, '127.0.0.1', '2020-06-17 16:57:55', 'admin', 'EditFeedbackF', 'fid=1<br>f=title', 0, '61961'),
(136, '127.0.0.1', '2020-06-17 16:58:03', 'admin', 'DelFeedbackF', 'fid=3<br>f=name', 0, '61969'),
(137, '127.0.0.1', '2020-06-17 16:58:08', 'admin', 'DelFeedbackF', 'fid=9<br>f=job', 0, '61969'),
(138, '127.0.0.1', '2020-06-17 16:58:14', 'admin', 'DelFeedbackF', 'fid=7<br>f=company', 0, '61969'),
(139, '127.0.0.1', '2020-06-17 16:58:21', 'admin', 'DelFeedbackF', 'fid=6<br>f=homepage', 0, '61969'),
(140, '127.0.0.1', '2020-06-17 16:58:27', 'admin', 'DelFeedbackF', 'fid=8<br>f=address', 0, '61969'),
(141, '127.0.0.1', '2020-06-17 16:59:45', 'admin', 'EditFeedbackClass', 'bid=1<br>bname=默认反馈分类', 0, '62019'),
(142, '127.0.0.1', '2020-06-17 17:03:00', 'admin', 'EditNewstemp', 'tempid=4<br>tempname=联系单页模板 &amp;gid=1', 0, '62093'),
(143, '127.0.0.1', '2020-06-17 17:03:31', 'admin', 'ReIndex', '---', 0, '62106'),
(144, '127.0.0.1', '2020-06-17 17:03:36', 'admin', 'ReListHtml_all', '---', 0, '62106'),
(145, '127.0.0.1', '2020-06-17 17:08:27', 'admin', 'EditNewstemp', 'tempid=1<br>tempname=新闻内容模板&amp;gid=1', 0, '62234'),
(146, '127.0.0.1', '2020-06-17 17:21:02', 'admin', 'EditNewstemp', 'tempid=2<br>tempname=通用单页模板&amp;gid=1', 0, '62936'),
(147, '127.0.0.1', '2020-06-17 17:36:29', 'admin', 'EditNewstemp', 'tempid=3<br>tempname=关于单页模板&amp;gid=1', 0, '63636'),
(148, '127.0.0.1', '2020-06-17 17:53:08', 'admin', 'EditPublicTemp', 'gid=1', 0, '64110'),
(149, '127.0.0.1', '2020-06-17 17:53:14', 'admin', 'ReIndex', '---', 0, '64110'),
(150, '127.0.0.1', '2020-06-17 17:53:19', 'admin', 'ReListHtml_all', '---', 0, '64110'),
(151, '127.0.0.1', '2020-06-17 17:53:24', 'admin', 'ReDtPage', '---', 0, '64110'),
(152, '127.0.0.1', '2020-06-17 17:53:29', 'admin', 'ChangeEnewsData', '---', 0, '64110'),
(153, '127.0.0.1', '2020-06-17 17:55:45', 'admin', 'EditTempvar', 'varid=2<br>var=footer&amp;gid=1', 0, '64211'),
(154, '127.0.0.1', '2020-06-17 17:55:50', 'admin', 'ReListHtml_all', '---', 0, '64211'),
(155, '127.0.0.1', '2020-06-17 17:55:54', 'admin', 'ReIndex', '---', 0, '64224'),
(156, '127.0.0.1', '2020-06-17 17:57:20', 'admin', 'DelFeedback_all', '---', 0, '64301'),
(157, '127.0.0.1', '2020-06-17 18:05:39', 'admin', 'exit', '---', 0, '64541'),
(158, '127.0.0.1', '2020-06-23 15:07:19', 'admin', 'login', '---', 0, '50915'),
(159, '127.0.0.1', '2020-06-23 15:07:26', 'admin', 'ReIndex', '---', 0, '50915'),
(160, '127.0.0.1', '2020-06-23 15:07:34', 'admin', 'ReListHtml_all', '---', 0, '50935'),
(161, '127.0.0.1', '2020-06-23 15:07:36', 'admin', 'ReDtPage', '---', 0, '50935'),
(162, '127.0.0.1', '2020-06-23 15:07:41', 'admin', 'ChangeEnewsData', '---', 0, '50935'),
(163, '127.0.0.1', '2020-06-23 15:07:45', 'admin', 'DelFcListClass', '---', 0, '50935'),
(164, '127.0.0.1', '2020-06-23 15:08:54', 'admin', 'LoadTempGroup', 'gid=1&amp;gname=默认模板组', 0, '51046'),
(165, '127.0.0.1', '2020-06-23 15:09:44', 'admin', 'LoadInTempGroup', 'gid=2&amp;gname=默认模板组 ,-- 7.5,UTF-8', 0, '51104'),
(166, '127.0.0.1', '2020-06-23 15:10:00', 'admin', 'EditTempGroup', '---', 0, '51124'),
(167, '127.0.0.1', '2020-06-23 15:10:11', 'admin', 'EditTempGroup', '---', 0, '51138'),
(168, '127.0.0.1', '2020-06-23 15:12:31', 'admin', 'AddMoreport', 'pid=2&amp;pname=手机访问端', 0, '51284'),
(169, '127.0.0.1', '2020-06-23 15:12:43', 'admin', 'MoreportReIndexfileAll', '---', 0, '51303'),
(170, '127.0.0.1', '2020-06-23 15:18:44', 'admin', 'EditTempvar', 'varid=1<br>var=header&amp;gid=2', 0, '51731'),
(171, '127.0.0.1', '2020-06-23 15:19:47', 'admin', 'EditTempvar', 'varid=2<br>var=footer&amp;gid=2', 0, '51799'),
(172, '127.0.0.1', '2020-06-23 15:20:39', 'admin', 'EditBqtemp', 'tempid=1<br>tempname=子栏目导航标签模板&amp;gid=2', 0, '51858'),
(173, '127.0.0.1', '2020-06-23 15:30:45', 'admin', 'EditTempvar', 'varid=1<br>var=header&amp;gid=2', 0, '52483'),
(174, '127.0.0.1', '2020-06-23 15:31:13', 'admin', 'EditTempvar', 'varid=2<br>var=footer&amp;gid=2', 0, '52512'),
(175, '127.0.0.1', '2020-06-23 15:35:56', 'admin', 'EditListtemp', 'tempid=1<br>tempname=新闻列表模板&amp;gid=2', 0, '52800'),
(176, '127.0.0.1', '2020-06-23 15:37:35', 'admin', 'EditListtemp', 'tempid=2<br>tempname=通用列表模板&amp;gid=2', 0, '52900'),
(177, '127.0.0.1', '2020-06-23 15:38:52', 'admin', 'EditListtemp', 'tempid=3<br>tempname=合作列表模板&amp;gid=2', 0, '52979'),
(178, '127.0.0.1', '2020-06-23 15:42:47', 'admin', 'EditListtemp', 'tempid=1<br>tempname=新闻列表模板&amp;gid=2', 0, '53236'),
(179, '127.0.0.1', '2020-06-23 15:43:02', 'admin', 'EditListtemp', 'tempid=2<br>tempname=通用列表模板&amp;gid=2', 0, '53257'),
(180, '127.0.0.1', '2020-06-23 15:43:29', 'admin', 'EditListtemp', 'tempid=3<br>tempname=合作列表模板&amp;gid=2', 0, '53288'),
(181, '127.0.0.1', '2020-06-23 15:44:26', 'admin', 'EditNewstemp', 'tempid=3<br>tempname=关于单页模板&amp;gid=2', 0, '53350'),
(182, '127.0.0.1', '2020-06-23 15:44:45', 'admin', 'EditNewstemp', 'tempid=2<br>tempname=通用单页模板&amp;gid=2', 0, '53376'),
(183, '127.0.0.1', '2020-06-23 15:45:49', 'admin', 'EditNewstemp', 'tempid=4<br>tempname=联系单页模板 &amp;gid=2', 0, '53441'),
(184, '127.0.0.1', '2020-06-23 15:52:16', 'admin', 'EditNewstemp', 'tempid=1<br>tempname=新闻内容模板&amp;gid=2', 0, '53893'),
(185, '127.0.0.1', '2020-06-23 16:02:57', 'admin', 'EditPublicTemp', 'gid=2', 0, '54591'),
(186, '127.0.0.1', '2020-06-23 16:03:26', 'admin', 'ReIndex', '---', 0, '54614'),
(187, '127.0.0.1', '2020-06-23 16:03:31', 'admin', 'ReListHtml_all', '---', 0, '54614'),
(188, '127.0.0.1', '2020-06-23 16:09:47', 'admin', 'RepTemp', 'gid=1', 0, '55055'),
(189, '127.0.0.1', '2020-06-23 16:10:09', 'admin', 'ReIndex', '---', 0, '55077'),
(190, '127.0.0.1', '2020-06-23 16:10:13', 'admin', 'ReListHtml_all', '---', 0, '55077'),
(191, '127.0.0.1', '2020-06-23 16:11:03', 'admin', 'RepTemp', 'gid=2', 0, '55167'),
(192, '127.0.0.1', '2020-06-23 16:11:43', 'admin', 'EditNewstemp', 'tempid=1<br>tempname=新闻内容模板&amp;gid=2', 0, '55222'),
(193, '127.0.0.1', '2020-06-23 16:12:10', 'admin', 'ReIndex', '---', 0, '55253'),
(194, '127.0.0.1', '2020-06-23 16:12:15', 'admin', 'ReListHtml_all', '---', 0, '55253'),
(195, '127.0.0.1', '2020-06-23 16:13:13', 'admin', 'DelFeedback', 'id=3<br>title=测试', 0, '55364'),
(196, '127.0.0.1', '2020-06-23 16:13:27', 'admin', 'ChangeEnewsData', '---', 0, '55376'),
(197, '127.0.0.1', '2020-06-23 16:13:40', 'admin', 'ChangeEnewsData', '---', 0, '55396'),
(198, '127.0.0.1', '2020-06-23 16:14:05', 'admin', 'exit', '---', 0, '55452'),
(199, '222.210.136.55', '2020-06-28 11:29:44', 'admin', 'login', '---', 0, '29961'),
(200, '222.210.136.55', '2020-06-28 11:30:43', 'admin', 'EditMoreport', 'pid=2&amp;pname=手机访问端', 0, '30234'),
(201, '222.210.136.55', '2020-06-28 11:31:16', 'admin', 'exit', '---', 0, '30365'),
(202, '171.213.29.24', '2020-06-29 11:05:49', 'admin', 'login', '---', 0, '29709'),
(203, '171.213.29.24', '2020-06-29 11:06:45', 'admin', 'EditNews', 'classid=14<br>id=24<br>title=盒马鲜生', 1000010000000024, '29961'),
(204, '171.213.29.24', '2020-06-29 11:08:14', 'admin', 'EditNews', 'classid=14<br>id=28<br>title=京东集团', 1000010000000028, '30635'),
(205, '171.213.29.24', '2020-06-29 11:08:47', 'admin', 'EditNews', 'classid=14<br>id=30<br>title=顺丰速运', 1000010000000030, '30819'),
(206, '171.213.29.24', '2020-06-29 11:08:58', 'admin', 'ReListHtml_all', '---', 0, '30865'),
(207, '171.213.29.24', '2020-06-29 11:09:02', 'admin', 'ReIndex', '---', 0, '30865'),
(208, '171.213.29.24', '2020-06-29 11:09:11', 'admin', 'ReIndex', '---', 0, '30977'),
(209, '171.213.29.24', '2020-06-29 11:09:16', 'admin', 'ReListHtml_all', '---', 0, '30977'),
(210, '171.213.29.24', '2020-06-29 11:11:34', 'admin', 'exit', '---', 0, '31930'),
(211, '222.210.139.229', '2020-07-04 16:01:51', 'admin', 'login', '---', 0, '21477'),
(212, '222.210.139.229', '2020-07-04 16:02:38', 'admin', 'EditTempvar', 'varid=1<br>var=header&amp;gid=2', 0, '17739'),
(213, '222.210.139.229', '2020-07-04 16:02:51', 'admin', 'ReIndex', '---', 0, '17746'),
(214, '222.210.139.229', '2020-07-04 16:02:56', 'admin', 'ReListHtml_all', '---', 0, '17746'),
(215, '222.210.139.229', '2020-07-04 16:05:54', 'admin', 'EditTempvar', 'varid=1<br>var=header&amp;gid=2', 0, '18103'),
(216, '222.210.139.229', '2020-07-04 16:07:03', 'admin', 'ReListHtml_all', '---', 0, '18184'),
(217, '222.210.139.229', '2020-07-04 16:07:07', 'admin', 'ReIndex', '---', 0, '18184'),
(218, '222.210.139.229', '2020-07-04 16:07:58', 'admin', 'exit', '---', 0, '18297');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsdownerror`
--

CREATE TABLE `hswl_enewsdownerror` (
  `errorid` int(10) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `errortext` varchar(255) NOT NULL DEFAULT '',
  `errortime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `errorip` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `cid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsdownrecord`
--

CREATE TABLE `hswl_enewsdownrecord` (
  `id` int(11) NOT NULL DEFAULT '0',
  `pathid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `cardfen` int(11) NOT NULL DEFAULT '0',
  `truetime` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `online` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsdownurlqz`
--

CREATE TABLE `hswl_enewsdownurlqz` (
  `urlid` smallint(5) UNSIGNED NOT NULL,
  `urlname` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `downtype` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewserrorclass`
--

CREATE TABLE `hswl_enewserrorclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsf`
--

CREATE TABLE `hswl_enewsf` (
  `fid` smallint(5) UNSIGNED NOT NULL,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `isadd` tinyint(1) NOT NULL DEFAULT '0',
  `isshow` tinyint(1) NOT NULL DEFAULT '0',
  `iscj` tinyint(1) NOT NULL DEFAULT '0',
  `cjhtml` mediumtext NOT NULL,
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `dotemp` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `savetxt` tinyint(1) NOT NULL DEFAULT '0',
  `fvalue` text NOT NULL,
  `iskey` tinyint(1) NOT NULL DEFAULT '0',
  `tobr` tinyint(1) NOT NULL DEFAULT '0',
  `dohtml` tinyint(1) NOT NULL DEFAULT '0',
  `qfhtml` mediumtext NOT NULL,
  `isonly` tinyint(1) NOT NULL DEFAULT '0',
  `linkfieldval` varchar(30) NOT NULL DEFAULT '',
  `samedata` tinyint(1) NOT NULL DEFAULT '0',
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  `tbdataf` tinyint(1) NOT NULL DEFAULT '0',
  `ispage` tinyint(1) NOT NULL DEFAULT '0',
  `adddofun` varchar(255) NOT NULL DEFAULT '',
  `editdofun` varchar(255) NOT NULL DEFAULT '',
  `qadddofun` varchar(255) NOT NULL DEFAULT '',
  `qeditdofun` varchar(255) NOT NULL DEFAULT '',
  `linkfieldtb` varchar(60) NOT NULL DEFAULT '',
  `linkfieldshow` varchar(30) NOT NULL DEFAULT '',
  `editorys` tinyint(1) NOT NULL DEFAULT '0',
  `issmalltext` tinyint(1) NOT NULL DEFAULT '0',
  `fmvnum` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsf`
--

INSERT INTO `hswl_enewsf` (`fid`, `f`, `fname`, `fform`, `fhtml`, `fzs`, `isadd`, `isshow`, `iscj`, `cjhtml`, `myorder`, `ftype`, `flen`, `dotemp`, `tid`, `tbname`, `savetxt`, `fvalue`, `iskey`, `tobr`, `dohtml`, `qfhtml`, `isonly`, `linkfieldval`, `samedata`, `fformsize`, `tbdataf`, `ispage`, `adddofun`, `editdofun`, `qadddofun`, `qeditdofun`, `linkfieldtb`, `linkfieldshow`, `editorys`, `issmalltext`, `fmvnum`) VALUES
(1, 'title', '标题', 'text', '<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#DBEAF5\\\">\r\n<tr> \r\n  <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">\r\n	<?=$tts?\\\"<select name=\\\'ttid\\\'><option value=\\\'0\\\'>标题分类</option>$tts</select>\\\":\\\"\\\"?>\r\n	<input type=text name=title value=\\\"<?=ehtmlspecialchars(stripSlashes($r[title]))?>\\\" size=\\\"60\\\"> \r\n	<input type=\\\"button\\\" name=\\\"button\\\" value=\\\"图文\\\" onclick=\\\"document.add.title.value=document.add.title.value+\\\'(图文)\\\';\\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">属性: \r\n	<input name=\\\"titlefont[b]\\\" type=\\\"checkbox\\\" value=\\\"b\\\"<?=$titlefontb?>>粗体\r\n	<input name=\\\"titlefont[i]\\\" type=\\\"checkbox\\\" value=\\\"i\\\"<?=$titlefonti?>>斜体\r\n	<input name=\\\"titlefont[s]\\\" type=\\\"checkbox\\\" value=\\\"s\\\"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\\"titlecolor\\\" type=\\\"text\\\" value=\\\"<?=stripSlashes($r[titlecolor])?>\\\" size=\\\"10\\\" class=\\\"color\\\">\r\n  </td>\r\n</tr>\r\n</table>', '标题', 0, 1, 1, '  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--title--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_title]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_title]\" type=\"text\" id=\"add[z_title]\" value=\"<?=stripSlashes($r[z_title])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 0, 'CHAR', '100', 1, 1, 'news', 0, '', 0, 0, 0, '<input name=\\\"title\\\" type=\\\"text\\\" size=\\\"42\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'title\\\',stripSlashes($r[title]))?>\\\">', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(2, 'special.field', '特殊属性', '', '<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#DBEAF5\\\">\r\n  <tr>\r\n    <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">信息属性: \r\n      <input name=\\\"checked\\\" type=\\\"checkbox\\\" value=\\\"1\\\"<?=$r[checked]?\\\' checked\\\':\\\'\\\'?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name=\\\"isgood\\\" id=\\\"isgood\\\">\r\n        <option value=\\\"0\\\">不推荐</option>\r\n	<?=$ftnr[\\\'igname\\\']?>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name=\\\"firsttitle\\\" id=\\\"firsttitle\\\">\r\n        <option value=\\\"0\\\">非头条</option>\r\n	<?=$ftnr[\\\'ftname\\\']?>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\\\"keyboard\\\" type=\\\"text\\\" size=\\\"52\\\" value=\\\"<?=stripSlashes($r[keyboard])?>\\\">\r\n      <font color=\\\"#666666\\\">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">外部链接: \r\n      <input name=\\\"titleurl\\\" type=\\\"text\\\" value=\\\"<?=stripSlashes($r[titleurl])?>\\\" size=\\\"52\\\">\r\n      <font color=\\\"#666666\\\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>', '特殊属性', 0, 1, 0, '', 1, '', '', 0, 1, 'news', 0, '', 0, 0, 0, '<input name=\\\"keyboard\\\" type=\\\"text\\\" size=42 value=\\\"<?=stripSlashes($r[keyboard])?>\\\">\r\n<font color=\\\"#666666\\\">(多个请用&quot;,&quot;隔开)</font>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(3, 'titlepic', '标题图片', 'img', '<input name=\\\"titlepic\\\" type=\\\"text\\\" id=\\\"titlepic\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[titlepic]))?>\\\" size=\\\"45\\\">\r\n<a onclick=\\\"window.open(\\\'ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=titlepic<?=$ecms_hashur[ehref]?>\\\',\\\'\\\',\\\'width=700,height=550,scrollbars=yes\\\');\\\" title=\\\"选择已上传的图片\\\"><img src=\\\"../data/images/changeimg.gif\\\" border=\\\"0\\\" align=\\\"absbottom\\\"></a>', '标题图片', 0, 1, 1, '  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--titlepic--]\\\" size=\\\"20\\\">\r\n      )</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\\"add[qz_titlepic]\\\" type=\\\"text\\\" id=\\\"add[qz_titlepic]\\\" value=\\\"<?=stripSlashes($r[qz_titlepic])?>\\\"> \r\n        <input name=\\\"add[save_titlepic]\\\" type=\\\"checkbox\\\" id=\\\"add[save_titlepic]\\\" value=\\\" checked\\\"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\\"add[zz_titlepic]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"add[zz_titlepic]\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\\"add[z_titlepic]\\\" type=\\\"text\\\" id=\\\"titlepic5\\\" value=\\\"<?=stripSlashes($r[z_titlepic])?>\\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '120', 1, 1, 'news', 0, '', 0, 0, 0, '<input type=\\\"file\\\" name=\\\"titlepicfile\\\" size=\\\"45\\\">', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(4, 'newstime', '发布时间', 'text', '<input name=\\\"newstime\\\" type=\\\"text\\\" value=\\\"<?=$r[newstime]?>\\\" size=\\\"28\\\" class=\\\"Wdate\\\" onClick=\\\"WdatePicker({skin:\\\'default\\\',dateFmt:\\\'yyyy-MM-dd HH:mm:ss\\\'})\\\"><input type=button name=button value=\\\"设为当前时间\\\" onclick=\\\"document.add.newstime.value=\\\'<?=$todaytime?>\\\'\\\">', '发布时间', 0, 1, 1, '  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--newstime--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_newstime]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_newstime]\" type=\"text\" id=\"add[z_newstime]\" value=\"<?=stripSlashes($r[z_newstime])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 1, 'INT', '11', 1, 1, 'news', 0, '', 1, 0, 0, '', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(5, 'ftitle', '副标题', 'text', '<input name=\\\"ftitle\\\" type=\\\"text\\\" size=60 id=\\\"ftitle\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[ftitle]))?>\\\">\r\n', '副标题', 1, 1, 1, '\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--ftitle--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_ftitle]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_ftitle]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_ftitle]\" type=\"text\" id=\"add[z_ftitle]\" value=\"<?=stripSlashes($r[z_ftitle])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'CHAR', '120', 1, 1, 'news', 0, '', 0, 0, 1, '<input name=\\\"ftitle\\\" type=\\\"text\\\" size=42 id=\\\"ftitle\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'ftitle\\\',stripSlashes($r[ftitle]))?>\\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(6, 'smalltext', '内容简介', 'textarea', '<textarea name=\\\"smalltext\\\" cols=\\\"80\\\" rows=\\\"10\\\" id=\\\"smalltext\\\"><?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[smalltext]))?></textarea>\r\n', '内容简介', 1, 1, 1, '\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--smalltext--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_smalltext]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_smalltext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_smalltext]\" type=\"text\" id=\"add[z_smalltext]\" value=\"<?=stripSlashes($r[z_smalltext])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '255', 1, 1, 'news', 0, '', 0, 1, 1, '<textarea name=\\\"smalltext\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"smalltext\\\"><?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'smalltext\\\',stripSlashes($r[smalltext]))?></textarea>\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 1, ''),
(7, 'writer', '作者', 'text', '<?php\r\n$writer_sql=$empire->query(\\\"select writer from {$dbtbpre}enewswriter\\\");\r\nwhile($w_r=$empire->fetch($writer_sql))\r\n{\r\n	$w_class.=\\\"<option value=\\\'\\\".$w_r[writer].\\\"\\\'>\\\".$w_r[writer].\\\"</option>\\\";\r\n}\r\n?>\r\n<input type=text name=writer value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[writer]))?>\\\" size=\\\"\\\"> \r\n        <select name=\\\"w_id\\\" id=\\\"select7\\\" onchange=\\\"document.add.writer.value=document.add.w_id.value\\\">\r\n          <option>选择作者</option>\r\n		  <?=$w_class?>\r\n        </select>\r\n<input type=\\\"button\\\" name=\\\"wbutton\\\" value=\\\"增加作者\\\" onclick=\\\"window.open(\\\'NewsSys/writer.php?<?=$ecms_hashur[ehref]?>&addwritername=\\\'+document.add.writer.value);\\\">\r\n', '作者', 1, 1, 1, '\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--writer--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_writer]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_writer]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_writer]\\\" type=\\\"text\\\" id=\\\"add[z_writer]\\\" value=\\\"<?=stripSlashes($r[z_writer])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '30', 1, 1, 'news', 0, '', 0, 0, 1, '<input name=\\\"writer\\\" type=\\\"text\\\" id=\\\"writer\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'writer\\\',stripSlashes($r[writer]))?>\\\" size=\\\"\\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(8, 'befrom', '信息来源', 'text', '<?php\r\n$befrom_sql=$empire->query(\\\"select sitename from {$dbtbpre}enewsbefrom\\\");\r\nwhile($b_r=$empire->fetch($befrom_sql))\r\n{\r\n	$b_class.=\\\"<option value=\\\'\\\".$b_r[sitename].\\\"\\\'>\\\".$b_r[sitename].\\\"</option>\\\";\r\n}\r\n?>\r\n<input type=\\\"text\\\" name=\\\"befrom\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[befrom]))?>\\\" size=\\\"\\\"> \r\n        <select name=\\\"befrom_id\\\" id=\\\"befromid\\\" onchange=\\\"document.add.befrom.value=document.add.befrom_id.value\\\">\r\n          <option>选择信息来源</option>\r\n          <?=$b_class?>\r\n        </select>\r\n<input type=\\\"button\\\" name=\\\"wbutton\\\" value=\\\"增加来源\\\" onclick=\\\"window.open(\\\'NewsSys/BeFrom.php?<?=$ecms_hashur[ehref]?>&addsitename=\\\'+document.add.befrom.value);\\\">\r\n', '信息来源', 1, 1, 1, '\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--befrom--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_befrom]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_befrom]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_befrom]\\\" type=\\\"text\\\" id=\\\"add[z_befrom]\\\" value=\\\"<?=stripSlashes($r[z_befrom])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '60', 1, 1, 'news', 0, '', 0, 0, 1, '<input name=\\\"befrom\\\" type=\\\"text\\\" id=\\\"befrom\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'befrom\\\',stripSlashes($r[befrom]))?>\\\" size=\\\"\\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(9, 'newstext', '新闻正文', 'editor', '<?=ECMS_ShowEditorVar(\\\"newstext\\\",$ecmsfirstpost==1?\\\"\\\":stripSlashes($r[newstext]),\\\"Default\\\",\\\"\\\",\\\"300\\\",\\\"100%\\\")?>\r\n\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#e5e8eb\\\">\r\n<tr>\r\n<td bgcolor=\\\"#FFFFFF\\\" height=\\\"50\\\">&nbsp;&nbsp;<input name=\\\"dokey\\\" type=\\\"checkbox\\\" value=\\\"1\\\"<?=$r[dokey]==1?\\\' checked\\\':\\\'\\\'?>>\r\n关键字替换&nbsp;&nbsp;\r\n<input name=\\\"copyimg\\\" type=\\\"checkbox\\\" id=\\\"copyimg\\\" value=\\\"1\\\">\r\n远程保存图片(\r\n<input name=\\\"mark\\\" type=\\\"checkbox\\\" id=\\\"mark\\\" value=\\\"1\\\">\r\n<a href=\\\"SetEnews.php<?=$ecms_hashur[whehref]?>\\\" target=\\\"_blank\\\">加水印</a>)&nbsp;&nbsp;\r\n<input name=\\\"copyflash\\\" type=\\\"checkbox\\\" id=\\\"copyflash\\\" value=\\\"1\\\">\r\n远程保存FLASH(地址前缀：<input name=\\\"qz_url\\\" type=\\\"text\\\" id=\\\"qz_url\\\" size=\\\"\\\">)</td>\r\n</tr>\r\n<tr>\r\n<td bgcolor=\\\"#FFFFFF\\\" height=\\\"50\\\">&nbsp;&nbsp;<input name=\\\"repimgnexturl\\\" type=\\\"checkbox\\\" id=\\\"repimgnexturl\\\" value=\\\"1\\\">\r\n图片链接转为下一页&nbsp;&nbsp;<input name=\\\"autopage\\\" type=\\\"checkbox\\\" id=\\\"autopage\\\" value=\\\"1\\\">\r\n自动分页,每<input name=\\\"autosize\\\" type=\\\"text\\\" id=\\\"autosize\\\" value=\\\"5000\\\" size=\\\"5\\\">\r\n个字节为一页&nbsp;&nbsp; 取第\r\n<input name=\\\"getfirsttitlepic\\\" type=\\\"text\\\" id=\\\"getfirsttitlepic\\\" value=\\\"1\\\" size=\\\"1\\\">\r\n张上传图为标题图片(\r\n<input name=\\\"getfirsttitlespic\\\" type=\\\"checkbox\\\" id=\\\"getfirsttitlespic\\\" value=\\\"1\\\">\r\n缩略图: 宽\r\n<input name=\\\"getfirsttitlespicw\\\" type=\\\"text\\\" id=\\\"getfirsttitlespicw\\\" size=\\\"3\\\" value=\\\"<?=$public_r[spicwidth]?>\\\">\r\n*高\r\n<input name=\\\"getfirsttitlespich\\\" type=\\\"text\\\" id=\\\"getfirsttitlespich\\\" size=\\\"3\\\" value=\\\"<?=$public_r[spicheight]?>\\\">\r\n)</td>\r\n</tr>\r\n</table>', '新闻正文', 1, 1, 1, '\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--newstext--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_newstext]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_newstext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_newstext]\\\" type=\\\"text\\\" id=\\\"add[z_newstext]\\\" value=\\\"<?=stripSlashes($r[z_newstext])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'MEDIUMTEXT', '', 1, 1, 'news', 0, '', 0, 1, 1, '<?=ECMS_ShowEditorVar(\\\"newstext\\\",$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'newstext\\\',stripSlashes($r[newstext])),\\\"Default\\\",\\\"\\\",\\\"300\\\",\\\"100%\\\")?>\r\n', 0, '', 0, '', 1, 1, '', '', '', '', '', '', 0, 0, ''),
(10, 'diggtop', '顶', 'text', '\r\n<input name=\"diggtop\" type=\"text\" id=\"diggtop\" value=\"<?=$ecmsfirstpost==1?\"\":ehtmlspecialchars(stripSlashes($r[diggtop]))?>\" size=\"\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--diggtop--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_diggtop]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_diggtop]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_diggtop]\" type=\"text\" id=\"add[z_diggtop]\" value=\"<?=stripSlashes($r[z_diggtop])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 3, 'INT', '', 1, 1, 'news', 0, '', 0, 0, 1, '\r\n<input name=\"diggtop\" type=\"text\" id=\"diggtop\" value=\"<?=$ecmsfirstpost==1?\"\":DoReqValue($mid,\'diggtop\',stripSlashes($r[diggtop]))?>\" size=\"\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsfava`
--

CREATE TABLE `hswl_enewsfava` (
  `favaid` bigint(20) NOT NULL,
  `id` int(11) NOT NULL DEFAULT '0',
  `favatime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsfavaclass`
--

CREATE TABLE `hswl_enewsfavaclass` (
  `cid` int(11) NOT NULL,
  `cname` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsfeedback`
--

CREATE TABLE `hswl_enewsfeedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `bid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `saytext` text NOT NULL,
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `saytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `filepath` varchar(20) NOT NULL DEFAULT '',
  `filename` text NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `eipport` varchar(6) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsfeedbackclass`
--

CREATE TABLE `hswl_enewsfeedbackclass` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `bname` varchar(60) NOT NULL DEFAULT '',
  `btemp` mediumtext NOT NULL,
  `bzs` varchar(255) NOT NULL DEFAULT '',
  `enter` text NOT NULL,
  `mustenter` text NOT NULL,
  `filef` varchar(255) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `checkboxf` text NOT NULL,
  `usernames` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsfeedbackclass`
--

INSERT INTO `hswl_enewsfeedbackclass` (`bid`, `bname`, `btemp`, `bzs`, `enter`, `mustenter`, `filef`, `groupid`, `checkboxf`, `usernames`) VALUES
(1, '默认反馈分类', '<!DOCTYPE html>\r\n<html lang=\\\"en\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<meta http-equiv=\\\"refresh\\\" content=\\\"0;url=JavaScript:history.go(-1)\\\">\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n</html>', '', '联系人<!--field--->title<!--record-->联系电话<!--field--->mycall<!--record-->联系邮箱<!--field--->email<!--record-->留言内容<!--field--->saytext<!--record-->', ',title,mycall,', ',', 0, ',', '');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsfeedbackf`
--

CREATE TABLE `hswl_enewsfeedbackf` (
  `fid` smallint(5) UNSIGNED NOT NULL,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsfeedbackf`
--

INSERT INTO `hswl_enewsfeedbackf` (`fid`, `f`, `fname`, `fform`, `fzs`, `myorder`, `ftype`, `flen`, `fformsize`, `fvalue`) VALUES
(1, 'title', '姓名', 'text', '', 0, 'VARCHAR', '120', '', ''),
(2, 'saytext', '内容', 'textarea', '', 3, 'TEXT', '', '', ''),
(4, 'email', '邮箱', 'text', '', 2, 'VARCHAR', '80', '', ''),
(5, 'mycall', '电话', 'text', '', 1, 'VARCHAR', '30', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsfile_1`
--

CREATE TABLE `hswl_enewsfile_1` (
  `fileid` int(10) UNSIGNED NOT NULL,
  `pubid` bigint(16) UNSIGNED NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `onclick` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cjid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsfile_1`
--

INSERT INTO `hswl_enewsfile_1` (`fileid`, `pubid`, `filename`, `filesize`, `path`, `adduser`, `filetime`, `classid`, `no`, `type`, `onclick`, `id`, `cjid`, `fpath`, `modtype`) VALUES
(1, 1000010000000003, '6ff96170947f926429afd18352680b4b.jpg', 19885, '', 'admin', 1592363614, 19, 'zuzi.jpg', 1, 0, 3, 0, 2, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsfile_member`
--

CREATE TABLE `hswl_enewsfile_member` (
  `fileid` int(10) UNSIGNED NOT NULL,
  `pubid` tinyint(1) NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `classid` tinyint(1) NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `onclick` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cjid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsfile_other`
--

CREATE TABLE `hswl_enewsfile_other` (
  `fileid` int(10) UNSIGNED NOT NULL,
  `pubid` tinyint(1) NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `classid` tinyint(1) NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `onclick` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cjid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsfile_public`
--

CREATE TABLE `hswl_enewsfile_public` (
  `fileid` int(10) UNSIGNED NOT NULL,
  `pubid` tinyint(1) NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `classid` tinyint(1) NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `onclick` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cjid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsgbook`
--

CREATE TABLE `hswl_enewsgbook` (
  `lyid` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `lytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lytext` text NOT NULL,
  `retext` text NOT NULL,
  `bid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `eipport` varchar(6) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsgbookclass`
--

CREATE TABLE `hswl_enewsgbookclass` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `bname` varchar(60) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsgbookclass`
--

INSERT INTO `hswl_enewsgbookclass` (`bid`, `bname`, `checked`, `groupid`) VALUES
(1, '默认留言分类', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsgfenip`
--

CREATE TABLE `hswl_enewsgfenip` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsgoodtype`
--

CREATE TABLE `hswl_enewsgoodtype` (
  `tid` smallint(5) UNSIGNED NOT NULL,
  `tname` varchar(60) NOT NULL DEFAULT '',
  `ttype` tinyint(1) NOT NULL DEFAULT '0',
  `levelid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `groupid` varchar(255) NOT NULL DEFAULT '',
  `showall` tinyint(1) NOT NULL DEFAULT '0',
  `showcid` text NOT NULL,
  `hiddencid` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsgoodtype`
--

INSERT INTO `hswl_enewsgoodtype` (`tid`, `tname`, `ttype`, `levelid`, `myorder`, `groupid`, `showall`, `showcid`, `hiddencid`) VALUES
(1, '一级头条', 1, 1, 0, '', 0, '', ''),
(2, '二级头条', 1, 2, 0, '', 0, '', ''),
(3, '三级头条', 1, 3, 0, '', 0, '', ''),
(4, '四级头条', 1, 4, 0, '', 0, '', ''),
(5, '五级头条', 1, 5, 0, '', 0, '', ''),
(6, '六级头条', 1, 6, 0, '', 0, '', ''),
(7, '七级头条', 1, 7, 0, '', 0, '', ''),
(8, '八级头条', 1, 8, 0, '', 0, '', ''),
(9, '九级头条', 1, 9, 0, '', 0, '', ''),
(10, '一级推荐', 0, 1, 0, '', 0, '', ''),
(11, '二级推荐', 0, 2, 0, '', 0, '', ''),
(12, '三级推荐', 0, 3, 0, '', 0, '', ''),
(13, '四级推荐', 0, 4, 0, '', 0, '', ''),
(14, '五级推荐', 0, 5, 0, '', 0, '', ''),
(15, '六级推荐', 0, 6, 0, '', 0, '', ''),
(16, '七级推荐', 0, 7, 0, '', 0, '', ''),
(17, '八级推荐', 0, 8, 0, '', 0, '', ''),
(18, '九级推荐', 0, 9, 0, '', 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsgroup`
--

CREATE TABLE `hswl_enewsgroup` (
  `groupid` smallint(6) NOT NULL,
  `groupname` varchar(50) NOT NULL DEFAULT '',
  `dopublic` tinyint(1) NOT NULL DEFAULT '0',
  `doclass` tinyint(1) NOT NULL DEFAULT '0',
  `dotemplate` tinyint(1) NOT NULL DEFAULT '0',
  `dopicnews` tinyint(1) NOT NULL DEFAULT '0',
  `dofile` tinyint(1) NOT NULL DEFAULT '0',
  `douser` tinyint(1) NOT NULL DEFAULT '0',
  `dolog` tinyint(1) NOT NULL DEFAULT '0',
  `domember` tinyint(1) NOT NULL DEFAULT '0',
  `dobefrom` tinyint(1) NOT NULL DEFAULT '0',
  `doword` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `doad` tinyint(1) NOT NULL DEFAULT '0',
  `dovote` tinyint(1) NOT NULL DEFAULT '0',
  `dogroup` tinyint(1) NOT NULL DEFAULT '0',
  `doall` tinyint(1) NOT NULL DEFAULT '0',
  `docj` tinyint(1) NOT NULL DEFAULT '0',
  `dobq` tinyint(1) NOT NULL DEFAULT '0',
  `domovenews` tinyint(1) NOT NULL DEFAULT '0',
  `dopostdata` tinyint(1) NOT NULL DEFAULT '0',
  `dochangedata` tinyint(1) NOT NULL DEFAULT '0',
  `dopl` tinyint(1) NOT NULL DEFAULT '0',
  `dof` tinyint(1) NOT NULL DEFAULT '0',
  `dom` tinyint(1) NOT NULL DEFAULT '0',
  `dodo` tinyint(1) NOT NULL DEFAULT '0',
  `dodbdata` tinyint(1) NOT NULL DEFAULT '0',
  `dorepnewstext` tinyint(1) NOT NULL DEFAULT '0',
  `dotempvar` tinyint(1) NOT NULL DEFAULT '0',
  `dostats` tinyint(1) NOT NULL DEFAULT '0',
  `dowriter` tinyint(1) NOT NULL DEFAULT '0',
  `dototaldata` tinyint(1) NOT NULL DEFAULT '0',
  `dosearchkey` tinyint(1) NOT NULL DEFAULT '0',
  `dozt` tinyint(1) NOT NULL DEFAULT '0',
  `docard` tinyint(1) NOT NULL DEFAULT '0',
  `dolink` tinyint(1) NOT NULL DEFAULT '0',
  `doselfinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doexecsql` tinyint(1) NOT NULL DEFAULT '0',
  `dotable` tinyint(1) NOT NULL DEFAULT '0',
  `dodownurl` tinyint(1) NOT NULL DEFAULT '0',
  `dodeldownrecord` tinyint(1) NOT NULL DEFAULT '0',
  `doshoppayfs` tinyint(1) NOT NULL DEFAULT '0',
  `doshopps` tinyint(1) NOT NULL DEFAULT '0',
  `doshopdd` tinyint(1) NOT NULL DEFAULT '0',
  `dogbook` tinyint(1) NOT NULL DEFAULT '0',
  `dofeedback` tinyint(1) NOT NULL DEFAULT '0',
  `douserpage` tinyint(1) NOT NULL DEFAULT '0',
  `donotcj` tinyint(1) NOT NULL DEFAULT '0',
  `dodownerror` tinyint(1) NOT NULL DEFAULT '0',
  `dodelinfodata` tinyint(1) NOT NULL DEFAULT '0',
  `doaddinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doeditinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dodelinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doadminstyle` tinyint(1) NOT NULL DEFAULT '0',
  `dorepdownpath` tinyint(1) NOT NULL DEFAULT '0',
  `douserjs` tinyint(1) NOT NULL DEFAULT '0',
  `douserlist` tinyint(1) NOT NULL DEFAULT '0',
  `domsg` tinyint(1) NOT NULL DEFAULT '0',
  `dosendemail` tinyint(1) NOT NULL DEFAULT '0',
  `dosetmclass` tinyint(1) NOT NULL DEFAULT '0',
  `doinfodoc` tinyint(1) NOT NULL DEFAULT '0',
  `dotempgroup` tinyint(1) NOT NULL DEFAULT '0',
  `dofeedbackf` tinyint(1) NOT NULL DEFAULT '0',
  `dotask` tinyint(1) NOT NULL DEFAULT '0',
  `domemberf` tinyint(1) NOT NULL DEFAULT '0',
  `dospacestyle` tinyint(1) NOT NULL DEFAULT '0',
  `dospacedata` tinyint(1) NOT NULL DEFAULT '0',
  `dovotemod` tinyint(1) NOT NULL DEFAULT '0',
  `doplayer` tinyint(1) NOT NULL DEFAULT '0',
  `dowap` tinyint(1) NOT NULL DEFAULT '0',
  `dopay` tinyint(1) NOT NULL DEFAULT '0',
  `dobuygroup` tinyint(1) NOT NULL DEFAULT '0',
  `dosearchall` tinyint(1) NOT NULL DEFAULT '0',
  `doinfotype` tinyint(1) NOT NULL DEFAULT '0',
  `doplf` tinyint(1) NOT NULL DEFAULT '0',
  `dopltable` tinyint(1) NOT NULL DEFAULT '0',
  `dochadminstyle` tinyint(1) NOT NULL DEFAULT '0',
  `dotags` tinyint(1) NOT NULL DEFAULT '0',
  `dosp` tinyint(1) NOT NULL DEFAULT '0',
  `doyh` tinyint(1) NOT NULL DEFAULT '0',
  `dofirewall` tinyint(1) NOT NULL DEFAULT '0',
  `dosetsafe` tinyint(1) NOT NULL DEFAULT '0',
  `douserclass` tinyint(1) NOT NULL DEFAULT '0',
  `doworkflow` tinyint(1) NOT NULL DEFAULT '0',
  `domenu` tinyint(1) NOT NULL DEFAULT '0',
  `dopubvar` tinyint(1) NOT NULL DEFAULT '0',
  `doclassf` tinyint(1) NOT NULL DEFAULT '0',
  `doztf` tinyint(1) NOT NULL DEFAULT '0',
  `dofiletable` tinyint(1) NOT NULL DEFAULT '0',
  `docheckinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dogoodinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dodocinfo` tinyint(1) NOT NULL DEFAULT '0',
  `domoveinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dodttemp` tinyint(1) NOT NULL DEFAULT '0',
  `doloadcj` tinyint(1) NOT NULL DEFAULT '0',
  `domustcheck` tinyint(1) NOT NULL DEFAULT '0',
  `docheckedit` tinyint(1) NOT NULL DEFAULT '0',
  `domemberconnect` tinyint(1) NOT NULL DEFAULT '0',
  `doprecode` tinyint(1) NOT NULL DEFAULT '0',
  `domoreport` tinyint(1) NOT NULL DEFAULT '0',
  `docanhtml` tinyint(1) NOT NULL DEFAULT '0',
  `dodelclass` tinyint(1) NOT NULL DEFAULT '0',
  `doinfofile` tinyint(1) NOT NULL DEFAULT '0',
  `doingroup` tinyint(1) NOT NULL DEFAULT '0',
  `domembergroup` tinyint(1) NOT NULL DEFAULT '0',
  `doviewgroup` tinyint(1) NOT NULL DEFAULT '0',
  `domadmingroup` tinyint(1) NOT NULL DEFAULT '0',
  `dochmoreport` tinyint(1) NOT NULL DEFAULT '0',
  `doisqf` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsgroup`
--

INSERT INTO `hswl_enewsgroup` (`groupid`, `groupname`, `dopublic`, `doclass`, `dotemplate`, `dopicnews`, `dofile`, `douser`, `dolog`, `domember`, `dobefrom`, `doword`, `dokey`, `doad`, `dovote`, `dogroup`, `doall`, `docj`, `dobq`, `domovenews`, `dopostdata`, `dochangedata`, `dopl`, `dof`, `dom`, `dodo`, `dodbdata`, `dorepnewstext`, `dotempvar`, `dostats`, `dowriter`, `dototaldata`, `dosearchkey`, `dozt`, `docard`, `dolink`, `doselfinfo`, `doexecsql`, `dotable`, `dodownurl`, `dodeldownrecord`, `doshoppayfs`, `doshopps`, `doshopdd`, `dogbook`, `dofeedback`, `douserpage`, `donotcj`, `dodownerror`, `dodelinfodata`, `doaddinfo`, `doeditinfo`, `dodelinfo`, `doadminstyle`, `dorepdownpath`, `douserjs`, `douserlist`, `domsg`, `dosendemail`, `dosetmclass`, `doinfodoc`, `dotempgroup`, `dofeedbackf`, `dotask`, `domemberf`, `dospacestyle`, `dospacedata`, `dovotemod`, `doplayer`, `dowap`, `dopay`, `dobuygroup`, `dosearchall`, `doinfotype`, `doplf`, `dopltable`, `dochadminstyle`, `dotags`, `dosp`, `doyh`, `dofirewall`, `dosetsafe`, `douserclass`, `doworkflow`, `domenu`, `dopubvar`, `doclassf`, `doztf`, `dofiletable`, `docheckinfo`, `dogoodinfo`, `dodocinfo`, `domoveinfo`, `dodttemp`, `doloadcj`, `domustcheck`, `docheckedit`, `domemberconnect`, `doprecode`, `domoreport`, `docanhtml`, `dodelclass`, `doinfofile`, `doingroup`, `domembergroup`, `doviewgroup`, `domadmingroup`, `dochmoreport`, `doisqf`) VALUES
(1, '超级管理员', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewshmsg`
--

CREATE TABLE `hswl_enewshmsg` (
  `mid` int(10) UNSIGNED NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `issys` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewshnotice`
--

CREATE TABLE `hswl_enewshnotice` (
  `mid` int(10) UNSIGNED NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewshy`
--

CREATE TABLE `hswl_enewshy` (
  `fid` bigint(20) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `cid` int(11) NOT NULL DEFAULT '0',
  `fsay` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewshyclass`
--

CREATE TABLE `hswl_enewshyclass` (
  `cid` int(11) NOT NULL,
  `cname` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsindexpage`
--

CREATE TABLE `hswl_enewsindexpage` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsinfoclass`
--

CREATE TABLE `hswl_enewsinfoclass` (
  `classid` int(11) NOT NULL,
  `bclassid` int(11) NOT NULL DEFAULT '0',
  `classname` varchar(100) NOT NULL DEFAULT '',
  `infourl` mediumtext NOT NULL,
  `newsclassid` smallint(6) NOT NULL DEFAULT '0',
  `startday` date NOT NULL DEFAULT '0000-00-00',
  `endday` date NOT NULL DEFAULT '0000-00-00',
  `bz` text NOT NULL,
  `num` smallint(6) NOT NULL DEFAULT '0',
  `copyimg` tinyint(1) NOT NULL DEFAULT '0',
  `renum` smallint(6) NOT NULL DEFAULT '0',
  `keyboard` text NOT NULL,
  `oldword` text NOT NULL,
  `newword` text NOT NULL,
  `titlelen` smallint(6) NOT NULL DEFAULT '0',
  `retitlewriter` tinyint(1) NOT NULL DEFAULT '0',
  `smalltextlen` smallint(6) NOT NULL DEFAULT '0',
  `zz_smallurl` text NOT NULL,
  `zz_newsurl` text NOT NULL,
  `httpurl` varchar(255) NOT NULL DEFAULT '',
  `repad` text NOT NULL,
  `imgurl` varchar(255) NOT NULL DEFAULT '',
  `relistnum` smallint(6) NOT NULL DEFAULT '0',
  `zz_titlepicl` text NOT NULL,
  `z_titlepicl` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepicl` varchar(255) NOT NULL DEFAULT '',
  `save_titlepicl` varchar(10) NOT NULL DEFAULT '',
  `keynum` tinyint(4) NOT NULL DEFAULT '0',
  `insertnum` smallint(6) NOT NULL DEFAULT '0',
  `copyflash` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `pagetype` tinyint(1) NOT NULL DEFAULT '0',
  `smallpagezz` text NOT NULL,
  `pagezz` text NOT NULL,
  `smallpageallzz` text NOT NULL,
  `pageallzz` text NOT NULL,
  `mark` tinyint(1) NOT NULL DEFAULT '0',
  `enpagecode` tinyint(1) NOT NULL DEFAULT '0',
  `recjtheurl` tinyint(1) NOT NULL DEFAULT '0',
  `hiddenload` tinyint(1) NOT NULL DEFAULT '0',
  `justloadin` tinyint(1) NOT NULL DEFAULT '0',
  `justloadcheck` tinyint(1) NOT NULL DEFAULT '0',
  `delloadinfo` tinyint(1) NOT NULL DEFAULT '0',
  `pagerepad` mediumtext NOT NULL,
  `newsztid` text NOT NULL,
  `getfirstpic` tinyint(4) NOT NULL DEFAULT '0',
  `oldpagerep` text NOT NULL,
  `newpagerep` text NOT NULL,
  `keeptime` smallint(6) NOT NULL DEFAULT '0',
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `newstextisnull` tinyint(1) NOT NULL DEFAULT '0',
  `getfirstspic` tinyint(1) NOT NULL DEFAULT '0',
  `getfirstspicw` smallint(6) NOT NULL DEFAULT '0',
  `getfirstspich` smallint(6) NOT NULL DEFAULT '0',
  `doaddtextpage` tinyint(1) NOT NULL DEFAULT '0',
  `infourlispage` tinyint(1) NOT NULL DEFAULT '0',
  `repf` varchar(255) NOT NULL DEFAULT '',
  `repadf` varchar(255) NOT NULL DEFAULT '',
  `loadkeeptime` smallint(6) NOT NULL DEFAULT '0',
  `isnullf` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsinfotype`
--

CREATE TABLE `hswl_enewsinfotype` (
  `typeid` smallint(5) UNSIGNED NOT NULL,
  `tname` varchar(30) NOT NULL DEFAULT '',
  `mid` smallint(6) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `yhid` smallint(6) NOT NULL DEFAULT '0',
  `tnum` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `listtempid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `tpath` varchar(100) NOT NULL DEFAULT '',
  `ttype` varchar(10) NOT NULL DEFAULT '',
  `maxnum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `tid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `timg` varchar(200) NOT NULL DEFAULT '',
  `intro` varchar(255) NOT NULL DEFAULT '',
  `pagekey` varchar(255) NOT NULL DEFAULT '',
  `newline` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `hotline` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `goodline` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `hotplline` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `firstline` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `jstempid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `nrejs` tinyint(1) NOT NULL DEFAULT '0',
  `listdt` tinyint(1) NOT NULL DEFAULT '0',
  `repagenum` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `fclast` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsinfovote`
--

CREATE TABLE `hswl_enewsinfovote` (
  `pubid` bigint(16) UNSIGNED NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `votenum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `voteip` mediumtext NOT NULL,
  `votetext` text NOT NULL,
  `voteclass` tinyint(1) NOT NULL DEFAULT '0',
  `doip` tinyint(1) NOT NULL DEFAULT '0',
  `dotime` date NOT NULL DEFAULT '0000-00-00',
  `tempid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `width` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `height` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `diyotherlink` tinyint(1) NOT NULL DEFAULT '0',
  `infouptime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `infodowntime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `copyids` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsingroup`
--

CREATE TABLE `hswl_enewsingroup` (
  `gid` smallint(5) UNSIGNED NOT NULL,
  `gname` char(60) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsjstemp`
--

CREATE TABLE `hswl_enewsjstemp` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `showdate` varchar(20) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `subtitle` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsjstemp`
--

INSERT INTO `hswl_enewsjstemp` (`tempid`, `tempname`, `temptext`, `classid`, `isdefault`, `showdate`, `modid`, `subnews`, `subtitle`) VALUES
(1, '默认js模板', '[!--empirenews.listtemp--]<li><a href=\\\"[!--titleurl--]\\\" title=\\\"[!--oldtitle--]\\\">[!--title--]</a></li>[!--empirenews.listtemp--]', 0, 1, 'm-d', 1, 0, 32);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsjstempclass`
--

CREATE TABLE `hswl_enewsjstempclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsjstemp_2`
--

CREATE TABLE `hswl_enewsjstemp_2` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `showdate` varchar(20) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `subtitle` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsjstemp_2`
--

INSERT INTO `hswl_enewsjstemp_2` (`tempid`, `tempname`, `temptext`, `classid`, `isdefault`, `showdate`, `modid`, `subnews`, `subtitle`) VALUES
(1, '默认js模板', '[!--empirenews.listtemp--]<li><a href=\\\"[!--titleurl--]\\\" title=\\\"[!--oldtitle--]\\\">[!--title--]</a></li>[!--empirenews.listtemp--]', 0, 1, 'm-d', 1, 0, 32);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewskey`
--

CREATE TABLE `hswl_enewskey` (
  `keyid` smallint(5) UNSIGNED NOT NULL,
  `keyname` char(50) NOT NULL DEFAULT '',
  `keyurl` char(200) NOT NULL DEFAULT '',
  `cid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewskeyclass`
--

CREATE TABLE `hswl_enewskeyclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` char(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewslink`
--

CREATE TABLE `hswl_enewslink` (
  `lid` smallint(5) UNSIGNED NOT NULL,
  `lname` varchar(100) NOT NULL DEFAULT '',
  `lpic` varchar(255) NOT NULL DEFAULT '',
  `lurl` varchar(255) NOT NULL DEFAULT '',
  `ltime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `width` varchar(10) NOT NULL DEFAULT '',
  `height` varchar(10) NOT NULL DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '',
  `myorder` tinyint(4) NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `lsay` text NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `ltype` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewslinkclass`
--

CREATE TABLE `hswl_enewslinkclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewslinktmp`
--

CREATE TABLE `hswl_enewslinktmp` (
  `newsurl` varchar(255) NOT NULL DEFAULT '',
  `checkrnd` varchar(50) NOT NULL DEFAULT '',
  `linkid` bigint(20) NOT NULL,
  `titlepic` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewslisttemp`
--

CREATE TABLE `hswl_enewslisttemp` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewslisttemp`
--

INSERT INTO `hswl_enewslisttemp` (`tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`) VALUES
(1, '新闻列表模板', '<!DOCTYPE html\r\n    PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head id=\\\"Head1\\\">\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link href=\\\"/css/Common.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    <!--Content:Start-->\r\n    <div class=\\\"linkUsBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--分类列表-->\r\n        <div class=\\\"newsListMenu\\\">\r\n            <ul class=\\\'clearfix\\\'>\r\n                [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n            </ul>\r\n        </div>\r\n        <script type=\\\"text/javascript\\\">\r\n            $(\\\'.newsListMenu li a\\\').each(function() {\r\n                $this = $(this);\r\n                if ($this[0].href == String(window.location)) {\r\n                    $this.parents(\\\'li\\\').addClass(\\\'cur\\\');\r\n                }\r\n            });\r\n        </script>\r\n        \r\n        <!-- newsListCon -->\r\n        <div class=\\\"newsListCon\\\">\r\n            <div class=\\\"mainCon\\\">\r\n                <div class=\\\"conBox\\\">\r\n                    <div class=\\\"con\\\">\r\n                        [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]\r\n                        \r\n                    </div>\r\n                    <div class=\\\"clear\\\"></div>\r\n                    \r\n                    <div class=\\\"pageBox\\\">[!--show.listpage--]</div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--Content:End-->\r\n    \r\n    [!--temp.footer--]\r\n</body>\r\n</html>', 280, 0, '<dl class=\\\"clearfix\\\">\r\n                            <dt><a href=\\\"[!--titleurl--]\\\"><img src=\\\"[!--titlepic--]\\\" alt=\\\"[!--title--]\\\" /></a></dt>\r\n                            <dd>\r\n                                <h3><a href=\\\"[!--titleurl--]\\\">[!--title--]</a></h3>\r\n                                <p><a href=\\\"[!--titleurl--]\\\">\r\n                                    [!--smalltext--]……\r\n                                </a></p>\r\n                                <span class=\\\"rq\\\">[!--newstime--]</span>\r\n                                <a href=\\\"[!--titleurl--]\\\" class=\\\"more\\\"></a>\r\n                            </dd>\r\n                        </dl>', 1, 1, 'Y-m-d', 0, 0, 0),
(2, '通用列表模板', '<!DOCTYPE html\r\n    PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head id=\\\"Head1\\\">\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link href=\\\"/css/fancybox.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Common.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    <!--Content:Start-->\r\n    <div class=\\\"aboutBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--分类列表-->\r\n        <div class=\\\"aboutMenu\\\">\r\n            <ul class=\\\'clearfix\\\'>\r\n                [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n            </ul>\r\n        </div>\r\n        \r\n        <script>\r\n            $(document).scroll(function () {\r\n                $(window).scroll(function () {\r\n                    var oTop = $(window).scrollTop();\r\n                    if (oTop > 600) {\r\n                        $(\\\".aboutMenu\\\").css({ \\\'position\\\': \\\'fixed\\\', \\\'top\\\': \\\'0\\\', \\\'width\\\': \\\'100%\\\', \\\'background-color\\\': \\\'#fff\\\', \\\'padding-bottom\\\': \\\'20px\\\', \\\'padding-top\\\': \\\'20px\\\', \\\"z-index\\\": \\\'9999\\\' });\r\n                    }\r\n                    else {\r\n                        $(\\\".aboutMenu\\\").css({ \\\'position\\\': \\\'\\\', \\\'top\\\': \\\'\\\', \\\'width\\\': \\\'\\\', \\\'background\\\': \\\'none\\\', \\\'padding-bottom\\\': \\\'\\\', \\\'padding-top\\\': \\\'40px\\\' })\r\n                    }\r\n                })\r\n            })\r\n\r\n            $(\\\'.aboutMenu li a\\\').each(function() {\r\n                $this = $(this);\r\n                if ($this[0].href == String(window.location)) {\r\n                    $this.parents(\\\'li\\\').addClass(\\\'cur\\\');\r\n                }\r\n            });\r\n        </script>\r\n        <!-- newsListCon -->\r\n        <div class=\\\"helpListCon\\\">\r\n            <div class=\\\"mainCon\\\">\r\n                <div class=\\\"conBox\\\">\r\n                    <div class=\\\"con\\\">\r\n                        [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]\r\n                        \r\n                    </div>\r\n                    <div class=\\\"clear\\\"></div>\r\n\r\n                    <div class=\\\"pageBox\\\">[!--show.listpage--]</div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--Content:End-->\r\n    \r\n    [!--temp.footer--]\r\n    <!-- <script src=\\\"/js/jquery.fancybox-1.3.1.pack.js\\\" type=\\\"text/javascript\\\"></script>\r\n    <script type=\\\"text/javascript\\\">\r\n        var SID = \\\"0001,0009,0019\\\";\r\n        headNavPosition(MARK, SID);\r\n        $(\\\"a[rel=group]\\\").fancybox({\r\n            \\\'titlePosition\\\': \\\'over\\\',\r\n            \\\'cyclic\\\': true,\r\n            \\\'titleFormat\\\': function (title, currentArray, currentIndex, currentOpts) {\r\n                return \\\'<span id=\\\"fancybox-title-over\\\">\\\' + (currentIndex + 1) + \\\' / \\\' + currentArray.length + (title.length ? \\\' &nbsp; \\\' + title : \\\'\\\') + \\\'</span>\\\';\r\n            }\r\n        });\r\n    </script> -->\r\n</body>\r\n</html>', 0, 0, '<dl class=\\\"dl_2\\\">\r\n                            <dt><a href=\\\"[!--titleurl--]\\\"><img src=\\\"[!--titlepic--]\\\" alt=\\\"[!--title--]\\\" /></a></dt>\r\n                            <dd><a href=\\\"[!--titleurl--]\\\">[!--title--]</a></dd>\r\n                        </dl>', 1, 1, 'Y-m-d', 0, 0, 0),
(3, '合作列表模板', '<!DOCTYPE html\r\n    PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head id=\\\"Head1\\\">\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link href=\\\"/css/fancybox.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Common.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    <!--Content:Start-->\r\n    <div class=\\\"aboutBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--分类列表-->\r\n        <div class=\\\"aboutMenu\\\">\r\n            <ul class=\\\'clearfix\\\'>\r\n                [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n            </ul>\r\n        </div>\r\n        \r\n        <script>\r\n            $(document).scroll(function () {\r\n                $(window).scroll(function () {\r\n                    var oTop = $(window).scrollTop();\r\n                    if (oTop > 600) {\r\n                        $(\\\".aboutMenu\\\").css({ \\\'position\\\': \\\'fixed\\\', \\\'top\\\': \\\'0\\\', \\\'width\\\': \\\'100%\\\', \\\'background-color\\\': \\\'#fff\\\', \\\'padding-bottom\\\': \\\'20px\\\', \\\'padding-top\\\': \\\'20px\\\', \\\"z-index\\\": \\\'9999\\\' });\r\n                    }\r\n                    else {\r\n                        $(\\\".aboutMenu\\\").css({ \\\'position\\\': \\\'\\\', \\\'top\\\': \\\'\\\', \\\'width\\\': \\\'\\\', \\\'background\\\': \\\'none\\\', \\\'padding-bottom\\\': \\\'\\\', \\\'padding-top\\\': \\\'40px\\\' })\r\n                    }\r\n                })\r\n            })\r\n\r\n            $(\\\'.aboutMenu li a\\\').each(function() {\r\n                $this = $(this);\r\n                if ($this[0].href == String(window.location)) {\r\n                    $this.parents(\\\'li\\\').addClass(\\\'cur\\\');\r\n                }\r\n            });\r\n        </script>\r\n        <!-- newsListCon -->\r\n        <div class=\\\"helpListCon\\\">\r\n            <div class=\\\"mainCon\\\">\r\n                <div class=\\\"conBox\\\">\r\n                    <div class=\\\"con\\\">\r\n                        [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]\r\n                        \r\n                    </div>\r\n                    <div class=\\\"clear\\\"></div>\r\n                    \r\n                    <div class=\\\"pageBox\\\">[!--show.listpage--]</div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--Content:End-->\r\n    \r\n    [!--temp.footer--]\r\n</body>\r\n</html>', 0, 0, '<dl class=\\\"dl_2s\\\">\r\n                            <dt><img src=\\\"[!--titlepic--]\\\" alt=\\\"[!--title--]\\\" /></dt>\r\n                            <dd>\r\n                                <h4>[!--title--]</h4>\r\n                            </dd>\r\n                        </dl>', 1, 1, 'Y-m-d', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewslisttempclass`
--

CREATE TABLE `hswl_enewslisttempclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewslisttemp_2`
--

CREATE TABLE `hswl_enewslisttemp_2` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewslisttemp_2`
--

INSERT INTO `hswl_enewslisttemp_2` (`tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`) VALUES
(1, '新闻列表模板', '<!DOCTYPE html>\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n\r\n<HEAD id=Head1>\r\n    <META name=viewport content=\\\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;\\\">\r\n    <META name=viewport content=width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0;>\r\n    <META name=apple-mobile-web-app-capable content=yes>\r\n    <META name=apple-mobile-web-app-status-bar-style content=black>\r\n    <META name=format-detection content=telephone=no>\r\n    <META content=\\\"text/html; charset=utf-8\\\" http-equiv=Content-Type>\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/reset.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/Common.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/prlist.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/fontsStyle.css\\\">\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/prefixfree.min.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/Jquery.js\\\"></SCRIPT>\r\n    <SCRIPT src=\\\"/mobile/js/tools.js\\\"></SCRIPT>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</HEAD>\r\n\r\n<BODY style=\\\"ZOOM: 1\\\">\r\n    <FORM id=form1 >\r\n\r\n        <DIV class=mian>\r\n            [!--temp.header--]\r\n            \r\n            <div class=\\\"CategoryList_Title\\\">\r\n                <a href=\\\"javascript:history.go(-1);\\\"><i class=\\\"icon-left fl\\\"></i></a>\r\n                [!--pagetitle--]<a href=\\\"javascript:;\\\"><i class=\\\"icon-details fr\\\"> 分类</i></a>\r\n            </div>\r\n            <ul id=\\\"fenl\\\" class=\\\"CategoryLista\\\" style=\\\"display:none;\\\">\r\n                [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n            </ul>\r\n            <script type=\\\"text/javascript\\\">\r\n                $(document).ready(function(){\r\n                  $(\\\".CategoryList_Title a .icon-details\\\").click(function(){\r\n                    $(\\\"#fenl\\\").toggle();\r\n                  });\r\n                });\r\n            </script>\r\n\r\n            <DIV class=nyContent style=\\\"MARGIN-BOTTOM: 0em\\\">\r\n                <DIV class=news>\r\n                    <DIV class=newsbox>\r\n                        <DIV class=newslist>\r\n                            [e:loop={\\\'selfinfo\\\',1,0,1}]\r\n                            <DL>\r\n                                <DT><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><IMG alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\"></A></DT>\r\n                                <DD>\r\n                                    <H3><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></A></H3>\r\n                                    <P><?=esub($bqr[smalltext],110),\\\'……\\\'?></P>\r\n                                </DD>\r\n                            </DL>\r\n                            [/e:loop]\r\n                        </DIV>\r\n                    </DIV>\r\n                </DIV>\r\n                <DIV class=newsList>\r\n                    <UL>\r\n                        [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]\r\n                    </UL>\r\n                </DIV>\r\n                <div class=\\\"pageBox\\\">[!--show.listpage--]</div>\r\n            </DIV>\r\n            [!--temp.footer--]\r\n        </DIV><!-- cb_mian[end] -->\r\n        \r\n    </FORM>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/prefixfree.min.js\\\"></SCRIPT>\r\n    <SCRIPT src=\\\"/mobile/js/tools.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript>\r\n        jQuery(document).ready(function ($) {\r\n            $(\\\'.hddb img\\\').click(function () {\r\n                $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n            });\r\n            //回到顶部函数\r\n        });\r\n    </SCRIPT>\r\n</BODY>\r\n</HTML>', 0, 0, '<LI><A href=\\\"/mobile[!--titleurl--]\\\">[!--title--]</A><SPAN class=\\\"last\\\">[ [!--newstime--] ]</SPAN></LI>', 1, 1, 'Y-m-d', 0, 0, 0),
(2, '通用列表模板', '<!DOCTYPE html>\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n\r\n<HEAD>\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <META name=viewport content=\\\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;\\\">\r\n    <META name=apple-mobile-web-app-capable content=yes>\r\n    <META name=apple-mobile-web-app-status-bar-style content=black>\r\n    <META name=format-detection content=telephone=no>\r\n    <META content=\\\"text/html; charset=utf-8\\\" http-equiv=Content-Type>\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/fontsStyle.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/reset.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/Common.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/prlist.css\\\">\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/Jquery.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/prefixfree.min.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/sdw_mobile.js\\\"></SCRIPT>\r\n    <SCRIPT src=\\\"/mobile/js/tools.js\\\"></SCRIPT>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</HEAD>\r\n\r\n<BODY style=\\\"ZOOM: 1\\\">\r\n    <!-- header_end -->\r\n    <DIV class=mian>\r\n        [!--temp.header--]\r\n        <div class=\\\"CategoryList_Title\\\">\r\n            <a href=\\\"javascript:history.go(-1);\\\"><i class=\\\"icon-left fl\\\"></i></a>\r\n            [!--pagetitle--]<a href=\\\"javascript:;\\\"><i class=\\\"icon-details fr\\\"> 分类</i></a>\r\n        </div>\r\n        <ul id=\\\"fenl\\\" class=\\\"CategoryLista\\\" style=\\\"display:none;\\\">\r\n            [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n        </ul>\r\n        <script type=\\\"text/javascript\\\">\r\n            $(document).ready(function(){\r\n              $(\\\".CategoryList_Title a .icon-details\\\").click(function(){\r\n                $(\\\"#fenl\\\").toggle();\r\n              });\r\n            });\r\n        </script>\r\n\r\n        <DIV class=productLayout>\r\n            [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]\r\n            \r\n        </DIV>\r\n        <div class=\\\"pageBox\\\">[!--show.listpage--]</div>\r\n\r\n        [!--temp.footer--]\r\n    </DIV><!-- cb_mian[end] -->\r\n    \r\n    <SCRIPT type=text/javascript>\r\n        jQuery(document).ready(function ($) {\r\n            $(\\\'.hddb img\\\').click(function () {\r\n                $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n            });\r\n            //回到顶部函数\r\n        });\r\n    </SCRIPT>\r\n</BODY>\r\n</HTML>', 0, 0, '<DL>\r\n                <DT><A href=\\\"/mobile[!--titleurl--]\\\"><IMG alt=\\\"[!--title--]\\\" src=\\\"[!--titlepic--]\\\" /></A></DT>\r\n                <DD>\r\n                    <A href=\\\"/mobile[!--titleurl--]\\\"><H5>[!--title--]</H5></A>\r\n                </DD>\r\n            </DL>', 1, 1, 'Y-m-d', 0, 0, 0),
(3, '合作列表模板', '<!DOCTYPE html>\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n\r\n<HEAD id=Head1>\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <META name=viewport content=\\\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;\\\">\r\n    <META name=viewport content=width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0;>\r\n    <META name=apple-mobile-web-app-capable content=yes>\r\n    <META name=apple-mobile-web-app-status-bar-style content=black>\r\n    <META name=format-detection content=telephone=no>\r\n    <META content=\\\"text/html; charset=utf-8\\\" http-equiv=Content-Type>\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/fontsStyle.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/reset.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/Common.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/prlist.css\\\">\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/prefixfree.min.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/Jquery.js\\\"></SCRIPT>\r\n    <SCRIPT src=\\\"/mobile/js/tools.js\\\"></SCRIPT>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</HEAD>\r\n\r\n<BODY style=\\\"ZOOM: 1\\\">\r\n    <FORM id=form1 method=post name=form1 action=../mobile/Help/list.aspx?sid=0001%2c0009%2c0012>\r\n        <DIV class=mian>\r\n            [!--temp.header--]\r\n            \r\n            <div class=\\\"CategoryList_Title\\\">\r\n                <a href=\\\"javascript:history.go(-1);\\\"><i class=\\\"icon-left fl\\\"></i></a>\r\n                [!--pagetitle--]<a href=\\\"javascript:;\\\"><i class=\\\"icon-details fr\\\"> 分类</i></a>\r\n            </div>\r\n            <ul id=\\\"fenl\\\" class=\\\"CategoryLista\\\" style=\\\"display:none;\\\">\r\n                [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n            </ul>\r\n            <script type=\\\"text/javascript\\\">\r\n                $(document).ready(function(){\r\n                  $(\\\".CategoryList_Title a .icon-details\\\").click(function(){\r\n                    $(\\\"#fenl\\\").toggle();\r\n                  });\r\n                });\r\n            </script>\r\n\r\n            <DIV class=nyContent>\r\n                <UL class=\\\"m-con-1 m-prol\\\">\r\n                    [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]\r\n                </UL>\r\n                <DIV class=clear></DIV>\r\n                <div class=\\\"pageBox\\\">[!--show.listpage--]</div>\r\n            </DIV>\r\n            [!--temp.footer--]\r\n        </DIV><!-- cb_mian[end] -->\r\n\r\n        <SCRIPT type=text/javascript>\r\n            jQuery(document).ready(function ($) {\r\n                $(\\\'.hddb img\\\').click(function () {\r\n                    $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n                });\r\n                //回到顶部函数\r\n            });\r\n        </SCRIPT>\r\n    </FORM>\r\n</BODY>\r\n</HTML>', 0, 0, '<LI><IMG alt=\\\"[!--title--]\\\" src=\\\"[!--titlepic--]\\\" width=\\\"138\\\"><H5>[!--title--]</H5></LI>', 1, 1, 'Y-m-d', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewslog`
--

CREATE TABLE `hswl_enewslog` (
  `loginid` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `logintime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `loginip` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(30) NOT NULL DEFAULT '',
  `loginauth` tinyint(1) NOT NULL DEFAULT '0',
  `ipport` varchar(6) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewslog`
--

INSERT INTO `hswl_enewslog` (`loginid`, `username`, `logintime`, `loginip`, `status`, `password`, `loginauth`, `ipport`) VALUES
(1, 'admin', '2020-06-16 17:20:08', '127.0.0.1', 1, '', 0, '63438'),
(2, 'admin', '2020-06-17 10:47:55', '127.0.0.1', 1, '', 0, '51708'),
(3, 'admin', '2020-06-17 13:58:03', '127.0.0.1', 1, '', 0, '52564'),
(4, 'admin', '2020-06-23 15:07:19', '127.0.0.1', 1, '', 0, '50915'),
(5, 'admin', '2020-06-28 11:29:44', '222.210.136.55', 1, '', 0, '29961'),
(6, 'admin', '2020-06-29 11:05:49', '171.213.29.24', 1, '', 0, '29709'),
(7, 'admin', '2020-07-04 16:01:51', '222.210.139.229', 1, '', 0, '21477');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsloginfail`
--

CREATE TABLE `hswl_enewsloginfail` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `num` tinyint(4) NOT NULL DEFAULT '0',
  `lasttime` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsmember`
--

CREATE TABLE `hswl_enewsmember` (
  `userid` int(10) UNSIGNED NOT NULL,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `rnd` char(20) NOT NULL DEFAULT '',
  `email` char(50) NOT NULL DEFAULT '',
  `registertime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `groupid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `userfen` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `userdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `money` float(11,2) NOT NULL DEFAULT '0.00',
  `zgroupid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `havemsg` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `salt` char(8) NOT NULL DEFAULT '',
  `userkey` char(12) NOT NULL DEFAULT '',
  `ingid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `agid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `isern` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsmemberadd`
--

CREATE TABLE `hswl_enewsmemberadd` (
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `oicq` varchar(25) NOT NULL DEFAULT '',
  `msn` varchar(120) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(8) NOT NULL DEFAULT '',
  `spacestyleid` smallint(6) NOT NULL DEFAULT '0',
  `homepage` varchar(200) NOT NULL DEFAULT '',
  `saytext` text NOT NULL,
  `company` varchar(255) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `userpic` varchar(200) NOT NULL DEFAULT '',
  `spacename` varchar(255) NOT NULL DEFAULT '',
  `spacegg` text NOT NULL,
  `viewstats` int(11) NOT NULL DEFAULT '0',
  `regip` varchar(20) NOT NULL DEFAULT '',
  `lasttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(20) NOT NULL DEFAULT '',
  `loginnum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `regipport` varchar(6) NOT NULL DEFAULT '',
  `lastipport` varchar(6) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsmemberf`
--

CREATE TABLE `hswl_enewsmemberf` (
  `fid` smallint(5) UNSIGNED NOT NULL,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  `fformsize` varchar(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsmemberf`
--

INSERT INTO `hswl_enewsmemberf` (`fid`, `f`, `fname`, `fform`, `fhtml`, `fzs`, `myorder`, `ftype`, `flen`, `fvalue`, `fformsize`) VALUES
(1, 'truename', '真实姓名', 'text', '\r\n<input name=\"truename\" type=\"text\" id=\"truename\" value=\"<?=$ecmsfirstpost==1?\"\":ehtmlspecialchars(stripSlashes($addr[truename]))?>\">\r\n', '', 1, 'VARCHAR', '20', '', ''),
(2, 'oicq', 'QQ号码', 'text', '<input name=\\\"oicq\\\" type=\\\"text\\\" id=\\\"oicq\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($addr[oicq]))?>\\\">\r\n', '', 5, 'VARCHAR', '25', '', ''),
(3, 'msn', 'MSN', 'text', '<input name=\\\"msn\\\" type=\\\"text\\\" id=\\\"msn\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($addr[msn]))?>\\\">\r\n', '', 6, 'VARCHAR', '120', '', ''),
(4, 'mycall', '联系电话', 'text', '<input name=\\\"mycall\\\" type=\\\"text\\\" id=\\\"mycall\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($addr[mycall]))?>\\\">\r\n', '', 2, 'VARCHAR', '30', '', ''),
(5, 'phone', '手机', 'text', '<input name=\\\"phone\\\" type=\\\"text\\\" id=\\\"phone\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($addr[phone]))?>\\\">\r\n', '', 4, 'VARCHAR', '30', '', ''),
(6, 'address', '联系地址', 'text', '<input name=\\\"address\\\" type=\\\"text\\\" id=\\\"address\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($addr[address]))?>\\\" size=\\\"50\\\">\r\n', '', 9, 'VARCHAR', '255', '', ''),
(7, 'zip', '邮编', 'text', '<input name=\\\"zip\\\" type=\\\"text\\\" id=\\\"zip\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($addr[zip]))?>\\\" size=\\\"8\\\">\r\n', '', 10, 'VARCHAR', '8', '', ''),
(9, 'homepage', '网址', 'text', '\r\n<input name=\"homepage\" type=\"text\" id=\"homepage\" value=\"<?=$ecmsfirstpost==1?\"\":ehtmlspecialchars(stripSlashes($addr[homepage]))?>\">\r\n', '', 7, 'VARCHAR', '200', '', ''),
(10, 'saytext', '简介', 'textarea', '<textarea name=\\\"saytext\\\" cols=\\\"65\\\" rows=\\\"10\\\" id=\\\"saytext\\\"><?=$ecmsfirstpost==1?\\\"\\\":stripSlashes($addr[saytext])?></textarea>\r\n', '', 11, 'TEXT', '', '', ''),
(11, 'company', '公司名称', 'text', '<input name=\\\"company\\\" type=\\\"text\\\" id=\\\"company\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($addr[company]))?>\\\" size=\\\"38\\\">\r\n', '', 0, 'VARCHAR', '255', '', ''),
(12, 'fax', '传真', 'text', '\r\n<input name=\"fax\" type=\"text\" id=\"fax\" value=\"<?=$ecmsfirstpost==1?\"\":ehtmlspecialchars(stripSlashes($addr[fax]))?>\">\r\n', '', 3, 'VARCHAR', '30', '', ''),
(13, 'userpic', '会员头像', 'img', '<input type=\\\"file\\\" name=\\\"userpicfile\\\">&nbsp;&nbsp;\r\n<?=empty($addr[userpic])?\\\"\\\":\\\"<img src=\\\'\\\".ehtmlspecialchars(stripSlashes($addr[userpic])).\\\"\\\' border=0>\\\"?>', '', 8, 'VARCHAR', '200', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsmemberfeedback`
--

CREATE TABLE `hswl_enewsmemberfeedback` (
  `fid` int(10) UNSIGNED NOT NULL,
  `name` varchar(12) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(8) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `ftext` text NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `uid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `uname` varchar(20) NOT NULL DEFAULT '',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `eipport` varchar(6) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsmemberform`
--

CREATE TABLE `hswl_enewsmemberform` (
  `fid` smallint(5) UNSIGNED NOT NULL,
  `fname` varchar(60) NOT NULL DEFAULT '',
  `ftemp` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `enter` text NOT NULL,
  `mustenter` text NOT NULL,
  `filef` varchar(255) NOT NULL DEFAULT '',
  `imgf` varchar(255) NOT NULL DEFAULT '0',
  `tobrf` text NOT NULL,
  `viewenter` text NOT NULL,
  `searchvar` varchar(255) NOT NULL DEFAULT '',
  `canaddf` text NOT NULL,
  `caneditf` text NOT NULL,
  `checkboxf` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsmemberform`
--

INSERT INTO `hswl_enewsmemberform` (`fid`, `fname`, `ftemp`, `fzs`, `enter`, `mustenter`, `filef`, `imgf`, `tobrf`, `viewenter`, `searchvar`, `canaddf`, `caneditf`, `checkboxf`) VALUES
(1, '个人注册表单', '<table width=\\\'100%\\\' align=\\\'center\\\' cellpadding=3 cellspacing=1 bgcolor=\\\'#DBEAF5\\\'>\r\n<tr><td width=\\\'25%\\\' height=25 bgcolor=\\\'ffffff\\\'>真实姓名</td><td bgcolor=\\\'ffffff\\\'>[!--truename--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>QQ号码</td><td bgcolor=\\\'ffffff\\\'>[!--oicq--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>MSN</td><td bgcolor=\\\'ffffff\\\'>[!--msn--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>联系电话</td><td bgcolor=\\\'ffffff\\\'>[!--mycall--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>手机</td><td bgcolor=\\\'ffffff\\\'>[!--phone--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>网站地址</td><td bgcolor=\\\'ffffff\\\'>[!--homepage--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>会员头像</td><td bgcolor=\\\'ffffff\\\'>[!--userpic--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>联系地址</td><td bgcolor=\\\'ffffff\\\'>[!--address--]&nbsp;邮编: [!--zip--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>个人介绍</td><td bgcolor=\\\'ffffff\\\'>[!--saytext--]</td></tr>\r\n</table>', '', '真实姓名<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网站地址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->简介<!--field--->saytext<!--record-->', '', ',', ',userpic,', ',saytext,', '真实姓名<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网站地址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->简介<!--field--->saytext<!--record-->', '', ',truename,mycall,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ',truename,mycall,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ','),
(2, '企员注册表单', '<table width=\\\'100%\\\' align=\\\'center\\\' cellpadding=3 cellspacing=1 bgcolor=\\\'#DBEAF5\\\'><tr><td width=\\\'25%\\\' height=25 bgcolor=\\\'ffffff\\\'>公司名称</td><td bgcolor=\\\'ffffff\\\'>[!--company--](*)</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>联系人</td><td bgcolor=\\\'ffffff\\\'>[!--truename--](*)</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>联系电话</td><td bgcolor=\\\'ffffff\\\'>[!--mycall--](*)</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>传真</td><td bgcolor=\\\'ffffff\\\'>[!--fax--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>手机</td><td bgcolor=\\\'ffffff\\\'>[!--phone--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>QQ号码</td><td bgcolor=\\\'ffffff\\\'>[!--oicq--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>MSN</td><td bgcolor=\\\'ffffff\\\'>[!--msn--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>网址</td><td bgcolor=\\\'ffffff\\\'>[!--homepage--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>会员头像</td><td bgcolor=\\\'ffffff\\\'>[!--userpic--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>联系地址</td><td bgcolor=\\\'ffffff\\\'>[!--address--]&nbsp;邮编: [!--zip--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>公司介绍</td><td bgcolor=\\\'ffffff\\\'>[!--saytext--]</td></tr></table>', '', '公司名称<!--field--->company<!--record-->联系人<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->传真<!--field--->fax<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->公司介绍<!--field--->saytext<!--record-->', ',company,truename,mycall,', ',', ',userpic,', ',saytext,', '公司名称<!--field--->company<!--record-->联系人<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->传真<!--field--->fax<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->公司介绍<!--field--->saytext<!--record-->', ',company,', ',company,truename,mycall,fax,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ',company,truename,mycall,fax,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ',');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsmembergbook`
--

CREATE TABLE `hswl_enewsmembergbook` (
  `gid` int(10) UNSIGNED NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `isprivate` tinyint(1) NOT NULL DEFAULT '0',
  `uid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `uname` varchar(20) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gbtext` text NOT NULL,
  `retext` text NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `eipport` varchar(6) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsmembergroup`
--

CREATE TABLE `hswl_enewsmembergroup` (
  `groupid` smallint(6) NOT NULL,
  `groupname` varchar(60) NOT NULL DEFAULT '',
  `level` smallint(6) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `favanum` smallint(6) NOT NULL DEFAULT '0',
  `daydown` int(11) NOT NULL DEFAULT '0',
  `msglen` int(11) NOT NULL DEFAULT '0',
  `msgnum` int(11) NOT NULL DEFAULT '0',
  `canreg` tinyint(1) NOT NULL DEFAULT '0',
  `formid` smallint(6) NOT NULL DEFAULT '0',
  `regchecked` tinyint(1) NOT NULL DEFAULT '0',
  `spacestyleid` smallint(6) NOT NULL DEFAULT '0',
  `dayaddinfo` smallint(6) NOT NULL DEFAULT '0',
  `infochecked` tinyint(1) NOT NULL DEFAULT '0',
  `plchecked` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsmembergroup`
--

INSERT INTO `hswl_enewsmembergroup` (`groupid`, `groupname`, `level`, `checked`, `favanum`, `daydown`, `msglen`, `msgnum`, `canreg`, `formid`, `regchecked`, `spacestyleid`, `dayaddinfo`, `infochecked`, `plchecked`) VALUES
(1, '普通会员', 1, 0, 120, 0, 255, 50, 1, 1, 0, 1, 0, 0, 0),
(2, 'VIP会员', 2, 0, 200, 0, 255, 120, 0, 1, 0, 1, 0, 0, 0),
(3, '企业会员', 1, 0, 120, 0, 255, 50, 1, 2, 0, 2, 0, 0, 0),
(4, '企业VIP会员', 2, 0, 200, 0, 255, 120, 0, 2, 0, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsmemberpub`
--

CREATE TABLE `hswl_enewsmemberpub` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `todayinfodate` char(10) NOT NULL DEFAULT '',
  `todayaddinfo` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `todaydate` char(10) NOT NULL DEFAULT '',
  `todaydown` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `authstr` char(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsmember_connect`
--

CREATE TABLE `hswl_enewsmember_connect` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `apptype` char(20) NOT NULL DEFAULT '',
  `bindkey` char(32) NOT NULL DEFAULT '',
  `bindtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `loginnum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lasttime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsmember_connect_app`
--

CREATE TABLE `hswl_enewsmember_connect_app` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `apptype` char(20) NOT NULL DEFAULT '',
  `appname` char(30) NOT NULL DEFAULT '',
  `appid` char(60) NOT NULL DEFAULT '',
  `appkey` char(120) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `qappname` char(30) NOT NULL DEFAULT '',
  `appsay` char(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsmenu`
--

CREATE TABLE `hswl_enewsmenu` (
  `menuid` int(10) UNSIGNED NOT NULL,
  `menuname` varchar(60) NOT NULL DEFAULT '',
  `menuurl` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `addhash` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsmenuclass`
--

CREATE TABLE `hswl_enewsmenuclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` varchar(60) NOT NULL DEFAULT '',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `classtype` tinyint(1) NOT NULL DEFAULT '0',
  `groupids` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsmod`
--

CREATE TABLE `hswl_enewsmod` (
  `mid` smallint(5) UNSIGNED NOT NULL,
  `mname` varchar(100) NOT NULL DEFAULT '',
  `mtemp` mediumtext NOT NULL,
  `mzs` varchar(255) NOT NULL DEFAULT '',
  `cj` mediumtext NOT NULL,
  `enter` mediumtext NOT NULL,
  `tempvar` mediumtext NOT NULL,
  `sonclass` text NOT NULL,
  `searchvar` varchar(255) NOT NULL DEFAULT '',
  `tid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `qenter` mediumtext NOT NULL,
  `mustqenterf` text NOT NULL,
  `qmtemp` mediumtext NOT NULL,
  `listandf` text NOT NULL,
  `setandf` tinyint(1) NOT NULL DEFAULT '0',
  `listtempvar` mediumtext NOT NULL,
  `qmname` varchar(30) NOT NULL DEFAULT '',
  `canaddf` text NOT NULL,
  `caneditf` text NOT NULL,
  `definfovoteid` smallint(6) NOT NULL DEFAULT '0',
  `showmod` tinyint(1) NOT NULL DEFAULT '0',
  `usemod` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `orderf` text NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listfile` varchar(30) NOT NULL DEFAULT '',
  `printtempid` smallint(6) NOT NULL DEFAULT '0',
  `maddfun` varchar(255) NOT NULL DEFAULT '',
  `meditfun` varchar(255) NOT NULL DEFAULT '',
  `qmaddfun` varchar(255) NOT NULL DEFAULT '',
  `qmeditfun` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsmod`
--

INSERT INTO `hswl_enewsmod` (`mid`, `mname`, `mtemp`, `mzs`, `cj`, `enter`, `tempvar`, `sonclass`, `searchvar`, `tid`, `tbname`, `qenter`, `mustqenterf`, `qmtemp`, `listandf`, `setandf`, `listtempvar`, `qmname`, `canaddf`, `caneditf`, `definfovoteid`, `showmod`, `usemod`, `myorder`, `orderf`, `isdefault`, `listfile`, `printtempid`, `maddfun`, `meditfun`, `qmaddfun`, `qmeditfun`) VALUES
(1, '新闻系统模型', '<table width=\'100%\' align=center cellpadding=3 cellspacing=1 bgcolor=\'#DBEAF5\'><tr><td width=\'16%\' height=25 bgcolor=\'ffffff\'>标题</td><td bgcolor=\'ffffff\'>[!--title--]</td></tr><tr><td width=\'16%\' height=25 bgcolor=\'ffffff\'>副标题</td><td bgcolor=\'ffffff\'>[!--ftitle--]</td></tr><tr><td width=\'16%\' height=25 bgcolor=\'ffffff\'>特殊属性</td><td bgcolor=\'ffffff\'>[!--special.field--]</td></tr><tr><td width=\'16%\' height=25 bgcolor=\'ffffff\'>发布时间</td><td bgcolor=\'ffffff\'>[!--newstime--]</td></tr><tr><td width=\'16%\' height=25 bgcolor=\'ffffff\'>标题图片</td><td bgcolor=\'ffffff\'>[!--titlepic--]</td></tr><tr><td width=\'16%\' height=25 bgcolor=\'ffffff\'>内容简介</td><td bgcolor=\'ffffff\'>[!--smalltext--]</td></tr><tr><td width=\'16%\' height=25 bgcolor=\'ffffff\'>作者</td><td bgcolor=\'ffffff\'>[!--writer--]</td></tr><tr><td width=\'16%\' height=25 bgcolor=\'ffffff\'>信息来源</td><td bgcolor=\'ffffff\'>[!--befrom--]</td></tr><tr><td height=25 colspan=2 bgcolor=\'ffffff\'><div align=left>新闻正文</div></td></tr></table><div style=\'background-color:#D0D0D0\'>[!--newstext--]</div><table width=\'100%\' align=center cellpadding=3 cellspacing=1 bgcolor=\'#DBEAF5\'></table>', '新闻系统模型', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', '|5|6|7|8|9|10|11|13|14|15|16|17|18|19|20|21|22|23|24|', ',title,ftitle,newstime,titlepic,smalltext,', 1, 'news', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->特殊属性<!--field--->special.field<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', ',title,newstext,', '<table width=100% align=center cellpadding=3 cellspacing=1 bgcolor=#DBEAF5><tr><td width=\'16%\' height=25 bgcolor=\'ffffff\'>标题</td><td bgcolor=\'ffffff\'>[!--title--]</td></tr><tr><td width=\'16%\' height=25 bgcolor=\'ffffff\'>副标题</td><td bgcolor=\'ffffff\'>[!--ftitle--]</td></tr><tr><td width=\'16%\' height=25 bgcolor=\'ffffff\'>特殊属性</td><td bgcolor=\'ffffff\'>[!--special.field--]</td></tr><tr><td width=\'16%\' height=25 bgcolor=\'ffffff\'>标题图片</td><td bgcolor=\'ffffff\'>[!--titlepic--]</td></tr><tr><td width=\'16%\' height=25 bgcolor=\'ffffff\'>内容简介</td><td bgcolor=\'ffffff\'>[!--smalltext--]</td></tr><tr><td width=\'16%\' height=25 bgcolor=\'ffffff\'>作者</td><td bgcolor=\'ffffff\'>[!--writer--]</td></tr><tr><td width=\'16%\' height=25 bgcolor=\'ffffff\'>信息来源</td><td bgcolor=\'ffffff\'>[!--befrom--]</td></tr><tr><td height=25 colspan=2 bgcolor=\'ffffff\'><div align=left>新闻正文</div></td></tr></table><div style=\'background-color:#D0D0D0\'>[!--newstext--]</div><table width=\'100%\' align=center cellpadding=3 cellspacing=1 bgcolor=\'#DBEAF5\'></table>', '', 0, '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->', '新闻', ',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,', ',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,', 0, 0, 0, 0, '', 1, '', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsmoreport`
--

CREATE TABLE `hswl_enewsmoreport` (
  `pid` int(11) NOT NULL,
  `pname` char(60) NOT NULL DEFAULT '',
  `purl` char(255) NOT NULL DEFAULT '',
  `ppath` char(255) NOT NULL DEFAULT '',
  `postpass` char(120) NOT NULL DEFAULT '',
  `postfile` char(255) NOT NULL DEFAULT '',
  `tempgid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `mustdt` tinyint(1) NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `closeadd` tinyint(1) NOT NULL DEFAULT '0',
  `headersign` char(255) NOT NULL DEFAULT '',
  `openadmin` tinyint(1) NOT NULL DEFAULT '0',
  `rehtml` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsmoreport`
--

INSERT INTO `hswl_enewsmoreport` (`pid`, `pname`, `purl`, `ppath`, `postpass`, `postfile`, `tempgid`, `mustdt`, `isclose`, `closeadd`, `headersign`, `openadmin`, `rehtml`) VALUES
(1, '主访问端', 'http://www.hswl.t400.cc/', '/www/users/HA655709/WEB/', 'sBvjBixcACrOXMGDV2fq4IccmRHsWUZYFWrx5d1wnV6H2v9cM64JtdJhuIAU', '', 0, 0, 0, 0, '', 0, 3),
(2, '手机访问端', '/mobile/', '/www/users/HA655709/WEB/mobile/', 'sf0QXRmfxAGijh14Og9UFljkPUJhoOuneo8mpD7GreeyMTPmVTEI7DnO0ir6', '', 2, 0, 0, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsnewstemp`
--

CREATE TABLE `hswl_enewsnewstemp` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `temptext` mediumtext NOT NULL,
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsnewstemp`
--

INSERT INTO `hswl_enewsnewstemp` (`tempid`, `tempname`, `isdefault`, `temptext`, `showdate`, `modid`, `classid`) VALUES
(1, '新闻内容模板', 0, '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"IE=edge,chrome=1\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link type=\\\"text/css\\\" rel=\\\"stylesheet\\\" href=\\\"/css/Common.css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link rel=\\\"stylesheet\\\" rev=\\\"stylesheet\\\" href=\\\"/css/pshow2.css\\\" type=\\\"text/css\\\" />\r\n    <link rel=\\\"stylesheet\\\" rev=\\\"stylesheet\\\" href=\\\"/css/base_v4.css\\\" type=\\\"text/css\\\" />\r\n    <script src=\\\"/js/jquery-1.3.2.min.js\\\" type=\\\"text/javascript\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n    <script src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script src=\\\"/js/cj_sdw_msw.js\\\"></script>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    \r\n    <!--content:start-->\r\n    <div class=\\\"newsDetialsBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!-- newsDetialsArticle -->\r\n        <div class=\\\"newsDetialsArticle\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mainCon clearfix\\\">\r\n                    <div class=\\\"article\\\">\r\n                        <!-- 返回新闻列表页 -->\r\n                        <a href=\\\"JavaScript:history.go(-1)\\\" class=\\\"backNewsList\\\" title=\\\"返回\\\">\r\n                            <img src=\\\"/images/newsDetialsArticle_icon01.png\\\" width=\\\"49\\\" height=\\\"49\\\" alt=\\\"返回\\\" /></a>\r\n                        <div class=\\\"conBox\\\">\r\n                            <div class=\\\"title\\\">\r\n                                <h1>[!--title--]</h1>\r\n                                <div class=\\\"share\\\">\r\n                                    <p><span>发布时间：[!--newstime--]</span></p>\r\n                                </div>\r\n                                <i></i>\r\n                            </div>\r\n                            <div class=\\\"con\\\">\r\n                                [!--newstext--]\r\n                            </div>\r\n                        </div>\r\n                        <div class=\\\"context clearfix\\\">\r\n                            <p class=\\\"prevNews bot_left\\\">\r\n                                [!--info.pre--]\r\n                            </p>\r\n                            <p class=\\\"NextNews bot_right\\\">\r\n                                [!--info.next--]\r\n                            </p>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\\\"hotNews\\\">\r\n                        <div class=\\\"sidebar\\\">\r\n                            <div class=\\\'top\\\'>\r\n                                <h3>[!--bclass.name--]</h3>\r\n                            </div>\r\n                            <div class=\\\"box1\\\">\r\n                                [showclasstemp]\\\'selfinfo\\\',7,0,0[/showclasstemp]\r\n                            </div>\r\n                        </div>\r\n                        <div class=\\\"clear\\\"></div>\r\n                        <div class=\\\"box box2\\\">\r\n                            <div class=\\\"top\\\">\r\n                                <a href=\\\"/xinwen/\\\">\r\n                                    <h3>最新<em>资讯</em><i></i></h3>\r\n                                </a>\r\n                                <a href=\\\"/xinwen/\\\" title=\\\"查看更多\\\" class=\\\"more\\\"><img src=\\\"/images/newsDetialsArticle_icon09.png\\\" width=\\\"21\\\" height=\\\"21\\\" alt=\\\"查看更多\\\" /></a>\r\n                            </div>\r\n                            <ul class=\\\"clearfix\\\">\r\n                                [e:loop={2,5,0,0}]\r\n                                <li><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a></li>\r\n                                [/e:loop]\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\\\"clear\\\"></div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        \r\n        <!-- 最新案例 -->\r\n        <div class=\\\"proDetailsPictures newsDetialsPictures\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"top clearfix mub01Top\\\">\r\n                    <a href=\\\"/shili/anli/\\\">\r\n                        <h3>最新<em>案例</em><i></i></h3>\r\n                    </a><a href=\\\"/shili/anli/\\\" class=\\\"more\\\">了解更多 +</a>\r\n                </div>\r\n                <div class=\\\"mainCon clearfix\\\">\r\n                    <ul class=\\\"clearfix\\\">\r\n                        [e:loop={12,4,0,1}]\r\n                        <li>\r\n                            <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\">\r\n                                <span><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" /></span>\r\n                                <em><?=$bqr[\\\'title\\\']?></em>\r\n                            </a>\r\n                        </li>\r\n                        [/e:loop]\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--content:end-->\r\n    [!--temp.footer--]\r\n    <script type=\\\"text/javascript\\\">\r\n        // $(\\\"#cntrBody img\\\").each(function () {\r\n        //     var vtitle = $(this).attr(\\\"title\\\");\r\n        //     if (vtitle != null && vtitle.indexOf(\\\'点击查看关于\\\') > -1) {\r\n        //         vtitle = vtitle.substring(vtitle.indexOf(\\\"=\\\'_blank\\\'>\\\") + 10).replace(\\\"</a>\\\", \\\"\\\");\r\n        //         $(this).attr(\\\"title\\\", vtitle).attr(\\\"alt\\\", vtitle);\r\n        //     }\r\n        // });\r\n        // newsLoad();\r\n        // headNavPosition(MARK, SID);\r\n    </script>\r\n</body>\r\n</html>', 'Y-m-d', 1, 0),
(2, '通用单页模板', 0, '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"IE=edge,chrome=1\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link type=\\\"text/css\\\" rel=\\\"stylesheet\\\" href=\\\"/css/Common.css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link rel=\\\"stylesheet\\\" rev=\\\"stylesheet\\\" href=\\\"/css/pshow2.css\\\" type=\\\"text/css\\\" />\r\n    <link rel=\\\"stylesheet\\\" rev=\\\"stylesheet\\\" href=\\\"/css/base_v4.css\\\" type=\\\"text/css\\\" />\r\n    <script src=\\\"/js/jquery-1.3.2.min.js\\\" type=\\\"text/javascript\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n    <script src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script src=\\\"/js/cj_sdw_msw.js\\\"></script>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    \r\n    <!--content:start-->\r\n    <div class=\\\"aboutBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\\\"newsDetialsArticle\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mainCon clearfix\\\">\r\n                    <div class=\\\"article\\\">\r\n                        <!-- 返回企业信息列表页 -->\r\n                        <a href=\\\"JavaScript:history.go(-1)\\\" class=\\\"backNewsList\\\" title=\\\"返回\\\">\r\n                            <img src=\\\"/images/newsDetialsArticle_icon01.png\\\" width=\\\"49\\\" height=\\\"49\\\" alt=\\\"返回\\\" /></a>\r\n                        <div class=\\\"conBox\\\">\r\n                            <div class=\\\"title\\\">\r\n                                <h1>[!--title--]</h1>\r\n                                <i></i>\r\n                            </div>\r\n                            <div class=\\\"con\\\">\r\n                                [!--newstext--]\r\n                                <p><br /></p>\r\n                            </div>\r\n                        </div>\r\n                        \r\n                    </div>\r\n                    <div class=\\\"hotNews\\\">\r\n                        <div class=\\\"sidebar\\\">\r\n                            <div class=\\\'top\\\'>\r\n                                <h3>[!--bclass.name--]</h3>\r\n                            </div>\r\n                            <div class=\\\"box1\\\">\r\n                                [showclasstemp]\\\'selfinfo\\\',7,0,0[/showclasstemp]\r\n                            </div>\r\n                        </div>\r\n                        <div class=\\\"clear\\\"></div>\r\n                        <div class=\\\"box box2\\\">\r\n                            <div class=\\\"top\\\">\r\n                                <a href=\\\"/xinwen/\\\">\r\n                                    <h3>最新<em>资讯</em><i></i></h3>\r\n                                </a>\r\n                                <a href=\\\"/xinwen/\\\" title=\\\"查看更多\\\" class=\\\"more\\\"><img src=\\\"/images/newsDetialsArticle_icon09.png\\\" width=\\\"21\\\" height=\\\"21\\\" alt=\\\"查看更多\\\" /></a>\r\n                            </div>\r\n                            <ul class=\\\"clearfix\\\">\r\n                                [e:loop={2,5,0,0}]\r\n                                <li><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a></li>\r\n                                [/e:loop]\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\\\"clear\\\"></div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--content:end-->\r\n    [!--temp.footer--]\r\n</body>\r\n</html>', 'Y-m-d', 1, 0),
(3, '关于单页模板', 0, '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"IE=edge,chrome=1\\\" />\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link href=\\\"/css/Common.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    <!--Content:Start-->\r\n    <div class=\\\"aboutBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\" style=\\\"padding-bottom: 0;\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--分类-->\r\n        <div class=\\\"aboutMenu\\\">\r\n            <ul class=\\\'clearfix\\\'>\r\n                [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n            </ul>\r\n        </div>\r\n        <script>\r\n            $(document).scroll(function () {\r\n                $(window).scroll(function () {\r\n                    var oTop = $(window).scrollTop();\r\n                    if (oTop > 600) {\r\n                        $(\\\".aboutMenu\\\").css({ \\\'position\\\': \\\'fixed\\\', \\\'top\\\': \\\'0\\\', \\\'width\\\': \\\'100%\\\', \\\'background-color\\\': \\\'#fff\\\', \\\'padding-bottom\\\': \\\'20px\\\', \\\'padding-top\\\': \\\'20px\\\', \\\"z-index\\\": \\\'9999\\\' });\r\n                    }\r\n                    else {\r\n                        $(\\\".aboutMenu\\\").css({ \\\'position\\\': \\\'\\\', \\\'top\\\': \\\'\\\', \\\'width\\\': \\\'\\\', \\\'background\\\': \\\'none\\\', \\\'padding-bottom\\\': \\\'\\\', \\\'padding-top\\\': \\\'40px\\\' })\r\n                    }\r\n                })\r\n            })\r\n\r\n            $(\\\'.aboutMenu li a\\\').each(function() {\r\n                $this = $(this);\r\n                if ($this[0].href == String(window.location)) {\r\n                    $this.parents(\\\'li\\\').addClass(\\\'cur\\\');\r\n                }\r\n            });\r\n        </script>\r\n        <!-- 公司介绍 -->\r\n        <div class=\\\"aboutIntro\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mub01Title\\\">\r\n                    <h3><i class=\\\"xianL\\\"></i>公司<em>简介</em><i class=\\\"xianR\\\"></i></h3>\r\n                    <p>Company &nbsp; Profile</p>\r\n                </div>\r\n                <div class=\\\"mainCon\\\">\r\n                    [!--newstext--]\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!-- 企业荣誉 -->\r\n        <div class=\\\"aboutHonor\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mub01Title\\\" id=\\\"ry\\\">\r\n                    <a href=\\\"/shili/rongyuzizhi/\\\">\r\n                        <h3><i class=\\\"xianL\\\"></i>荣誉资质<i class=\\\"xianR\\\"></i></h3>\r\n                    </a>\r\n                    <p>Honorary Qualification</p>\r\n                </div>\r\n                <div class=\\\"mainCon\\\">\r\n                    <i class=\\\"btn01\\\" id=\\\"aboutHonorBtn01\\\"></i><i class=\\\"btn02\\\" id=\\\"aboutHonorBtn02\\\">\r\n                    </i>\r\n                    <div class=\\\"aboutHonorCon\\\" id=\\\"aboutHonor\\\">\r\n                        <ul class=\\\"clearfix\\\">\r\n                            [e:loop={15,5,0,1}]\r\n                            <li>\r\n                                <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\">\r\n                                    <img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" width=\\\"280\\\" height=\\\"290\\\" />\r\n                                    <span><?=$bqr[\\\'title\\\']?></span>\r\n                                </a>\r\n                            </li>\r\n                            [/e:loop]\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!-- 图说力丰 -->\r\n        <div class=\\\"aboutMien\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mub01Title\\\" id=\\\"fc\\\">\r\n                    <a href=\\\"/guanyu/gongsilueying/\\\">\r\n                        <h3><i class=\\\"xianL\\\"></i>公司<em>掠影</em><i class=\\\"xianR\\\"></i></h3>\r\n                    </a>\r\n                    <p>Company Gallery</p>\r\n                </div>\r\n                <div class=\\\"mainCon\\\">\r\n                    <span class=\\\"btn01\\\" id=\\\"aboutMienBtn01\\\"></span><span class=\\\"btn02\\\" id=\\\"aboutMienBtn02\\\"></span>\r\n                    <div class=\\\"aboutMienCon\\\">\r\n                        <div id=\\\"aboutMien\\\" class=\\\"aboutMienBox\\\">\r\n                            [e:loop={20,4,0,1}]\r\n                            <div class=\\\"iteam\\\">\r\n                                <b></b>\r\n                                <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" /></a>\r\n                                <p><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a></p>\r\n                            </div>\r\n                            [/e:loop]\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--Content:End-->\r\n    \r\n    [!--temp.footer--]\r\n    \r\n    <script>\r\n        // headNavPosition(\\\"help\\\", \\\"0001,0009\\\");\r\n        msw_jzt(\\\"aboutMien\\\", \\\"aboutMienBtn01\\\", \\\"aboutMienBtn02\\\", \\\"iteam\\\", \\\"p\\\", 4000, 3, 50);\r\n        mswMove(\\\"aboutHonor\\\", \\\"aboutHonorBtn01\\\", \\\"aboutHonorBtn02\\\", \\\"\\\", true, \\\"left\\\", true, 310, 1000, 3000, 4);\r\n    </script>\r\n</body>\r\n</html>', 'Y-m-d', 1, 0),
(4, '联系单页模板 ', 0, '<!DOCTYPE html\r\n    PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head id=\\\"Head1\\\">\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link href=\\\"/css/Common.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    <!--Content:Start-->\r\n    <div class=\\\"linkUsBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!-- linkUsMap -->\r\n        <div class=\\\"linkUsMap\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mainCon clearfix\\\">\r\n                    <div style=\\\"background:#fff;padding:20px 50px;bborder-bottom:15px solide #f4f4f4;\\\">\r\n                        <table style=\\\"background:#fff;width:100%;margin-bottom:10px\\\">\r\n                            <tbody>\r\n                                <tr class=\\\"firstRow\\\">\r\n                                    <td valign=\\\"top\\\" style=\\\"word-break: break-all;\\\">\r\n                                        <p><img src=\\\"/images/20180108171705642855.png\\\" title=\\\"\\\" alt=\\\"\\\" /></p>\r\n                                    </td>\r\n                                    <td valign=\\\"middle\\\" style=\\\"word-break: break-all;\\\" align=\\\"left\\\">\r\n                                        <p style=\\\"font-size: 20px; color: #000; line-height: 1.75em;\\\"><strong style=\\\"font-size: 18px;\\\">欢迎您来到<span style=\\\"color: #2f4a8d;\\\">成都市华森物流有限公司</span>官网</strong><br /></p>\r\n                                        <p><br /></p>\r\n                                        <p style=\\\"line-height: 1.75em;\\\">\r\n                                            [!--newstext--]\r\n                                        </p>\r\n                                    </td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        <p><br /></p>\r\n                        <hr />\r\n                        <table data-sort=\\\"sortDisabled\\\" style=\\\"width:100%\\\" width=\\\"1170\\\">\r\n                            <tbody>\r\n                                <tr class=\\\"firstRow\\\">\r\n                                    <td valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"2\\\" style=\\\"word-break: break-all;\\\"\r\n                                        align=\\\"center\\\" width=\\\"171\\\" height=\\\"119\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px; margin-top: 10px;\\\"><img\r\n                                                src=\\\"/images/20180108113919313273.png\\\" alt=\\\"\\\" /><span\r\n                                                id=\\\"_baidu_bookmark_start_0\\\"\r\n                                                style=\\\"display: none; line-height: 0px;\\\"></span></p>\r\n                                    </td>\r\n                                    <td width=\\\"57\\\" valign=\\\"middle\\\" rowspan=\\\"3\\\" colspan=\\\"1\\\"\r\n                                        style=\\\"word-break: break-all;\\\" align=\\\"center\\\"><img\r\n                                            src=\\\"/images/20180108113606472501.jpg\\\" alt=\\\"\\\" /></td>\r\n                                    <td valign=\\\"middle\\\" style=\\\"word-break: break-all;\\\" rowspan=\\\"1\\\" colspan=\\\"2\\\"\r\n                                        width=\\\"183\\\" align=\\\"center\\\" height=\\\"119\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px; margin-top: 10px;\\\"><img\r\n                                                src=\\\"/images/20180108113958377772.png\\\" alt=\\\"\\\" /></p>\r\n                                    </td>\r\n                                    <td width=\\\"57\\\" valign=\\\"middle\\\" rowspan=\\\"3\\\" colspan=\\\"1\\\"\r\n                                        style=\\\"word-break: break-all;\\\" align=\\\"center\\\"><img\r\n                                            src=\\\"/images/20180108113619556223.jpg\\\" alt=\\\"\\\" /></td>\r\n                                    <td valign=\\\"middle\\\" colspan=\\\"2\\\" rowspan=\\\"1\\\" style=\\\"word-break: break-all;\\\"\r\n                                        align=\\\"center\\\" width=\\\"198\\\" height=\\\"119\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px; margin-top: 10px;\\\"><img\r\n                                                src=\\\"/images/20180108114108224499.png\\\" alt=\\\"\\\" /></p>\r\n                                    </td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"2\\\" align=\\\"center\\\"\r\n                                        style=\\\"word-break: break-all;\\\" width=\\\"171\\\" height=\\\"31\\\"><img\r\n                                            src=\\\"/images/20180108113635080913.jpg\\\" title=\\\"\\\" alt=\\\"\\\" /></td>\r\n                                    <td valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"2\\\" align=\\\"center\\\"\r\n                                        style=\\\"word-break: break-all;\\\" width=\\\"183\\\" height=\\\"31\\\"><img\r\n                                            src=\\\"/images/20180108113650950411.jpg\\\" title=\\\"\\\" alt=\\\"\\\" /></td>\r\n                                    <td valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"2\\\" align=\\\"center\\\"\r\n                                        style=\\\"word-break: break-all;\\\" width=\\\"198\\\" height=\\\"31\\\"><img\r\n                                            src=\\\"/images/20180108113709672654.jpg\\\" title=\\\"\\\" alt=\\\"\\\" /></td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td valign=\\\"top\\\" style=\\\"word-break: break-all;\\\" align=\\\"center\\\" height=\\\"86\\\"\r\n                                        rowspan=\\\"1\\\" colspan=\\\"2\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-top: 10px;\\\">\r\n                                            24小时专线：13981791475</p>\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px;\\\"><span\r\n                                                style=\\\"text-align: -webkit-center; background-color: rgb(255, 255, 255);\\\">传真：028-61297652</span>\r\n                                        </p>\r\n                                    </td>\r\n                                    <td valign=\\\"top\\\" colspan=\\\"2\\\" rowspan=\\\"1\\\" style=\\\"word-break: break-all;\\\"\r\n                                        align=\\\"center\\\" height=\\\"86\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px; margin-top: 10px;\\\"><span\r\n                                                style=\\\"text-align: -webkit-center; background-color: rgb(255, 255, 255);\\\">咨询邮箱：qiaoj@hslcwl.cn</span>\r\n                                        </p>\r\n                                    </td>\r\n                                    <td valign=\\\"top\\\" style=\\\"word-break: break-all;\\\" align=\\\"center\\\" width=\\\"200\\\" height=\\\"86\\\"\r\n                                        rowspan=\\\"1\\\" colspan=\\\"2\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px; margin-top: 10px;\\\">\r\n                                            地址：四川省成都市成华区龙潭工业园钢铁领域B座518室成都市华森物流有限公司</p>\r\n                                    </td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        <p><br /></p>\r\n                        <hr />\r\n                        <p><br /></p>\r\n                        \r\n                        <div id=\\\"baiduMap\\\" style=\\\"width:100%;height:454px;\\\"></div>\r\n                        <script type=\\\"text/javascript\\\" src=\\\"http://api.map.baidu.com/api?v=2.0&ak=ny22a16GzbMDs1xHsTvjlqtZYpwFhUbw\\\"></script>\r\n                        <script type=\\\"text/javascript\\\">\r\n                            //创建地图\r\n                            var myMap = new BMap.Map(\\\"baiduMap\\\");\r\n                            var point = new BMap.Point(104.184247,30.699351);\r\n                            myMap.centerAndZoom(point, 16);\r\n                            //添加覆盖物\r\n                            var marker = new BMap.Marker(point);  // 创建标注 \r\n                            myMap.addOverlay(marker);   // 将标注添加到地图中\r\n                            //添加控件\r\n                            myMap.addControl(new BMap.NavigationControl()); // 平移缩放\r\n                            myMap.addControl(new BMap.OverviewMapControl()); //缩略地图\r\n                            //myMap.enableScrollWheelZoom(); //滚轮缩放\r\n                            //创建信息窗口\r\n                            var infoWindow = new BMap.InfoWindow(\\\"<p><strong>成都市华森物流有限公司</strong></p><p>地址：四川省成都市成华区龙潭工业园钢铁领域B座518室</p>\\\");\r\n                                marker.openInfoWindow(infoWindow);\r\n                        </script>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!-- 发车时间表-->\r\n        <div class=\\\"timetable\\\">\r\n            <div class=\\\"container\\\">\r\n                <h3>发车时间表</h3>\r\n                <table>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td><strong>干线信息</strong></td>\r\n                            <td colspan=\\\"3\\\">冷冻、冷藏及恒温零担、整车</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周一</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td></td>\r\n                            <td></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周二</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td>成都-贵州全境</td>\r\n                            <td>昆明-成都</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周三</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td></td>\r\n                            <td></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周四</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td></td>\r\n                            <td></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周五</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td>成都-贵州全境</td>\r\n                            <td>昆明-成都</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周六</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td></td>\r\n                            <td></td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <table>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td><strong>成都办公地址</strong></td>\r\n                            <td>成都市成华区龙潭工业园钢铁领域B座518室华森物流有限公司</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><strong>成都仓库地址</strong></td>\r\n                            <td>四川省成都市双流口岸路136号，郑明仓库</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><strong>昆明仓库地址</strong></td>\r\n                            <td>云南省昆明市呈贡区七甸工业园区哨达路16号</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><strong>贵阳仓库地址</strong></td>\r\n                            <td>贵州省贵阳市乌当区高新东路18号，贵州瀑布冷链</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <table>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td><strong>城配信息</strong></td>\r\n                            <td>成都市内配送及周边区域配送</td>\r\n                            <td>西安市内配送</td>\r\n                            <td>昆明市内配送</td>\r\n                            <td>贵阳市内配送</td>\r\n                        </tr>\r\n                        \r\n                    </tbody>\r\n                </table>\r\n            </div>\r\n            \r\n        </div>\r\n        <!-- linkUsLy-->\r\n        <div class=\\\"linkUsLy\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mainCon\\\">\r\n                    <div class=\\\"title\\\">\r\n                        <h3>在线留言</h3>\r\n                        <p>\r\n                            Online message</p>\r\n                    </div>\r\n                    <form name=\\\"Form1\\\" id=\\\"Form1\\\" method=\\\"post\\\" enctype=\\\"multipart/form-data\\\" action=\\\"/e/enews/index.php\\\">\r\n                        <input type=\\\"hidden\\\" name=\\\"bid\\\" value=1>\r\n                        <input type=\\\"hidden\\\" name=\\\"ecmsfrom\\\" value=\\\"/guanyu/lianxi/\\\">\r\n                        <input name=\\\"enews\\\" type=\\\"hidden\\\" value=\\\"AddFeedback\\\">\r\n                        <div class=\\\"box\\\" id=\\\"QK\\\">\r\n                            <input type=\\\"text\\\" name=\\\"title\\\" class=\\\"input1\\\" placeholder=\\\"您的姓名\\\" id=\\\"txtContact\\\" />\r\n                            <input type=\\\"text\\\" name=\\\"mycall\\\" class=\\\"input2\\\" placeholder=\\\"您的电话\\\" id=\\\"txtTel\\\" />\r\n                            <input type=\\\"text\\\" name=\\\"email\\\" class=\\\"input3\\\" placeholder=\\\"您的邮箱\\\" id=\\\"txtTel\\\" />\r\n                            <textarea name=\\\"saytext\\\" placeholder=\\\"留言内容\\\" id=\\\"txtShortDesc\\\"></textarea>\r\n                            <input type=\\\"submit\\\" name=\\\"submit\\\" value=\\\"提交留言\\\" class=\\\"submit\\\" />\r\n                        </div>\r\n                    </form>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--Content:End-->\r\n    \r\n    [!--temp.footer--]\r\n</body>\r\n</html>', 'Y-m-d', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsnewstempclass`
--

CREATE TABLE `hswl_enewsnewstempclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsnewstemp_2`
--

CREATE TABLE `hswl_enewsnewstemp_2` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `temptext` mediumtext NOT NULL,
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsnewstemp_2`
--

INSERT INTO `hswl_enewsnewstemp_2` (`tempid`, `tempname`, `isdefault`, `temptext`, `showdate`, `modid`, `classid`) VALUES
(1, '新闻内容模板', 0, '<!DOCTYPE html>\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n\r\n<head runat=\\\"server\\\">\r\n    <meta content=\\\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0\\\" name=\\\"viewport\\\" />\r\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0\\\" />\r\n    <meta content=\\\"yes\\\" name=\\\"apple-mobile-web-app-capable\\\" />\r\n    <meta content=\\\"black\\\" name=\\\"apple-mobile-web-app-status-bar-style\\\" />\r\n    <meta content=\\\"telephone=no\\\" name=\\\"format-detection\\\" />\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <script type=\\\"text/javascript\\\" src=\\\"/mobile/js/Jquery.js\\\"></script>\r\n    <link href=\\\"/mobile/css/fontsStyle.css\\\" rel=\\\"stylesheet\\\" />\r\n    <link href=\\\"/mobile/css/reset.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/mobile/css/Common.css\\\" rel=\\\"stylesheet\\\" />\r\n    <link href=\\\"/mobile/css/prlist.css\\\" rel=\\\"stylesheet\\\" />\r\n    <script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n\r\n<body>\r\n    <div class=\\\"mian\\\">\r\n        [!--temp.header--]\r\n        \r\n        <div class=\\\"CategoryList_Title\\\">\r\n            <a href=\\\"javascript:history.go(-1);\\\"><i class=\\\"icon-left fl\\\"></i></a>\r\n            [!--class.name--]<a href=\\\"javascript:;\\\"><i class=\\\"icon-details fr\\\"> 分类</i></a>\r\n        </div>\r\n        <ul id=\\\"fenl\\\" class=\\\"CategoryLista\\\" style=\\\"display:none;\\\">\r\n            [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n        </ul>\r\n        <script type=\\\"text/javascript\\\">\r\n            $(document).ready(function(){\r\n              $(\\\".CategoryList_Title a .icon-details\\\").click(function(){\r\n                $(\\\"#fenl\\\").toggle();\r\n              });\r\n            });\r\n        </script>\r\n\r\n        <div class=\\\"content\\\">\r\n            <div class=\\\"cont_t\\\">\r\n                <h1 id=\\\"currentTitle\\\">[!--title--]</h1>\r\n                <p>发布时间：[!--newstime--]</p>\r\n            </div>\r\n            <div class=\\\"cont_c\\\">\r\n                [!--newstext--]\r\n            </div>\r\n            \r\n            <div class=\\\"ProductTitle\\\">\r\n                <span class=\\\"fl\\\">最新资讯</span>\r\n                <span class=\\\"fr\\\"><a href=\\\"tel:13981791475\\\">13981791475</a></span>\r\n            </div>\r\n            <ul class=\\\"newsList\\\">\r\n                [e:loop={2,5,0,0}]\r\n                <li><a href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a></li>\r\n                [/e:loop]\r\n            </ul>\r\n            \r\n            <div class=\\\"j-slide-np\\\">\r\n                <div class=\\\"ProductTitle\\\"><span class=\\\"fl\\\">服务范围</span><span class=\\\"fr\\\"><a href=\\\"tel:13981791475\\\">13981791475</a></span></div>\r\n                <div class=\\\"SimilarBox m-con\\\">\r\n                    <a class=\\\"btnLeft fl prev\\\" href=\\\"javascript:;\\\"><i class=\\\"icon-arrow-left\\\"></i></a>\r\n                    <div class=\\\"m-nowr\\\">\r\n                        <ul class=\\\"clearfix fl m-box\\\">\r\n                            <li>\r\n                                [e:loop={1,2,0,1}]\r\n                                <a href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" />\r\n                                    <h5><?=$bqr[\\\'title\\\']?></h5>\r\n                                </a>\r\n                                [/e:loop]\r\n                            </li>\r\n                            <li>\r\n                                [e:loop={1,\\\'2,1\\\',0,1}]\r\n                                <a href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" />\r\n                                    <h5><?=$bqr[\\\'title\\\']?></h5>\r\n                                </a>\r\n                                [/e:loop]\r\n                                \r\n                            </li>\r\n                        </ul>\r\n                    </div>\r\n                    <a class=\\\"btnRight fr next\\\" href=\\\"javascript:;\\\"><i class=\\\"icon-arrow-right\\\"></i>\r\n                    </a>\r\n                    <div class=\\\"clear\\\"></div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n        <script type=\\\"text/javascript\\\">\r\n            var NewsID = 18;\r\n            $(function () {\r\n                GetCommentById(\\\"reply\\\", 3, 18, \\\"news\\\");\r\n            });\r\n            $(\\\".cont_c p\\\").css(\\\"width\\\", \\\"100%\\\");\r\n            $(\\\".cont_c img\\\").each(function () {\r\n                $(this).removeAttr(\\\"style\\\");\r\n                $(this).removeAttr(\\\"width\\\");\r\n                $(this).removeAttr(\\\"height\\\");\r\n            });\r\n        </script>\r\n        <!--content:end-->\r\n\r\n        [!--temp.footer--]\r\n    </div>\r\n    <!-- cb_mian[end] -->\r\n    <script type=\\\"text/javascript\\\" src=\\\"/mobile/js/sdw_mobile.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/mobile/js/tools.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\">\r\n        jQuery(document).ready(function ($) {\r\n            $(\\\'.hddb img\\\').click(function () {\r\n                $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n            });\r\n            //回到顶部函数\r\n        });\r\n    </script>\r\n</body>\r\n</html>', 'Y-m-d', 1, 0),
(2, '通用单页模板', 0, '<!DOCTYPE html>\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n\r\n<HEAD id=Head1>\r\n    <META content=\\\"text/html; charset=utf-8\\\" http-equiv=Content-Type>\r\n    <META name=viewport content=\\\"initial-scale=1.0, maximum-scale=1.0,user-scalable=0\\\">\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/fontsStyle.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/reset.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/Common.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/prlist.css\\\">\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/Jquery.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/sdw_mobile.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/Tools.js\\\"></SCRIPT>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</HEAD>\r\n\r\n<BODY style=\\\"ZOOM: 1\\\">\r\n    <!-- header_end -->\r\n    <DIV class=mian>\r\n        [!--temp.header--]\r\n        <DIV class=CategoryList_Title>\r\n            <A href=\\\"javascript:history.go(-1)\\\"><I class=\\\"icon-left fl\\\"></I></A>\r\n            <A href=\\\"#\\\"><I class=\\\"icon-details fr\\\"> 分类</I></A>[!--pagetitle--]\r\n        </DIV>\r\n        <UL id=\\\"fenl\\\" class=\\\"CategoryLista\\\" style=\\\"display:none;\\\">\r\n            [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n        </UL>\r\n        <script type=\\\"text/javascript\\\">\r\n            $(document).ready(function(){\r\n              $(\\\".CategoryList_Title a .icon-details\\\").click(function(){\r\n                $(\\\"#fenl\\\").toggle();\r\n              });\r\n            });\r\n        </script>\r\n\r\n        <DIV class=content>\r\n            <DIV class=cont_c>\r\n                [!--newstext--]\r\n            </DIV>\r\n        </DIV>\r\n        <DIV class=bottomTop></DIV>\r\n        [!--temp.footer--]\r\n    </DIV>\r\n    \r\n    <SCRIPT type=text/javascript>\r\n        jQuery(document).ready(function ($) {\r\n            $(\\\'.hddb img\\\').click(function () {\r\n                $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n            });\r\n            //回到顶部函数\r\n        });\r\n    </SCRIPT>\r\n</BODY>\r\n</HTML>', 'Y-m-d', 1, 0),
(3, '关于单页模板', 0, '<!DOCTYPE html>\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n\r\n<HEAD id=Head1>\r\n    <META content=\\\"text/html; charset=utf-8\\\" http-equiv=Content-Type>\r\n    <META name=viewport content=\\\"initial-scale=1.0, maximum-scale=1.0,user-scalable=0\\\">\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/fontsStyle.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/reset.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/Common.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/prlist.css\\\">\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/Jquery.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/sdw_mobile.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/Tools.js\\\"></SCRIPT>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</HEAD>\r\n\r\n<BODY style=\\\"ZOOM: 1\\\">\r\n    <!-- header_end -->\r\n    <DIV class=mian>\r\n        [!--temp.header--]\r\n        <DIV class=CategoryList_Title>\r\n            <A href=\\\"javascript:history.go(-1)\\\"><I class=\\\"icon-left fl\\\"></I></A>\r\n            <A href=\\\"#\\\"><I class=\\\"icon-details fr\\\"> 分类</I></A>[!--pagetitle--]\r\n        </DIV>\r\n        <UL id=\\\"fenl\\\" class=\\\"CategoryLista\\\" style=\\\"display:none;\\\">\r\n            [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n        </UL>\r\n        <script type=\\\"text/javascript\\\">\r\n            $(document).ready(function(){\r\n              $(\\\".CategoryList_Title a .icon-details\\\").click(function(){\r\n                $(\\\"#fenl\\\").toggle();\r\n              });\r\n            });\r\n        </script>\r\n\r\n        <DIV class=content>\r\n            <DIV class=cont_c>\r\n                <P style=\\\"MARGIN-BOTTOM: 15px; TEXT-ALIGN: left; LINE-HEIGHT: 1.75em; TEXT-INDENT: 0em\\\"><SPAN\r\n                        style=\\\"COLOR: #2f4a8d\\\"><STRONG><IMG style=\\\"WHITE-SPACE: normal; TEXT-ALIGN: center\\\"\r\n                                alt=\\\"\\\" src=\\\"/mobile/images/aboutimg.jpg\\\"></STRONG></SPAN></P>\r\n                [!--newstext--]\r\n            </DIV>\r\n        </DIV>\r\n        <DIV class=bottomTop></DIV>\r\n        [!--temp.footer--]\r\n    </DIV>\r\n    \r\n    <SCRIPT type=text/javascript>\r\n        jQuery(document).ready(function ($) {\r\n            $(\\\'.hddb img\\\').click(function () {\r\n                $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n            });\r\n            //回到顶部函数\r\n        });\r\n    </SCRIPT>\r\n</BODY>\r\n</HTML>', 'Y-m-d', 1, 0),
(4, '联系单页模板 ', 0, '<!DOCTYPE html>\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n\r\n<HEAD id=Head1>\r\n    <META content=\\\"text/html; charset=utf-8\\\" http-equiv=Content-Type>\r\n    <META name=viewport content=\\\"initial-scale=1.0, maximum-scale=1.0,user-scalable=0\\\">\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/fontsStyle.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/reset.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/Common.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/prlist.css\\\">\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/Jquery.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/sdw_mobile.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/Tools.js\\\"></SCRIPT>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</HEAD>\r\n\r\n<BODY style=\\\"ZOOM: 1\\\">\r\n    <!-- header_end -->\r\n    <DIV class=mian>\r\n        [!--temp.header--]\r\n        <DIV class=CategoryList_Title>\r\n            <A href=\\\"javascript:history.go(-1)\\\"><I class=\\\"icon-left fl\\\"></I></A>\r\n            <A href=\\\"#\\\"><I class=\\\"icon-details fr\\\"> 分类</I></A>[!--pagetitle--]\r\n        </DIV>\r\n        <UL id=\\\"fenl\\\" class=\\\"CategoryLista\\\" style=\\\"display:none;\\\">\r\n            [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n        </UL>\r\n        <script type=\\\"text/javascript\\\">\r\n            $(document).ready(function(){\r\n              $(\\\".CategoryList_Title a .icon-details\\\").click(function(){\r\n                $(\\\"#fenl\\\").toggle();\r\n              });\r\n            });\r\n        </script>\r\n\r\n        <DIV class=content>\r\n            <DIV class=cont_c>\r\n                <DIV class=conL>\r\n                    <H3><SPAN style=\\\"COLOR: #fe0000\\\"><STRONG\r\n                                style=\\\"FONT-SIZE: 20px; WHITE-SPACE: normal; BACKGROUND-COLOR: rgb(255,255,255)\\\"><SPAN\r\n                                    style=\\\"COLOR: rgb(47,74,141)\\\">成都市华森物流有限公司</SPAN></STRONG></SPAN></H3>\r\n                    \r\n                    <DIV class=box>\r\n                        <TABLE align=center>\r\n                            <TBODY>\r\n                                <TR class=firstRow>\r\n                                    <TD vAlign=middle width=39 align=left><IMG alt=\\\"\\\"\r\n                                            src=\\\"/mobile/images/20180109101346286686.jpg\\\" width=32 height=32><BR></TD>\r\n                                    <TD style=\\\"WORD-BREAK: break-all\\\" vAlign=middle width=759 align=left>\r\n                                        地址：<EM>四川省成都市成华区龙潭工业园钢铁领域B座518室成都市华森物流有限公司</EM><BR></TD>\r\n                                </TR>\r\n                                <TR>\r\n                                    <TD vAlign=middle width=39 align=left><IMG alt=\\\"\\\"\r\n                                            src=\\\"/mobile/images/20180109101323365719.jpg\\\" width=32 height=32><BR></TD>\r\n                                    <TD style=\\\"WORD-BREAK: break-all\\\" vAlign=middle width=759 align=left>\r\n                                        24小时专线：<EM>13981791475</EM><BR></TD>\r\n                                </TR>\r\n                                \r\n                                <TR>\r\n                                    <TD vAlign=middle width=39 align=left><IMG alt=\\\"\\\"\r\n                                            src=\\\"/mobile/images/20180109101407003556.jpg\\\" width=32 height=32><BR></TD>\r\n                                    <TD style=\\\"WORD-BREAK: break-all\\\" vAlign=middle width=759 align=left>\r\n                                        咨询邮箱：<EM>qiaoj@hslcwl.cn</EM><BR></TD>\r\n                                </TR>\r\n                                <TR>\r\n                                    <TD vAlign=middle width=39 align=left><IMG alt=\\\"\\\"\r\n                                            src=\\\"/mobile/images/20180109101422108233.jpg\\\" width=32 height=32><BR></TD>\r\n                                    <TD style=\\\"WORD-BREAK: break-all\\\" vAlign=middle width=759 align=left>\r\n                                        传真：<EM>028-61297652</EM></TD>\r\n                                </TR>\r\n                            </TBODY>\r\n                        </TABLE>\r\n                    </DIV>\r\n                </DIV>\r\n                <P><SPAN style=\\\"COLOR: #fe0000\\\"><BR></SPAN></P>\r\n                <DIV id=\\\"baiduMap\\\" style=\\\"TEXT-ALIGN: center; width:100%; height: 300px;\\\"></DIV>\r\n                <script type=\\\"text/javascript\\\" src=\\\"http://api.map.baidu.com/api?v=2.0&ak=ny22a16GzbMDs1xHsTvjlqtZYpwFhUbw\\\"></script>\r\n                <script type=\\\"text/javascript\\\">\r\n                    //创建地图\r\n                    var myMap = new BMap.Map(\\\"baiduMap\\\");\r\n                    var point = new BMap.Point(104.184247,30.699351);\r\n                    myMap.centerAndZoom(point, 16);\r\n                    //添加覆盖物\r\n                    var marker = new BMap.Marker(point);  // 创建标注 \r\n                    myMap.addOverlay(marker);   // 将标注添加到地图中\r\n                    //添加控件\r\n                    myMap.addControl(new BMap.NavigationControl()); // 平移缩放\r\n                    myMap.addControl(new BMap.OverviewMapControl()); //缩略地图\r\n                    //myMap.enableScrollWheelZoom(); //滚轮缩放\r\n                    //创建信息窗口\r\n                    var infoWindow = new BMap.InfoWindow(\\\"<p><strong>成都市华森物流有限公司</strong></p><p>地址：四川省成都市成华区龙潭工业园钢铁领域B座518室</p>\\\");\r\n                        marker.openInfoWindow(infoWindow);\r\n                </script>\r\n                <P><SPAN style=\\\"COLOR: #fe0000\\\"><BR></SPAN></P>\r\n                <div class=\\\"ProductTitle\\\" id=\\\"order\\\"><span class=\\\"fl\\\">在线留言</span><span class=\\\"fr\\\"><a href=\\\"tel:13981791475\\\">13981791475</a></span></div>\r\n                <form method=\\\"post\\\" enctype=\\\"multipart/form-data\\\" action=\\\"/mobile/e/enews/index.php\\\">\r\n                    <input type=\\\"hidden\\\" name=\\\"bid\\\" value=1>\r\n                    <input type=\\\"hidden\\\" name=\\\"ecmsfrom\\\" value=\\\"/mobile/guanyu/lianxi/\\\">\r\n                    <input name=\\\"enews\\\" type=\\\"hidden\\\" value=\\\"AddFeedback\\\">\r\n                    <table class=\\\"formSpan\\\">\r\n                        <tr>\r\n                            <td class=\\\"td1\\\">\r\n                                姓名:\r\n                            </td>\r\n                            <td>\r\n                                <input type=\\\"text\\\" name=\\\"title\\\" placeholder=\\\"请输入您的姓名\\\" id=\\\"UserName\\\" /><br />\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>\r\n                                电话:\r\n                            </td>\r\n                            <td>\r\n                                <input type=\\\"text\\\" name=\\\"mycall\\\" value=\\\"\\\" placeholder=\\\"请输入您的电话\\\" id=\\\"Phone\\\" />\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>\r\n                                邮箱:\r\n                            </td>\r\n                            <td>\r\n                                <input type=\\\"text\\\" name=\\\"email\\\" value=\\\"\\\" placeholder=\\\"请输入您的邮箱\\\" id=\\\"Email\\\" />\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>\r\n                                信息:\r\n                            </td>\r\n                            <td>\r\n                                <textarea name=\\\"saytext\\\" placeholder=\\\"请输入您的需求\\\" id=\\\"OrderInfo\\\"></textarea>\r\n                                <p id=\\\"ErrorInfo\\\" class=\\\"red pl10\\\"></p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>\r\n                            </td>\r\n                            <td>\r\n                                <input class=\\\"sbutton\\\" type=\\\"submit\\\" name=\\\"submit\\\" value=\\\"提交\\\">\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </form>\r\n\r\n            </DIV>\r\n        </DIV>\r\n        <DIV class=bottomTop></DIV>\r\n        [!--temp.footer--]\r\n    </DIV><!-- cb_mian[end] -->\r\n    <SCRIPT type=text/javascript>\r\n        jQuery(document).ready(function ($) {\r\n            $(\\\'.hddb img\\\').click(function () {\r\n                $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n            });\r\n            //回到顶部函数\r\n        });\r\n    </SCRIPT>\r\n</BODY>\r\n</HTML>', 'Y-m-d', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsnotcj`
--

CREATE TABLE `hswl_enewsnotcj` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `word` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsnotcj`
--

INSERT INTO `hswl_enewsnotcj` (`id`, `word`) VALUES
(1, '<input type=hidden value=\'欢迎使用舜王网站管理系统：www.shunking.cn\'>'),
(2, '<phome 舜王网站管理系统,shunkinn.cn>'),
(3, '<!--帝国CMS,phome.net-->'),
(4, '<table style=display:none><tr><td>\r\nEmpire CMS,phome.net\r\n</td></tr></table>'),
(5, '<div style=display:none>\r\n拥有帝国一切，皆有可能。欢迎访问shunking.cn\r\n</div>');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsnotice`
--

CREATE TABLE `hswl_enewsnotice` (
  `mid` int(10) UNSIGNED NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspage`
--

CREATE TABLE `hswl_enewspage` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL DEFAULT '',
  `pagetext` mediumtext NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `pagetitle` varchar(120) NOT NULL DEFAULT '',
  `pagekeywords` varchar(255) NOT NULL DEFAULT '',
  `pagedescription` varchar(255) NOT NULL DEFAULT '',
  `tempid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspageclass`
--

CREATE TABLE `hswl_enewspageclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspagetemp`
--

CREATE TABLE `hswl_enewspagetemp` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspagetemp_2`
--

CREATE TABLE `hswl_enewspagetemp_2` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspayapi`
--

CREATE TABLE `hswl_enewspayapi` (
  `payid` smallint(5) UNSIGNED NOT NULL,
  `paytype` varchar(20) NOT NULL DEFAULT '',
  `myorder` tinyint(4) NOT NULL DEFAULT '0',
  `payfee` varchar(10) NOT NULL DEFAULT '',
  `payuser` varchar(60) NOT NULL DEFAULT '',
  `partner` varchar(60) NOT NULL DEFAULT '',
  `paykey` varchar(120) NOT NULL DEFAULT '',
  `paylogo` varchar(200) NOT NULL DEFAULT '',
  `paysay` text NOT NULL,
  `payname` varchar(120) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `payemail` varchar(120) NOT NULL DEFAULT '',
  `paymethod` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewspayapi`
--

INSERT INTO `hswl_enewspayapi` (`payid`, `paytype`, `myorder`, `payfee`, `payuser`, `partner`, `paykey`, `paylogo`, `paysay`, `payname`, `isclose`, `payemail`, `paymethod`) VALUES
(1, 'tenpay', 1, '0', '', '', '', '', '财付通（www.tenpay.com） - 腾讯旗下在线支付平台，通过国家权威安全认证，支持各大银行网上支付。', '财付通', 0, '', 0),
(2, 'chinabank', 2, '0', '', '', '', '', '网银在线与中国工商银行、招商银行、中国建设银行、农业银行、民生银行等数十家金融机构达成协议。全面支持全国19家银行的信用卡及借记卡实现网上支付。（网址：http://www.chinabank.com.cn）', '网银在线', 0, '', 0),
(3, 'alipay', 0, '0', '', '', '', '', '支付宝网站(www.alipay.com) 是国内先进的网上支付平台。', '支付宝接口', 0, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspayrecord`
--

CREATE TABLE `hswl_enewspayrecord` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `orderid` varchar(50) NOT NULL DEFAULT '',
  `money` varchar(20) NOT NULL DEFAULT '',
  `posttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paybz` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(12) NOT NULL DEFAULT '',
  `payip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspic`
--

CREATE TABLE `hswl_enewspic` (
  `picid` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL DEFAULT '',
  `pic_url` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `pic_width` varchar(20) NOT NULL DEFAULT '',
  `pic_height` varchar(20) NOT NULL DEFAULT '',
  `open_pic` varchar(20) NOT NULL DEFAULT '',
  `border` tinyint(1) NOT NULL DEFAULT '0',
  `pictext` text NOT NULL,
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspicclass`
--

CREATE TABLE `hswl_enewspicclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` varchar(60) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewspicclass`
--

INSERT INTO `hswl_enewspicclass` (`classid`, `classname`) VALUES
(1, '默认图片信息类别');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsplayer`
--

CREATE TABLE `hswl_enewsplayer` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `player` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(20) NOT NULL DEFAULT '',
  `bz` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsplayer`
--

INSERT INTO `hswl_enewsplayer` (`id`, `player`, `filename`, `bz`) VALUES
(1, 'RealPlayer', 'realplayer.php', 'RealPlayer播放器'),
(2, 'MediaPlayer', 'mediaplayer.php', 'MediaPlayer播放器'),
(3, 'FLASH', 'flasher.php', 'FLASH播放器'),
(4, 'FLV播放器', 'flver.php', 'FLV播放器'),
(5, 'HTML5Video', 'htmlvideo.php', 'HTML5的video播放标签'),
(6, 'JWPlayer', 'jwplayer.php', 'JWPlayer播放器'),
(7, 'HTML5Audio', 'htmlaudio.php', 'HTML5的audio播放标签');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsplf`
--

CREATE TABLE `hswl_enewsplf` (
  `fid` smallint(5) UNSIGNED NOT NULL,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `ismust` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspltemp`
--

CREATE TABLE `hswl_enewspltemp` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewspltemp`
--

INSERT INTO `hswl_enewspltemp` (`tempid`, `tempname`, `temptext`, `isdefault`) VALUES
(1, '默认评论列表模板', '<!DOCTYPE HTML PUBLIC \\\"-//W3C//DTD HTML 4.01 Transitional//EN\\\">\r\n<html>\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\">\r\n<title>[!--pagetitle--] - 成都舜王科技有限公司</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<style type=\\\"text/css\\\">\r\n<!--\r\nbody,Table{ color: #222; font-size: 12px; }\r\na { color: #222; text-decoration: none; }\r\na:hover { color: #f00; text-decoration: underline; }\r\nh1 { font-size:32px; font-weight: bold; }\r\nh2 { color: #1e3a9e; font-size: 25px; font-weight: bold;  }\r\n.you { color: #1f3a87; font-size: 14px; }\r\n.text { font-size: 14px; padding-left: 5px; padding-right: 5px; line-height: 20px}\r\n.re a { color: #1f3a87; }\r\n.name { color: #1f3a87; }\r\n.name a { color: #1f3a87; text-decoration: underline;}\r\n.retext { background-color: #f3f3f3; width: 100%; float: left; padding-top: 22px; padding-bottom: 22px; border-top: 1px solid #ccc; }\r\n.retext textarea { width: 535px; height: 130px; float: left; margin-left: 60px; border-top-style: inset; border-top-width: 2px; border-left-style: inset; border-left-width: 2px; }\r\n.hrLine{BORDER-BOTTOM: #807d76 1px dotted;}\r\n\r\n.ecomment {margin:0;padding:0;}\r\n.ecomment {margin-bottom:12px;overflow-x:hidden;overflow-y:hidden;padding-bottom:3px;padding-left:3px;padding-right:3px;padding-top:3px;background:#FFFFEE;padding:3px;border:solid 1px #999;}\r\n.ecommentauthor {float:left; color:#F96; font-weight:bold;}\r\n.ecommenttext {clear:left;margin:0;padding:0;}\r\n-->\r\n</style>\r\n<script src=\\\"[!--news.url--]e/data/js/ajax.js\\\"></script>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n\r\n<body topmargin=\\\"0\\\">\r\n<table width=\\\"766\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\">\r\n  <tr>\r\n    <td width=\\\"210\\\"><a href=\\\"[!--news.url--]\\\"><img src=\\\"[!--news.url--]skin/default/images/logo.gif\\\" border=\\\"0\\\" /></a></td>\r\n    <td><h1>网友评论</h1></td>\r\n    <td><div align=\\\"right\\\"><a href=\\\"#tosaypl\\\"><strong><font color=\\\"#FF0000\\\">我也评两句</font></strong></a></div></td>\r\n  </tr>\r\n</table>\r\n<table width=\\\"766\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#222\\\">\r\n  <tr>\r\n    <td height=\\\"2\\\"></td>\r\n  </tr>\r\n</table>\r\n<table width=\\\"766\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\">\r\n  <tr> \r\n    <td height=\\\"42\\\"> \r\n      <h2>评论：<a href=\\\"[!--titleurl--]\\\" target=\\\"_blank\\\"><font color=\\\"#1e3a9e\\\">[!--title--]</font></a></h2></td>\r\n    <td><div align=\\\"right\\\"><a href=\\\"[!--titleurl--]\\\" target=\\\"_blank\\\">查看原文</a></div></td>\r\n  </tr>\r\n</table>\r\n<hr align=\\\"center\\\" width=\\\"766\\\" size=1 class=hrline>\r\n<table width=\\\"766\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#384EA3\\\">\r\n  <form action=\\\"../enews/index.php\\\" method=\\\"post\\\" name=\\\"infopfenform\\\">\r\n    <input type=\\\"hidden\\\" name=\\\"enews\\\" value=\\\"AddInfoPfen\\\" />\r\n    <input type=\\\"hidden\\\" name=\\\"classid\\\" value=\\\"[!--classid--]\\\" />\r\n    <input type=\\\"hidden\\\" name=\\\"id\\\" value=\\\"[!--id--]\\\" />\r\n    <tr> \r\n      <td width=\\\"50%\\\" height=\\\"27\\\" valign=\\\"middle\\\"><font color=\\\"#FFFFFF\\\">&nbsp;评分: \r\n        <input type=\\\"radio\\\" name=\\\"fen\\\" value=\\\"1\\\">\r\n        1分 \r\n        <input type=\\\"radio\\\" name=\\\"fen\\\" value=\\\"2\\\">\r\n        2分 \r\n        <input name=\\\"fen\\\" type=\\\"radio\\\" value=\\\"3\\\" checked>\r\n        3分 \r\n        <input type=\\\"radio\\\" name=\\\"fen\\\" value=\\\"4\\\">\r\n        4分 \r\n        <input type=\\\"radio\\\" name=\\\"fen\\\" value=\\\"5\\\">\r\n        5分 \r\n        <input type=\\\"submit\\\" name=\\\"Submit\\\" value=\\\"提交\\\">\r\n        </font></td>\r\n      <td width=\\\"50%\\\" valign=\\\"middle\\\"><div align=\\\"center\\\"><font color=\\\"#FFFFFF\\\">平均得分: \r\n          <strong><span id=\\\"pfendiv\\\">[!--pinfopfen--]</span></strong> 分，共有 <strong>[!--infopfennum--]</strong> \r\n          人参与评分</font></div></td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n<table width=\\\"766\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#CCCCCC\\\">\r\n  <tr> \r\n    <td height=\\\"30\\\" bgcolor=\\\"#FFFFFF\\\"> \r\n      <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td width=\\\"17%\\\">&nbsp;&nbsp;&nbsp;网友评论</td>\r\n          <td width=\\\"83%\\\"><div align=\\\"right\\\">[!--listpage--]&nbsp;&nbsp;&nbsp;</div></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor=\\\"#f8fcff\\\"> [!--empirenews.listtemp--] \r\n      <table width=\\\"96%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" style=\\\"word-break:break-all; word-wrap:break-all;\\\">\r\n        <tr> \r\n          <td height=\\\"30\\\"><span class=\\\"name\\\">本站网友 [!--username--]</span> <font color=\\\"#666666\\\">ip:[!--plip--]</font></td>\r\n          <td><div align=\\\"right\\\"><font color=\\\"#666666\\\">[!--pltime--] 发表</font></div></td>\r\n        </tr>\r\n        <tr valign=\\\"top\\\"> \r\n          <td height=\\\"50\\\" colspan=\\\"2\\\" class=\\\"text\\\">[!--pltext--]</td>\r\n        </tr>\r\n        <tr> \r\n          <td height=\\\"30\\\">&nbsp;</td>\r\n          <td><div align=\\\"right\\\" class=\\\"re\\\"><a href=\\\"#tosaypl\\\"[!--includelink--]>回复</a>&nbsp; \r\n              <a href=\\\"JavaScript:makeRequest(\\\'../pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=1&doajax=1&ajaxarea=zcpldiv[!--plid--]\\\',\\\'EchoReturnedText\\\',\\\'GET\\\',\\\'\\\');\\\">支持</a>[<span id=\\\"zcpldiv[!--plid--]\\\">[!--zcnum--]</span>]&nbsp; \r\n              <a href=\\\"JavaScript:makeRequest(\\\'../pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=0&doajax=1&ajaxarea=fdpldiv[!--plid--]\\\',\\\'EchoReturnedText\\\',\\\'GET\\\',\\\'\\\');\\\">反对</a>[<span id=\\\"fdpldiv[!--plid--]\\\">[!--fdnum--]</span>]\r\n            </div></td>\r\n        </tr>\r\n      </table>\r\n      <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr>\r\n          <td background=\\\"[!--news.url--]skin/default/images/plhrbg.gif\\\"></td>\r\n        </tr>\r\n      </table>\r\n      [!--empirenews.listtemp--] \r\n      <div align=\\\"right\\\"><br />\r\n        [!--listpage--]&nbsp;&nbsp;&nbsp;<br />\r\n        <br />\r\n        <font color=\\\"#FF0000\\\">网友评论仅供网友表达个人看法，并不表明本站同意其观点或证实其描述&nbsp;&nbsp;&nbsp;</font><br><br> </div></td>\r\n  </tr>\r\n  <script>\r\n  function CheckPl(obj)\r\n  {\r\n  	if(obj.saytext.value==\\\"\\\")\r\n  	{\r\n  		alert(\\\"错误，评论不能为空\\\");\r\n  		obj.saytext.focus();\r\n  		return false;\r\n  	}\r\n  	return true;\r\n  }\r\n  </script>\r\n  <form action=\\\"../pl/doaction.php\\\" method=\\\"post\\\" name=\\\"saypl\\\" id=\\\"saypl\\\" onsubmit=\\\"return CheckPl(document.saypl)\\\">\r\n  <tr id=\\\"tosaypl\\\"> \r\n    <td bgcolor=\\\"#f8fcff\\\"> <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n            <td width=\\\"13%\\\" height=\\\"28\\\">&nbsp;&nbsp;&nbsp;<span class=\\\"you\\\">我也评两句</span></td>\r\n            <td valign=\\\"middle\\\">用户名： \r\n              <input name=\\\"username\\\" type=\\\"text\\\" id=\\\"username\\\" size=\\\"12\\\" value=\\\"[!--lusername--]\\\" />\r\n            密码： \r\n            <input name=\\\"password\\\" type=\\\"password\\\" id=\\\"password\\\" size=\\\"12\\\" value=\\\"[!--lpassword--]\\\" />\r\n            验证码： \r\n            <input name=\\\"key\\\" type=\\\"text\\\" id=\\\"key\\\" size=\\\"6\\\" />\r\n              <img src=\\\"[!--key.url--]\\\" align=\\\"middle\\\" name=\\\"plKeyImg\\\" id=\\\"plKeyImg\\\" onclick=\\\"plKeyImg.src=\\\'[!--news.url--]e/ShowKey/?v=pl&t=\\\'+Math.random()\\\" title=\\\"看不清楚,点击刷新\\\" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/register/\\\" target=\\\"_blank\\\">还没有注册？</a></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor=\\\"#f8fcff\\\"> <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" class=\\\"retext\\\">\r\n        <tr> \r\n          <td width=\\\"78%\\\"><div align=\\\"center\\\"> \r\n              <textarea name=\\\"saytext\\\" cols=\\\"58\\\" rows=\\\"6\\\" id=\\\"saytext\\\"></textarea>\r\n            </div></td>\r\n          <td width=\\\"22%\\\" rowspan=\\\"2\\\"> <div align=\\\"center\\\">\r\n              <input name=\\\"nomember\\\" type=\\\"checkbox\\\" id=\\\"nomember\\\" value=\\\"1\\\" checked=\\\"checked\\\" />\r\n                匿名发表<br>\r\n                <br />\r\n              <input name=\\\"imageField\\\" type=\\\"submit\\\" id=\\\"imageField\\\" value=\\\" 提 交 \\\" />\r\n            </div></td>\r\n        </tr>\r\n        <tr> \r\n          <td><div align=\\\"center\\\"> \r\n              <script src=\\\"[!--news.url--]d/js/js/plface.js\\\"></script>\r\n            </div></td>\r\n        </tr>\r\n      </table> </td>\r\n  </tr>\r\n  <input name=\\\"id\\\" type=\\\"hidden\\\" id=\\\"id\\\" value=\\\"[!--id--]\\\" />\r\n  <input name=\\\"classid\\\" type=\\\"hidden\\\" id=\\\"classid\\\" value=\\\"[!--classid--]\\\" />\r\n  <input name=\\\"enews\\\" type=\\\"hidden\\\" id=\\\"enews\\\" value=\\\"AddPl\\\" />\r\n  <input name=\\\"repid\\\" type=\\\"hidden\\\" id=\\\"repid\\\" value=\\\"0\\\" />\r\n  </form>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 1);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspltemp_2`
--

CREATE TABLE `hswl_enewspltemp_2` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewspltemp_2`
--

INSERT INTO `hswl_enewspltemp_2` (`tempid`, `tempname`, `temptext`, `isdefault`) VALUES
(1, '默认评论列表模板', '<!DOCTYPE HTML PUBLIC \\\"-//W3C//DTD HTML 4.01 Transitional//EN\\\">\r\n<html>\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\">\r\n<title>[!--pagetitle--] - 成都舜王科技有限公司</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<style type=\\\"text/css\\\">\r\n<!--\r\nbody,Table{ color: #222; font-size: 12px; }\r\na { color: #222; text-decoration: none; }\r\na:hover { color: #f00; text-decoration: underline; }\r\nh1 { font-size:32px; font-weight: bold; }\r\nh2 { color: #1e3a9e; font-size: 25px; font-weight: bold;  }\r\n.you { color: #1f3a87; font-size: 14px; }\r\n.text { font-size: 14px; padding-left: 5px; padding-right: 5px; line-height: 20px}\r\n.re a { color: #1f3a87; }\r\n.name { color: #1f3a87; }\r\n.name a { color: #1f3a87; text-decoration: underline;}\r\n.retext { background-color: #f3f3f3; width: 100%; float: left; padding-top: 22px; padding-bottom: 22px; border-top: 1px solid #ccc; }\r\n.retext textarea { width: 535px; height: 130px; float: left; margin-left: 60px; border-top-style: inset; border-top-width: 2px; border-left-style: inset; border-left-width: 2px; }\r\n.hrLine{BORDER-BOTTOM: #807d76 1px dotted;}\r\n\r\n.ecomment {margin:0;padding:0;}\r\n.ecomment {margin-bottom:12px;overflow-x:hidden;overflow-y:hidden;padding-bottom:3px;padding-left:3px;padding-right:3px;padding-top:3px;background:#FFFFEE;padding:3px;border:solid 1px #999;}\r\n.ecommentauthor {float:left; color:#F96; font-weight:bold;}\r\n.ecommenttext {clear:left;margin:0;padding:0;}\r\n-->\r\n</style>\r\n<script src=\\\"[!--news.url--]e/data/js/ajax.js\\\"></script>\r\n</head>\r\n\r\n<body topmargin=\\\"0\\\">\r\n<table width=\\\"766\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\">\r\n  <tr>\r\n    <td width=\\\"210\\\"><a href=\\\"[!--news.url--]\\\"><img src=\\\"[!--news.url--]skin/default/images/logo.gif\\\" border=\\\"0\\\" /></a></td>\r\n    <td><h1>网友评论</h1></td>\r\n    <td><div align=\\\"right\\\"><a href=\\\"#tosaypl\\\"><strong><font color=\\\"#FF0000\\\">我也评两句</font></strong></a></div></td>\r\n  </tr>\r\n</table>\r\n<table width=\\\"766\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#222\\\">\r\n  <tr>\r\n    <td height=\\\"2\\\"></td>\r\n  </tr>\r\n</table>\r\n<table width=\\\"766\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\">\r\n  <tr> \r\n    <td height=\\\"42\\\"> \r\n      <h2>评论：<a href=\\\"[!--titleurl--]\\\" target=\\\"_blank\\\"><font color=\\\"#1e3a9e\\\">[!--title--]</font></a></h2></td>\r\n    <td><div align=\\\"right\\\"><a href=\\\"[!--titleurl--]\\\" target=\\\"_blank\\\">查看原文</a></div></td>\r\n  </tr>\r\n</table>\r\n<hr align=\\\"center\\\" width=\\\"766\\\" size=1 class=hrline>\r\n<table width=\\\"766\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#384EA3\\\">\r\n  <form action=\\\"../enews/index.php\\\" method=\\\"post\\\" name=\\\"infopfenform\\\">\r\n    <input type=\\\"hidden\\\" name=\\\"enews\\\" value=\\\"AddInfoPfen\\\" />\r\n    <input type=\\\"hidden\\\" name=\\\"classid\\\" value=\\\"[!--classid--]\\\" />\r\n    <input type=\\\"hidden\\\" name=\\\"id\\\" value=\\\"[!--id--]\\\" />\r\n    <tr> \r\n      <td width=\\\"50%\\\" height=\\\"27\\\" valign=\\\"middle\\\"><font color=\\\"#FFFFFF\\\">&nbsp;评分: \r\n        <input type=\\\"radio\\\" name=\\\"fen\\\" value=\\\"1\\\">\r\n        1分 \r\n        <input type=\\\"radio\\\" name=\\\"fen\\\" value=\\\"2\\\">\r\n        2分 \r\n        <input name=\\\"fen\\\" type=\\\"radio\\\" value=\\\"3\\\" checked>\r\n        3分 \r\n        <input type=\\\"radio\\\" name=\\\"fen\\\" value=\\\"4\\\">\r\n        4分 \r\n        <input type=\\\"radio\\\" name=\\\"fen\\\" value=\\\"5\\\">\r\n        5分 \r\n        <input type=\\\"submit\\\" name=\\\"Submit\\\" value=\\\"提交\\\">\r\n        </font></td>\r\n      <td width=\\\"50%\\\" valign=\\\"middle\\\"><div align=\\\"center\\\"><font color=\\\"#FFFFFF\\\">平均得分: \r\n          <strong><span id=\\\"pfendiv\\\">[!--pinfopfen--]</span></strong> 分，共有 <strong>[!--infopfennum--]</strong> \r\n          人参与评分</font></div></td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n<table width=\\\"766\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#CCCCCC\\\">\r\n  <tr> \r\n    <td height=\\\"30\\\" bgcolor=\\\"#FFFFFF\\\"> \r\n      <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td width=\\\"17%\\\">&nbsp;&nbsp;&nbsp;网友评论</td>\r\n          <td width=\\\"83%\\\"><div align=\\\"right\\\">[!--listpage--]&nbsp;&nbsp;&nbsp;</div></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor=\\\"#f8fcff\\\"> [!--empirenews.listtemp--] \r\n      <table width=\\\"96%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" style=\\\"word-break:break-all; word-wrap:break-all;\\\">\r\n        <tr> \r\n          <td height=\\\"30\\\"><span class=\\\"name\\\">本站网友 [!--username--]</span> <font color=\\\"#666666\\\">ip:[!--plip--]</font></td>\r\n          <td><div align=\\\"right\\\"><font color=\\\"#666666\\\">[!--pltime--] 发表</font></div></td>\r\n        </tr>\r\n        <tr valign=\\\"top\\\"> \r\n          <td height=\\\"50\\\" colspan=\\\"2\\\" class=\\\"text\\\">[!--pltext--]</td>\r\n        </tr>\r\n        <tr> \r\n          <td height=\\\"30\\\">&nbsp;</td>\r\n          <td><div align=\\\"right\\\" class=\\\"re\\\"><a href=\\\"#tosaypl\\\"[!--includelink--]>回复</a>&nbsp; \r\n              <a href=\\\"JavaScript:makeRequest(\\\'../pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=1&doajax=1&ajaxarea=zcpldiv[!--plid--]\\\',\\\'EchoReturnedText\\\',\\\'GET\\\',\\\'\\\');\\\">支持</a>[<span id=\\\"zcpldiv[!--plid--]\\\">[!--zcnum--]</span>]&nbsp; \r\n              <a href=\\\"JavaScript:makeRequest(\\\'../pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=0&doajax=1&ajaxarea=fdpldiv[!--plid--]\\\',\\\'EchoReturnedText\\\',\\\'GET\\\',\\\'\\\');\\\">反对</a>[<span id=\\\"fdpldiv[!--plid--]\\\">[!--fdnum--]</span>]\r\n            </div></td>\r\n        </tr>\r\n      </table>\r\n      <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr>\r\n          <td background=\\\"[!--news.url--]skin/default/images/plhrbg.gif\\\"></td>\r\n        </tr>\r\n      </table>\r\n      [!--empirenews.listtemp--] \r\n      <div align=\\\"right\\\"><br />\r\n        [!--listpage--]&nbsp;&nbsp;&nbsp;<br />\r\n        <br />\r\n        <font color=\\\"#FF0000\\\">网友评论仅供网友表达个人看法，并不表明本站同意其观点或证实其描述&nbsp;&nbsp;&nbsp;</font><br><br> </div></td>\r\n  </tr>\r\n  <script>\r\n  function CheckPl(obj)\r\n  {\r\n  	if(obj.saytext.value==\\\"\\\")\r\n  	{\r\n  		alert(\\\"错误，评论不能为空\\\");\r\n  		obj.saytext.focus();\r\n  		return false;\r\n  	}\r\n  	return true;\r\n  }\r\n  </script>\r\n  <form action=\\\"../pl/doaction.php\\\" method=\\\"post\\\" name=\\\"saypl\\\" id=\\\"saypl\\\" onsubmit=\\\"return CheckPl(document.saypl)\\\">\r\n  <tr id=\\\"tosaypl\\\"> \r\n    <td bgcolor=\\\"#f8fcff\\\"> <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n            <td width=\\\"13%\\\" height=\\\"28\\\">&nbsp;&nbsp;&nbsp;<span class=\\\"you\\\">我也评两句</span></td>\r\n            <td valign=\\\"middle\\\">用户名： \r\n              <input name=\\\"username\\\" type=\\\"text\\\" id=\\\"username\\\" size=\\\"12\\\" value=\\\"[!--lusername--]\\\" />\r\n            密码： \r\n            <input name=\\\"password\\\" type=\\\"password\\\" id=\\\"password\\\" size=\\\"12\\\" value=\\\"[!--lpassword--]\\\" />\r\n            验证码： \r\n            <input name=\\\"key\\\" type=\\\"text\\\" id=\\\"key\\\" size=\\\"6\\\" />\r\n              <img src=\\\"[!--key.url--]\\\" align=\\\"middle\\\" name=\\\"plKeyImg\\\" id=\\\"plKeyImg\\\" onclick=\\\"plKeyImg.src=\\\'[!--news.url--]e/ShowKey/?v=pl&t=\\\'+Math.random()\\\" title=\\\"看不清楚,点击刷新\\\" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/register/\\\" target=\\\"_blank\\\">还没有注册？</a></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor=\\\"#f8fcff\\\"> <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" class=\\\"retext\\\">\r\n        <tr> \r\n          <td width=\\\"78%\\\"><div align=\\\"center\\\"> \r\n              <textarea name=\\\"saytext\\\" cols=\\\"58\\\" rows=\\\"6\\\" id=\\\"saytext\\\"></textarea>\r\n            </div></td>\r\n          <td width=\\\"22%\\\" rowspan=\\\"2\\\"> <div align=\\\"center\\\">\r\n              <input name=\\\"nomember\\\" type=\\\"checkbox\\\" id=\\\"nomember\\\" value=\\\"1\\\" checked=\\\"checked\\\" />\r\n                匿名发表<br>\r\n                <br />\r\n              <input name=\\\"imageField\\\" type=\\\"submit\\\" id=\\\"imageField\\\" value=\\\" 提 交 \\\" />\r\n            </div></td>\r\n        </tr>\r\n        <tr> \r\n          <td><div align=\\\"center\\\"> \r\n              <script src=\\\"[!--news.url--]d/js/js/plface.js\\\"></script>\r\n            </div></td>\r\n        </tr>\r\n      </table> </td>\r\n  </tr>\r\n  <input name=\\\"id\\\" type=\\\"hidden\\\" id=\\\"id\\\" value=\\\"[!--id--]\\\" />\r\n  <input name=\\\"classid\\\" type=\\\"hidden\\\" id=\\\"classid\\\" value=\\\"[!--classid--]\\\" />\r\n  <input name=\\\"enews\\\" type=\\\"hidden\\\" id=\\\"enews\\\" value=\\\"AddPl\\\" />\r\n  <input name=\\\"repid\\\" type=\\\"hidden\\\" id=\\\"repid\\\" value=\\\"0\\\" />\r\n  </form>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 1);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspl_1`
--

CREATE TABLE `hswl_enewspl_1` (
  `plid` int(10) UNSIGNED NOT NULL,
  `pubid` bigint(16) NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `sayip` varchar(20) NOT NULL DEFAULT '',
  `saytime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `zcnum` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `fdnum` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `saytext` text NOT NULL,
  `eipport` varchar(6) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspl_set`
--

CREATE TABLE `hswl_enewspl_set` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `pltime` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `plsize` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `plincludesize` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `plkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `plface` text NOT NULL,
  `plfacenum` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `plgroupid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `plclosewords` text NOT NULL,
  `plf` text NOT NULL,
  `plmustf` text NOT NULL,
  `pldatatbs` text NOT NULL,
  `defpltempid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `pl_num` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `pldeftb` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `plurl` varchar(200) NOT NULL DEFAULT '',
  `plmaxfloor` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `plquotetemp` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewspl_set`
--

INSERT INTO `hswl_enewspl_set` (`id`, `pltime`, `plsize`, `plincludesize`, `plkey_ok`, `plface`, `plfacenum`, `plgroupid`, `plclosewords`, `plf`, `plmustf`, `pldatatbs`, `defpltempid`, `pl_num`, `pldeftb`, `plurl`, `plmaxfloor`, `plquotetemp`) VALUES
(1, 20, 500, 0, 1, '||[~e.jy~]##1.gif||[~e.kq~]##2.gif||[~e.se~]##3.gif||[~e.sq~]##4.gif||[~e.lh~]##5.gif||[~e.ka~]##6.gif||[~e.hh~]##7.gif||[~e.ys~]##8.gif||[~e.ng~]##9.gif||[~e.ot~]##10.gif||', 10, 0, '', '', '', ',1,', 1, 12, 1, '/e/pl/', 0, '<div class=\\\"ecomment\\\">\r\n<span class=\\\"ecommentauthor\\\">网友 [!--username--] 的原文：</span>\r\n<p class=\\\"ecommenttext\\\">[!--pltext--]</p>\r\n</div>');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspostdata`
--

CREATE TABLE `hswl_enewspostdata` (
  `postid` bigint(20) UNSIGNED NOT NULL,
  `rnd` varchar(32) NOT NULL DEFAULT '',
  `postdata` varchar(255) NOT NULL DEFAULT '',
  `ispath` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspostserver`
--

CREATE TABLE `hswl_enewspostserver` (
  `pid` smallint(5) UNSIGNED NOT NULL,
  `pname` varchar(60) NOT NULL DEFAULT '',
  `purl` varchar(255) NOT NULL DEFAULT '',
  `ptype` tinyint(1) NOT NULL DEFAULT '0',
  `ftphost` varchar(255) NOT NULL DEFAULT '',
  `ftpport` varchar(20) NOT NULL DEFAULT '',
  `ftpusername` varchar(120) NOT NULL DEFAULT '',
  `ftppassword` varchar(120) NOT NULL DEFAULT '',
  `ftppath` varchar(255) NOT NULL DEFAULT '',
  `ftpmode` tinyint(1) NOT NULL DEFAULT '0',
  `ftpssl` tinyint(1) NOT NULL DEFAULT '0',
  `ftppasv` tinyint(1) NOT NULL DEFAULT '0',
  `ftpouttime` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `lastposttime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewspostserver`
--

INSERT INTO `hswl_enewspostserver` (`pid`, `pname`, `purl`, `ptype`, `ftphost`, `ftpport`, `ftpusername`, `ftppassword`, `ftppath`, `ftpmode`, `ftpssl`, `ftppasv`, `ftpouttime`, `lastposttime`) VALUES
(1, '附件服务器', '', 1, '', '', '', '', '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsprinttemp`
--

CREATE TABLE `hswl_enewsprinttemp` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsprinttemp`
--

INSERT INTO `hswl_enewsprinttemp` (`tempid`, `tempname`, `temptext`, `isdefault`, `showdate`, `modid`) VALUES
(1, '默认打印模板', '<html>\r\n<head>\r\n<meta http-equiv=\\\"content-type\\\" content=\\\"text/html; charset=utf-8\\\">\r\n<title>[!--pagetitle--] - 成都舜王科技有限公司</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<style>\r\nbody{font-family:宋体}td,.f12{font-size:12px}.f24 {font-size:24px;}.f14 {font-size:14px;}.title14 {font-size:14px;line-height:130%}.l17 {line-height:170%;}\r\n</style>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n<body bgcolor=\\\"#ffffff\\\" topmargin=5 leftmargin=5 marginheight=5 marginwidth=5 onLoad=\\\'window.print()\\\'>\r\n<center>\r\n<table width=650 border=0 cellspacing=0 cellpadding=0>\r\n<tr>\r\n<td height=65 width=180><A href=\\\"http://www.phome.net/\\\"><IMG src=\\\"../../skin/default/images/elogo.jpg\\\" alt=\\\"舜王科技\\\" width=\\\"180\\\" height=\\\"65\\\" border=0></A></td> \r\n<td valign=\\\"bottom\\\">[!--url--]</td>\r\n<td width=\\\"83\\\" align=\\\"right\\\" valign=\\\"bottom\\\"><a href=\\\'javascript:history.back()\\\'>返回</a>　<a href=\\\'javascript:window.print()\\\'>打印</a></td>\r\n</tr>\r\n</table>\r\n<table width=650 border=0 cellpadding=0 cellspacing=20 bgcolor=\\\"#EDF0F5\\\">\r\n<tr>\r\n<td>\r\n<BR>\r\n<TABLE cellSpacing=0 cellPadding=0 width=\\\"100%\\\" border=0>\r\n<TBODY>\r\n<TR>\r\n<TH class=\\\"f24\\\"><FONT color=#05006c>[!--title--]</FONT></TH></TR>\r\n<TR>\r\n<TD>\r\n<HR SIZE=1 bgcolor=\\\"#d9d9d9\\\">\r\n</TD>\r\n</TR>\r\n<TR>\r\n<TD align=\\\"middle\\\" height=20><div align=\\\"center\\\">[!--writer--]&nbsp;&nbsp;[!--newstime--]&nbsp;&nbsp;[!--befrom--]</div></TD>\r\n</TR>\r\n<TR>\r\n<TD height=15></TD>\r\n</TR>\r\n<TR>\r\n<TD class=\\\"l17\\\">\r\n<FONT class=\\\"f14\\\" id=\\\"zoom\\\"> \r\n<P>[!--newstext--]<br>\r\n<BR clear=all>\r\n</P>\r\n</FONT>\r\n</TD>\r\n</TR>\r\n<TR height=10>\r\n<TD></TD>\r\n</TR>\r\n</TBODY>\r\n</TABLE>\r\n[!--titlelink--]\r\n</td>\r\n</tr>\r\n</table>\r\n</center>\r\n</body>\r\n</html>', 1, 'Y-m-d H:i:s', 1);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsprinttemp_2`
--

CREATE TABLE `hswl_enewsprinttemp_2` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsprinttemp_2`
--

INSERT INTO `hswl_enewsprinttemp_2` (`tempid`, `tempname`, `temptext`, `isdefault`, `showdate`, `modid`) VALUES
(1, '默认打印模板', '<html>\r\n<head>\r\n<meta http-equiv=\\\"content-type\\\" content=\\\"text/html; charset=utf-8\\\">\r\n<title>[!--pagetitle--] - 成都舜王科技有限公司</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<style>\r\nbody{font-family:宋体}td,.f12{font-size:12px}.f24 {font-size:24px;}.f14 {font-size:14px;}.title14 {font-size:14px;line-height:130%}.l17 {line-height:170%;}\r\n</style>\r\n</head>\r\n<body bgcolor=\\\"#ffffff\\\" topmargin=5 leftmargin=5 marginheight=5 marginwidth=5 onLoad=\\\'window.print()\\\'>\r\n<center>\r\n<table width=650 border=0 cellspacing=0 cellpadding=0>\r\n<tr>\r\n<td height=65 width=180><A href=\\\"http://www.phome.net/\\\"><IMG src=\\\"../../skin/default/images/elogo.jpg\\\" alt=\\\"舜王科技\\\" width=\\\"180\\\" height=\\\"65\\\" border=0></A></td> \r\n<td valign=\\\"bottom\\\">[!--url--]</td>\r\n<td width=\\\"83\\\" align=\\\"right\\\" valign=\\\"bottom\\\"><a href=\\\'javascript:history.back()\\\'>返回</a>　<a href=\\\'javascript:window.print()\\\'>打印</a></td>\r\n</tr>\r\n</table>\r\n<table width=650 border=0 cellpadding=0 cellspacing=20 bgcolor=\\\"#EDF0F5\\\">\r\n<tr>\r\n<td>\r\n<BR>\r\n<TABLE cellSpacing=0 cellPadding=0 width=\\\"100%\\\" border=0>\r\n<TBODY>\r\n<TR>\r\n<TH class=\\\"f24\\\"><FONT color=#05006c>[!--title--]</FONT></TH></TR>\r\n<TR>\r\n<TD>\r\n<HR SIZE=1 bgcolor=\\\"#d9d9d9\\\">\r\n</TD>\r\n</TR>\r\n<TR>\r\n<TD align=\\\"middle\\\" height=20><div align=\\\"center\\\">[!--writer--]&nbsp;&nbsp;[!--newstime--]&nbsp;&nbsp;[!--befrom--]</div></TD>\r\n</TR>\r\n<TR>\r\n<TD height=15></TD>\r\n</TR>\r\n<TR>\r\n<TD class=\\\"l17\\\">\r\n<FONT class=\\\"f14\\\" id=\\\"zoom\\\"> \r\n<P>[!--newstext--]<br>\r\n<BR clear=all>\r\n</P>\r\n</FONT>\r\n</TD>\r\n</TR>\r\n<TR height=10>\r\n<TD></TD>\r\n</TR>\r\n</TBODY>\r\n</TABLE>\r\n[!--titlelink--]\r\n</td>\r\n</tr>\r\n</table>\r\n</center>\r\n</body>\r\n</html>', 1, 'Y-m-d H:i:s', 1);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspublic`
--

CREATE TABLE `hswl_enewspublic` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `newsurl` varchar(120) NOT NULL DEFAULT '',
  `sitename` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `filetype` text NOT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `hotnum` tinyint(4) NOT NULL DEFAULT '0',
  `newnum` tinyint(4) NOT NULL DEFAULT '0',
  `relistnum` int(11) NOT NULL DEFAULT '0',
  `renewsnum` int(11) NOT NULL DEFAULT '0',
  `min_keyboard` tinyint(4) NOT NULL DEFAULT '0',
  `max_keyboard` tinyint(4) NOT NULL DEFAULT '0',
  `search_num` tinyint(4) NOT NULL DEFAULT '0',
  `search_pagenum` tinyint(4) NOT NULL DEFAULT '0',
  `newslink` tinyint(4) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `searchtime` int(11) NOT NULL DEFAULT '0',
  `loginnum` smallint(6) NOT NULL DEFAULT '0',
  `logintime` int(11) NOT NULL DEFAULT '0',
  `addnews_ok` tinyint(1) NOT NULL DEFAULT '0',
  `register_ok` tinyint(1) NOT NULL DEFAULT '0',
  `indextype` varchar(10) NOT NULL DEFAULT '',
  `goodlencord` tinyint(4) NOT NULL DEFAULT '0',
  `goodtype` varchar(10) NOT NULL DEFAULT '',
  `goodnum` tinyint(4) NOT NULL DEFAULT '0',
  `searchtype` varchar(10) NOT NULL DEFAULT '',
  `exittime` smallint(6) NOT NULL DEFAULT '0',
  `smalltextlen` smallint(6) NOT NULL DEFAULT '0',
  `defaultgroupid` smallint(6) NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `phpmode` tinyint(1) NOT NULL DEFAULT '0',
  `ftphost` varchar(255) NOT NULL DEFAULT '',
  `ftpport` varchar(20) NOT NULL DEFAULT '21',
  `ftpusername` varchar(120) NOT NULL DEFAULT '',
  `ftppassword` varchar(120) NOT NULL DEFAULT '',
  `ftppath` varchar(255) NOT NULL DEFAULT '',
  `ftpmode` tinyint(1) NOT NULL DEFAULT '0',
  `install` tinyint(1) NOT NULL DEFAULT '0',
  `hotplnum` tinyint(4) NOT NULL DEFAULT '0',
  `softversion` varchar(30) NOT NULL DEFAULT '0',
  `lctime` int(11) NOT NULL DEFAULT '0',
  `dorepnum` smallint(6) NOT NULL DEFAULT '0',
  `loadtempnum` smallint(6) NOT NULL DEFAULT '0',
  `firstnum` tinyint(4) NOT NULL DEFAULT '0',
  `bakdbpath` varchar(50) NOT NULL DEFAULT '',
  `bakdbzip` varchar(50) NOT NULL DEFAULT '',
  `downpass` varchar(32) NOT NULL DEFAULT '',
  `min_userlen` tinyint(4) NOT NULL DEFAULT '0',
  `max_userlen` tinyint(4) NOT NULL DEFAULT '0',
  `min_passlen` tinyint(4) NOT NULL DEFAULT '0',
  `max_passlen` tinyint(4) NOT NULL DEFAULT '0',
  `filechmod` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `loginkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `limittype` tinyint(1) NOT NULL DEFAULT '0',
  `redodown` smallint(6) NOT NULL DEFAULT '0',
  `candocode` tinyint(1) NOT NULL DEFAULT '0',
  `opennotcj` tinyint(1) NOT NULL DEFAULT '0',
  `reuserpagenum` int(11) NOT NULL DEFAULT '0',
  `revotejsnum` int(11) NOT NULL DEFAULT '0',
  `readjsnum` int(11) NOT NULL DEFAULT '0',
  `qaddtran` tinyint(1) NOT NULL DEFAULT '0',
  `qaddtransize` int(11) NOT NULL DEFAULT '0',
  `ebakthisdb` tinyint(1) NOT NULL DEFAULT '0',
  `delnewsnum` int(11) NOT NULL DEFAULT '0',
  `markpos` tinyint(4) NOT NULL DEFAULT '0',
  `markimg` varchar(80) NOT NULL DEFAULT '',
  `marktext` varchar(80) NOT NULL DEFAULT '',
  `markfontsize` varchar(12) NOT NULL DEFAULT '',
  `markfontcolor` varchar(12) NOT NULL DEFAULT '',
  `markfont` varchar(80) NOT NULL DEFAULT '',
  `adminloginkey` tinyint(1) NOT NULL DEFAULT '0',
  `php_outtime` int(11) NOT NULL DEFAULT '0',
  `listpagefun` varchar(36) NOT NULL DEFAULT '',
  `textpagefun` varchar(36) NOT NULL DEFAULT '',
  `adfile` varchar(30) NOT NULL DEFAULT '',
  `notsaveurl` text NOT NULL,
  `jstempid` smallint(6) NOT NULL DEFAULT '0',
  `rssnum` smallint(6) NOT NULL DEFAULT '0',
  `rsssub` smallint(6) NOT NULL DEFAULT '0',
  `savetxtf` text NOT NULL,
  `dorepdlevelnum` int(11) NOT NULL DEFAULT '0',
  `listpagelistfun` varchar(36) NOT NULL DEFAULT '',
  `listpagelistnum` smallint(6) NOT NULL DEFAULT '0',
  `infolinknum` int(11) NOT NULL DEFAULT '0',
  `searchgroupid` smallint(6) NOT NULL DEFAULT '0',
  `opencopytext` tinyint(1) NOT NULL DEFAULT '0',
  `reuserjsnum` int(11) NOT NULL DEFAULT '0',
  `reuserlistnum` int(11) NOT NULL DEFAULT '0',
  `opentitleurl` tinyint(1) NOT NULL DEFAULT '0',
  `qaddtranimgtype` text NOT NULL,
  `qaddtranfile` tinyint(1) NOT NULL DEFAULT '0',
  `qaddtranfilesize` int(11) NOT NULL DEFAULT '0',
  `qaddtranfiletype` text NOT NULL,
  `sendmailtype` tinyint(1) NOT NULL DEFAULT '0',
  `smtphost` varchar(255) NOT NULL DEFAULT '',
  `fromemail` varchar(120) NOT NULL DEFAULT '',
  `loginemail` tinyint(1) NOT NULL DEFAULT '0',
  `emailusername` varchar(60) NOT NULL DEFAULT '',
  `emailpassword` varchar(60) NOT NULL DEFAULT '',
  `smtpport` varchar(20) NOT NULL DEFAULT '',
  `emailname` varchar(120) NOT NULL DEFAULT '',
  `deftempid` smallint(6) NOT NULL DEFAULT '0',
  `feedbacktfile` tinyint(1) NOT NULL DEFAULT '0',
  `feedbackfilesize` int(11) NOT NULL DEFAULT '0',
  `feedbackfiletype` text NOT NULL,
  `searchtempvar` tinyint(1) NOT NULL DEFAULT '0',
  `showinfolevel` smallint(6) NOT NULL DEFAULT '0',
  `navfh` varchar(20) NOT NULL DEFAULT '',
  `spicwidth` smallint(6) NOT NULL DEFAULT '0',
  `spicheight` smallint(6) NOT NULL DEFAULT '0',
  `spickill` tinyint(1) NOT NULL DEFAULT '0',
  `jpgquality` tinyint(4) NOT NULL DEFAULT '0',
  `markpct` tinyint(4) NOT NULL DEFAULT '0',
  `redoview` smallint(6) NOT NULL DEFAULT '0',
  `reggetfen` smallint(6) NOT NULL DEFAULT '0',
  `regbooktime` smallint(6) NOT NULL DEFAULT '0',
  `revotetime` smallint(6) NOT NULL DEFAULT '0',
  `nreclass` text NOT NULL,
  `nreinfo` text NOT NULL,
  `nrejs` text NOT NULL,
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `filepath` varchar(30) NOT NULL DEFAULT '',
  `openmembertranimg` tinyint(1) NOT NULL DEFAULT '0',
  `memberimgsize` int(11) NOT NULL DEFAULT '0',
  `memberimgtype` text NOT NULL,
  `openmembertranfile` tinyint(1) NOT NULL DEFAULT '0',
  `memberfilesize` int(11) NOT NULL DEFAULT '0',
  `memberfiletype` text NOT NULL,
  `nottobq` text NOT NULL,
  `defspacestyleid` smallint(6) NOT NULL DEFAULT '0',
  `canposturl` text NOT NULL,
  `openspace` tinyint(1) NOT NULL DEFAULT '0',
  `defadminstyle` smallint(6) NOT NULL DEFAULT '0',
  `realltime` smallint(6) NOT NULL DEFAULT '0',
  `closeip` text NOT NULL,
  `openip` text NOT NULL,
  `hopenip` text NOT NULL,
  `closewords` text NOT NULL,
  `closewordsf` text NOT NULL,
  `textpagelistnum` smallint(6) NOT NULL DEFAULT '0',
  `memberlistlevel` smallint(6) NOT NULL DEFAULT '0',
  `wapopen` tinyint(1) NOT NULL DEFAULT '0',
  `wapdefstyle` smallint(6) NOT NULL DEFAULT '0',
  `wapshowmid` varchar(255) NOT NULL DEFAULT '',
  `waplistnum` tinyint(4) NOT NULL DEFAULT '0',
  `wapsubtitle` tinyint(4) NOT NULL DEFAULT '0',
  `wapshowdate` varchar(50) NOT NULL DEFAULT '',
  `wapchar` tinyint(1) NOT NULL DEFAULT '0',
  `ebakcanlistdb` tinyint(1) NOT NULL DEFAULT '0',
  `paymoneytofen` int(11) NOT NULL DEFAULT '0',
  `payminmoney` int(11) NOT NULL DEFAULT '0',
  `keytog` tinyint(1) NOT NULL DEFAULT '0',
  `keyrnd` varchar(60) NOT NULL DEFAULT '',
  `keytime` int(11) NOT NULL DEFAULT '0',
  `regkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `opengetdown` tinyint(1) NOT NULL DEFAULT '0',
  `gbkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `fbkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `newaddinfotime` smallint(6) NOT NULL DEFAULT '0',
  `classnavline` smallint(6) NOT NULL DEFAULT '0',
  `classnavfh` varchar(120) NOT NULL DEFAULT '',
  `adminstyle` text NOT NULL,
  `sitekey` varchar(255) NOT NULL DEFAULT '',
  `siteintro` text NOT NULL,
  `docnewsnum` int(11) NOT NULL DEFAULT '0',
  `openschall` tinyint(1) NOT NULL DEFAULT '0',
  `schallfield` tinyint(1) NOT NULL DEFAULT '0',
  `schallminlen` tinyint(4) NOT NULL DEFAULT '0',
  `schallmaxlen` tinyint(4) NOT NULL DEFAULT '0',
  `schallnotcid` text NOT NULL,
  `schallnum` smallint(6) NOT NULL DEFAULT '0',
  `schallpagenum` smallint(6) NOT NULL DEFAULT '0',
  `dtcanbq` tinyint(1) NOT NULL DEFAULT '0',
  `dtcachetime` int(11) NOT NULL DEFAULT '0',
  `regretime` smallint(6) NOT NULL DEFAULT '0',
  `regclosewords` text NOT NULL,
  `regemailonly` tinyint(1) NOT NULL DEFAULT '0',
  `repkeynum` smallint(6) NOT NULL DEFAULT '0',
  `getpasstime` int(11) NOT NULL DEFAULT '0',
  `acttime` int(11) NOT NULL DEFAULT '0',
  `regacttype` tinyint(1) NOT NULL DEFAULT '0',
  `acttext` text NOT NULL,
  `getpasstext` text NOT NULL,
  `acttitle` varchar(120) NOT NULL DEFAULT '',
  `getpasstitle` varchar(120) NOT NULL DEFAULT '',
  `opengetpass` tinyint(1) NOT NULL DEFAULT '0',
  `hlistinfonum` int(11) NOT NULL DEFAULT '0',
  `qlistinfonum` int(11) NOT NULL DEFAULT '0',
  `dtncanbq` tinyint(1) NOT NULL DEFAULT '0',
  `dtncachetime` int(11) NOT NULL DEFAULT '0',
  `readdinfotime` smallint(6) NOT NULL DEFAULT '0',
  `qeditinfotime` int(11) NOT NULL DEFAULT '0',
  `ftpssl` tinyint(1) NOT NULL DEFAULT '0',
  `ftppasv` tinyint(1) NOT NULL DEFAULT '0',
  `ftpouttime` smallint(6) NOT NULL DEFAULT '0',
  `onclicktype` tinyint(1) NOT NULL DEFAULT '0',
  `onclickfilesize` int(11) NOT NULL DEFAULT '0',
  `onclickfiletime` int(11) NOT NULL DEFAULT '0',
  `schalltime` smallint(6) NOT NULL DEFAULT '0',
  `defprinttempid` smallint(6) NOT NULL DEFAULT '0',
  `opentags` tinyint(1) NOT NULL DEFAULT '0',
  `tagstempid` smallint(6) NOT NULL DEFAULT '0',
  `usetags` text NOT NULL,
  `chtags` text NOT NULL,
  `tagslistnum` smallint(6) NOT NULL DEFAULT '0',
  `closeqdt` tinyint(1) NOT NULL DEFAULT '0',
  `settop` tinyint(1) NOT NULL DEFAULT '0',
  `qlistinfomod` tinyint(1) NOT NULL DEFAULT '0',
  `gb_num` tinyint(4) NOT NULL DEFAULT '0',
  `member_num` tinyint(4) NOT NULL DEFAULT '0',
  `space_num` tinyint(4) NOT NULL DEFAULT '0',
  `opendoip` text NOT NULL,
  `closedoip` text NOT NULL,
  `doiptype` varchar(255) NOT NULL DEFAULT '',
  `filelday` int(11) NOT NULL DEFAULT '0',
  `infolday` int(11) NOT NULL DEFAULT '0',
  `baktempnum` tinyint(4) NOT NULL DEFAULT '0',
  `dorepkey` tinyint(1) NOT NULL DEFAULT '0',
  `dorepword` tinyint(1) NOT NULL DEFAULT '0',
  `onclickrnd` varchar(20) NOT NULL DEFAULT '',
  `indexpagedt` tinyint(1) NOT NULL DEFAULT '0',
  `keybgcolor` varchar(8) NOT NULL DEFAULT '',
  `keyfontcolor` varchar(8) NOT NULL DEFAULT '',
  `keydistcolor` varchar(8) NOT NULL DEFAULT '',
  `indexpageid` smallint(6) NOT NULL DEFAULT '0',
  `closeqdtmsg` varchar(255) NOT NULL DEFAULT '',
  `openfileserver` tinyint(1) NOT NULL DEFAULT '0',
  `closemods` varchar(255) NOT NULL DEFAULT '',
  `fieldandtop` tinyint(1) NOT NULL DEFAULT '0',
  `fieldandclosetb` text NOT NULL,
  `filedatatbs` text NOT NULL,
  `filedeftb` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `closelisttemp` varchar(255) NOT NULL DEFAULT '',
  `chclasscolor` varchar(8) NOT NULL DEFAULT '',
  `timeclose` varchar(255) NOT NULL DEFAULT '',
  `timeclosedo` varchar(255) NOT NULL DEFAULT '',
  `ipaddinfonum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ipaddinfotime` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `rewriteinfo` varchar(120) NOT NULL DEFAULT '',
  `rewriteclass` varchar(120) NOT NULL DEFAULT '',
  `rewriteinfotype` varchar(120) NOT NULL DEFAULT '',
  `rewritetags` varchar(120) NOT NULL DEFAULT '',
  `closehmenu` varchar(80) NOT NULL DEFAULT '',
  `indexaddpage` tinyint(1) NOT NULL DEFAULT '0',
  `rewritepl` varchar(150) NOT NULL DEFAULT '',
  `modmemberedittran` tinyint(1) NOT NULL DEFAULT '0',
  `modinfoedittran` tinyint(1) NOT NULL DEFAULT '0',
  `php_adminouttime` int(11) NOT NULL DEFAULT '0',
  `httptype` tinyint(1) NOT NULL DEFAULT '0',
  `qinfoaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `bakescapetype` tinyint(1) NOT NULL DEFAULT '0',
  `hkeytime` int(11) NOT NULL DEFAULT '0',
  `hkeyrnd` varchar(60) NOT NULL DEFAULT '',
  `mhavedatedo` tinyint(1) NOT NULL DEFAULT '0',
  `reportkey` tinyint(1) NOT NULL DEFAULT '0',
  `wapchstyle` tinyint(1) NOT NULL DEFAULT '0',
  `usetotalnum` tinyint(1) NOT NULL DEFAULT '0',
  `spacegids` varchar(255) NOT NULL DEFAULT '',
  `candocodetag` tinyint(1) NOT NULL DEFAULT '0',
  `openern` varchar(255) NOT NULL DEFAULT '',
  `ernurl` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewspublic`
--

INSERT INTO `hswl_enewspublic` (`id`, `newsurl`, `sitename`, `email`, `filetype`, `filesize`, `hotnum`, `newnum`, `relistnum`, `renewsnum`, `min_keyboard`, `max_keyboard`, `search_num`, `search_pagenum`, `newslink`, `checked`, `searchtime`, `loginnum`, `logintime`, `addnews_ok`, `register_ok`, `indextype`, `goodlencord`, `goodtype`, `goodnum`, `searchtype`, `exittime`, `smalltextlen`, `defaultgroupid`, `fileurl`, `phpmode`, `ftphost`, `ftpport`, `ftpusername`, `ftppassword`, `ftppath`, `ftpmode`, `install`, `hotplnum`, `softversion`, `lctime`, `dorepnum`, `loadtempnum`, `firstnum`, `bakdbpath`, `bakdbzip`, `downpass`, `min_userlen`, `max_userlen`, `min_passlen`, `max_passlen`, `filechmod`, `tid`, `tbname`, `loginkey_ok`, `limittype`, `redodown`, `candocode`, `opennotcj`, `reuserpagenum`, `revotejsnum`, `readjsnum`, `qaddtran`, `qaddtransize`, `ebakthisdb`, `delnewsnum`, `markpos`, `markimg`, `marktext`, `markfontsize`, `markfontcolor`, `markfont`, `adminloginkey`, `php_outtime`, `listpagefun`, `textpagefun`, `adfile`, `notsaveurl`, `jstempid`, `rssnum`, `rsssub`, `savetxtf`, `dorepdlevelnum`, `listpagelistfun`, `listpagelistnum`, `infolinknum`, `searchgroupid`, `opencopytext`, `reuserjsnum`, `reuserlistnum`, `opentitleurl`, `qaddtranimgtype`, `qaddtranfile`, `qaddtranfilesize`, `qaddtranfiletype`, `sendmailtype`, `smtphost`, `fromemail`, `loginemail`, `emailusername`, `emailpassword`, `smtpport`, `emailname`, `deftempid`, `feedbacktfile`, `feedbackfilesize`, `feedbackfiletype`, `searchtempvar`, `showinfolevel`, `navfh`, `spicwidth`, `spicheight`, `spickill`, `jpgquality`, `markpct`, `redoview`, `reggetfen`, `regbooktime`, `revotetime`, `nreclass`, `nreinfo`, `nrejs`, `fpath`, `filepath`, `openmembertranimg`, `memberimgsize`, `memberimgtype`, `openmembertranfile`, `memberfilesize`, `memberfiletype`, `nottobq`, `defspacestyleid`, `canposturl`, `openspace`, `defadminstyle`, `realltime`, `closeip`, `openip`, `hopenip`, `closewords`, `closewordsf`, `textpagelistnum`, `memberlistlevel`, `wapopen`, `wapdefstyle`, `wapshowmid`, `waplistnum`, `wapsubtitle`, `wapshowdate`, `wapchar`, `ebakcanlistdb`, `paymoneytofen`, `payminmoney`, `keytog`, `keyrnd`, `keytime`, `regkey_ok`, `opengetdown`, `gbkey_ok`, `fbkey_ok`, `newaddinfotime`, `classnavline`, `classnavfh`, `adminstyle`, `sitekey`, `siteintro`, `docnewsnum`, `openschall`, `schallfield`, `schallminlen`, `schallmaxlen`, `schallnotcid`, `schallnum`, `schallpagenum`, `dtcanbq`, `dtcachetime`, `regretime`, `regclosewords`, `regemailonly`, `repkeynum`, `getpasstime`, `acttime`, `regacttype`, `acttext`, `getpasstext`, `acttitle`, `getpasstitle`, `opengetpass`, `hlistinfonum`, `qlistinfonum`, `dtncanbq`, `dtncachetime`, `readdinfotime`, `qeditinfotime`, `ftpssl`, `ftppasv`, `ftpouttime`, `onclicktype`, `onclickfilesize`, `onclickfiletime`, `schalltime`, `defprinttempid`, `opentags`, `tagstempid`, `usetags`, `chtags`, `tagslistnum`, `closeqdt`, `settop`, `qlistinfomod`, `gb_num`, `member_num`, `space_num`, `opendoip`, `closedoip`, `doiptype`, `filelday`, `infolday`, `baktempnum`, `dorepkey`, `dorepword`, `onclickrnd`, `indexpagedt`, `keybgcolor`, `keyfontcolor`, `keydistcolor`, `indexpageid`, `closeqdtmsg`, `openfileserver`, `closemods`, `fieldandtop`, `fieldandclosetb`, `filedatatbs`, `filedeftb`, `closelisttemp`, `chclasscolor`, `timeclose`, `timeclosedo`, `ipaddinfonum`, `ipaddinfotime`, `rewriteinfo`, `rewriteclass`, `rewriteinfotype`, `rewritetags`, `closehmenu`, `indexaddpage`, `rewritepl`, `modmemberedittran`, `modinfoedittran`, `php_adminouttime`, `httptype`, `qinfoaddfen`, `bakescapetype`, `hkeytime`, `hkeyrnd`, `mhavedatedo`, `reportkey`, `wapchstyle`, `usetotalnum`, `spacegids`, `candocodetag`, `openern`, `ernurl`) VALUES
(1, '/', '成都市华森物流有限公司', 'admin@shunking.cn', '|.png|.gif|.jpg|.swf|.rar|.zip|.mp3|.wmv|.txt|.doc|', 6144, 10, 10, 8, 100, 2, 20, 20, 10, 0, 0, 30, 5, 60, 1, 0, '.html', 0, '', 10, '.html', 40, 160, 1, '/d/file/', 0, '', '21', '', '', '', 0, 0, 10, '7.5,1502985610', 1222406370, 300, 50, 10, 'bdata', 'zip', '9Ar5nSunfjtvpMnSpX48', 3, 20, 6, 20, 1, 1, 'news', 0, 0, 1, 1, 0, 50, 100, 100, 1, 50, 1, 300, 5, '../data/mark/maskdef.gif', '', '5', '', '../data/mark/cour.ttf', 1, 0, 'sys_ShowListPage', 'sys_ShowTextPage', 'thea', '', 1, 50, 300, ',article.newstext,', 300, 'user_ShowListMorePage', 10, 100, 0, 0, 100, 8, 1, '|.gif|.jpg|', 1, 500, '|.zip|.rar|', 1, 'smtp.163.com', 'ecms@163.com', 1, 'ecms', 'ecms', '25', '舜王CMS', 0, 1, 500, '|.zip|.rar|', 1, 2, '>', 105, 118, 1, 80, 65, 24, 0, 30, 30, ',3,4,13,16,17,18,19,21,', ',', ',', 2, '', 1, 50, '|.gif|.jpg|', 1, 500, '|.zip|.rar|', ',', 1, '', 1, 1, 0, '', '', '', '', '', 6, 2, 0, 1, '', 10, 30, 'm-d', 2, 0, 10, 1, 2, 'mMEJ9B35g77nN8sI13VD5y3yDi8OpYQg', 900, 0, 0, 0, 0, 0, 20, '&nbsp;|&nbsp;', ',1,2,', '成都市华森物流有限公司', '成都市华森物流有限公司创立于2012年，位于成都市龙潭工业园区，是一家专业从事冷藏、普通货物业 务的物流服务商。专注于各类食品、乳品、水产、果蔬、酒业等产品的干线运输及区域配送、物流业务咨询 与仓储服务的物流企业。', 300, 0, 1, 3, 20, ',,', 20, 10, 1, 43200, 0, '', 1, 0, 72, 720, 0, '[!--username--] ，\r\n这封信是由 [!--sitename--] 发送的。\r\n\r\n您收到这封邮件，是因为在我们网站的新用户注册 Email 使用\r\n了您的地址。如果您并没有访问过我们的网站，或没有进行上述操作，请忽\r\n略这封邮件。您不需要退订或进行其他进一步的操作。\r\n\r\n----------------------------------------------------------------------\r\n帐号激活说明\r\n----------------------------------------------------------------------\r\n\r\n您是我们网站的新用户，注册 Email 时使用了本地址，我们需\r\n要对您的地址有效性进行验证以避免垃圾邮件或地址被滥用。\r\n\r\n您只需点击下面的链接即可激活您的帐号：\r\n\r\n[!--pageurl--]\r\n\r\n(如果上面不是链接形式，请将地址手工粘贴到浏览器地址栏再访问)\r\n\r\n感谢您的访问，祝您使用愉快！\r\n\r\n\r\n\r\n此致\r\n\r\n[!--sitename--] 管理团队.\r\n[!--news.url--]', '[!--username--] ，\r\n这封信是由 [!--sitename--] 发送的。\r\n\r\n您收到这封邮件，是因为在我们的网站上这个邮箱地址被登记为用户邮箱，\r\n且该用户请求使用 Email 密码重置功能所致。\r\n\r\n----------------------------------------------------------------------\r\n重要！\r\n----------------------------------------------------------------------\r\n\r\n如果您没有提交密码重置的请求或不是我们网站的注册用户，请立即忽略\r\n并删除这封邮件。只在您确认需要重置密码的情况下，才继续阅读下面的\r\n内容。\r\n\r\n----------------------------------------------------------------------\r\n密码重置说明\r\n----------------------------------------------------------------------\r\n\r\n您只需在提交请求后的三天之内，通过点击下面的链接重置您的密码：\r\n\r\n[!--pageurl--]\r\n\r\n(如果上面不是链接形式，请将地址手工粘贴到浏览器地址栏再访问)\r\n\r\n上面的页面打开后，输入新的密码后提交，之后您即可使用新的密码登录\r\n网站了。您可以在用户控制面板中随时修改您的密码。\r\n\r\n\r\n\r\n此致\r\n\r\n[!--sitename--] 管理团队.\r\n[!--news.url--]', '[[!--sitename--]] Email 地址验证', '[[!--sitename--]] 取回密码说明', 0, 30, 25, 1, 43200, 60, 0, 0, 0, 0, 0, 10, 60, 0, 1, 1, 1, ',1,2,3,4,5,6,7,8,', '', 25, 0, 0, 0, 20, 20, 25, '', '', '', 0, 0, 3, 0, 0, '', 0, '', '', '', 0, '', 0, ',error,gb,', 0, '', ',1,', 1, '', 'A2C5F6', '', '', 0, 0, '', '', '', '', '', 0, '', 0, 0, 1000, 0, 0, 1, 30, 'iNeSgcPBrc29a4dBYKSNADyJjBLGUoyS5h8U', 0, 0, 0, 0, '', 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspublicadd`
--

CREATE TABLE `hswl_enewspublicadd` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `ctimeopen` tinyint(1) NOT NULL DEFAULT '0',
  `ctimelast` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ctimeindex` int(11) NOT NULL DEFAULT '0',
  `ctimeclass` int(11) NOT NULL DEFAULT '0',
  `ctimelist` int(11) NOT NULL DEFAULT '0',
  `ctimetext` int(11) NOT NULL DEFAULT '0',
  `ctimett` int(11) NOT NULL DEFAULT '0',
  `ctimetags` int(11) NOT NULL DEFAULT '0',
  `ctimegids` varchar(255) NOT NULL DEFAULT '',
  `ctimecids` varchar(255) NOT NULL DEFAULT '',
  `ctimernd` varchar(60) NOT NULL DEFAULT '',
  `ctimeaddre` tinyint(4) NOT NULL DEFAULT '0',
  `ctimeqaddre` tinyint(4) NOT NULL DEFAULT '0',
  `autodoopen` tinyint(1) NOT NULL DEFAULT '0',
  `autodouser` varchar(30) NOT NULL DEFAULT '',
  `autodopass` varchar(32) NOT NULL DEFAULT '',
  `autodosalt` varchar(20) NOT NULL DEFAULT '',
  `autodoshowkey` tinyint(1) NOT NULL DEFAULT '0',
  `autodotime` int(11) NOT NULL DEFAULT '0',
  `autodoline` int(11) NOT NULL DEFAULT '0',
  `autodovar` varchar(20) NOT NULL DEFAULT '',
  `autodoval` varchar(60) NOT NULL DEFAULT '',
  `autodoshow` tinyint(1) NOT NULL DEFAULT '0',
  `autodofile` tinyint(1) NOT NULL DEFAULT '0',
  `autodopostpass` varchar(120) NOT NULL DEFAULT '',
  `autodoss` tinyint(1) NOT NULL DEFAULT '0',
  `autodoaction` varchar(200) NOT NULL DEFAULT '',
  `autodock` tinyint(1) NOT NULL DEFAULT '0',
  `digglevel` int(11) NOT NULL DEFAULT '0',
  `diggcmids` varchar(255) NOT NULL DEFAULT '',
  `toqjf` text NOT NULL,
  `qtoqjf` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewspublicadd`
--

INSERT INTO `hswl_enewspublicadd` (`id`, `ctimeopen`, `ctimelast`, `ctimeindex`, `ctimeclass`, `ctimelist`, `ctimetext`, `ctimett`, `ctimetags`, `ctimegids`, `ctimecids`, `ctimernd`, `ctimeaddre`, `ctimeqaddre`, `autodoopen`, `autodouser`, `autodopass`, `autodosalt`, `autodoshowkey`, `autodotime`, `autodoline`, `autodovar`, `autodoval`, `autodoshow`, `autodofile`, `autodopostpass`, `autodoss`, `autodoaction`, `autodock`, `digglevel`, `diggcmids`, `toqjf`, `qtoqjf`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 'rYrrOTtp7OPVrb77y01g33Tv06s4Zfs1mTNKHX3TAt', 0, 0, 0, '', '', '', 0, 100, 12, '', '', 1, 0, 'L7pjQuGisV6QJfAmzy1475mWhjUWcUdIMAfvFUtChwSHc4wW8hvLoWY3Y6I5', 0, ',emp,', 0, 0, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspublic_fc`
--

CREATE TABLE `hswl_enewspublic_fc` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `fclastindex` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewspublic_fc`
--

INSERT INTO `hswl_enewspublic_fc` (`id`, `fclastindex`) VALUES
(1, 1592387588);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspublic_up`
--

CREATE TABLE `hswl_enewspublic_up` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `lasttimeinfo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lasttimepl` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastnuminfo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastnumpl` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastnuminfotb` text NOT NULL,
  `lastnumpltb` text NOT NULL,
  `todaytimeinfo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `todaytimepl` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `todaynuminfo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `yesterdaynuminfo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `todaynumpl` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `yesterdaynumpl` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewspublic_up`
--

INSERT INTO `hswl_enewspublic_up` (`id`, `lasttimeinfo`, `lasttimepl`, `lastnuminfo`, `lastnumpl`, `lastnuminfotb`, `lastnumpltb`, `todaytimeinfo`, `todaytimepl`, `todaynuminfo`, `yesterdaynuminfo`, `todaynumpl`, `yesterdaynumpl`) VALUES
(1, 1355124469, 1355124476, 15, 0, '|1,15|', '', 1592363452, 1592363452, 15, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspubtemp`
--

CREATE TABLE `hswl_enewspubtemp` (
  `id` smallint(6) NOT NULL,
  `indextemp` mediumtext NOT NULL,
  `cptemp` mediumtext NOT NULL,
  `searchtemp` mediumtext NOT NULL,
  `searchjstemp` mediumtext NOT NULL,
  `searchjstemp1` mediumtext NOT NULL,
  `otherlinktemp` mediumtext NOT NULL,
  `downsofttemp` text NOT NULL,
  `onlinemovietemp` text NOT NULL,
  `listpagetemp` text NOT NULL,
  `gbooktemp` mediumtext NOT NULL,
  `loginiframe` mediumtext NOT NULL,
  `otherlinktempsub` tinyint(4) NOT NULL DEFAULT '0',
  `otherlinktempdate` varchar(20) NOT NULL DEFAULT '',
  `loginjstemp` mediumtext NOT NULL,
  `downpagetemp` mediumtext NOT NULL,
  `pljstemp` mediumtext NOT NULL,
  `schalltemp` mediumtext NOT NULL,
  `schallsubnum` smallint(6) NOT NULL DEFAULT '0',
  `schalldate` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewspubtemp`
--

INSERT INTO `hswl_enewspubtemp` (`id`, `indextemp`, `cptemp`, `searchtemp`, `searchjstemp`, `searchjstemp1`, `otherlinktemp`, `downsofttemp`, `onlinemovietemp`, `listpagetemp`, `gbooktemp`, `loginiframe`, `otherlinktempsub`, `otherlinktempdate`, `loginjstemp`, `downpagetemp`, `pljstemp`, `schalltemp`, `schallsubnum`, `schalldate`) VALUES
(1, '<!DOCTYPE html>\r\n<html>\r\n\r\n<head>\r\n    <meta name=\\\"renderer\\\" content=\\\"webkit\\\" />\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"IE=edge,chrome=1\\\" />\r\n    <link href=\\\"/css/Common.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Index.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <script src=\\\"/js/1.9.1jquery.min.js\\\" type=\\\"text/javascript\\\"></script>\r\n    <script src=\\\"/js/Index.js\\\" type=\\\"text/javascript\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/countUp.min.js\\\"></script>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n\r\n<body>\r\n    <form name=\\\"form1\\\" method=\\\"post\\\" action=\\\"\\\" id=\\\"form1\\\">\r\n        [!--temp.header--]\r\n\r\n        <!--banner -->\r\n        <div class=\\\"banner\\\">\r\n            <div id=\\\"flashs\\\">\r\n                <div class=\\\"bd\\\">\r\n                    <div>\r\n\r\n                        <div alt=\\\"banner\\\" class=\\\"bgitem\\\" id=\\\"flashbg0\\\" style=\\\"background: url(\\\'/images/banner.jpg\\\') no-repeat center top; height: 700px; width: 100%; cursor: pointer; overflow:hidden; position:relative;\\\">\r\n                        </div>\r\n\r\n                        <div alt=\\\"banner\\\" class=\\\"bgitem\\\" id=\\\"flashbg1\\\" style=\\\"background: url(\\\'/images/banner.jpg\\\') no-repeat center top; height: 700px; width: 100%; cursor: pointer; overflow:hidden; position:relative;\\\">\r\n                        </div>\r\n\r\n                        <div alt=\\\"banner\\\" class=\\\"bgitem\\\" id=\\\"flashbg2\\\" style=\\\"background: url(\\\'/images/banner.jpg\\\') no-repeat center top; height: 700px; width: 100%; cursor: pointer; overflow:hidden; position:relative;\\\">\r\n                        </div>\r\n\r\n                    </div>\r\n                </div>\r\n                <div class=\\\"btn hd\\\">\r\n                    <span></span>\r\n                    <span></span>\r\n                    <span></span>\r\n                </div>\r\n                <a href=\\\"javascript:;\\\" class=\\\"bot bot1 prev\\\"></a>\r\n                <a href=\\\"javascript:;\\\" class=\\\"bot bot2 next\\\"></a>\r\n            </div>\r\n        </div>\r\n\r\n        <!--业务范围-->\r\n        <div class=\\\"ywfw\\\">\r\n            <div class=\\\"container\\\">\r\n                <h2 class=\\\"h2_title\\\"><a href=\\\"/fuwu/\\\">服务范围</a><i>华森物流--冷冻整车，零担业务</i><em></em></h2>\r\n\r\n                <div class=\\\"ywfw_con clearfix\\\">\r\n                    <dl class=\\\'dl1\\\'>\r\n                        <dt><img src=\\\'/images/fuwu1.jpg\\\' alt=\\\'冷链运输\\\' />\r\n                            <div class=\\\'conbox\\\'>\r\n                                <h3><a href=\\\'/fuwu/lenglianyunshu/\\\'><i></i>冷链运输</a></h3>\r\n                                <h5><a href=\\\"/fuwu/lenglianyunshu/\\\">查看更多 +</a></h5>\r\n                            </div>\r\n                        </dt>\r\n                        <dd class=\\\'dd1\\\'><a href=\\\'/fuwu/lenglianyunshu/\\\'>冷链运输</a></dd>\r\n                        <dd class=\\\'dd2\\\'><a href=\\\'/fuwu/lenglianyunshu/\\\'>保持冷冻冷藏类食品质量，减少物品损耗</a></dd>\r\n                    </dl>\r\n                    <dl class=\\\'dl2\\\'>\r\n                        <dt><img src=\\\'/images/fuwu2.jpg\\\' alt=\\\'配送服务\\\' />\r\n                            <div class=\\\'conbox\\\'>\r\n                                <h3><a href=\\\'/fuwu/peisongfuwu/\\\'><i></i>配送服务</a></h3>\r\n                                <h5><a href=\\\"/fuwu/peisongfuwu/\\\">查看更多 +</a></h5>\r\n                                \r\n                            </div>\r\n                        </dt>\r\n                        <dd class=\\\'dd1\\\'><a href=\\\'/fuwu/peisongfuwu/\\\'>配送服务</a></dd>\r\n                        <dd class=\\\'dd2\\\'><a href=\\\'/fuwu/peisongfuwu/\\\'>专线运输直达，驾驶员团队优秀</a></dd>\r\n                    </dl>\r\n                    <dl class=\\\'dl3\\\'>\r\n                        <dt><img src=\\\'/images/fuwu3.jpg\\\' alt=\\\'仓储服务\\\' />\r\n                            <div class=\\\'conbox\\\'>\r\n                                <h3><a href=\\\'/fuwu/cangchufuwu/\\\'>仓储服务</a></h3>\r\n                                <h5><a href=\\\"/fuwu/cangchufuwu/\\\">查看更多 +</a></h5>\r\n                            </div>\r\n                        </dt>\r\n                        <dd class=\\\'dd1\\\'><a href=\\\'/fuwu/cangchufuwu/\\\'>仓储服务</a></dd>\r\n                        <dd class=\\\'dd2\\\'><a href=\\\'/fuwu/cangchufuwu/\\\'>与招商仓库长期合作，交通便利</a></dd>\r\n                    </dl>\r\n\r\n                </div>\r\n\r\n            </div>\r\n        </div>\r\n\r\n        <!--关于我们-->\r\n        <div class=\\\"about\\\">\r\n            <div class=\\\"container\\\">\r\n                <h2 class=\\\"h2_title\\\"><a href=\\\"/guanyu/jianjie/\\\">关于我们</a><i>华森物流--冷冻整车，零担业务</i><em></em></h2>\r\n\r\n                <dl class=\\\"abo_top\\\">\r\n                    <dt>\r\n                        <img src=\\\"/images/aboutimg.jpg\\\" alt=\\\"公司简介\\\" class=\\\"videoImg\\\" /></dt>\r\n                    <dd>\r\n                        <a href=\\\"/guanyu/jianjie/\\\" title=\\\"公司简介\\\"></a>\r\n                    </dd>\r\n                </dl>\r\n\r\n                <div class=\\\"abo_con clearfix\\\">\r\n                    <dl>\r\n                        <dt><img src=\\\"/images/aboicon03.png\\\" alt=\\\"始于\\\" /></dt>\r\n                        <dd><i>始于</i><span><b id=\\\"num3\\\">2012</b>年</span></dd>\r\n                    </dl>\r\n                    <dl>\r\n                        <dt><img src=\\\"/images/aboicon01.png\\\" alt=\\\"专业团队\\\" /></dt>\r\n                        <dd><i>专业团队</i><span><b id=\\\"num1\\\">100</b>多人</span></dd>\r\n                    </dl>\r\n\r\n                    <dl>\r\n                        <dt><img src=\\\"/images/aboicon02.png\\\" alt=\\\"占地面积\\\" /></dt>\r\n                        <dd><i>占地面积</i><span><b id=\\\"num2\\\">100</b>万㎡</span></dd>\r\n                    </dl>\r\n\r\n                    <dl>\r\n                        <dt><img src=\\\"/images/aboicon04.png\\\" alt=\\\"成功案例\\\" /></dt>\r\n                        <dd><i>成功案例</i><span><b id=\\\"num4\\\">1000</b>项</span></dd>\r\n                    </dl>\r\n\r\n                </div>\r\n\r\n            </div>\r\n        </div>\r\n\r\n        <!-- <div class=\\\"videobf\\\">\r\n            <div class=\\\"video_con\\\"><iframe height=500 width=1000 src=\\\'http://player.youku.com/embed/XMzM1MTM4NzExMg==\\\'\r\n                    frameborder=0 \\\'allowfullscreen\\\'></iframe> <span class=\\\"closeVideo\\\"></span></div>\r\n        </div> -->\r\n\r\n        <script>\r\n            var options = {\r\n                useEasing: true,\r\n                useGrouping: true,\r\n                separator: \\\'\\\',\r\n                decimal: \\\'.\\\',\r\n                prefix: \\\'\\\',\r\n                suffix: \\\'\\\'\r\n            };\r\n            var demo1 = new CountUp(\\\"num1\\\", 0, 100, 0, 2, options);\r\n            var demo2 = new CountUp(\\\"num2\\\", 0, 100, 0, 2, options);\r\n            var demo3 = new CountUp(\\\"num3\\\", 0, 2012, 0, 2, options);\r\n            var demo4 = new CountUp(\\\"num4\\\", 0, 1000, 0, 2, options);\r\n\r\n            $(window).scroll(function () {\r\n                if ($(window).scrollTop() >= 1600) {\r\n\r\n                    demo1.start();\r\n                    demo2.start();\r\n                    demo3.start();\r\n                    demo4.start();\r\n                }\r\n            })\r\n\r\n            $(\\\".videoImg\\\").click(function () {\r\n                $(\\\".videobf\\\").slideDown();\r\n                $(\\\".videobf .video_con\\\").addClass(\\\"cur\\\");\r\n            })\r\n\r\n            $(\\\".closeVideo\\\").click(function () {\r\n                $(\\\".videobf\\\").slideUp();\r\n                $(\\\".videobf .video_con\\\").removeClass(\\\"cur\\\");\r\n            })\r\n        </script>\r\n\r\n        <!--成功案例-->\r\n        <div class=\\\"jdal\\\">\r\n\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"jdal_top\\\">\r\n                    <dl>\r\n                        <dt><a href=\\\"/shili/anli/\\\"><i>Successful Cases</i><span>成功案例</span><em></em></a></dt>\r\n                        <dd>\r\n                            <em></em><a href=\\\"/shili/anli/\\\">查看更多</a></dd>\r\n                    </dl>\r\n                    <ul class=\\\"jdal_type clearfix\\\">\r\n\r\n                        <li class=\\\'cur\\\'><a href=\\\"/shili/anli/anli1/\\\">\r\n                                <span>冷链运输</span><i>Cold chain</i></a></li>\r\n\r\n                        <li><a href=\\\"/shili/anli/anli2/\\\">\r\n                                <span>配送服务</span><i>Distribution</i></a></li>\r\n\r\n                        <li><a href=\\\"/shili/anli/anli3/\\\">\r\n                                <span>仓储服务</span><i>Storage</i></a></li>\r\n\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n            <div class=\\\"jdal_bot\\\">\r\n\r\n                <div class=\\\"conbox cur\\\">\r\n                    <img src=\\\"/images/20180104152049_60002.jpg\\\" alt=\\\"\\\" />\r\n                    <div class=\\\"container\\\">\r\n                        <dl>\r\n                            <dt><a href=\\\"/shili/anli/anli1/\\\">冷链运输</a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"/shili/anli/anli1/\\\">随着人们生活水平的不断提高，对冷冻类食品的需求越来越多。但是冷冻食品不同于其他产品，它需要具有专业的冷链运输体系，才能确保冷冻冷藏类食品在规定的温度下保持其质量……</a>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\"><a href=\\\"/shili/anli/anli1/\\\">查看更多</a></dd>\r\n                        </dl>\r\n                    </div>\r\n                </div>\r\n\r\n                <div class=\\\"conbox \\\">\r\n                    <img src=\\\"/images/20180104152049_60002.jpg\\\" alt=\\\"\\\" />\r\n                    <div class=\\\"container\\\">\r\n                        <dl>\r\n                            <dt><a href=\\\"/shili/anli/anli2/\\\">配送服务</a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"/shili/anli/anli2/\\\">保证货物品质安全，重中之重——全程GPS监控、温度异常随时报警。时效是每一个客户的需求——公司车型齐全，专线运输直达让您更放心更省心。优秀的驾驶员团队——严格招聘、规范管理……</a>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\"><a href=\\\"/shili/anli/anli2/\\\">查看更多</a></dd>\r\n                        </dl>\r\n                    </div>\r\n                </div>\r\n\r\n                <div class=\\\"conbox \\\">\r\n                    <img src=\\\"/images/20180104152049_60002.jpg\\\" alt=\\\"\\\" />\r\n                    <div class=\\\"container\\\">\r\n                        <dl>\r\n                            <dt><a href=\\\"/shili/anli/anli3/\\\">仓储服务</a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"/shili/anli/anli3/\\\">仓库名称：招商局物流（我公司与招商仓库是长期合作伙伴） 仓库地址：新都区物流大道399号（位于绕城外侧，进出城交通便利） ……</a>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\"><a href=\\\"/shili/anli/anli3/\\\">查看更多</a></dd>\r\n                        </dl>\r\n                    </div>\r\n                </div>\r\n\r\n            </div>\r\n\r\n        </div>\r\n        <script type=\\\"text/javascript\\\">\r\n            $(\\\".jdal .jdal_top .jdal_type li\\\").mouseenter(function () {\r\n                $(this).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n                $(\\\".jdal .jdal_bot .conbox\\\").eq($(this).index()).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n            })\r\n        </script>\r\n\r\n        <div class=\\\"advantage\\\">\r\n\r\n            <h2 class=\\\"h2_title\\\"><span>为什么选择我们</span><i>专业从事冷藏、普通货物业务</i><em></em></h2>\r\n\r\n            <div class=\\\"adv_con\\\">\r\n                <span class=\\\"adv_btnl btn\\\" id=\\\"adv_btnl\\\"><i></i></span><span class=\\\"adv_btnr btn\\\" id=\\\"adv_btnr\\\"><i></i></span>\r\n                <div>\r\n\r\n                    <div class=\\\"conbox clearfix cur\\\">\r\n                        <div class=\\\"conleft fl\\\">\r\n                            <img src=\\\"/images/11.jpg\\\" alt=\\\"软件实力\\\" />\r\n                        </div>\r\n                        <div class=\\\"conright fr\\\">\r\n                            <h3><span>专业团队 物流平台 丰富经验</span><i>专业从事冷藏、普通货物业务</i></h3>\r\n                            <p class=\\\"p1\\\">成都市华森物流有限公司创立于2012年，专注于各类食品、乳品、水产、果蔬、酒业等产品的干线运输及区域配送、物流业务咨询与仓储服务。</p>\r\n                            <p class=\\\"p1\\\">公司在软件上，拥有一支高素质、专业化、年轻化的物流管理团队和资深专家顾问群，有现代化的物流信息平台，汇聚了丰富的物流服务经验和先进的管理服务理念。</p>\r\n                            \r\n                        </div>\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox clearfix \\\">\r\n                        <div class=\\\"conleft fl\\\">\r\n                            <img src=\\\"/images/22.jpg\\\" alt=\\\"硬件实力\\\" />\r\n                        </div>\r\n                        <div class=\\\"conright fr\\\">\r\n                            <h3><span>车型齐全 GPS监控 制冷性能好</span><i>满足各种运输、用车需求</i></h3>\r\n                            <p class=\\\"p1\\\">公司在硬件上，自有车型齐全，3-30吨的冷藏车、普通货运车多部，以及其他车型的联营车。</p>\r\n                            <p class=\\\"p1\\\">配置有GPS卫星定位系统，全程监控车辆的运营状态，安全性强、可靠性高；<br>其中冷藏车的制冷性能稳定，最低可达到-28℃。</p>\r\n                            <p class=\\\"p1\\\">能够满足各类客户的运输质量要求和客户用车需要。</p>\r\n                            \r\n                        </div>\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox clearfix \\\">\r\n                        <div class=\\\"conleft fl\\\">\r\n                            <img src=\\\"/images/33.jpg\\\" alt=\\\"荣誉资质\\\" />\r\n                        </div>\r\n                        <div class=\\\"conright fr\\\">\r\n                            <h3><span>专业团队 物流平台 丰富经验</span><i>专业从事冷藏、普通货物业务</i></h3>\r\n                            <p class=\\\"p1\\\">成都市华森物流有限公司创立于2012年，专注于各类食品、乳品、水产、果蔬、酒业等产品的干线运输及区域配送、物流业务咨询与仓储服务。</p>\r\n                            <p class=\\\"p1\\\">公司在软件上，拥有一支高素质、专业化、年轻化的物流管理团队和资深专家顾问群，有现代化的物流信息平台，汇聚了丰富的物流服务经验和先进的管理服务理念。</p>\r\n                            \r\n                        </div>\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox clearfix \\\">\r\n                        <div class=\\\"conleft fl\\\">\r\n                            <img src=\\\"/images/44.jpg\\\" alt=\\\"无忧服务\\\" />\r\n                        </div>\r\n                        <div class=\\\"conright fr\\\">\r\n                            <h3><span>车型齐全 GPS监控 制冷性能好</span><i>满足各种运输、用车需求</i></h3>\r\n                            <p class=\\\"p1\\\">公司在硬件上，自有车型齐全，3-30吨的冷藏车、普通货运车多部，以及其他车型的联营车。</p>\r\n                            <p class=\\\"p1\\\">配置有GPS卫星定位系统，全程监控车辆的运营状态，安全性强、可靠性高；<br>其中冷藏车的制冷性能稳定，最低可达到-28℃。</p>\r\n                            <p class=\\\"p1\\\">能够满足各类客户的运输质量要求和客户用车需要。</p>\r\n                            \r\n                        </div>\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n            <div class=\\\"container\\\">\r\n                <ul class=\\\"adv_type clearfix\\\">\r\n\r\n                    <li class=\\\"li1 cur\\\">\r\n                        <p><span>软件实力</span><i>Software</i><em></em></p>\r\n                    </li>\r\n\r\n                    <li class=\\\"li2 \\\">\r\n                        <p><span>硬件实力</span><i>Hardware</i><em></em></p>\r\n                    </li>\r\n\r\n                    <li class=\\\"li3 \\\">\r\n                        <p><span>荣誉资质</span><i>Honours</i><em></em></p>\r\n                    </li>\r\n\r\n                    <li class=\\\"li4 \\\">\r\n                        <p><span>无忧服务</span><i>service</i><em></em></p>\r\n                    </li>\r\n\r\n                </ul>\r\n            </div>\r\n\r\n        </div>\r\n        <script type=\\\"text/javascript\\\">\r\n            var Owid1 = $(\\\".advantage .conbox\\\").width() * 0.5;\r\n            var Onum = 0\r\n\r\n            $(\\\".advantage .conbox .conleft li\\\").width(Owid1);\r\n            $(\\\".advantage .conbox .conright li\\\").width(Owid1);\r\n            $(\\\".advantage .conbox .conright\\\").height($(\\\".advantage .conbox\\\").height())\r\n            $(\\\".advantage .conbox .conright li\\\").height($(\\\".advantage .conbox\\\").height())\r\n            $(\\\"#adv_btnr\\\").click(function () {\r\n                Onum++;\r\n                if (Onum > 3) {\r\n                    Onum = 0;\r\n                }\r\n                $(\\\".advantage .adv_type li\\\").eq(Onum).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n                $(\\\".advantage .adv_con .conbox\\\").eq(Onum).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\")\r\n            })\r\n\r\n            $(\\\"#adv_btnl\\\").click(function () {\r\n                Onum--;\r\n                if (Onum < 0) {\r\n                    Onum = 3;\r\n                }\r\n                $(\\\".advantage .adv_type li\\\").eq(Onum).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n                $(\\\".advantage .adv_con .conbox\\\").eq(Onum).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n            })\r\n\r\n            $(\\\".advantage .adv_type li\\\").mouseenter(function () {\r\n                $(this).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n                Onum = $(this).index();\r\n                $(\\\".advantage .adv_con .conbox\\\").eq(Onum).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\")\r\n            })\r\n\r\n            $(\\\'.btn\\\').bind(\\\"selectstart\\\", function () { return false; });\r\n        </script>\r\n\r\n\r\n        <div class=\\\"fwkh\\\">\r\n            <div class=\\\"container\\\">\r\n                <h2 class=\\\"h2_title\\\"><a href=\\\"/shili/hezuo/\\\">合作伙伴</a><i>已为众多企业提供物流支持</i><em></em></h2>\r\n\r\n                <div class=\\\"fwkh_con clearfix\\\">\r\n\r\n                    <ul>\r\n                        [e:loop={14,10,0,1}]\r\n                        <li><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\" title=\\\"<?=$bqr[\\\'title\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" /></a></li>\r\n                        [/e:loop]\r\n                    </ul>\r\n\r\n                </div>\r\n\r\n            </div>\r\n        </div>\r\n\r\n\r\n        <!--新闻-->\r\n        <div class=\\\"news\\\">\r\n            <div class=\\\"container\\\">\r\n                <h2 class=\\\"h2_title\\\"><i>NEWS CENTER</i><a href=\\\"/xinwen/\\\">新闻中心</a><em></em></h2>\r\n\r\n                <ul class=\\\"news_type clearfix\\\">\r\n                    <li class=\\\"cur\\\"><a href=\\\"/xinwen/gongsixinwen/\\\">公司新闻</a></li>\r\n                    <li><a href=\\\"/xinwen/hangyedongtai/\\\">行业动态</a></li>\r\n                    <li><a href=\\\"/xinwen/meitijujiao/\\\">媒体聚焦</a></li>\r\n                    <li><a href=\\\"/xinwen/changjianwenti/\\\">常见问题</a></li>\r\n                </ul>\r\n                <div class=\\\"news_con clearfix\\\">\r\n\r\n                    <div class=\\\"conbox cur\\\">\r\n                        [e:loop={8,3,0,1}]\r\n                        <dl>\r\n                            <dt><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a>\r\n                                <span><?=date(\\\'Y-m-d\\\',$bqr[newstime])?></span>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\">\r\n                                    <?=esub($bqr[smalltext],104),\\\'……\\\'?>\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n                        [/e:loop]\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox \\\">\r\n\r\n                        [e:loop={9,3,0,1}]\r\n                        <dl>\r\n                            <dt><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a>\r\n                                <span><?=date(\\\'Y-m-d\\\',$bqr[newstime])?></span>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\">\r\n                                    <?=esub($bqr[smalltext],104),\\\'……\\\'?>\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n                        [/e:loop]\r\n\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox \\\">\r\n\r\n                        [e:loop={10,3,0,1}]\r\n                        <dl>\r\n                            <dt><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a>\r\n                                <span><?=date(\\\'Y-m-d\\\',$bqr[newstime])?></span>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\">\r\n                                    <?=esub($bqr[smalltext],104),\\\'……\\\'?>\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n                        [/e:loop]\r\n\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox \\\">\r\n\r\n                        [e:loop={11,3,0,1}]\r\n                        <dl>\r\n                            <dt><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a>\r\n                                <span><?=date(\\\'Y-m-d\\\',$bqr[newstime])?></span>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\">\r\n                                    <?=esub($bqr[smalltext],104),\\\'……\\\'?>\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n                        [/e:loop]\r\n\r\n                    </div>\r\n\r\n                </div>\r\n\r\n            </div>\r\n        </div>\r\n\r\n        <script type=\\\"text/javascript\\\">\r\n            $(\\\".news .news_type li\\\").mouseenter(function () {\r\n                $(this).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n                $(\\\".news .news_con .conbox\\\").eq($(this).index()).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n            })\r\n        </script>\r\n\r\n        [!--temp.footer--]\r\n\r\n    </form>\r\n</body>\r\n</html>', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - 成都舜王科技有限公司</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.dtheader--] \r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>现在的位置：[!--newsnav--]\r\n</td>\r\n</tr>\r\n</table>\r\n      <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n        <tr> \r\n          <td width=\\\"300\\\" valign=\\\"top\\\"> \r\n		  <?php\r\n		  $lguserid=intval(getcvar(\\\'mluserid\\\'));//登陆用户ID\r\n		  $lgusername=RepPostVar(getcvar(\\\'mlusername\\\'));//登陆用户\r\n		  $lggroupid=intval(getcvar(\\\'mlgroupid\\\'));//会员组ID\r\n		  if($lggroupid)	//登陆会员显示菜单\r\n		  {\r\n		  ?>\r\n            <table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" class=\\\"tableborder\\\">\r\n              <tr class=\\\"header\\\"> \r\n                <td height=\\\"20\\\" bgcolor=\\\"#FFFFFF\\\"> <div align=\\\"center\\\"><strong><a href=\\\"[!--news.url--]e/member/cp/\\\">功能菜单</a></strong></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/EditInfo/\\\">修改资料</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/my/\\\">帐号状态</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/msg/\\\">站内信息</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/mspace/SetSpace.php\\\">空间设置</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/DoInfo/\\\">管理信息</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/fava/\\\">收藏夹</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/payapi/\\\">在线支付</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/friend/\\\">我的好友</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/buybak/\\\">消费记录</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/buygroup/\\\">在线充值</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/card/\\\">点卡充值</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"#ecms\\\" onclick=\\\"window.open(\\\'[!--news.url--]e/ShopSys/buycar/\\\',\\\'\\\',\\\'width=680,height=500,scrollbars=yes,resizable=yes\\\');\\\">我的购物车</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/ShopSys/ListDd/\\\">我的订单</a></div></td>\r\n              </tr>\r\n			  <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/login/\\\">重新登陆</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/doaction.php?enews=exit\\\" onclick=\\\"return confirm(\\\'确认要退出?\\\');\\\">退出登陆</a></div></td>\r\n              </tr>\r\n            </table>\r\n			<?php\r\n			}\r\n			else	//游客显示菜单\r\n			{\r\n			?>  \r\n            <table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" class=\\\"tableborder\\\">\r\n              <tr class=\\\"header\\\"> \r\n                <td height=\\\"20\\\" bgcolor=\\\"#FFFFFF\\\"> <div align=\\\"center\\\"><strong><a href=\\\"[!--news.url--]e/member/cp/\\\">功能菜单</a></strong></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/login/\\\">会员登陆</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/register/\\\">注册帐号</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/DoInfo/\\\">发布投稿</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"#ecms\\\" onclick=\\\"window.open(\\\'[!--news.url--]e/ShopSys/buycar/\\\',\\\'\\\',\\\'width=680,height=500,scrollbars=yes,resizable=yes\\\');\\\">我的购物车</a></div></td>\r\n              </tr>\r\n            </table>\r\n			<?php\r\n			}\r\n			?>\r\n			</td>\r\n          <td width=\\\"85%\\\" valign=\\\"top\\\">[!--empirenews.template--]</td>\r\n        </tr>\r\n      </table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>高级搜索 - 成都舜王科技有限公司</title>\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n<script src=\\\"[!--news.url--]e/data/images/setday.js\\\"></script>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.dtheader--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>现在的位置：[!--url--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n						<tr>\r\n							<td><form action=\\\'[!--news.url--]e/search/index.php\\\' method=\\\"post\\\" name=\\\"search_news\\\" id=\\\"search_news\\\">\r\n									<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n										<tr>\r\n											<td width=\\\"54%\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"6\\\" cellspacing=\\\"0\\\">\r\n													<tr>\r\n														<td bgcolor=\\\"#F4F4F4\\\"><strong>搜索范围</strong></td>\r\n													</tr>\r\n											</table></td>\r\n											<td width=\\\"46%\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"6\\\" cellspacing=\\\"0\\\">\r\n													<tr>\r\n														<td bgcolor=\\\"#F4F4F4\\\"><strong>搜索栏目</strong></td>\r\n													</tr>\r\n											</table></td>\r\n										</tr>\r\n										<tr>\r\n											<td valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"6\\\" cellspacing=\\\"0\\\">\r\n													<tr>\r\n														<td><input type=\\\"radio\\\" name=\\\"show\\\" value=\\\"title\\\" checked=\\\"checked\\\" />\r\n															标题\r\n															<input type=\\\"radio\\\" name=\\\"show\\\" value=\\\"smalltext\\\" />\r\n															简介\r\n															<input type=\\\"radio\\\" name=\\\"show\\\" value=\\\"newstext\\\" />\r\n															内容\r\n															<input type=\\\"radio\\\" name=\\\"show\\\" value=\\\"writer\\\" />\r\n															作者\r\n															<input name=\\\"show\\\" type=\\\"radio\\\" value=\\\"title,smalltext,newstext,writer\\\" />\r\n															不限</td>\r\n													</tr>\r\n												</table>\r\n													<br />\r\n													<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"6\\\" cellspacing=\\\"0\\\">\r\n														<tr bgcolor=\\\"#F4F4F4\\\">\r\n															<td><strong>时间限制</strong><font color=\\\"#666666\\\">(0000-00-00为不限制)</font></td>\r\n														</tr>\r\n														<tr>\r\n															<td height=\\\"30\\\" valign=\\\"top\\\">从\r\n																<input name=\\\"starttime\\\" type=\\\"text\\\" value=\\\"0000-00-00\\\" size=\\\"12\\\" onclick=\\\"setday(this)\\\" />\r\n																到\r\n																<input name=\\\"endtime\\\" type=\\\"text\\\" value=\\\"0000-00-00\\\" size=\\\"12\\\" onclick=\\\"setday(this)\\\" />\r\n																之间的数据</td>\r\n														</tr>\r\n														<tr>\r\n															<td bgcolor=\\\"#F4F4F4\\\"><strong>价格限制</strong><font color=\\\"#666666\\\">(商城模型中有效,0为不限制)</font></td>\r\n														</tr>\r\n														<tr>\r\n															<td>从\r\n																<input name=\\\"startprice\\\" type=\\\"text\\\" id=\\\"startprice\\\" value=\\\"0\\\" size=\\\"6\\\" />\r\n																到\r\n																<input name=\\\"endprice\\\" type=\\\"text\\\" id=\\\"endprice\\\" value=\\\"0\\\" size=\\\"6\\\" />\r\n																元之间</td>\r\n														</tr>\r\n												</table></td>\r\n											<td valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"6\\\" cellpadding=\\\"0\\\">\r\n													<tr>\r\n														<td><select name=\\\"classid\\\" size=\\\"8\\\" id=\\\"select2\\\" style=\\\"width: 100%;height:112px\\\">\r\n																<option value=\\\"0\\\" selected=\\\"selected\\\">所有栏目</option>\r\n															[!--class--]\r\n          \r\n														</select></td>\r\n													</tr>\r\n												</table>\r\n													<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"6\\\" cellspacing=\\\"0\\\">\r\n														<tr>\r\n															<td bgcolor=\\\"#F4F4F4\\\"><strong>结果显示</strong></td>\r\n														</tr>\r\n														<tr>\r\n															<td height=\\\"30\\\"><select name=\\\"orderby\\\" id=\\\"select4\\\">\r\n																	<option value=\\\"\\\">按发布日期</option>\r\n																	<option value=\\\"id\\\">信息ID</option>\r\n																	<option value=\\\"plnum\\\">评论数</option>\r\n																	<option value=\\\"onclick\\\">人气</option>\r\n																	<option value=\\\"totaldown\\\">下载数</option>\r\n																</select>\r\n																	<select name=\\\"myorder\\\" id=\\\"select5\\\">\r\n																		<option value=\\\"0\\\">倒序排列</option>\r\n																		<option value=\\\"1\\\">顺序排列</option>\r\n																	</select>\r\n															</td>\r\n														</tr>\r\n												</table></td>\r\n										</tr>\r\n									</table>\r\n								<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"0\\\">\r\n										<tr>\r\n											<td>关键字：\r\n												<input name=\\\"keyboard\\\" type=\\\"text\\\" id=\\\"keyboard2\\\" size=\\\"60\\\" />\r\n													<input type=\\\"submit\\\" name=\\\"Submit22\\\" value=\\\"搜索\\\" />\r\n											</td>\r\n										</tr>\r\n									</table>\r\n							</form></td>\r\n						</tr>\r\n					</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<table border=0 cellpadding=3 cellspacing=1><form name=search_js1 method=post action=\'[!--news.url--]e/search/index.php\' onsubmit=\'return search_check(document.search_js1);\'><tr><td><div align=center>搜索: <select name=show><option value=title>标题</option><option value=smalltext>简介</option><option value=newstext>内容</option><option value=writer>作者</option><option value=title,smalltext,newstext,writer>搜索全部</option></select><select name=classid><option value=0>所有栏目</option>[!--class--]</select><input name=keyboard type=text size=13><input type=submit name=Submit value=搜索></div></td></tr></form></table>', '<table width=99% border=0 cellpadding=3 cellspacing=1><form name=search_js2 method=post action=\'[!--news.url--]e/search/index.php\' onsubmit=\'return search_check(document.search_js2);\'><tr><td height=25><div align=center>关键字: <input name=keyboard type=text size=13></div></td></tr><tr><td><div align=center>范围: <select name=show><option value=title>标题</option><option value=smalltext>简介</option><option value=newstext>内容</option><option value=writer>作者</option><option value=title,smalltext,newstext,writer>搜索全部</option></select></div></td></tr><tr><td><div align=center>栏目:<select name=classid><option value=0>所有栏目</option>[!--class--]</select></div></td></tr><tr><td><div align=center><input type=submit name=Submit value=搜索></div></td></tr></form></table>', '[!--empirenews.listtemp--]<li><a href=\"[!--titleurl--]\" title=\"[!--oldtitle--]\">[!--title--]</a></li>[!--empirenews.listtemp--]', '[ <a href=\\\"#ecms\\\" onclick=\\\"window.open(\\\'[!--down.url--]\\\',\\\'\\\',\\\'width=300,height=300,resizable=yes\\\');\\\">[!--down.name--]</a> ]', '[ <a href=\\\"#ecms\\\" onclick=\\\"window.open(\\\'[!--down.url--]\\\',\\\'\\\',\\\'width=300,height=300,resizable=yes\\\');\\\">[!--down.name--]</a> ]', '页次：[!--thispage--]/[!--pagenum--]&nbsp;每页[!--lencord--]&nbsp;总数[!--num--]&nbsp;&nbsp;&nbsp;&nbsp;[!--pagelink--]&nbsp;&nbsp;&nbsp;&nbsp;转到:[!--options--]', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>留言板 - 成都舜王科技有限公司</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--bname--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--bname--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.dtheader--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>现在的位置：<a href=../../../>首页</a>&nbsp;>&nbsp;[!--bname--]\r\n</td>\r\n</tr>\r\n</table><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n	<tr>\r\n		<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"2\\\">\r\n			<tr>\r\n				<td align=\\\"center\\\" bgcolor=\\\"#E1EFFB\\\"><strong>[!--bname--]</strong></td>\r\n			</tr>\r\n			<tr>\r\n				<td align=\\\"left\\\" valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#FFFFFF\\\">\r\n						<tr>\r\n							<td height=\\\"100%\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\"> [!--empirenews.listtemp--]\r\n								<table width=\\\"92%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"4\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#F4F9FD\\\" class=\\\"tableborder\\\">\r\n										<tr class=\\\"header\\\">\r\n											<td width=\\\"55%\\\" height=\\\"23\\\">发布者: [!--name--] </td>\r\n											<td width=\\\"45%\\\">发布时间: [!--lytime--] </td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td height=\\\"23\\\" colspan=\\\"2\\\"><table border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"1\\\" cellpadding=\\\"8\\\" bgcolor=\\\'#cccccc\\\'>\r\n													<tr>\r\n														<td width=\\\'100%\\\' bgcolor=\\\'#FFFFFF\\\' style=\\\'word-break:break-all\\\'> [!--lytext--] </td>\r\n													</tr>\r\n												</table>\r\n												[!--start.regbook--]\r\n												<table width=\\\"100%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\">\r\n													<tr>\r\n														<td><img src=\\\"../../data/images/regb.gif\\\" width=\\\"18\\\" height=\\\"18\\\" /><strong><font color=\\\"#FF0000\\\">回复:</font></strong> [!--retext--] </td>\r\n													</tr>\r\n												</table>\r\n												[!--end.regbook--] </td>\r\n										</tr>\r\n									</table>\r\n								<br />\r\n								[!--empirenews.listtemp--]\r\n								<table width=\\\"92%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"4\\\" cellspacing=\\\"1\\\">\r\n									<tr>\r\n										<td>分页: [!--listpage--]</td>\r\n									</tr>\r\n								</table>\r\n								<form action=\\\"../../enews/index.php\\\" method=\\\"post\\\" name=\\\"form1\\\" id=\\\"form1\\\">\r\n									<table width=\\\"92%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"4\\\" cellspacing=\\\"1\\\"class=\\\"tableborder\\\">\r\n										<tr class=\\\"header\\\">\r\n											<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\"><strong>请您留言:</strong></td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td width=\\\"20%\\\">姓名:</td>\r\n											<td width=\\\"722\\\" height=\\\"23\\\"><input name=\\\"name\\\" type=\\\"text\\\" id=\\\"name\\\" />\r\n												*</td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td>联系邮箱:</td>\r\n											<td height=\\\"23\\\"><input name=\\\"email\\\" type=\\\"text\\\" id=\\\"email\\\" />\r\n												*</td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td>联系电话:</td>\r\n											<td height=\\\"23\\\"><input name=\\\"mycall\\\" type=\\\"text\\\" id=\\\"mycall\\\" /></td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td>留言内容(*):</td>\r\n											<td height=\\\"23\\\"><textarea name=\\\"lytext\\\" cols=\\\"60\\\" rows=\\\"12\\\" id=\\\"lytext\\\"></textarea></td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td height=\\\"23\\\">&nbsp;</td>\r\n											<td height=\\\"23\\\"><input type=\\\"submit\\\" name=\\\"Submit3\\\" value=\\\"提交\\\" />\r\n											<input type=\\\"reset\\\" name=\\\"Submit22\\\" value=\\\"重置\\\" />\r\n											<input name=\\\"enews\\\" type=\\\"hidden\\\" id=\\\"enews\\\" value=\\\"AddGbook\\\" /></td>\r\n										</tr>\r\n									</table>\r\n								</form></td>\r\n						</tr>\r\n				</table></td>\r\n			</tr>\r\n		</table></td>\r\n	</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<html>\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\">\r\n<title>登陆</title>\r\n<LINK href=\\\"../../data/images/qcss.css\\\" rel=stylesheet>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n<body bgcolor=\\\"#ededed\\\" topmargin=\\\"0\\\">\r\n<table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\r\n  <form name=login method=post action=\\\"../../member/doaction.php\\\">\r\n    <input type=hidden name=enews value=login>\r\n    <input type=hidden name=prtype value=1>\r\n    <tr> \r\n      <td height=\\\"23\\\" align=\\\"center\\\">\r\n      <div align=\\\"left\\\">\r\n      用户名：<input name=\\\"username\\\" type=\\\"text\\\" size=\\\"8\\\">&nbsp;\r\n      密码：<input name=\\\"password\\\" type=\\\"password\\\" size=\\\"8\\\">\r\n      <select name=\\\"lifetime\\\" id=\\\"lifetime\\\">\r\n         <option value=\\\"0\\\">不保存</option>\r\n         <option value=\\\"3600\\\">一小时</option>\r\n         <option value=\\\"86400\\\">一天</option>\r\n         <option value=\\\"2592000\\\">一个月</option>\r\n         <option value=\\\"315360000\\\">永久</option>\r\n      </select>&nbsp;\r\n      <input type=\\\"submit\\\" name=\\\"Submit\\\" value=\\\"登陆\\\">&nbsp;\r\n      <input type=\\\"button\\\" name=\\\"Submit2\\\" value=\\\"注册\\\" onclick=\\\"window.open(\\\'../register/\\\');\\\">\r\n      </div>\r\n      </td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n</body>\r\n</html>\r\n[!--empirenews.template--]\r\n<html>\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\">\r\n<title>登陆</title>\r\n<LINK href=\\\"../../data/images/qcss.css\\\" rel=stylesheet>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n<body bgcolor=\\\"#ededed\\\" topmargin=\\\"0\\\">\r\n<table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\r\n    <tr>\r\n	<td height=\\\"23\\\" align=\\\"center\\\">\r\n	<div align=\\\"left\\\">\r\n		&raquo;&nbsp;<font color=red><b>[!--username--]</b></font>&nbsp;&nbsp;<a href=\\\"../my/\\\" target=\\\"_parent\\\">[!--groupname--]</a>&nbsp;[!--havemsg--]&nbsp;<a href=\\\"[!--news.url--]e/space/?userid=[!--userid--]\\\" target=_blank>我的空间</a>&nbsp;&nbsp;<a href=\\\"../msg/\\\" target=_blank>短信息</a>&nbsp;&nbsp;<a href=\\\"../fava/\\\" target=_blank>收藏夹</a>&nbsp;&nbsp;<a href=\\\"../cp/\\\" target=\\\"_parent\\\">控制面板</a>&nbsp;&nbsp;<a href=\\\"../../member/doaction.php?enews=exit&prtype=9\\\" onclick=\\\"return confirm(\\\'确认要退出?\\\');\\\">退出</a> \r\n	</div>\r\n	</td>\r\n    </tr>\r\n</table>\r\n</body>\r\n</html>', 50, 'Y-m-d H:i:s', '<form name=login method=post action=\\\"[!--news.url--]e/member/doaction.php\\\">\r\n    <input type=hidden name=enews value=login>\r\n    <input type=hidden name=ecmsfrom value=9>\r\n    用户名：<input name=\\\"username\\\" type=\\\"text\\\" class=\\\"inputText\\\" size=\\\"16\\\" />&nbsp;\r\n    密码：<input name=\\\"password\\\" type=\\\"password\\\" class=\\\"inputText\\\" size=\\\"16\\\" />&nbsp;\r\n    <input type=\\\"submit\\\" name=\\\"Submit\\\" value=\\\"登陆\\\" class=\\\"inputSub\\\" />&nbsp;\r\n    <input type=\\\"button\\\" name=\\\"Submit2\\\" value=\\\"注册\\\" class=\\\"inputSub\\\" onclick=\\\"window.open(\\\'[!--news.url--]e/member/register/\\\');\\\" />\r\n</form>\r\n[!--empirenews.template--]\r\n&raquo;&nbsp;<font color=red><b>[!--username--]</b></font>&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/my/\\\" target=\\\"_parent\\\">[!--groupname--]</a>&nbsp;[!--havemsg--]&nbsp;<a href=\\\"[!--news.url--]e/space/?userid=[!--userid--]\\\" target=_blank>我的空间</a>&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/msg/\\\" target=_blank>短信息</a>&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/fava/\\\" target=_blank>收藏夹</a>&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/cp/\\\" target=\\\"_parent\\\">控制面板</a>&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/doaction.php?enews=exit&ecmsfrom=9\\\" onclick=\\\"return confirm(\\\'确认要退出?\\\');\\\">退出</a>', '<html>\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\">\r\n<title>[!--pagetitle--]</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n<link href=\\\"../../data/images/qcss.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\">\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n<body>\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n<table align=\\\"center\\\" width=\\\"100%\\\">\r\n  <tr> \r\n    <td height=\\\"32\\\" align=center>\r\n	<a href=\\\"[!--down.url--]\\\" title=\\\"[!--title--] －[!--down.name--]\\\">\r\n	<img src=\\\"../../data/images/download.jpg\\\" border=0>\r\n	</a>\r\n	</td>\r\n  </tr>\r\n  <tr> \r\n    <td align=center>(点击下载)</td>\r\n  </tr>\r\n</table>\r\n<br>\r\n</body>\r\n</html>', '[!--empirenews.listtemp--] \r\n      <table width=\\\"100%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" style=\\\"word-break:break-all; word-wrap:break-all;\\\">\r\n        <tr> \r\n          <td height=\\\"30\\\"><span class=\\\"name\\\">本站网友 [!--username--]</span> <font color=\\\"#666666\\\">ip:[!--plip--]</font></td>\r\n          <td><div align=\\\"right\\\"><font color=\\\"#666666\\\">[!--pltime--] 发表</font></div></td>\r\n        </tr>\r\n        <tr valign=\\\"top\\\"> \r\n          <td height=\\\"50\\\" colspan=\\\"2\\\" class=\\\"text\\\">[!--pltext--]</td>\r\n        </tr>\r\n        <tr> \r\n          <td height=\\\"30\\\">&nbsp;</td>\r\n          <td><div align=\\\"right\\\" class=\\\"re\\\"> \r\n              <a href=\\\"JavaScript:makeRequest(\\\'[!--news.url--]e/pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=1&doajax=1&ajaxarea=zcpldiv[!--plid--]\\\',\\\'EchoReturnedText\\\',\\\'GET\\\',\\\'\\\');\\\">支持</a>[<span id=\\\"zcpldiv[!--plid--]\\\">[!--zcnum--]</span>]&nbsp; \r\n              <a href=\\\"JavaScript:makeRequest(\\\'[!--news.url--]e/pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=0&doajax=1&ajaxarea=fdpldiv[!--plid--]\\\',\\\'EchoReturnedText\\\',\\\'GET\\\',\\\'\\\');\\\">反对</a>[<span id=\\\"fdpldiv[!--plid--]\\\">[!--fdnum--]</span>]\r\n            </div></td>\r\n        </tr>\r\n      </table>\r\n      <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr>\r\n          <td background=\\\"[!--news.url--]skin/default/images/plhrbg.gif\\\"></td>\r\n        </tr>\r\n      </table>\r\n[!--empirenews.listtemp--]', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>搜索 - 成都舜王科技有限公司</title>\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n<style type=\\\"text/css\\\">\r\n<!--\r\n.r {\r\ndisplay:inline;\r\nfont-weight:normal;\r\nmargin:0;\r\nfont-size:16px;\r\nmargin-top:10px;\r\n}\r\n.a{color:green}\r\n.fl{color:#77c}\r\n-->\r\n</style>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.dtheader--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>现在的位置：<a href=\\\"[!--news.url--]\\\">首页</a>&nbsp;>&nbsp;搜索</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><form action=\\\'index.php\\\' method=\\\"GET\\\" name=\\\"search_news\\\" id=\\\"search_news\\\">\r\n							<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"6\\\" cellpadding=\\\"0\\\">\r\n								<tr>\r\n									<td height=\\\"32\\\">关键字：\r\n										<input name=\\\"keyboard\\\" type=\\\"text\\\" id=\\\"keyboard\\\" value=\\\"[!--keyboard--]\\\" size=\\\"42\\\" />\r\n                    <select name=\\\"field\\\" id=\\\"field\\\">\r\n                      <option value=\\\"1\\\">全文</option>\r\n                      <option value=\\\"2\\\">标题</option>\r\n                      <option value=\\\"3\\\">内容</option>\r\n                    </select> \r\n                    <input type=\\\"submit\\\" name=\\\"Submit22\\\" value=\\\"搜索\\\" />\r\n                    <font color=\\\"#666666\\\">(多个关键字请用&quot;空格&quot;隔开)</font> </td>\r\n								</tr>\r\n							</table>\r\n						</form>\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"6\\\">\r\n							<tr>\r\n								<td>系统搜索到约有<strong>[!--num--]</strong>项符合<strong>[!--keyboard--]</strong>的查询结果</td>\r\n							</tr>\r\n						</table>\r\n						[!--empirenews.listtemp--]\r\n						<h2 class=\\\"r\\\"><span>[!--no.num--].</span> <a class=\\\"l\\\" href=\\\"[!--titleurl--]\\\" target=\\\"_blank\\\">[!--title--]</a></h2>\r\n						<table width=\\\"80%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n							<tbody>\r\n							<tr>\r\n								<td>[!--smalltext--]</td>\r\n							</tr>\r\n							<tr>\r\n								<td><span class=\\\"a\\\">[!--titleurl--] - [!--newstime--]</span></td>\r\n							</tr>\r\n							<tr>\r\n								<td>&nbsp;</td>\r\n							</tr>\r\n							</tbody>\r\n						</table>\r\n						[!--empirenews.listtemp--]\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"list_page\\\">\r\n							<tr>\r\n								<td>[!--listpage--]</td>\r\n							</tr>\r\n						</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 120, 'Y-m-d H:i:s');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspubtemp_2`
--

CREATE TABLE `hswl_enewspubtemp_2` (
  `id` smallint(6) NOT NULL,
  `indextemp` mediumtext NOT NULL,
  `cptemp` mediumtext NOT NULL,
  `searchtemp` mediumtext NOT NULL,
  `searchjstemp` mediumtext NOT NULL,
  `searchjstemp1` mediumtext NOT NULL,
  `otherlinktemp` mediumtext NOT NULL,
  `downsofttemp` text NOT NULL,
  `onlinemovietemp` text NOT NULL,
  `listpagetemp` text NOT NULL,
  `gbooktemp` mediumtext NOT NULL,
  `loginiframe` mediumtext NOT NULL,
  `otherlinktempsub` tinyint(4) NOT NULL DEFAULT '0',
  `otherlinktempdate` varchar(20) NOT NULL DEFAULT '',
  `loginjstemp` mediumtext NOT NULL,
  `downpagetemp` mediumtext NOT NULL,
  `pljstemp` mediumtext NOT NULL,
  `schalltemp` mediumtext NOT NULL,
  `schallsubnum` smallint(6) NOT NULL DEFAULT '0',
  `schalldate` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewspubtemp_2`
--

INSERT INTO `hswl_enewspubtemp_2` (`id`, `indextemp`, `cptemp`, `searchtemp`, `searchjstemp`, `searchjstemp1`, `otherlinktemp`, `downsofttemp`, `onlinemovietemp`, `listpagetemp`, `gbooktemp`, `loginiframe`, `otherlinktempsub`, `otherlinktempdate`, `loginjstemp`, `downpagetemp`, `pljstemp`, `schalltemp`, `schallsubnum`, `schalldate`) VALUES
(1, '<!DOCTYPE html>\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n\r\n<HEAD id=Head1>\r\n    <title>[!--pagetitle--]</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <META name=viewport content=\\\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0\\\">\r\n    <META name=viewport content=width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0>\r\n    <META name=apple-mobile-web-app-capable content=yes>\r\n    <META name=apple-mobile-web-app-status-bar-style content=black>\r\n    <META name=format-detection content=telephone=no>\r\n    <META content=\\\"text/html; charset=utf-8\\\" http-equiv=Content-Type>\r\n    <LINK rel=apple-touch-icon-precomposed href=\\\"/mobile/images/touch-icon.png\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/reset.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/fontsStyle.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/index.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/Common.css\\\">\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/TouchSlide.1.1.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/prefixfree.min.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/1.9.1jquery.min.js\\\"></SCRIPT>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</HEAD>\r\n\r\n<BODY style=\\\"ZOOM: 1\\\">\r\n    <FORM id=\\\"form1\\\">\r\n        \r\n        <DIV class=mian>\r\n            [!--temp.header--]\r\n            <!--banner-->\r\n            <DIV class=banner>\r\n                <DIV id=focus class=focus>\r\n                    <DIV class=hd>\r\n                        <UL>\r\n                            <LI></LI>\r\n                            <LI></LI>\r\n                            <LI></LI>\r\n                        </UL>\r\n                    </DIV>\r\n                    <DIV class=bd>\r\n                        <DIV>\r\n                            <UL>\r\n                                <LI><A href=\\\"#\\\"><IMG alt=\\\"\\\" src=\\\"/mobile/images/banner.jpg\\\" width=320></A>\r\n                                <LI><A href=\\\"#\\\"><IMG alt=\\\"\\\" src=\\\"/mobile/images/banner.jpg\\\" width=320></A>\r\n                                <LI><A href=\\\"#\\\"><IMG alt=\\\"\\\" src=\\\"/mobile/images/banner.jpg\\\" width=320></A>\r\n                            </UL>\r\n                        </DIV>\r\n                    </DIV>\r\n                </DIV>\r\n                <SCRIPT type=text/javascript>\r\n                    TouchSlide({\r\n                        slideCell: \\\"#focus\\\",\r\n                        titCell: \\\".hd ul\\\", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层\r\n                        mainCell: \\\".bd ul\\\",\r\n                        effect: \\\"leftLoop\\\",\r\n                        autoPlay: true, //自动播放\r\n                        autoPage: true, //自动分页\r\n                        delayTime:500, //毫秒；切换效果持续时间（执行一次效果用多少毫秒）。\r\n                        interTime:2800 //毫秒；自动运行间隔（隔多少毫秒后执行下一个效果）\r\n                    });\r\n                </SCRIPT>\r\n            </DIV>\r\n            <SECTION class=\\\"ywfw dbimg\\\">\r\n                <SECTION class=section>\r\n                    <H2 class=h2_title><A href=\\\"/mobile/fuwu/\\\">服务范围</A><I>Service Scope</I><EM></EM></H2>\r\n                    <SECTION class=\\\"ywfw_con clearfix\\\">\r\n                        <DL>\r\n                            <DT><A href=\\\"/mobile/fuwu/lenglianyunshu/\\\"><IMG alt=\\\"\\\" src=\\\"/mobile/images/fuwu1.jpg\\\"></A>\r\n                            <DD><A href=\\\"/mobile/fuwu/lenglianyunshu/\\\">冷链运输</A></DD>\r\n                        </DL>\r\n                        <DL>\r\n                            <DT><A href=\\\"/mobile/fuwu/peisongfuwu/\\\"><IMG alt=\\\"\\\" src=\\\"/mobile/images/fuwu2.jpg\\\"></A>\r\n                            <DD><A href=\\\"/mobile/fuwu/peisongfuwu/\\\">配送服务</A></DD>\r\n                        </DL>\r\n                        <DL>\r\n                            <DT><A href=\\\"/mobile/fuwu/cangchufuwu/\\\"><IMG alt=\\\"\\\" src=\\\"/mobile/images/fuwu3.jpg\\\"></A>\r\n                            <DD><A href=\\\"/mobile/fuwu/cangchufuwu/\\\">仓储服务</A></DD>\r\n                        </DL>\r\n                    </SECTION>\r\n                </SECTION>\r\n            </SECTION>\r\n            <SECTION class=\\\"about dbimg\\\">\r\n                <SECTION class=section>\r\n                    <H2 class=h2_title><A href=\\\"/mobile/guanyu/jianjie/\\\">关于我们</A><I>About Us</I><EM></EM></H2>\r\n                    <DL class=abo_top>\r\n                        <DT><IMG class=videoImg alt=\\\"\\\" src=\\\"/mobile/images/aboutimg.jpg\\\">\r\n                        <DD><A href=\\\"/mobile/guanyu/jianjie/\\\"></A></DD>\r\n                    </DL>\r\n                    <UL class=\\\"abo_bot clearfix\\\">\r\n                        <LI><A href=\\\"/mobile/guanyu/jianjie/\\\"><IMG alt=\\\"\\\" src=\\\"/mobile/images/aboicon01.png\\\"></A>\r\n                        <LI><A href=\\\"/mobile/guanyu/qiyeyoushi/\\\"><IMG alt=\\\"\\\" src=\\\"/mobile/images/aboicon02.png\\\"></A>\r\n                        <LI><A href=\\\"/mobile/guanyu/gongsilueying/\\\"><IMG alt=\\\"\\\" src=\\\"/mobile/images/aboicon03.png\\\"></A> </LI>\r\n                    </UL>\r\n                </SECTION>\r\n            </SECTION>\r\n            <SECTION id=jdal class=\\\"jdal dbimg\\\">\r\n                <SECTION class=section>\r\n                    <H2 class=h2_title><A href=\\\"/mobile/shili/anli/\\\">成功案例</A><I>Successful Cases</I><EM></EM></H2>\r\n                    <DIV class=bd>\r\n                        [e:loop={12,3,0,1}]\r\n                        <SECTION class=jdal_con>\r\n                            <DL>\r\n                                <DT><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><IMG alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\"></A>\r\n                                <DD><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></A>\r\n                                <DD><?=esub($bqr[smalltext],166),\\\'……\\\'?></DD>\r\n                            </DL>\r\n                        </SECTION>\r\n                        [/e:loop]\r\n                    </DIV>\r\n                    <UL class=\\\"jdal_type hd\\\">\r\n                        <LI></LI>\r\n                        <LI></LI>\r\n                        <LI></LI>\r\n                    </UL>\r\n                </SECTION>\r\n            </SECTION>\r\n            <SECTION id=ys class=\\\"advantage dbimg\\\">\r\n                <H2 class=h2_title><SPAN>为什么选择我们</SPAN><I>Why Choose Us</I><EM></EM></H2>\r\n                <SECTION class=section>\r\n                    <UL class=\\\"adv_type hd\\\">\r\n                        <LI>软件实力</LI>\r\n                        <LI>硬件实力</LI>\r\n                        <LI>荣誉资质</LI>\r\n                        <LI>无忧服务</LI>\r\n                    </UL>\r\n                    <DIV class=bd>\r\n                        <SECTION class=adv_con>\r\n                            <DL>\r\n                                <DT><IMG alt=\\\"\\\" src=\\\"/mobile/images/11.jpg\\\">\r\n                                <DD>专业团队 物流平台 丰富经验<br>专业从事冷藏、普通货物业务</DD>\r\n                                <DD>成都市华森物流有限公司创立于2012年，专注于各类食品、乳品、水产、果蔬、酒业等产品的干线运输及区域配送、物流业务咨询与仓储服务。<br>\r\n                                公司在软件上，拥有一支高素质、专业化、年轻化的物流管理团队和资深专家顾问群，有现代化的物流信息平台，汇聚了丰富的物流服务经验和先进的管理服务理念。\r\n                                </DD>\r\n                            </DL>\r\n                        </SECTION>\r\n                        <SECTION class=adv_con>\r\n                            <DL>\r\n                                <DT><IMG alt=\\\"\\\" src=\\\"/mobile/images/22.jpg\\\">\r\n                                <DD>车型齐全 GPS监控 制冷性能好<br>满足各种运输、用车需求</DD>\r\n                                <DD>公司在硬件上，自有车型齐全，3-30吨的冷藏车、普通货运车多部，以及其他车型的联营车。<br>\r\n                                配置有GPS卫星定位系统，全程监控车辆的运营状态，安全性强、可靠性高；<br>其中冷藏车的制冷性能稳定，最低可达到-28℃。<br>\r\n                                能够满足各类客户的运输质量要求和客户用车需要。\r\n                                </DD>\r\n                            </DL>\r\n                        </SECTION>\r\n                        <SECTION class=adv_con>\r\n                            <DL>\r\n                                <DT><IMG alt=\\\"\\\" src=\\\"/mobile/images/33.jpg\\\">\r\n                                <DD>专业团队 物流平台 丰富经验<br>专业从事冷藏、普通货物业务</DD>\r\n                                <DD>成都市华森物流有限公司创立于2012年，专注于各类食品、乳品、水产、果蔬、酒业等产品的干线运输及区域配送、物流业务咨询与仓储服务。<br>\r\n                                公司在软件上，拥有一支高素质、专业化、年轻化的物流管理团队和资深专家顾问群，有现代化的物流信息平台，汇聚了丰富的物流服务经验和先进的管理服务理念。\r\n                                </DD>\r\n                            </DL>\r\n                        </SECTION>\r\n                        <SECTION class=adv_con>\r\n                            <DL>\r\n                                <DT><IMG alt=\\\"\\\" src=\\\"/mobile/images/44.jpg\\\">\r\n                                <DD>车型齐全 GPS监控 制冷性能好<br>满足各种运输、用车需求</DD>\r\n                                <DD>公司在硬件上，自有车型齐全，3-30吨的冷藏车、普通货运车多部，以及其他车型的联营车。<br>\r\n                                配置有GPS卫星定位系统，全程监控车辆的运营状态，安全性强、可靠性高；<br>其中冷藏车的制冷性能稳定，最低可达到-28℃。<br>\r\n                                能够满足各类客户的运输质量要求和客户用车需要。</DD>\r\n                            </DL>\r\n                        </SECTION>\r\n                    </DIV>\r\n                </SECTION>\r\n            </SECTION>\r\n            <SECTION class=\\\"fwkh dbimg\\\">\r\n                <SECTION class=section>\r\n                    <H2 class=h2_title><A href=\\\"/mobile/shili/hezuo/\\\"><SPAN>合作伙伴</SPAN></A><I>Cooperative Partner</I><EM></EM></H2>\r\n                    <SECTION class=fwkh_con>\r\n                        <UL class=clearfix>\r\n                            [e:loop={14,9,0,1}]\r\n                            <LI><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><IMG alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\"></A></LI>\r\n                            [/e:loop]\r\n                        </UL>\r\n                    </SECTION>\r\n                </SECTION>\r\n            </SECTION>\r\n            <SECTION class=news>\r\n                <SECTION id=news class=section>\r\n                    <H2 class=h2_title><A href=\\\"/mobile/xinwen/\\\">新闻中心</A><I>News Center</I><EM></EM></H2>\r\n                    <UL class=\\\"news_type hd\\\">\r\n                        <LI>公司新闻</LI>\r\n                        <LI>行业动态</LI>\r\n                        <LI>媒体聚焦</LI>\r\n                        <LI>常见问题</LI>\r\n                    </UL>\r\n                    <DIV class=bd>\r\n                        <SECTION class=news_con>\r\n                            [e:loop={8,3,0,0}]\r\n                            <DL>\r\n                                <DT><SPAN><?=date(\\\'d\\\',$bqr[newstime])?></SPAN><I><?=date(\\\'Y-m\\\',$bqr[newstime])?></I></DT>\r\n                                <DD><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></A></DD>\r\n                                <DD><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=esub($bqr[smalltext],70),\\\'...\\\'?></A></DD>\r\n                            </DL>\r\n                            [/e:loop]\r\n                        </SECTION>\r\n                        <SECTION class=news_con>\r\n                            [e:loop={9,3,0,0}]\r\n                            <DL>\r\n                                <DT><SPAN><?=date(\\\'d\\\',$bqr[newstime])?></SPAN><I><?=date(\\\'Y-m\\\',$bqr[newstime])?></I></DT>\r\n                                <DD><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></A></DD>\r\n                                <DD><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=esub($bqr[smalltext],70),\\\'...\\\'?></A></DD>\r\n                            </DL>\r\n                            [/e:loop]\r\n                        </SECTION>\r\n                        <SECTION class=news_con>\r\n                            [e:loop={10,3,0,0}]\r\n                            <DL>\r\n                                <DT><SPAN><?=date(\\\'d\\\',$bqr[newstime])?></SPAN><I><?=date(\\\'Y-m\\\',$bqr[newstime])?></I></DT>\r\n                                <DD><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></A></DD>\r\n                                <DD><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=esub($bqr[smalltext],70),\\\'...\\\'?></A></DD>\r\n                            </DL>\r\n                            [/e:loop]\r\n                        </SECTION>\r\n                        <SECTION class=news_con>\r\n                            [e:loop={11,3,0,0}]\r\n                            <DL>\r\n                                <DT><SPAN><?=date(\\\'d\\\',$bqr[newstime])?></SPAN><I><?=date(\\\'Y-m\\\',$bqr[newstime])?></I></DT>\r\n                                <DD><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></A></DD>\r\n                                <DD><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=esub($bqr[smalltext],70),\\\'...\\\'?></A></DD>\r\n                            </DL>\r\n                            [/e:loop]\r\n                        </SECTION>\r\n                    </DIV><A class=ckgda href=\\\"/mobile/xinwen/\\\">查看更多 +</A>\r\n                </SECTION>\r\n            </SECTION>\r\n            [!--temp.footer--]\r\n        </DIV><!-- cb_mian[end] -->\r\n    </FORM>\r\n\r\n    <SCRIPT type=text/javascript>\r\n        jQuery(document).ready(function ($) {\r\n            $(\\\'.hddb img\\\').click(function () {\r\n                $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n            });\r\n            //回到顶部函数\r\n        });\r\n    </SCRIPT>\r\n    <SCRIPT type=text/javascript>\r\n       TouchSlide({ slideCell: \\\"#jdal\\\", mainCell: \\\".bd\\\", titCell: \\\".hd li\\\", autoPlay: false, interTime: 5000 });\r\n       TouchSlide({ slideCell: \\\"#ys\\\", mainCell: \\\".bd\\\", titCell: \\\".hd li\\\", autoPlay: false, interTime: 5000 });\r\n       TouchSlide({ slideCell: \\\"#news\\\", mainCell: \\\".bd\\\", titCell: \\\".hd li\\\", autoPlay: false, interTime: 5000 });\r\n    </SCRIPT>\r\n</BODY>\r\n</HTML>', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - 成都舜王科技有限公司</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.dtheader--] \r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>现在的位置：[!--newsnav--]\r\n</td>\r\n</tr>\r\n</table>\r\n      <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n        <tr> \r\n          <td width=\\\"300\\\" valign=\\\"top\\\"> \r\n		  <?php\r\n		  $lguserid=intval(getcvar(\\\'mluserid\\\'));//登陆用户ID\r\n		  $lgusername=RepPostVar(getcvar(\\\'mlusername\\\'));//登陆用户\r\n		  $lggroupid=intval(getcvar(\\\'mlgroupid\\\'));//会员组ID\r\n		  if($lggroupid)	//登陆会员显示菜单\r\n		  {\r\n		  ?>\r\n            <table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" class=\\\"tableborder\\\">\r\n              <tr class=\\\"header\\\"> \r\n                <td height=\\\"20\\\" bgcolor=\\\"#FFFFFF\\\"> <div align=\\\"center\\\"><strong><a href=\\\"[!--news.url--]e/member/cp/\\\">功能菜单</a></strong></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/EditInfo/\\\">修改资料</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/my/\\\">帐号状态</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/msg/\\\">站内信息</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/mspace/SetSpace.php\\\">空间设置</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/DoInfo/\\\">管理信息</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/fava/\\\">收藏夹</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/payapi/\\\">在线支付</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/friend/\\\">我的好友</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/buybak/\\\">消费记录</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/buygroup/\\\">在线充值</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/card/\\\">点卡充值</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"#ecms\\\" onclick=\\\"window.open(\\\'[!--news.url--]e/ShopSys/buycar/\\\',\\\'\\\',\\\'width=680,height=500,scrollbars=yes,resizable=yes\\\');\\\">我的购物车</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/ShopSys/ListDd/\\\">我的订单</a></div></td>\r\n              </tr>\r\n			  <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/login/\\\">重新登陆</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/doaction.php?enews=exit\\\" onclick=\\\"return confirm(\\\'确认要退出?\\\');\\\">退出登陆</a></div></td>\r\n              </tr>\r\n            </table>\r\n			<?php\r\n			}\r\n			else	//游客显示菜单\r\n			{\r\n			?>  \r\n            <table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" class=\\\"tableborder\\\">\r\n              <tr class=\\\"header\\\"> \r\n                <td height=\\\"20\\\" bgcolor=\\\"#FFFFFF\\\"> <div align=\\\"center\\\"><strong><a href=\\\"[!--news.url--]e/member/cp/\\\">功能菜单</a></strong></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/login/\\\">会员登陆</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/register/\\\">注册帐号</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/DoInfo/\\\">发布投稿</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"#ecms\\\" onclick=\\\"window.open(\\\'[!--news.url--]e/ShopSys/buycar/\\\',\\\'\\\',\\\'width=680,height=500,scrollbars=yes,resizable=yes\\\');\\\">我的购物车</a></div></td>\r\n              </tr>\r\n            </table>\r\n			<?php\r\n			}\r\n			?>\r\n			</td>\r\n          <td width=\\\"85%\\\" valign=\\\"top\\\">[!--empirenews.template--]</td>\r\n        </tr>\r\n      </table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>高级搜索 - 成都舜王科技有限公司</title>\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n<script src=\\\"[!--news.url--]e/data/images/setday.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.dtheader--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>现在的位置：[!--url--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n						<tr>\r\n							<td><form action=\\\'[!--news.url--]e/search/index.php\\\' method=\\\"post\\\" name=\\\"search_news\\\" id=\\\"search_news\\\">\r\n									<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n										<tr>\r\n											<td width=\\\"54%\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"6\\\" cellspacing=\\\"0\\\">\r\n													<tr>\r\n														<td bgcolor=\\\"#F4F4F4\\\"><strong>搜索范围</strong></td>\r\n													</tr>\r\n											</table></td>\r\n											<td width=\\\"46%\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"6\\\" cellspacing=\\\"0\\\">\r\n													<tr>\r\n														<td bgcolor=\\\"#F4F4F4\\\"><strong>搜索栏目</strong></td>\r\n													</tr>\r\n											</table></td>\r\n										</tr>\r\n										<tr>\r\n											<td valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"6\\\" cellspacing=\\\"0\\\">\r\n													<tr>\r\n														<td><input type=\\\"radio\\\" name=\\\"show\\\" value=\\\"title\\\" checked=\\\"checked\\\" />\r\n															标题\r\n															<input type=\\\"radio\\\" name=\\\"show\\\" value=\\\"smalltext\\\" />\r\n															简介\r\n															<input type=\\\"radio\\\" name=\\\"show\\\" value=\\\"newstext\\\" />\r\n															内容\r\n															<input type=\\\"radio\\\" name=\\\"show\\\" value=\\\"writer\\\" />\r\n															作者\r\n															<input name=\\\"show\\\" type=\\\"radio\\\" value=\\\"title,smalltext,newstext,writer\\\" />\r\n															不限</td>\r\n													</tr>\r\n												</table>\r\n													<br />\r\n													<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"6\\\" cellspacing=\\\"0\\\">\r\n														<tr bgcolor=\\\"#F4F4F4\\\">\r\n															<td><strong>时间限制</strong><font color=\\\"#666666\\\">(0000-00-00为不限制)</font></td>\r\n														</tr>\r\n														<tr>\r\n															<td height=\\\"30\\\" valign=\\\"top\\\">从\r\n																<input name=\\\"starttime\\\" type=\\\"text\\\" value=\\\"0000-00-00\\\" size=\\\"12\\\" onclick=\\\"setday(this)\\\" />\r\n																到\r\n																<input name=\\\"endtime\\\" type=\\\"text\\\" value=\\\"0000-00-00\\\" size=\\\"12\\\" onclick=\\\"setday(this)\\\" />\r\n																之间的数据</td>\r\n														</tr>\r\n														<tr>\r\n															<td bgcolor=\\\"#F4F4F4\\\"><strong>价格限制</strong><font color=\\\"#666666\\\">(商城模型中有效,0为不限制)</font></td>\r\n														</tr>\r\n														<tr>\r\n															<td>从\r\n																<input name=\\\"startprice\\\" type=\\\"text\\\" id=\\\"startprice\\\" value=\\\"0\\\" size=\\\"6\\\" />\r\n																到\r\n																<input name=\\\"endprice\\\" type=\\\"text\\\" id=\\\"endprice\\\" value=\\\"0\\\" size=\\\"6\\\" />\r\n																元之间</td>\r\n														</tr>\r\n												</table></td>\r\n											<td valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"6\\\" cellpadding=\\\"0\\\">\r\n													<tr>\r\n														<td><select name=\\\"classid\\\" size=\\\"8\\\" id=\\\"select2\\\" style=\\\"width: 100%;height:112px\\\">\r\n																<option value=\\\"0\\\" selected=\\\"selected\\\">所有栏目</option>\r\n															[!--class--]\r\n          \r\n														</select></td>\r\n													</tr>\r\n												</table>\r\n													<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"6\\\" cellspacing=\\\"0\\\">\r\n														<tr>\r\n															<td bgcolor=\\\"#F4F4F4\\\"><strong>结果显示</strong></td>\r\n														</tr>\r\n														<tr>\r\n															<td height=\\\"30\\\"><select name=\\\"orderby\\\" id=\\\"select4\\\">\r\n																	<option value=\\\"\\\">按发布日期</option>\r\n																	<option value=\\\"id\\\">信息ID</option>\r\n																	<option value=\\\"plnum\\\">评论数</option>\r\n																	<option value=\\\"onclick\\\">人气</option>\r\n																	<option value=\\\"totaldown\\\">下载数</option>\r\n																</select>\r\n																	<select name=\\\"myorder\\\" id=\\\"select5\\\">\r\n																		<option value=\\\"0\\\">倒序排列</option>\r\n																		<option value=\\\"1\\\">顺序排列</option>\r\n																	</select>\r\n															</td>\r\n														</tr>\r\n												</table></td>\r\n										</tr>\r\n									</table>\r\n								<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"0\\\">\r\n										<tr>\r\n											<td>关键字：\r\n												<input name=\\\"keyboard\\\" type=\\\"text\\\" id=\\\"keyboard2\\\" size=\\\"60\\\" />\r\n													<input type=\\\"submit\\\" name=\\\"Submit22\\\" value=\\\"搜索\\\" />\r\n											</td>\r\n										</tr>\r\n									</table>\r\n							</form></td>\r\n						</tr>\r\n					</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<table border=0 cellpadding=3 cellspacing=1><form name=search_js1 method=post action=\\\'[!--news.url--]e/search/index.php\\\' onsubmit=\\\'return search_check(document.search_js1);\\\'><tr><td><div align=center>搜索: <select name=show><option value=title>标题</option><option value=smalltext>简介</option><option value=newstext>内容</option><option value=writer>作者</option><option value=title,smalltext,newstext,writer>搜索全部</option></select><select name=classid><option value=0>所有栏目</option>[!--class--]</select><input name=keyboard type=text size=13><input type=submit name=Submit value=搜索></div></td></tr></form></table>', '<table width=99% border=0 cellpadding=3 cellspacing=1><form name=search_js2 method=post action=\\\'[!--news.url--]e/search/index.php\\\' onsubmit=\\\'return search_check(document.search_js2);\\\'><tr><td height=25><div align=center>关键字: <input name=keyboard type=text size=13></div></td></tr><tr><td><div align=center>范围: <select name=show><option value=title>标题</option><option value=smalltext>简介</option><option value=newstext>内容</option><option value=writer>作者</option><option value=title,smalltext,newstext,writer>搜索全部</option></select></div></td></tr><tr><td><div align=center>栏目:<select name=classid><option value=0>所有栏目</option>[!--class--]</select></div></td></tr><tr><td><div align=center><input type=submit name=Submit value=搜索></div></td></tr></form></table>', '[!--empirenews.listtemp--]<li><a href=\\\"[!--titleurl--]\\\" title=\\\"[!--oldtitle--]\\\">[!--title--]</a></li>[!--empirenews.listtemp--]', '[ <a href=\\\"#ecms\\\" onclick=\\\"window.open(\\\'[!--down.url--]\\\',\\\'\\\',\\\'width=300,height=300,resizable=yes\\\');\\\">[!--down.name--]</a> ]', '[ <a href=\\\"#ecms\\\" onclick=\\\"window.open(\\\'[!--down.url--]\\\',\\\'\\\',\\\'width=300,height=300,resizable=yes\\\');\\\">[!--down.name--]</a> ]', '页次：[!--thispage--]/[!--pagenum--]&nbsp;每页[!--lencord--]&nbsp;总数[!--num--]&nbsp;&nbsp;&nbsp;&nbsp;[!--pagelink--]&nbsp;&nbsp;&nbsp;&nbsp;转到:[!--options--]', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>留言板 - 成都舜王科技有限公司</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--bname--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--bname--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.dtheader--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>现在的位置：<a href=../../../>首页</a>&nbsp;>&nbsp;[!--bname--]\r\n</td>\r\n</tr>\r\n</table><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n	<tr>\r\n		<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"2\\\">\r\n			<tr>\r\n				<td align=\\\"center\\\" bgcolor=\\\"#E1EFFB\\\"><strong>[!--bname--]</strong></td>\r\n			</tr>\r\n			<tr>\r\n				<td align=\\\"left\\\" valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#FFFFFF\\\">\r\n						<tr>\r\n							<td height=\\\"100%\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\"> [!--empirenews.listtemp--]\r\n								<table width=\\\"92%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"4\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#F4F9FD\\\" class=\\\"tableborder\\\">\r\n										<tr class=\\\"header\\\">\r\n											<td width=\\\"55%\\\" height=\\\"23\\\">发布者: [!--name--] </td>\r\n											<td width=\\\"45%\\\">发布时间: [!--lytime--] </td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td height=\\\"23\\\" colspan=\\\"2\\\"><table border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"1\\\" cellpadding=\\\"8\\\" bgcolor=\\\'#cccccc\\\'>\r\n													<tr>\r\n														<td width=\\\'100%\\\' bgcolor=\\\'#FFFFFF\\\' style=\\\'word-break:break-all\\\'> [!--lytext--] </td>\r\n													</tr>\r\n												</table>\r\n												[!--start.regbook--]\r\n												<table width=\\\"100%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\">\r\n													<tr>\r\n														<td><img src=\\\"../../data/images/regb.gif\\\" width=\\\"18\\\" height=\\\"18\\\" /><strong><font color=\\\"#FF0000\\\">回复:</font></strong> [!--retext--] </td>\r\n													</tr>\r\n												</table>\r\n												[!--end.regbook--] </td>\r\n										</tr>\r\n									</table>\r\n								<br />\r\n								[!--empirenews.listtemp--]\r\n								<table width=\\\"92%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"4\\\" cellspacing=\\\"1\\\">\r\n									<tr>\r\n										<td>分页: [!--listpage--]</td>\r\n									</tr>\r\n								</table>\r\n								<form action=\\\"../../enews/index.php\\\" method=\\\"post\\\" name=\\\"form1\\\" id=\\\"form1\\\">\r\n									<table width=\\\"92%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"4\\\" cellspacing=\\\"1\\\"class=\\\"tableborder\\\">\r\n										<tr class=\\\"header\\\">\r\n											<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\"><strong>请您留言:</strong></td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td width=\\\"20%\\\">姓名:</td>\r\n											<td width=\\\"722\\\" height=\\\"23\\\"><input name=\\\"name\\\" type=\\\"text\\\" id=\\\"name\\\" />\r\n												*</td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td>联系邮箱:</td>\r\n											<td height=\\\"23\\\"><input name=\\\"email\\\" type=\\\"text\\\" id=\\\"email\\\" />\r\n												*</td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td>联系电话:</td>\r\n											<td height=\\\"23\\\"><input name=\\\"mycall\\\" type=\\\"text\\\" id=\\\"mycall\\\" /></td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td>留言内容(*):</td>\r\n											<td height=\\\"23\\\"><textarea name=\\\"lytext\\\" cols=\\\"60\\\" rows=\\\"12\\\" id=\\\"lytext\\\"></textarea></td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td height=\\\"23\\\">&nbsp;</td>\r\n											<td height=\\\"23\\\"><input type=\\\"submit\\\" name=\\\"Submit3\\\" value=\\\"提交\\\" />\r\n											<input type=\\\"reset\\\" name=\\\"Submit22\\\" value=\\\"重置\\\" />\r\n											<input name=\\\"enews\\\" type=\\\"hidden\\\" id=\\\"enews\\\" value=\\\"AddGbook\\\" /></td>\r\n										</tr>\r\n									</table>\r\n								</form></td>\r\n						</tr>\r\n				</table></td>\r\n			</tr>\r\n		</table></td>\r\n	</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<html>\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\">\r\n<title>登陆</title>\r\n<LINK href=\\\"../../data/images/qcss.css\\\" rel=stylesheet>\r\n</head>\r\n<body bgcolor=\\\"#ededed\\\" topmargin=\\\"0\\\">\r\n<table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\r\n  <form name=login method=post action=\\\"../../member/doaction.php\\\">\r\n    <input type=hidden name=enews value=login>\r\n    <input type=hidden name=prtype value=1>\r\n    <tr> \r\n      <td height=\\\"23\\\" align=\\\"center\\\">\r\n      <div align=\\\"left\\\">\r\n      用户名：<input name=\\\"username\\\" type=\\\"text\\\" size=\\\"8\\\">&nbsp;\r\n      密码：<input name=\\\"password\\\" type=\\\"password\\\" size=\\\"8\\\">\r\n      <select name=\\\"lifetime\\\" id=\\\"lifetime\\\">\r\n         <option value=\\\"0\\\">不保存</option>\r\n         <option value=\\\"3600\\\">一小时</option>\r\n         <option value=\\\"86400\\\">一天</option>\r\n         <option value=\\\"2592000\\\">一个月</option>\r\n         <option value=\\\"315360000\\\">永久</option>\r\n      </select>&nbsp;\r\n      <input type=\\\"submit\\\" name=\\\"Submit\\\" value=\\\"登陆\\\">&nbsp;\r\n      <input type=\\\"button\\\" name=\\\"Submit2\\\" value=\\\"注册\\\" onclick=\\\"window.open(\\\'../register/\\\');\\\">\r\n      </div>\r\n      </td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n</body>\r\n</html>\r\n[!--empirenews.template--]\r\n<html>\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\">\r\n<title>登陆</title>\r\n<LINK href=\\\"../../data/images/qcss.css\\\" rel=stylesheet>\r\n</head>\r\n<body bgcolor=\\\"#ededed\\\" topmargin=\\\"0\\\">\r\n<table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\r\n    <tr>\r\n	<td height=\\\"23\\\" align=\\\"center\\\">\r\n	<div align=\\\"left\\\">\r\n		&raquo;&nbsp;<font color=red><b>[!--username--]</b></font>&nbsp;&nbsp;<a href=\\\"../my/\\\" target=\\\"_parent\\\">[!--groupname--]</a>&nbsp;[!--havemsg--]&nbsp;<a href=\\\"[!--news.url--]e/space/?userid=[!--userid--]\\\" target=_blank>我的空间</a>&nbsp;&nbsp;<a href=\\\"../msg/\\\" target=_blank>短信息</a>&nbsp;&nbsp;<a href=\\\"../fava/\\\" target=_blank>收藏夹</a>&nbsp;&nbsp;<a href=\\\"../cp/\\\" target=\\\"_parent\\\">控制面板</a>&nbsp;&nbsp;<a href=\\\"../../member/doaction.php?enews=exit&prtype=9\\\" onclick=\\\"return confirm(\\\'确认要退出?\\\');\\\">退出</a> \r\n	</div>\r\n	</td>\r\n    </tr>\r\n</table>\r\n</body>\r\n</html>', 50, 'Y-m-d H:i:s', '<form name=login method=post action=\\\"[!--news.url--]e/member/doaction.php\\\">\r\n    <input type=hidden name=enews value=login>\r\n    <input type=hidden name=ecmsfrom value=9>\r\n    用户名：<input name=\\\"username\\\" type=\\\"text\\\" class=\\\"inputText\\\" size=\\\"16\\\" />&nbsp;\r\n    密码：<input name=\\\"password\\\" type=\\\"password\\\" class=\\\"inputText\\\" size=\\\"16\\\" />&nbsp;\r\n    <input type=\\\"submit\\\" name=\\\"Submit\\\" value=\\\"登陆\\\" class=\\\"inputSub\\\" />&nbsp;\r\n    <input type=\\\"button\\\" name=\\\"Submit2\\\" value=\\\"注册\\\" class=\\\"inputSub\\\" onclick=\\\"window.open(\\\'[!--news.url--]e/member/register/\\\');\\\" />\r\n</form>\r\n[!--empirenews.template--]\r\n&raquo;&nbsp;<font color=red><b>[!--username--]</b></font>&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/my/\\\" target=\\\"_parent\\\">[!--groupname--]</a>&nbsp;[!--havemsg--]&nbsp;<a href=\\\"[!--news.url--]e/space/?userid=[!--userid--]\\\" target=_blank>我的空间</a>&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/msg/\\\" target=_blank>短信息</a>&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/fava/\\\" target=_blank>收藏夹</a>&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/cp/\\\" target=\\\"_parent\\\">控制面板</a>&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/doaction.php?enews=exit&ecmsfrom=9\\\" onclick=\\\"return confirm(\\\'确认要退出?\\\');\\\">退出</a>', '<html>\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\">\r\n<title>[!--pagetitle--]</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n<link href=\\\"../../data/images/qcss.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\">\r\n</head>\r\n<body>\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n<table align=\\\"center\\\" width=\\\"100%\\\">\r\n  <tr> \r\n    <td height=\\\"32\\\" align=center>\r\n	<a href=\\\"[!--down.url--]\\\" title=\\\"[!--title--] －[!--down.name--]\\\">\r\n	<img src=\\\"../../data/images/download.jpg\\\" border=0>\r\n	</a>\r\n	</td>\r\n  </tr>\r\n  <tr> \r\n    <td align=center>(点击下载)</td>\r\n  </tr>\r\n</table>\r\n<br>\r\n</body>\r\n</html>', '[!--empirenews.listtemp--] \r\n      <table width=\\\"100%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" style=\\\"word-break:break-all; word-wrap:break-all;\\\">\r\n        <tr> \r\n          <td height=\\\"30\\\"><span class=\\\"name\\\">本站网友 [!--username--]</span> <font color=\\\"#666666\\\">ip:[!--plip--]</font></td>\r\n          <td><div align=\\\"right\\\"><font color=\\\"#666666\\\">[!--pltime--] 发表</font></div></td>\r\n        </tr>\r\n        <tr valign=\\\"top\\\"> \r\n          <td height=\\\"50\\\" colspan=\\\"2\\\" class=\\\"text\\\">[!--pltext--]</td>\r\n        </tr>\r\n        <tr> \r\n          <td height=\\\"30\\\">&nbsp;</td>\r\n          <td><div align=\\\"right\\\" class=\\\"re\\\"> \r\n              <a href=\\\"JavaScript:makeRequest(\\\'[!--news.url--]e/pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=1&doajax=1&ajaxarea=zcpldiv[!--plid--]\\\',\\\'EchoReturnedText\\\',\\\'GET\\\',\\\'\\\');\\\">支持</a>[<span id=\\\"zcpldiv[!--plid--]\\\">[!--zcnum--]</span>]&nbsp; \r\n              <a href=\\\"JavaScript:makeRequest(\\\'[!--news.url--]e/pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=0&doajax=1&ajaxarea=fdpldiv[!--plid--]\\\',\\\'EchoReturnedText\\\',\\\'GET\\\',\\\'\\\');\\\">反对</a>[<span id=\\\"fdpldiv[!--plid--]\\\">[!--fdnum--]</span>]\r\n            </div></td>\r\n        </tr>\r\n      </table>\r\n      <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr>\r\n          <td background=\\\"[!--news.url--]skin/default/images/plhrbg.gif\\\"></td>\r\n        </tr>\r\n      </table>\r\n[!--empirenews.listtemp--]', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>搜索 - 成都舜王科技有限公司</title>\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n<style type=\\\"text/css\\\">\r\n<!--\r\n.r {\r\ndisplay:inline;\r\nfont-weight:normal;\r\nmargin:0;\r\nfont-size:16px;\r\nmargin-top:10px;\r\n}\r\n.a{color:green}\r\n.fl{color:#77c}\r\n-->\r\n</style>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.dtheader--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>现在的位置：<a href=\\\"[!--news.url--]\\\">首页</a>&nbsp;>&nbsp;搜索</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><form action=\\\'index.php\\\' method=\\\"GET\\\" name=\\\"search_news\\\" id=\\\"search_news\\\">\r\n							<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"6\\\" cellpadding=\\\"0\\\">\r\n								<tr>\r\n									<td height=\\\"32\\\">关键字：\r\n										<input name=\\\"keyboard\\\" type=\\\"text\\\" id=\\\"keyboard\\\" value=\\\"[!--keyboard--]\\\" size=\\\"42\\\" />\r\n                    <select name=\\\"field\\\" id=\\\"field\\\">\r\n                      <option value=\\\"1\\\">全文</option>\r\n                      <option value=\\\"2\\\">标题</option>\r\n                      <option value=\\\"3\\\">内容</option>\r\n                    </select> \r\n                    <input type=\\\"submit\\\" name=\\\"Submit22\\\" value=\\\"搜索\\\" />\r\n                    <font color=\\\"#666666\\\">(多个关键字请用&quot;空格&quot;隔开)</font> </td>\r\n								</tr>\r\n							</table>\r\n						</form>\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"6\\\">\r\n							<tr>\r\n								<td>系统搜索到约有<strong>[!--num--]</strong>项符合<strong>[!--keyboard--]</strong>的查询结果</td>\r\n							</tr>\r\n						</table>\r\n						[!--empirenews.listtemp--]\r\n						<h2 class=\\\"r\\\"><span>[!--no.num--].</span> <a class=\\\"l\\\" href=\\\"[!--titleurl--]\\\" target=\\\"_blank\\\">[!--title--]</a></h2>\r\n						<table width=\\\"80%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n							<tbody>\r\n							<tr>\r\n								<td>[!--smalltext--]</td>\r\n							</tr>\r\n							<tr>\r\n								<td><span class=\\\"a\\\">[!--titleurl--] - [!--newstime--]</span></td>\r\n							</tr>\r\n							<tr>\r\n								<td>&nbsp;</td>\r\n							</tr>\r\n							</tbody>\r\n						</table>\r\n						[!--empirenews.listtemp--]\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"list_page\\\">\r\n							<tr>\r\n								<td>[!--listpage--]</td>\r\n							</tr>\r\n						</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 120, 'Y-m-d H:i:s');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspubvar`
--

CREATE TABLE `hswl_enewspubvar` (
  `varid` smallint(5) UNSIGNED NOT NULL,
  `myvar` varchar(60) NOT NULL DEFAULT '',
  `varname` varchar(20) NOT NULL DEFAULT '',
  `varvalue` text NOT NULL,
  `varsay` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `tocache` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewspubvarclass`
--

CREATE TABLE `hswl_enewspubvarclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` varchar(30) NOT NULL DEFAULT '',
  `classsay` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsqmsg`
--

CREATE TABLE `hswl_enewsqmsg` (
  `mid` int(10) UNSIGNED NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `issys` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewssearch`
--

CREATE TABLE `hswl_enewssearch` (
  `searchid` bigint(20) UNSIGNED NOT NULL,
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `searchtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `searchclass` varchar(255) NOT NULL DEFAULT '',
  `result_num` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `searchip` varchar(20) NOT NULL DEFAULT '',
  `classid` varchar(255) NOT NULL DEFAULT '',
  `onclick` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `orderby` varchar(30) NOT NULL DEFAULT '0',
  `myorder` tinyint(1) NOT NULL DEFAULT '0',
  `checkpass` varchar(32) NOT NULL DEFAULT '',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `tempid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `iskey` tinyint(1) NOT NULL DEFAULT '0',
  `andsql` text NOT NULL,
  `trueclassid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewssearchall`
--

CREATE TABLE `hswl_enewssearchall` (
  `sid` int(10) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` text NOT NULL,
  `infotime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `infotext` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewssearchall_load`
--

CREATE TABLE `hswl_enewssearchall_load` (
  `lid` smallint(5) UNSIGNED NOT NULL,
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `titlefield` varchar(30) NOT NULL DEFAULT '',
  `infotextfield` varchar(30) NOT NULL DEFAULT '',
  `smalltextfield` varchar(30) NOT NULL DEFAULT '',
  `loadnum` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `lasttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastid` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewssearchtemp`
--

CREATE TABLE `hswl_enewssearchtemp` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewssearchtemp`
--

INSERT INTO `hswl_enewssearchtemp` (`tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`) VALUES
(1, '默认搜索模板', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--keyboard--] 搜索结果 - 成都舜王科技有限公司</title>\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n<style type=\\\"text/css\\\">\r\n<!--\r\n.r {\r\ndisplay:inline;\r\nfont-weight:normal;\r\nmargin:0;\r\nfont-size:16px;\r\nmargin-top:10px;\r\n}\r\n.a{color:green}\r\n.fl{color:#77c}\r\n-->\r\n</style>\r\n<script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.dtheader--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>现在的位置：<a href=\\\"[!--news.url--]\\\" class=\\\"classlinkclass\\\">首页</a>&nbsp;>&nbsp;<a href=\\\"[!--news.url--]search/\\\" class=\\\"classlinkclass\\\">高级搜索</a>&nbsp;>&nbsp;搜索结果</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><form action=\\\'../../search/index.php\\\' method=\\\"post\\\" name=\\\"search_news\\\" id=\\\"search_news\\\">\r\n							<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"6\\\" cellpadding=\\\"0\\\">\r\n								<input type=\\\"hidden\\\" name=\\\"show\\\" value=\\\"title\\\" />\r\n								<tr>\r\n									<td height=\\\"32\\\">关键字：\r\n										<input name=\\\"keyboard\\\" type=\\\"text\\\" id=\\\"keyboard\\\" value=\\\"[!--keyboard--]\\\" size=\\\"42\\\" />\r\n										<input type=\\\"submit\\\" name=\\\"Submit22\\\" value=\\\"搜索\\\" />\r\n										&nbsp;\r\n										<input type=\\\"button\\\" name=\\\"Submit\\\" value=\\\"高级搜索\\\" onclick=\\\"self.location.href=\\\'../../../search/\\\'\\\" />\r\n										(多个关键字请用&quot;空格&quot;隔开) </td>\r\n								</tr>\r\n							</table>\r\n						</form>\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"6\\\">\r\n							<tr>\r\n								<td>系统搜索到约有<strong>[!--ecms.num--]</strong>项符合<strong>[!--keyboard--]</strong>的查询结果</td>\r\n							</tr>\r\n						</table>\r\n						[!--empirenews.listtemp--]\r\n						<!--list.var1-->\r\n						[!--empirenews.listtemp--]\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"list_page\\\">\r\n							<tr>\r\n								<td>[!--show.page--]</td>\r\n							</tr>\r\n						</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 180, 1, '<h2 class=\\\"r\\\"><span>[!--no.num--].</span> <a class=\\\"l\\\" href=\\\"[!--titleurl--]\\\" target=\\\"_blank\\\">[!--title--]</a></h2>\r\n<table width=\\\"80%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>[!--smalltext--]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><span class=\\\"a\\\">[!--titleurl--] - [!--newstime--]</span> - <a class=\\\"fl\\\" href=\\\"[!--this.classlink--]\\\" target=\\\"_blank\\\">[!--this.classname--]</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 1, 'Y-m-d', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewssearchtempclass`
--

CREATE TABLE `hswl_enewssearchtempclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewssearchtemp_2`
--

CREATE TABLE `hswl_enewssearchtemp_2` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewssearchtemp_2`
--

INSERT INTO `hswl_enewssearchtemp_2` (`tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`) VALUES
(1, '默认搜索模板', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--keyboard--] 搜索结果 - 成都舜王科技有限公司</title>\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n<style type=\\\"text/css\\\">\r\n<!--\r\n.r {\r\ndisplay:inline;\r\nfont-weight:normal;\r\nmargin:0;\r\nfont-size:16px;\r\nmargin-top:10px;\r\n}\r\n.a{color:green}\r\n.fl{color:#77c}\r\n-->\r\n</style>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.dtheader--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>现在的位置：<a href=\\\"[!--news.url--]\\\" class=\\\"classlinkclass\\\">首页</a>&nbsp;>&nbsp;<a href=\\\"[!--news.url--]search/\\\" class=\\\"classlinkclass\\\">高级搜索</a>&nbsp;>&nbsp;搜索结果</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><form action=\\\'../../search/index.php\\\' method=\\\"post\\\" name=\\\"search_news\\\" id=\\\"search_news\\\">\r\n							<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"6\\\" cellpadding=\\\"0\\\">\r\n								<input type=\\\"hidden\\\" name=\\\"show\\\" value=\\\"title\\\" />\r\n								<tr>\r\n									<td height=\\\"32\\\">关键字：\r\n										<input name=\\\"keyboard\\\" type=\\\"text\\\" id=\\\"keyboard\\\" value=\\\"[!--keyboard--]\\\" size=\\\"42\\\" />\r\n										<input type=\\\"submit\\\" name=\\\"Submit22\\\" value=\\\"搜索\\\" />\r\n										&nbsp;\r\n										<input type=\\\"button\\\" name=\\\"Submit\\\" value=\\\"高级搜索\\\" onclick=\\\"self.location.href=\\\'../../../search/\\\'\\\" />\r\n										(多个关键字请用&quot;空格&quot;隔开) </td>\r\n								</tr>\r\n							</table>\r\n						</form>\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"6\\\">\r\n							<tr>\r\n								<td>系统搜索到约有<strong>[!--ecms.num--]</strong>项符合<strong>[!--keyboard--]</strong>的查询结果</td>\r\n							</tr>\r\n						</table>\r\n						[!--empirenews.listtemp--]\r\n						<!--list.var1-->\r\n						[!--empirenews.listtemp--]\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"list_page\\\">\r\n							<tr>\r\n								<td>[!--show.page--]</td>\r\n							</tr>\r\n						</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 180, 1, '<h2 class=\\\"r\\\"><span>[!--no.num--].</span> <a class=\\\"l\\\" href=\\\"[!--titleurl--]\\\" target=\\\"_blank\\\">[!--title--]</a></h2>\r\n<table width=\\\"80%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>[!--smalltext--]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><span class=\\\"a\\\">[!--titleurl--] - [!--newstime--]</span> - <a class=\\\"fl\\\" href=\\\"[!--this.classlink--]\\\" target=\\\"_blank\\\">[!--this.classname--]</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 1, 'Y-m-d', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewssp`
--

CREATE TABLE `hswl_enewssp` (
  `spid` int(10) UNSIGNED NOT NULL,
  `spname` varchar(30) NOT NULL DEFAULT '',
  `varname` varchar(30) NOT NULL DEFAULT '',
  `sppic` varchar(255) NOT NULL DEFAULT '',
  `spsay` varchar(255) NOT NULL DEFAULT '',
  `sptype` tinyint(1) NOT NULL DEFAULT '0',
  `cid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `tempid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `sptime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `groupid` text NOT NULL,
  `userclass` text NOT NULL,
  `username` text NOT NULL,
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `cladd` tinyint(1) NOT NULL DEFAULT '0',
  `refile` tinyint(1) NOT NULL DEFAULT '0',
  `spfile` varchar(255) NOT NULL DEFAULT '',
  `spfileline` smallint(6) NOT NULL DEFAULT '0',
  `spfilesub` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsspacestyle`
--

CREATE TABLE `hswl_enewsspacestyle` (
  `styleid` smallint(5) UNSIGNED NOT NULL,
  `stylename` varchar(30) NOT NULL DEFAULT '',
  `stylepic` varchar(255) NOT NULL DEFAULT '',
  `stylesay` varchar(255) NOT NULL DEFAULT '',
  `stylepath` varchar(30) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `membergroup` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsspacestyle`
--

INSERT INTO `hswl_enewsspacestyle` (`styleid`, `stylename`, `stylepic`, `stylesay`, `stylepath`, `isdefault`, `membergroup`) VALUES
(1, '默认个人空间模板', '', '默认个人空间模板', 'default', 1, ',1,2,'),
(2, '默认企业空间模板', '', '默认企业空间模板', 'comdefault', 0, ',3,4,');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsspclass`
--

CREATE TABLE `hswl_enewsspclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` varchar(30) NOT NULL DEFAULT '',
  `classsay` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewssp_1`
--

CREATE TABLE `hswl_enewssp_1` (
  `sid` int(10) UNSIGNED NOT NULL,
  `spid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `bigpic` varchar(200) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `smalltext` varchar(255) NOT NULL DEFAULT '',
  `titlefont` varchar(20) NOT NULL DEFAULT '',
  `newstime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `titlepre` varchar(30) NOT NULL DEFAULT '',
  `titlenext` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewssp_2`
--

CREATE TABLE `hswl_enewssp_2` (
  `sid` int(10) UNSIGNED NOT NULL,
  `spid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `newstime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewssp_3`
--

CREATE TABLE `hswl_enewssp_3` (
  `sid` int(10) UNSIGNED NOT NULL,
  `spid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sptext` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewssp_3_bak`
--

CREATE TABLE `hswl_enewssp_3_bak` (
  `bid` int(10) UNSIGNED NOT NULL,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `spid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sptext` mediumtext NOT NULL,
  `lastuser` varchar(30) NOT NULL DEFAULT '',
  `lasttime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewssql`
--

CREATE TABLE `hswl_enewssql` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `sqlname` varchar(60) NOT NULL DEFAULT '',
  `sqltext` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewstable`
--

CREATE TABLE `hswl_enewstable` (
  `tid` smallint(5) UNSIGNED NOT NULL,
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `tname` varchar(60) NOT NULL DEFAULT '',
  `tsay` text NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `datatbs` text NOT NULL,
  `deftb` varchar(6) NOT NULL DEFAULT '',
  `yhid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `mid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `intb` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewstable`
--

INSERT INTO `hswl_enewstable` (`tid`, `tbname`, `tname`, `tsay`, `isdefault`, `datatbs`, `deftb`, `yhid`, `mid`, `intb`) VALUES
(1, 'news', '新闻系统数据表', '新闻系统数据表', 1, ',1,', '1', 0, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewstags`
--

CREATE TABLE `hswl_enewstags` (
  `tagid` int(10) UNSIGNED NOT NULL,
  `tagname` char(20) NOT NULL DEFAULT '',
  `num` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `cid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `tagtitle` char(60) NOT NULL DEFAULT '',
  `tagkey` char(100) NOT NULL DEFAULT '',
  `tagdes` char(255) NOT NULL DEFAULT '',
  `fclast` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewstagsclass`
--

CREATE TABLE `hswl_enewstagsclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` varchar(60) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewstagsdata`
--

CREATE TABLE `hswl_enewstagsdata` (
  `tid` int(10) UNSIGNED NOT NULL,
  `tagid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `newstime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewstask`
--

CREATE TABLE `hswl_enewstask` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `taskname` varchar(60) NOT NULL DEFAULT '',
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `isopen` tinyint(1) NOT NULL DEFAULT '0',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `lastdo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `doweek` char(1) NOT NULL DEFAULT '0',
  `doday` char(2) NOT NULL DEFAULT '0',
  `dohour` char(2) NOT NULL DEFAULT '0',
  `dominute` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewstempbak`
--

CREATE TABLE `hswl_enewstempbak` (
  `bid` int(10) UNSIGNED NOT NULL,
  `tempid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  `baktime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `temptype` varchar(30) NOT NULL DEFAULT '',
  `gid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `lastuser` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewstempbak`
--

INSERT INTO `hswl_enewstempbak` (`bid`, `tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`, `baktime`, `temptype`, `gid`, `lastuser`) VALUES
(1, 1, 'header', '<!--Header:Start-->\r\n    <script src=\\\"/js/cj_sdw_msw.js\\\"></script>\r\n    <div class=\\\"wrap-header clearfix\\\">\r\n        <h1><a href=\\\"/\\\"><img src=\\\"/images/logo.png\\\" alt=\\\"\\\" /></a></h1>\r\n        <div class=\\\"navbg\\\"></div>\r\n        <div class=\\\"h_box\\\">\r\n            <div class=\\\"nav\\\">\r\n                <ul class=\\\"Navbox clearfix\\\" id=\\\"nav\\\">\r\n                    <li class=\\\"navli\\\"><a href=\\\"/\\\">网站首页</a></li>\r\n                    <li class=\\\"navli\\\"><a href=\\\"#\\\">服务范围</a>\r\n                        <ul class=\\\"liUl clearfix\\\">\r\n                            <li><a href=\\\"#\\\">冷链运输</a></li>\r\n                            <li><a href=\\\"#\\\">配送服务</a></li>\r\n                            <li><a href=\\\"#\\\">仓储服务</a></li>\r\n                        </ul>\r\n                    </li>\r\n                    <li class=\\\"navli\\\"><a href=\\\"#\\\">成功案例</a></li>\r\n                    <li class=\\\"navli\\\"><a href=\\\"#\\\">公司实力</a>\r\n                        <ul class=\\\"liUl clearfix\\\">\r\n                            <li><a href=\\\"#\\\">成功案例</a></li>\r\n                            <li><a href=\\\"#\\\">冷藏设备</a></li>\r\n                            <li><a href=\\\"#\\\">合作伙伴</a></li>\r\n                            <li><a href=\\\"#\\\">荣誉资质</a></li>\r\n                            <li><a href=\\\"#\\\">售后服务</a></li>\r\n                        </ul>\r\n                    </li>\r\n                    <li class=\\\"navli\\\"><a href=\\\"#\\\">新闻中心</a>\r\n                        <ul class=\\\"liUl clearfix\\\">\r\n                            <li><a href=\\\"#\\\">公司新闻</a></li>\r\n                            <li><a href=\\\"#\\\">行业动态</a></li>\r\n                            <li><a href=\\\"#\\\">媒体聚焦</a></li>\r\n                            <li><a href=\\\"#\\\">常见问题</a></li>\r\n                        </ul>\r\n                    </li>\r\n                    \r\n                    <li class=\\\"navli\\\"><a href=\\\"#\\\">关于我们</a>\r\n                        <ul class=\\\"liUl clearfix\\\">\r\n                            <li><a href=\\\"#\\\">公司简介</a></li>\r\n                            <li><a href=\\\"#\\\">企业优势</a></li>\r\n                            <li><a href=\\\"#\\\">组织架构</a></li>\r\n                            <li><a href=\\\"#\\\">公司掠影</a></li>\r\n                            <li><a href=\\\"#\\\">联系我们</a></li>\r\n                        </ul>\r\n                    </li>\r\n                    \r\n                    <li class=\\\"navli last\\\"><a href=\\\"#\\\">联系我们</a></li>\r\n                </ul>\r\n                <span class=\\\"navline\\\"></span>\r\n\r\n            </div>\r\n\r\n            <p class=\\\"h_share\\\">\r\n                <a href=\\\"#\\\" class=\\\"a1\\\"></a>\r\n                <i class=\\\"a2\\\"><span><img src=\\\"/images/20180206135606_51322.jpg\\\" alt=\\\"\\\" /></span></i>\r\n                \r\n            </p>\r\n\r\n            <div class=\\\"searchbox\\\">\r\n                <p class=\\\"searchBtn\\\"><span></span> <em></em></p>\r\n\r\n                <div class=\\\"search\\\">\r\n                    <div class=\\\"hotline\\\"><a href=\\\"#\\\">400-028-1238</a></div>\r\n                    <p class=\\\"searchInp\\\"><a href=\\\"#\\\"></a></p>\r\n                </div>\r\n            </div>\r\n\r\n        </div>\r\n    </div>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/header.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\">\r\n        $(\\\".wrap-header .navli\\\").mouseenter(function () {\r\n            if ($(this).find(\\\".liUl\\\").length) {\r\n                $(\\\".navbg\\\").show();\r\n            }\r\n        })\r\n        $(\\\".wrap-header .navli\\\").mouseleave(function () {\r\n            $(\\\".navbg\\\").hide();\r\n        })\r\n    </script>\r\n    <!--Header:End-->', 1, 0, '页面头部', 0, 0, '', 0, 0, 0, 1592300245, 'tempvar', 1, 'admin'),
(2, 2, 'footer', '<!--wrap-footer-->\r\n    <div class=\\\"wrap-footer\\\">\r\n        <div class=\\\"f_top clearfix\\\">\r\n            <div class=\\\"container\\\">\r\n                <div id=\\\"ucFooter_plPartner\\\">\r\n                    <ul class=\\\"f_ul f_ul1\\\">\r\n                        <li><a href=\\\"javascript:;\\\"><i></i>热门关键词</a></li>\r\n                        <li><a href=\\\"#\\\">冷链运输</a></li>\r\n                        <li><a href=\\\"#\\\">配送服务</a></li>\r\n                        <li><a href=\\\"#\\\">仓储服务</a></li>\r\n                        <li><a href=\\\"#\\\">冷冻整车</a></li>\r\n                    </ul>\r\n                </div>\r\n\r\n                <ul class=\\\"f_ul f_ul2\\\">\r\n                    <li><a href=\\\"#\\\"><i></i>关于我们</a></li>\r\n                    <li><a href=\\\"#\\\">公司简介</a></li>\r\n                    <li><a href=\\\"#\\\">企业优势</a></li>\r\n                    <li><a href=\\\"#\\\">公司掠影</a></li>\r\n                    <li><a href=\\\"#\\\">联系我们</a></li>\r\n                </ul>\r\n\r\n                <ul class=\\\"f_ul f_ul3\\\">\r\n                    <li><a href=\\\"#\\\"><i></i>服务范围</a></li>\r\n                    <li><a href=\\\"#\\\">冷链运输</a></li>\r\n                    <li><a href=\\\"#\\\">配送服务</a></li>\r\n                    <li><a href=\\\"#\\\">仓储服务</a></li>\r\n                </ul>\r\n\r\n                <dl class=\\\"f_erwm\\\">\r\n                    <dt><img src=\\\"/images/20180206135606_51322.jpg\\\" alt=\\\"二维码\\\" /></dt>\r\n                    <dd>微信二维码</dd>\r\n                </dl>\r\n\r\n                <ul class=\\\"f_ul4\\\">\r\n                    <li>24小时专线：13981791475</li>\r\n                    <li>咨询邮箱：qiaoj@hslcwl.cn</li>\r\n                    <li>传真：028-61297652</li>\r\n                    <li>公司地址：四川省成都市成华区龙潭工业园钢铁领域B座518室成都市华森物流有限公司</li>\r\n                </ul>\r\n\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\\\"f_bot\\\">\r\n            <div class=\\\"container clearfix\\\">\r\n                <p class=\\\"fl\\\">版权所有@2020. 成都市华森物流有限公司</p>\r\n                <p class=\\\"fr\\\">技术支持：<a href=\\\"https://www.shunking.cn/\\\" target=\\\"_blank\\\">舜王科技</a> &nbsp; &nbsp; &nbsp; 备案号：<a href=\\\"http://www.beian.miit.gov.cn/\\\" target=\\\"_blank\\\">蜀ICP备13019420号</a></p>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\\\"float\\\">\r\n        <div class=\\\"float_show float_show0\\\">\r\n            <a style=\\\"cursor:pointer;\\\" title=\\\"回到顶部\\\"></a>\r\n        </div>\r\n        <div class=\\\"float_show float_show1\\\" style=\\\"right: -86px;\\\">\r\n            <a href=\\\"#\\\"><img width=\\\"24\\\" height=\\\"24\\\" rel=\\\"nofollow\\\" alt=\\\"客服咨询\\\" src=\\\"/images/float_qqicon2.png\\\">客服咨询</a>\r\n        </div>\r\n        <div class=\\\"float_show float_show2\\\" style=\\\"right: -146px;\\\">\r\n            <a href=\\\"tel:13981791475\\\"><img width=\\\"24\\\" height=\\\"24\\\" alt=\\\"电话\\\" src=\\\"/images/float_qqicon3.png\\\">13981791475</a>\r\n        </div>\r\n\r\n        <div class=\\\"float_show float_show3\\\" style=\\\"right: -202px;\\\">\r\n            <a href=\\\"mailto:qiaoj@hslcwl.cn\\\"><img width=\\\"24\\\" height=\\\"24\\\" alt=\\\"邮箱\\\" src=\\\"/images/float_qqicon5.png\\\">qiaoj@hslcwl.cn</a>\r\n        </div>\r\n\r\n        <div class=\\\"float_show float_show4\\\">\r\n            <a href=\\\"javascript:;\\\"><img width=\\\"24\\\" height=\\\"24\\\" alt=\\\"二维码\\\" src=\\\"/images/float_qqicon4.png\\\"></a>\r\n            <div class=\\\"float_wx\\\" style=\\\"display: none;\\\"><img width=\\\"144\\\" height=\\\"144\\\" alt=\\\"扫描二维码\\\" src=\\\"/images/20180206135606_51322.jpg\\\"></div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\\\"zxly\\\">\r\n        <div class=\\\"container\\\">\r\n            <span class=\\\"close_zxly\\\"></span>\r\n            <ul class=\\\"clearfix\\\" id=\\\"LYFrom\\\">\r\n                <form method=\\\"post\\\" enctype=\\\"multipart/form-data\\\" action=\\\"/e/enews/index.php\\\">\r\n                    <li><input type=\\\"text\\\" placeholder=\\\"联系人：\\\" id=\\\"LEAVEWORD_txtContact\\\" class=\\\"fromtext\\\" /></li>\r\n                    <li><input type=\\\"text\\\" placeholder=\\\"电话：\\\" id=\\\"LEAVEWORD_txtTel\\\" class=\\\"fromtext\\\" /></li>\r\n                    <li><input type=\\\"text\\\" placeholder=\\\"邮箱：\\\" id=\\\"LEAVEWORD_txtEmail\\\" class=\\\"fromtext\\\" /></li>\r\n                    <li class=\\\"fr\\\"><input type=\\\"submit\\\" name=\\\"submit\\\" value=\\\"立即获取方案\\\"></li>\r\n                </form>\r\n            </ul>\r\n        </div>\r\n    </div>\r\n\r\n    <script type=\\\"text/javascript\\\">\r\n        initCommonHeader();\r\n        if (MARK == \\\"\\\") var MARK = \\\"index\\\";\r\n        initCommonHeaderKeywords(MARK);\r\n    \r\n        $(function () {\r\n            $(\\\'.float_show0\\\').hide();\r\n            action();\r\n        })\r\n        function action() {\r\n            $(window).scroll(function () {\r\n                var st = $(document).scrollTop();\r\n                if (st > 500) {\r\n                    $(\\\'.float_show0\\\').show();\r\n                } else {\r\n                    $(\\\'.float_show0\\\').hide();\r\n                }\r\n            })\r\n\r\n            $(\\\'.float_show0 a\\\').click(function () {\r\n                $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n            });\r\n        }\r\n\r\n        $(\\\'.float_show1\\\').hover(function () {\r\n            $(this).stop().animate({ \\\'right\\\': \\\'0\\\' }, 450)\r\n\r\n        }, function () {\r\n\r\n            $(this).stop().animate({ \\\'right\\\': \\\'-86px\\\' }, 450)\r\n\r\n        })\r\n\r\n        $(\\\'.float_show2\\\').hover(function () {\r\n            $(this).stop().animate({ \\\'right\\\': \\\'0\\\' }, 450)\r\n\r\n        }, function () {\r\n\r\n            $(this).stop().animate({ \\\'right\\\': \\\'-146px\\\' }, 450)\r\n\r\n        })\r\n\r\n\r\n        $(\\\'.float_show3\\\').hover(function () {\r\n            $(this).stop().animate({ \\\'right\\\': \\\'0\\\' }, 450)\r\n\r\n        }, function () {\r\n\r\n            $(this).stop().animate({ \\\'right\\\': \\\'-202px\\\' }, 450)\r\n\r\n        })\r\n\r\n        $(\\\'.float_show4\\\').hover(function () {\r\n\r\n            $(this).stop().find(\\\'.float_wx\\\').fadeIn(350)\r\n\r\n        }, function () {\r\n\r\n            $(this).stop().find(\\\'.float_wx\\\').fadeOut(350)\r\n\r\n        })\r\n\r\n        //悬浮留言\r\n        $(\\\".wrap-footer\\\").css(\\\"padding-bottom\\\", 105);\r\n        $(\\\".close_zxly\\\").click(function () {\r\n            $(\\\".zxly\\\").hide();\r\n            $(\\\".wrap-footer\\\").css(\\\"padding-bottom\\\", 0);\r\n        })      \r\n    </script>', 0, 0, '页面尾部', 0, 0, '', 0, 0, 0, 1592300325, 'tempvar', 1, 'admin'),
(3, 1, '', '<!DOCTYPE html>\r\n<html>\r\n\r\n<head>\r\n    <meta name=\\\"renderer\\\" content=\\\"webkit\\\" />\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>华森首页</title>\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"IE=edge,chrome=1\\\" />\r\n    <link href=\\\"/css/Common.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Index.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <script src=\\\"/js/1.9.1jquery.min.js\\\" type=\\\"text/javascript\\\"></script>\r\n    <script src=\\\"/js/Index.js\\\" type=\\\"text/javascript\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/countUp.min.js\\\"></script>\r\n</head>\r\n\r\n<body>\r\n    <form name=\\\"form1\\\" method=\\\"post\\\" action=\\\"\\\" id=\\\"form1\\\">\r\n        [!--temp.header--]\r\n\r\n        <!--banner -->\r\n        <div class=\\\"banner\\\">\r\n            <div id=\\\"flashs\\\">\r\n                <div class=\\\"bd\\\">\r\n                    <div>\r\n\r\n                        <div alt=\\\"banner\\\" onclick=\\\"window.open(\\\'#\\\')\\\" class=\\\"bgitem\\\" id=\\\"flashbg0\\\" style=\\\"background: url(\\\'/images/banner.jpg\\\') no-repeat center top; height: 700px; width: 100%; cursor: pointer; overflow:hidden; position:relative;\\\">\r\n                        </div>\r\n\r\n                        <div alt=\\\"banner\\\" onclick=\\\"window.open(\\\'#\\\')\\\" class=\\\"bgitem\\\" id=\\\"flashbg1\\\" style=\\\"background: url(\\\'/images/banner.jpg\\\') no-repeat center top; height: 700px; width: 100%; cursor: pointer; overflow:hidden; position:relative;\\\">\r\n                        </div>\r\n\r\n                        <div alt=\\\"banner\\\" onclick=\\\"window.open(\\\'#\\\')\\\" class=\\\"bgitem\\\" id=\\\"flashbg2\\\" style=\\\"background: url(\\\'/images/banner.jpg\\\') no-repeat center top; height: 700px; width: 100%; cursor: pointer; overflow:hidden; position:relative;\\\">\r\n                        </div>\r\n\r\n                    </div>\r\n                </div>\r\n                <div class=\\\"btn hd\\\">\r\n                    <span></span>\r\n                    <span></span>\r\n                    <span></span>\r\n                </div>\r\n                <a href=\\\"javascript:;\\\" class=\\\"bot bot1 prev\\\"></a>\r\n                <a href=\\\"javascript:;\\\" class=\\\"bot bot2 next\\\"></a>\r\n            </div>\r\n        </div>\r\n\r\n        <!--业务范围-->\r\n        <div class=\\\"ywfw\\\">\r\n            <div class=\\\"container\\\">\r\n                <h2 class=\\\"h2_title\\\"><a href=\\\"http://www.dglifeng.com/product/\\\"\r\n                       >服务范围</a><i>华森物流--冷冻整车，零担业务</i><em></em></h2>\r\n\r\n                <div class=\\\"ywfw_con clearfix\\\">\r\n                    <dl class=\\\'dl1\\\'>\r\n                        <dt sid=\\\'0001,0045\\\'><img src=\\\'/images/fuwu1.jpg\\\' alt=\\\'钢构件制造安装\\\' />\r\n                            <div class=\\\'conbox\\\'>\r\n                                <h3><a href=\\\'/ggjzz.htm\\\'><i></i>冷链运输</a></h3>\r\n                                <h5><a href=\\\"#\\\">查看更多 +</a></h5>\r\n                            </div>\r\n                        </dt>\r\n                        <dd class=\\\'dd1\\\'><a href=\\\'/Products/wuliucangchufenjianz.html\\\'>冷链运输</a></dd>\r\n                        <dd class=\\\'dd2\\\'><a href=\\\'/Products/wuliucangchufenjianz.html\\\'>保持冷冻冷藏类食品质量，减少物品损耗</a></dd>\r\n                    </dl>\r\n                    <dl class=\\\'dl2\\\'>\r\n                        <dt sid=\\\'0001,0046\\\'><img src=\\\'/images/fuwu2.jpg\\\' alt=\\\'围护系统\\\' />\r\n                            <div class=\\\'conbox\\\'>\r\n                                <h3><a href=\\\'#\\\'><i></i>配送服务</a></h3>\r\n                                <h5><a href=\\\"#\\\">查看更多 +</a></h5>\r\n                                \r\n                            </div>\r\n                        </dt>\r\n                        <dd class=\\\'dd1\\\'><a href=\\\'/qtwhpj.htm\\\'>配送服务</a></dd>\r\n                        <dd class=\\\'dd2\\\'><a href=\\\'/qtwhpj.htm\\\'>专线运输直达，驾驶员团队优秀</a></dd>\r\n                    </dl>\r\n                    <dl class=\\\'dl3\\\'>\r\n                        <dt sid=\\\'0001,0048\\\'><img src=\\\'/images/fuwu3.jpg\\\' alt=\\\'项目出口\\\' />\r\n                            <div class=\\\'conbox\\\'>\r\n                                <h3><a href=\\\'/xmck.htm\\\'>仓储服务</a></h3>\r\n                                <h5><a href=\\\"#\\\">查看更多 +</a></h5>\r\n                            </div>\r\n                        </dt>\r\n                        <dd class=\\\'dd1\\\'><a href=\\\'/qtckcp.htm\\\'>仓储服务</a></dd>\r\n                        <dd class=\\\'dd2\\\'><a href=\\\'/qtckcp.htm\\\'>与招商仓库长期合作，交通便利</a></dd>\r\n                    </dl>\r\n\r\n                </div>\r\n\r\n            </div>\r\n        </div>\r\n\r\n        <!--关于我们-->\r\n        <div class=\\\"about\\\">\r\n            <div class=\\\"container\\\">\r\n                <h2 class=\\\"h2_title\\\"><a href=\\\"http://www.dglifeng.com/help/\\\">关于我们</a><i>华森物流--冷冻整车，零担业务</i><em></em></h2>\r\n\r\n                <dl class=\\\"abo_top\\\">\r\n                    <dt>\r\n                        <img src=\\\"/images/aboutimg.jpg\\\" alt=\\\"公司介绍\\\" class=\\\"videoImg\\\" /></dt>\r\n                    <dd>\r\n                        <a href=\\\"/help/\\\" title=\\\"公司介绍\\\"></a>\r\n                    </dd>\r\n                </dl>\r\n\r\n                <div class=\\\"abo_con clearfix\\\">\r\n                    <dl>\r\n                        <dt><img src=\\\"/images/aboicon03.png\\\" alt=\\\"始于2012年\\\" /></dt>\r\n                        <dd><i>始于</i><span><b id=\\\"num3\\\">2012</b>年</span></dd>\r\n                    </dl>\r\n                    <dl>\r\n                        <dt><img src=\\\"/images/aboicon01.png\\\" alt=\\\"专业团队100多人\\\" /></dt>\r\n                        <dd><i>专业团队</i><span><b id=\\\"num1\\\">100</b>多人</span></dd>\r\n                    </dl>\r\n\r\n                    <dl>\r\n                        <dt><img src=\\\"/images/aboicon02.png\\\" alt=\\\"占地面积200万㎡\\\" /></dt>\r\n                        <dd><i>占地面积</i><span><b id=\\\"num2\\\">100</b>万㎡</span></dd>\r\n                    </dl>\r\n\r\n                    <dl>\r\n                        <dt><img src=\\\"/images/aboicon04.png\\\" alt=\\\"成功案例1000项\\\" /></dt>\r\n                        <dd><i>成功案例</i><span><b id=\\\"num4\\\">1000</b>项</span></dd>\r\n                    </dl>\r\n\r\n                </div>\r\n\r\n            </div>\r\n        </div>\r\n\r\n        <!-- <div class=\\\"videobf\\\">\r\n            <div class=\\\"video_con\\\"><iframe height=500 width=1000 src=\\\'http://player.youku.com/embed/XMzM1MTM4NzExMg==\\\'\r\n                    frameborder=0 \\\'allowfullscreen\\\'></iframe> <span class=\\\"closeVideo\\\"></span></div>\r\n        </div> -->\r\n\r\n        <script>\r\n            var options = {\r\n                useEasing: true,\r\n                useGrouping: true,\r\n                separator: \\\'\\\',\r\n                decimal: \\\'.\\\',\r\n                prefix: \\\'\\\',\r\n                suffix: \\\'\\\'\r\n            };\r\n            var demo1 = new CountUp(\\\"num1\\\", 0, 100, 0, 2, options);\r\n            var demo2 = new CountUp(\\\"num2\\\", 0, 100, 0, 2, options);\r\n            var demo3 = new CountUp(\\\"num3\\\", 0, 2012, 0, 2, options);\r\n            var demo4 = new CountUp(\\\"num4\\\", 0, 1000, 0, 2, options);\r\n\r\n            $(window).scroll(function () {\r\n                if ($(window).scrollTop() >= 1600) {\r\n\r\n                    demo1.start();\r\n                    demo2.start();\r\n                    demo3.start();\r\n                    demo4.start();\r\n                }\r\n            })\r\n\r\n            $(\\\".videoImg\\\").click(function () {\r\n                $(\\\".videobf\\\").slideDown();\r\n                $(\\\".videobf .video_con\\\").addClass(\\\"cur\\\");\r\n            })\r\n\r\n            $(\\\".closeVideo\\\").click(function () {\r\n                $(\\\".videobf\\\").slideUp();\r\n                $(\\\".videobf .video_con\\\").removeClass(\\\"cur\\\");\r\n            })\r\n        </script>\r\n\r\n\r\n\r\n        <!--经典案例-->\r\n        <div class=\\\"jdal\\\">\r\n\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"jdal_top\\\">\r\n                    <dl>\r\n                        <dt><a href=\\\"http://www.dglifeng.com/jdal.htm\\\"><i>Successful Cases</i><span>成功案例</span><em></em></a></dt>\r\n                        <dd>\r\n                            <em></em><a href=\\\"http://www.dglifeng.com/jdal.htm\\\">查看更多</a></dd>\r\n                    </dl>\r\n                    <ul class=\\\"jdal_type clearfix\\\">\r\n\r\n                        <li class=\\\'cur\\\'><a href=\\\"/Helps/biyadiqiche1.html\\\">\r\n                                <span>冷链运输</span><i>Cold chain</i></a></li>\r\n\r\n                        <li><a href=\\\"/Helps/xugongbaxi.html\\\">\r\n                                <span>配送服务</span><i>Distribution</i></a></li>\r\n\r\n                        <li><a href=\\\"/Helps/aomenweinisirendujia.html\\\">\r\n                                <span>仓储服务</span><i>Storage</i></a></li>\r\n\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n            <div class=\\\"jdal_bot\\\">\r\n\r\n                <div class=\\\"conbox cur\\\">\r\n                    <img src=\\\"/images/20180104152049_60002.jpg\\\" alt=\\\"\\\" />\r\n                    <div class=\\\"container\\\">\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\">冷链运输</a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">随着人们生活水平的不断提高，对冷冻类食品的需求越来越多。但是冷冻食品不同于其他产品，它需要具有专业的冷链运输体系，才能确保冷冻冷藏类食品在规定的温度下保持其质量……</a>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\"><a href=\\\"#\\\">查看更多</a></dd>\r\n                        </dl>\r\n                    </div>\r\n                </div>\r\n\r\n                <div class=\\\"conbox \\\">\r\n                    <img src=\\\"/images/20180104152049_60002.jpg\\\" alt=\\\"\\\" />\r\n                    <div class=\\\"container\\\">\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\">配送服务</a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">随着人们生活水平的不断提高，对冷冻类食品的需求越来越多。但是冷冻食品不同于其他产品，它需要具有专业的冷链运输体系，才能确保冷冻冷藏类食品在规定的温度下保持其质量……</a>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\"><a href=\\\"/Helps/biyadiqiche1.html\\\">查看更多</a></dd>\r\n                        </dl>\r\n                    </div>\r\n                </div>\r\n\r\n                <div class=\\\"conbox \\\">\r\n                    <img src=\\\"/images/20180104152049_60002.jpg\\\" alt=\\\"\\\" />\r\n                    <div class=\\\"container\\\">\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\">仓储服务</a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">随着人们生活水平的不断提高，对冷冻类食品的需求越来越多。但是冷冻食品不同于其他产品，它需要具有专业的冷链运输体系，才能确保冷冻冷藏类食品在规定的温度下保持其质量……</a>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\"><a href=\\\"#\\\">查看更多</a></dd>\r\n                        </dl>\r\n                    </div>\r\n                </div>\r\n\r\n            </div>\r\n\r\n        </div>\r\n        <script type=\\\"text/javascript\\\">\r\n            $(\\\".jdal .jdal_top .jdal_type li\\\").mouseenter(function () {\r\n                $(this).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n                $(\\\".jdal .jdal_bot .conbox\\\").eq($(this).index()).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n\r\n            })\r\n        </script>\r\n\r\n\r\n        <div class=\\\"advantage\\\">\r\n\r\n            <h2 class=\\\"h2_title\\\"><span>为什么选择我们</span><i>专业从事冷藏、普通货物业务</i><em></em></h2>\r\n\r\n            <div class=\\\"adv_con\\\">\r\n                <span class=\\\"adv_btnl btn\\\" id=\\\"adv_btnl\\\"><i></i></span><span class=\\\"adv_btnr btn\\\" id=\\\"adv_btnr\\\"><i></i></span>\r\n                <div>\r\n\r\n                    <div class=\\\"conbox clearfix cur\\\">\r\n                        <div class=\\\"conleft fl\\\">\r\n                            <img src=\\\"/images/11.jpg\\\" alt=\\\"软件实力\\\" />\r\n                        </div>\r\n                        <div class=\\\"conright fr\\\">\r\n                            <h3><span>专业团队 物流平台 丰富经验</span><i>专业从事冷藏、普通货物业务</i></h3>\r\n                            <p class=\\\"p1\\\">成都市华森物流有限公司创立于2012年，专注于各类食品、乳品、水产、果蔬、酒业等产品的干线运输及区域配送、物流业务咨询与仓储服务。</p>\r\n                            <p class=\\\"p1\\\">公司在软件上，拥有一支高素质、专业化、年轻化的物流管理团队和资深专家顾问群，有现代化的物流信息平台，汇聚了丰富的物流服务经验和先进的管理服务理念。</p>\r\n                            \r\n                        </div>\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox clearfix \\\">\r\n                        <div class=\\\"conleft fl\\\">\r\n                            <img src=\\\"/images/22.jpg\\\" alt=\\\"硬件实力\\\" />\r\n                        </div>\r\n                        <div class=\\\"conright fr\\\">\r\n                            <h3><span>车型齐全 GPS监控 制冷性能好</span><i>满足各种运输、用车需求</i></h3>\r\n                            <p class=\\\"p1\\\">公司在硬件上，自有车型齐全，3-30吨的冷藏车、普通货运车多部，以及其他车型的联营车。</p>\r\n                            <p class=\\\"p1\\\">配置有GPS卫星定位系统，全程监控车辆的运营状态，安全性强、可靠性高；<br>其中冷藏车的制冷性能稳定，最低可达到-28℃。</p>\r\n                            <p class=\\\"p1\\\">能够满足各类客户的运输质量要求和客户用车需要。</p>\r\n                            \r\n                        </div>\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox clearfix \\\">\r\n                        <div class=\\\"conleft fl\\\">\r\n                            <img src=\\\"/images/33.jpg\\\" alt=\\\"荣誉资质\\\" />\r\n                        </div>\r\n                        <div class=\\\"conright fr\\\">\r\n                            <h3><span>专业团队 物流平台 丰富经验</span><i>专业从事冷藏、普通货物业务</i></h3>\r\n                            <p class=\\\"p1\\\">成都市华森物流有限公司创立于2012年，专注于各类食品、乳品、水产、果蔬、酒业等产品的干线运输及区域配送、物流业务咨询与仓储服务。</p>\r\n                            <p class=\\\"p1\\\">公司在软件上，拥有一支高素质、专业化、年轻化的物流管理团队和资深专家顾问群，有现代化的物流信息平台，汇聚了丰富的物流服务经验和先进的管理服务理念。</p>\r\n                            \r\n                        </div>\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox clearfix \\\">\r\n                        <div class=\\\"conleft fl\\\">\r\n                            <img src=\\\"/images/44.jpg\\\" alt=\\\"无忧服务\\\" />\r\n                        </div>\r\n                        <div class=\\\"conright fr\\\">\r\n                            <h3><span>车型齐全 GPS监控 制冷性能好</span><i>满足各种运输、用车需求</i></h3>\r\n                            <p class=\\\"p1\\\">公司在硬件上，自有车型齐全，3-30吨的冷藏车、普通货运车多部，以及其他车型的联营车。</p>\r\n                            <p class=\\\"p1\\\">配置有GPS卫星定位系统，全程监控车辆的运营状态，安全性强、可靠性高；<br>其中冷藏车的制冷性能稳定，最低可达到-28℃。</p>\r\n                            <p class=\\\"p1\\\">能够满足各类客户的运输质量要求和客户用车需要。</p>\r\n                            \r\n                        </div>\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n            <div class=\\\"container\\\">\r\n                <ul class=\\\"adv_type clearfix\\\">\r\n\r\n                    <li class=\\\"li1 cur\\\">\r\n                        <p><span>软件实力</span><i>Software</i><em></em></p>\r\n                    </li>\r\n\r\n                    <li class=\\\"li2 \\\">\r\n                        <p><span>硬件实力</span><i>Hardware</i><em></em></p>\r\n                    </li>\r\n\r\n                    <li class=\\\"li3 \\\">\r\n                        <p><span>荣誉资质</span><i>Honours</i><em></em></p>\r\n                    </li>\r\n\r\n                    <li class=\\\"li4 \\\">\r\n                        <p><span>无忧服务</span><i>service</i><em></em></p>\r\n                    </li>\r\n\r\n                </ul>\r\n            </div>\r\n\r\n        </div>\r\n        <script type=\\\"text/javascript\\\">\r\n            var Owid1 = $(\\\".advantage .conbox\\\").width() * 0.5;\r\n            var Onum = 0\r\n\r\n            $(\\\".advantage .conbox .conleft li\\\").width(Owid1);\r\n            $(\\\".advantage .conbox .conright li\\\").width(Owid1);\r\n            $(\\\".advantage .conbox .conright\\\").height($(\\\".advantage .conbox\\\").height())\r\n            $(\\\".advantage .conbox .conright li\\\").height($(\\\".advantage .conbox\\\").height())\r\n            $(\\\"#adv_btnr\\\").click(function () {\r\n                Onum++;\r\n                if (Onum > 3) {\r\n                    Onum = 0;\r\n                }\r\n                $(\\\".advantage .adv_type li\\\").eq(Onum).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n                $(\\\".advantage .adv_con .conbox\\\").eq(Onum).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\")\r\n            })\r\n\r\n            $(\\\"#adv_btnl\\\").click(function () {\r\n                Onum--;\r\n                if (Onum < 0) {\r\n                    Onum = 3;\r\n                }\r\n                $(\\\".advantage .adv_type li\\\").eq(Onum).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n                $(\\\".advantage .adv_con .conbox\\\").eq(Onum).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n            })\r\n\r\n            $(\\\".advantage .adv_type li\\\").mouseenter(function () {\r\n                $(this).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n                Onum = $(this).index();\r\n                $(\\\".advantage .adv_con .conbox\\\").eq(Onum).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\")\r\n            })\r\n\r\n            $(\\\'.btn\\\').bind(\\\"selectstart\\\", function () { return false; });\r\n        </script>\r\n\r\n\r\n        <div class=\\\"fwkh\\\">\r\n            <div class=\\\"container\\\">\r\n                <h2 class=\\\"h2_title\\\"><a href=\\\"http://www.dglifeng.com/hzhb.htm\\\"\r\n                       >合作伙伴</a><i>已为众多企业提供物流支持</i><em></em></h2>\r\n\r\n                <div class=\\\"fwkh_con clearfix\\\">\r\n\r\n                    <ul>\r\n\r\n                        <li><a href=\\\"#\\\" title=\\\"\\\"><img src=\\\"/images/p1.jpg\\\" alt=\\\"\\\" /></a></li>\r\n                        <li><a href=\\\"#\\\" title=\\\"\\\"><img src=\\\"/images/p2.jpg\\\" alt=\\\"\\\" /></a></li>\r\n                        <li><a href=\\\"#\\\" title=\\\"\\\"><img src=\\\"/images/p3.jpg\\\" alt=\\\"\\\" /></a></li>\r\n                        <li><a href=\\\"#\\\" title=\\\"\\\"><img src=\\\"/images/p4.jpg\\\" alt=\\\"\\\" /></a></li>\r\n                        <li><a href=\\\"#\\\" title=\\\"\\\"><img src=\\\"/images/p5.jpg\\\" alt=\\\"\\\" /></a></li>\r\n                        <li><a href=\\\"#\\\" title=\\\"\\\"><img src=\\\"/images/p6.jpg\\\" alt=\\\"\\\" /></a></li>\r\n                        <li><a href=\\\"#\\\" title=\\\"\\\"><img src=\\\"/images/p7.jpg\\\" alt=\\\"\\\" /></a></li>\r\n                        <li><a href=\\\"#\\\" title=\\\"\\\"><img src=\\\"/images/p8.jpg\\\" alt=\\\"\\\" /></a></li>\r\n                        <li><a href=\\\"#\\\" title=\\\"\\\"><img src=\\\"/images/p9.jpg\\\" alt=\\\"\\\" /></a></li>\r\n                        <li><a href=\\\"#\\\" title=\\\"\\\"><img src=\\\"/images/p10.jpg\\\" alt=\\\"\\\" /></a></li>\r\n                       \r\n                    </ul>\r\n\r\n\r\n                </div>\r\n\r\n            </div>\r\n        </div>\r\n\r\n\r\n        <!--新闻-->\r\n        <div class=\\\"news\\\">\r\n            <div class=\\\"container\\\">\r\n                <h2 class=\\\"h2_title\\\"><i>NEWS CENTER</i><a href=\\\"http://www.dglifeng.com/news/\\\"\r\n                       >新闻中心</a><em></em></h2>\r\n\r\n                <ul class=\\\"news_type clearfix\\\">\r\n\r\n                    <li class=\\\"cur\\\"><a href=\\\"#\\\">公司新闻</a></li>\r\n                    <li><a href=\\\"#\\\">行业动态</a></li>\r\n                    <li><a href=\\\"#\\\">媒体聚焦</a></li>\r\n                    <li><a href=\\\"#\\\">常见问题</a></li>\r\n\r\n                </ul>\r\n                <div class=\\\"news_con clearfix\\\">\r\n\r\n                    <div class=\\\"conbox cur\\\">\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news1.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">华森物流召开安全消防培训</a>\r\n                                <span>2020-02-02</span>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防 ...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news2.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">华森物流2019年年终聚餐</a>\r\n                                <span>2020-02-02</span></dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    为喜迎新年的到来，答谢公司全体员工2019年来的辛勤工作与不懈努力，公司于2019年12月30 日在举办了团年聚餐活动。...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news3.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">2017年我国冷链物流行业机遇与挑战</a>\r\n                                <span>2020-02-02</span></dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    机遇 1实体+电商+冷链实现共赢 李克强总理在7月20日的国务院常务会议上说：要推动互联网、大数据、云计算等信息技术 ...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox \\\">\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news1.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">华森物流召开安全消防培训</a>\r\n                                <span>2020-02-02</span>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防 ...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news2.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">华森物流2019年年终聚餐</a>\r\n                                <span>2020-02-02</span></dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    为喜迎新年的到来，答谢公司全体员工2019年来的辛勤工作与不懈努力，公司于2019年12月30 日在举办了团年聚餐活动。...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news3.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">2017年我国冷链物流行业机遇与挑战</a>\r\n                                <span>2020-02-02</span></dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    机遇 1实体+电商+冷链实现共赢 李克强总理在7月20日的国务院常务会议上说：要推动互联网、大数据、云计算等信息技术 ...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox \\\">\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news1.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">华森物流召开安全消防培训</a>\r\n                                <span>2020-02-02</span>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防 ...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news2.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">华森物流2019年年终聚餐</a>\r\n                                <span>2020-02-02</span></dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    为喜迎新年的到来，答谢公司全体员工2019年来的辛勤工作与不懈努力，公司于2019年12月30 日在举办了团年聚餐活动。...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news3.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">2017年我国冷链物流行业机遇与挑战</a>\r\n                                <span>2020-02-02</span></dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    机遇 1实体+电商+冷链实现共赢 李克强总理在7月20日的国务院常务会议上说：要推动互联网、大数据、云计算等信息技术 ...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox \\\">\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news1.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">华森物流召开安全消防培训</a>\r\n                                <span>2020-02-02</span>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防 ...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news2.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">华森物流2019年年终聚餐</a>\r\n                                <span>2020-02-02</span></dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    为喜迎新年的到来，答谢公司全体员工2019年来的辛勤工作与不懈努力，公司于2019年12月30 日在举办了团年聚餐活动。...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news3.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">2017年我国冷链物流行业机遇与挑战</a>\r\n                                <span>2020-02-02</span></dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    机遇 1实体+电商+冷链实现共赢 李克强总理在7月20日的国务院常务会议上说：要推动互联网、大数据、云计算等信息技术 ...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                    </div>\r\n\r\n                </div>\r\n\r\n            </div>\r\n        </div>\r\n\r\n        <script type=\\\"text/javascript\\\">\r\n            $(\\\".news .news_type li\\\").mouseenter(function () {\r\n                $(this).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n                $(\\\".news .news_con .conbox\\\").eq($(this).index()).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n            })\r\n        </script>\r\n\r\n        [!--temp.footer--]\r\n\r\n    </form>\r\n</body>\r\n</html>', 0, 0, '', 0, 0, '', 0, 0, 0, 1592300726, 'pubindextemp', 1, 'admin'),
(4, 1, '子栏目导航标签模板', '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 0, 0, '<li><a href=\\\"[!--classurl--]\\\">[!--classname--]</a></li>', 1, 1, 'Y-m-d', 0, 0, 0, 1592301271, 'bqtemp', 1, 'admin'),
(5, 1, '新闻列表模板', '<!DOCTYPE html\r\n    PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head id=\\\"Head1\\\">\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link href=\\\"/css/Common.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    <!--Content:Start-->\r\n    <div class=\\\"linkUsBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--分类列表-->\r\n        <div class=\\\"newsListMenu\\\">\r\n            <ul class=\\\'clearfix\\\'>\r\n                [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n            </ul>\r\n        </div>\r\n        <script type=\\\"text/javascript\\\">\r\n            $(\\\'.aboutMenu li a\\\').each(function() {\r\n                $this = $(this);\r\n                if ($this[0].href == String(window.location)) {\r\n                    $this.parents(\\\'li\\\').addClass(\\\'cur\\\');\r\n                }\r\n            });\r\n        </script>\r\n        \r\n        <!-- newsListCon -->\r\n        <div class=\\\"newsListCon\\\">\r\n            <div class=\\\"mainCon\\\">\r\n                <div class=\\\"conBox\\\">\r\n                    <div class=\\\"con\\\">\r\n                        [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]\r\n                        \r\n                    </div>\r\n                    <div class=\\\"clear\\\"></div>\r\n                    \r\n                    <div class=\\\"pageBox\\\">[!--show.listpage--]</div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--Content:End-->\r\n    \r\n    [!--temp.footer--]\r\n</body>\r\n</html>', 280, 0, '<dl class=\\\"clearfix\\\">\r\n                            <dt><a href=\\\"[!--titleurl--]\\\"><img src=\\\"[!--titlepic--]\\\" alt=\\\"[!--title--]\\\" /></a></dt>\r\n                            <dd>\r\n                                <h3><a href=\\\"[!--titleurl--]\\\">[!--title--]</a></h3>\r\n                                <p><a href=\\\"[!--titleurl--]\\\">\r\n                                    [!--smalltext--]……\r\n                                </a></p>\r\n                                <span class=\\\"rq\\\">[!--newstime--]</span>\r\n                                <a href=\\\"[!--titleurl--]\\\" class=\\\"more\\\"></a>\r\n                            </dd>\r\n                        </dl>', 1, 1, 'Y-m-d', 0, 0, 0, 1592302001, 'listtemp', 1, 'admin');
INSERT INTO `hswl_enewstempbak` (`bid`, `tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`, `baktime`, `temptype`, `gid`, `lastuser`) VALUES
(6, 2, '通用列表模板', '<!DOCTYPE html\r\n    PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head id=\\\"Head1\\\">\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link href=\\\"/css/fancybox.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Common.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    <!--Content:Start-->\r\n    <div class=\\\"aboutBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--分类列表-->\r\n        <div class=\\\"aboutMenu\\\">\r\n            <ul class=\\\'clearfix\\\'>\r\n                [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n            </ul>\r\n        </div>\r\n        \r\n        <script>\r\n            $(document).scroll(function () {\r\n                $(window).scroll(function () {\r\n                    var oTop = $(window).scrollTop();\r\n                    if (oTop > 600) {\r\n                        $(\\\".aboutMenu\\\").css({ \\\'position\\\': \\\'fixed\\\', \\\'top\\\': \\\'0\\\', \\\'width\\\': \\\'100%\\\', \\\'background-color\\\': \\\'#fff\\\', \\\'padding-bottom\\\': \\\'20px\\\', \\\'padding-top\\\': \\\'20px\\\', \\\"z-index\\\": \\\'9999\\\' });\r\n                    }\r\n                    else {\r\n                        $(\\\".aboutMenu\\\").css({ \\\'position\\\': \\\'\\\', \\\'top\\\': \\\'\\\', \\\'width\\\': \\\'\\\', \\\'background\\\': \\\'none\\\', \\\'padding-bottom\\\': \\\'\\\', \\\'padding-top\\\': \\\'40px\\\' })\r\n                    }\r\n                })\r\n            })\r\n\r\n            $(\\\'.aboutMenu li a\\\').each(function() {\r\n                $this = $(this);\r\n                if ($this[0].href == String(window.location)) {\r\n                    $this.parents(\\\'li\\\').addClass(\\\'cur\\\');\r\n                }\r\n            });\r\n        </script>\r\n        <!-- newsListCon -->\r\n        <div class=\\\"helpListCon\\\">\r\n            <div class=\\\"mainCon\\\">\r\n                <div class=\\\"conBox\\\">\r\n                    <div class=\\\"con\\\">\r\n                        [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]\r\n                        \r\n                    </div>\r\n                    <div class=\\\"clear\\\"></div>\r\n\r\n                    <div class=\\\"pageBox\\\">[!--show.listpage--]</div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--Content:End-->\r\n    \r\n    [!--temp.footer--]\r\n    <!-- <script src=\\\"/js/jquery.fancybox-1.3.1.pack.js\\\" type=\\\"text/javascript\\\"></script>\r\n    <script type=\\\"text/javascript\\\">\r\n        var SID = \\\"0001,0009,0019\\\";\r\n        headNavPosition(MARK, SID);\r\n        $(\\\"a[rel=group]\\\").fancybox({\r\n            \\\'titlePosition\\\': \\\'over\\\',\r\n            \\\'cyclic\\\': true,\r\n            \\\'titleFormat\\\': function (title, currentArray, currentIndex, currentOpts) {\r\n                return \\\'<span id=\\\"fancybox-title-over\\\">\\\' + (currentIndex + 1) + \\\' / \\\' + currentArray.length + (title.length ? \\\' &nbsp; \\\' + title : \\\'\\\') + \\\'</span>\\\';\r\n            }\r\n        });\r\n    </script> -->\r\n</body>\r\n</html>', 0, 0, '<dl class=\\\"dl_2\\\">\r\n                            <dt><a href=\\\"[!--titleurl--]\\\"><img src=\\\"[!--titlepic--]\\\" alt=\\\"[!--title--]\\\" /></a></dt>\r\n                            <dd><a href=\\\"[!--titleurl--]\\\">[!--title--]</a></dd>\r\n                        </dl>', 1, 1, 'Y-m-d', 0, 0, 0, 1592302048, 'listtemp', 1, 'admin'),
(7, 3, '合作列表模板', '<!DOCTYPE html\r\n    PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head id=\\\"Head1\\\">\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link href=\\\"/css/fancybox.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Common.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    <!--Content:Start-->\r\n    <div class=\\\"aboutBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--分类列表-->\r\n        <div class=\\\"aboutMenu\\\">\r\n            <ul class=\\\'clearfix\\\'>\r\n                [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n            </ul>\r\n        </div>\r\n        \r\n        <script>\r\n            $(document).scroll(function () {\r\n                $(window).scroll(function () {\r\n                    var oTop = $(window).scrollTop();\r\n                    if (oTop > 600) {\r\n                        $(\\\".aboutMenu\\\").css({ \\\'position\\\': \\\'fixed\\\', \\\'top\\\': \\\'0\\\', \\\'width\\\': \\\'100%\\\', \\\'background-color\\\': \\\'#fff\\\', \\\'padding-bottom\\\': \\\'20px\\\', \\\'padding-top\\\': \\\'20px\\\', \\\"z-index\\\": \\\'9999\\\' });\r\n                    }\r\n                    else {\r\n                        $(\\\".aboutMenu\\\").css({ \\\'position\\\': \\\'\\\', \\\'top\\\': \\\'\\\', \\\'width\\\': \\\'\\\', \\\'background\\\': \\\'none\\\', \\\'padding-bottom\\\': \\\'\\\', \\\'padding-top\\\': \\\'40px\\\' })\r\n                    }\r\n                })\r\n            })\r\n\r\n            $(\\\'.aboutMenu li a\\\').each(function() {\r\n                $this = $(this);\r\n                if ($this[0].href == String(window.location)) {\r\n                    $this.parents(\\\'li\\\').addClass(\\\'cur\\\');\r\n                }\r\n            });\r\n        </script>\r\n        <!-- newsListCon -->\r\n        <div class=\\\"helpListCon\\\">\r\n            <div class=\\\"mainCon\\\">\r\n                <div class=\\\"conBox\\\">\r\n                    <div class=\\\"con\\\">\r\n                        [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]\r\n                        \r\n                    </div>\r\n                    <div class=\\\"clear\\\"></div>\r\n                    \r\n                    <div class=\\\"pageBox\\\">[!--show.listpage--]</div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--Content:End-->\r\n    \r\n    [!--temp.footer--]\r\n</body>\r\n</html>', 0, 0, '<dl class=\\\"dl_2s\\\">\r\n                            <dt><img src=\\\"[!--titlepic--]\\\" alt=\\\"[!--title--]\\\" /></dt>\r\n                            <dd>\r\n                                <h4>[!--title--]</h4>\r\n                            </dd>\r\n                        </dl>', 1, 1, 'Y-m-d H:i:s', 0, 0, 0, 1592302100, 'listtemp', 1, 'admin'),
(8, 3, '合作列表模板', '<!DOCTYPE html\r\n    PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head id=\\\"Head1\\\">\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link href=\\\"/css/fancybox.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Common.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    <!--Content:Start-->\r\n    <div class=\\\"aboutBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--分类列表-->\r\n        <div class=\\\"aboutMenu\\\">\r\n            <ul class=\\\'clearfix\\\'>\r\n                [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n            </ul>\r\n        </div>\r\n        \r\n        <script>\r\n            $(document).scroll(function () {\r\n                $(window).scroll(function () {\r\n                    var oTop = $(window).scrollTop();\r\n                    if (oTop > 600) {\r\n                        $(\\\".aboutMenu\\\").css({ \\\'position\\\': \\\'fixed\\\', \\\'top\\\': \\\'0\\\', \\\'width\\\': \\\'100%\\\', \\\'background-color\\\': \\\'#fff\\\', \\\'padding-bottom\\\': \\\'20px\\\', \\\'padding-top\\\': \\\'20px\\\', \\\"z-index\\\": \\\'9999\\\' });\r\n                    }\r\n                    else {\r\n                        $(\\\".aboutMenu\\\").css({ \\\'position\\\': \\\'\\\', \\\'top\\\': \\\'\\\', \\\'width\\\': \\\'\\\', \\\'background\\\': \\\'none\\\', \\\'padding-bottom\\\': \\\'\\\', \\\'padding-top\\\': \\\'40px\\\' })\r\n                    }\r\n                })\r\n            })\r\n\r\n            $(\\\'.aboutMenu li a\\\').each(function() {\r\n                $this = $(this);\r\n                if ($this[0].href == String(window.location)) {\r\n                    $this.parents(\\\'li\\\').addClass(\\\'cur\\\');\r\n                }\r\n            });\r\n        </script>\r\n        <!-- newsListCon -->\r\n        <div class=\\\"helpListCon\\\">\r\n            <div class=\\\"mainCon\\\">\r\n                <div class=\\\"conBox\\\">\r\n                    <div class=\\\"con\\\">\r\n                        [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]\r\n                        \r\n                    </div>\r\n                    <div class=\\\"clear\\\"></div>\r\n                    \r\n                    <div class=\\\"pageBox\\\">[!--show.listpage--]</div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--Content:End-->\r\n    \r\n    [!--temp.footer--]\r\n</body>\r\n</html>', 0, 0, '<dl class=\\\"dl_2s\\\">\r\n                            <dt><img src=\\\"[!--titlepic--]\\\" alt=\\\"[!--title--]\\\" /></dt>\r\n                            <dd>\r\n                                <h4>[!--title--]</h4>\r\n                            </dd>\r\n                        </dl>', 1, 1, 'Y-m-d', 0, 0, 0, 1592302115, 'listtemp', 1, 'admin'),
(26, 1, '新闻内容模板', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"IE=edge,chrome=1\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link type=\\\"text/css\\\" rel=\\\"stylesheet\\\" href=\\\"/css/Common.css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link rel=\\\"stylesheet\\\" rev=\\\"stylesheet\\\" href=\\\"/css/pshow2.css\\\" type=\\\"text/css\\\" />\r\n    <link rel=\\\"stylesheet\\\" rev=\\\"stylesheet\\\" href=\\\"/css/base_v4.css\\\" type=\\\"text/css\\\" />\r\n    <script src=\\\"/js/jquery-1.3.2.min.js\\\" type=\\\"text/javascript\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n    <script src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script src=\\\"/js/cj_sdw_msw.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    \r\n    <!--content:start-->\r\n    <div class=\\\"newsDetialsBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!-- newsDetialsArticle -->\r\n        <div class=\\\"newsDetialsArticle\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mainCon clearfix\\\">\r\n                    <div class=\\\"article\\\">\r\n                        <!-- 返回新闻列表页 -->\r\n                        <a href=\\\"JavaScript:history.go(-1)\\\" class=\\\"backNewsList\\\" title=\\\"返回\\\">\r\n                            <img src=\\\"/images/newsDetialsArticle_icon01.png\\\" width=\\\"49\\\" height=\\\"49\\\" alt=\\\"返回\\\" /></a>\r\n                        <div class=\\\"conBox\\\">\r\n                            <div class=\\\"title\\\">\r\n                                <h1>[!--title--]</h1>\r\n                                <div class=\\\"share\\\">\r\n                                    <p><span>发布时间：[!--newstime--]</span></p>\r\n                                </div>\r\n                                <i></i>\r\n                            </div>\r\n                            <div class=\\\"con\\\">\r\n                                [!--newstext--]\r\n                            </div>\r\n                        </div>\r\n                        <div class=\\\"context clearfix\\\">\r\n                            <p class=\\\"prevNews bot_left\\\">\r\n                                [!--info.pre--]\r\n                            </p>\r\n                            <p class=\\\"NextNews bot_right\\\">\r\n                                [!--info.next--]\r\n                            </p>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\\\"hotNews\\\">\r\n                        <div class=\\\"sidebar\\\">\r\n                            <div class=\\\'top\\\'>\r\n                                <h3>[!--bclass.name--]</h3>\r\n                            </div>\r\n                            <div class=\\\"box1\\\">\r\n                                [showclasstemp]\\\'selfinfo\\\',7,0,0[/showclasstemp]\r\n                            </div>\r\n                        </div>\r\n                        <div class=\\\"clear\\\"></div>\r\n                        <div class=\\\"box box2\\\">\r\n                            <div class=\\\"top\\\">\r\n                                <a href=\\\"/xinwen/\\\">\r\n                                    <h3>最新<em>资讯</em><i></i></h3>\r\n                                </a>\r\n                                <a href=\\\"/xinwen/\\\" title=\\\"查看更多\\\" class=\\\"more\\\"><img src=\\\"/images/newsDetialsArticle_icon09.png\\\" width=\\\"21\\\" height=\\\"21\\\" alt=\\\"查看更多\\\" /></a>\r\n                            </div>\r\n                            <ul class=\\\"clearfix\\\">\r\n                                [e:loop={2,5,0,0}]\r\n                                <li><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a></li>\r\n                                [/e:loop]\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\\\"clear\\\"></div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        \r\n        <!-- 最新案例 -->\r\n        <div class=\\\"proDetailsPictures newsDetialsPictures\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"top clearfix mub01Top\\\">\r\n                    <a href=\\\"/shili/anli/\\\">\r\n                        <h3>最新<em>案例</em><i></i></h3>\r\n                    </a><a href=\\\"/shili/anli/\\\" class=\\\"more\\\">了解更多 +</a>\r\n                </div>\r\n                <div class=\\\"mainCon clearfix\\\">\r\n                    <ul class=\\\"clearfix\\\">\r\n                        [e:loop={12,4,0,1}]\r\n                        <li>\r\n                            <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\">\r\n                                <span><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" /></span>\r\n                                <em><?=$bqr[\\\'title\\\']?></em>\r\n                            </a>\r\n                        </li>\r\n                        [/e:loop]\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--content:end-->\r\n    [!--temp.footer--]\r\n    <script type=\\\"text/javascript\\\">\r\n        // $(\\\"#cntrBody img\\\").each(function () {\r\n        //     var vtitle = $(this).attr(\\\"title\\\");\r\n        //     if (vtitle != null && vtitle.indexOf(\\\'点击查看关于\\\') > -1) {\r\n        //         vtitle = vtitle.substring(vtitle.indexOf(\\\"=\\\'_blank\\\'>\\\") + 10).replace(\\\"</a>\\\", \\\"\\\");\r\n        //         $(this).attr(\\\"title\\\", vtitle).attr(\\\"alt\\\", vtitle);\r\n        //     }\r\n        // });\r\n        // newsLoad();\r\n        // headNavPosition(MARK, SID);\r\n    </script>\r\n</body>\r\n</html>', 0, 0, '', 0, 1, 'Y-m-d', 0, 0, 0, 1592384907, 'newstemp', 1, 'admin'),
(10, 7, '循环子栏目标签', '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 0, 0, '<dd><a href=\\\"#\\\">公司简介</a></dd>', 1, 1, 'Y-m-d', 0, 0, 0, 1592302358, 'bqtemp', 1, 'admin'),
(11, 7, '循环子栏目标签', '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 0, 0, '<dd><a href=\\\"[!--classurl--]\\\">[!--classname--]</a></dd>', 1, 1, 'Y-m-d', 0, 0, 0, 1592302381, 'bqtemp', 1, 'admin'),
(12, 1, '新闻内容模板', '<!DOCTYPE html\r\n    PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"IE=edge,chrome=1\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link type=\\\"text/css\\\" rel=\\\"stylesheet\\\" href=\\\"/css/Common.css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link rel=\\\"stylesheet\\\" rev=\\\"stylesheet\\\" href=\\\"/css/pshow2.css\\\" type=\\\"text/css\\\" />\r\n    <link rel=\\\"stylesheet\\\" rev=\\\"stylesheet\\\" href=\\\"/css/base_v4.css\\\" type=\\\"text/css\\\" />\r\n    <script src=\\\"/js/jquery-1.3.2.min.js\\\" type=\\\"text/javascript\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n    <script src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script src=\\\"/js/cj_sdw_msw.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    \r\n    <!--content:start-->\r\n    <div class=\\\"newsDetialsBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!-- newsDetialsArticle -->\r\n        <div class=\\\"newsDetialsArticle\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mainCon clearfix\\\">\r\n                    <div class=\\\"article\\\">\r\n                        <!-- 返回新闻列表页 -->\r\n                        <a href=\\\"JavaScript:history.go(-1)\\\" class=\\\"backNewsList\\\" title=\\\"返回\\\">\r\n                            <img src=\\\"/images/newsDetialsArticle_icon01.png\\\" width=\\\"49\\\" height=\\\"49\\\" alt=\\\"返回\\\" /></a>\r\n                        <div class=\\\"conBox\\\">\r\n                            <div class=\\\"title\\\">\r\n                                <h1>[!--title--]</h1>\r\n                                <div class=\\\"share\\\">\r\n                                    <p><span>发布时间：[!--newstime--]</span></p>\r\n                                </div>\r\n                                <i></i>\r\n                            </div>\r\n                            <div class=\\\"con\\\">\r\n                                [!--newstext--]\r\n                            </div>\r\n                        </div>\r\n                        <div class=\\\"context clearfix\\\">\r\n                            <p class=\\\"prevNews bot_left\\\">\r\n                                [!--info.pre--]\r\n                            </p>\r\n                            <p class=\\\"NextNews bot_right\\\">\r\n                                [!--info.next--]\r\n                            </p>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\\\"hotNews\\\">\r\n                        <div class=\\\"sidebar\\\">\r\n                            <div class=\\\'top\\\'>\r\n                                <h3>力丰介绍</h3>\r\n                            </div>\r\n                            <div class=\\\"box1\\\">\r\n                                [showclasstemp]\\\'selfinfo\\\',7,0,0[/showclasstemp]\r\n                            </div>\r\n                        </div>\r\n                        <div class=\\\"clear\\\"></div>\r\n                        <div class=\\\"box box2\\\">\r\n                            <div class=\\\"top\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    <h3>最新<em>资讯</em><i></i></h3>\r\n                                </a>\r\n                                <a href=\\\"#\\\" title=\\\"查看更多\\\" class=\\\"more\\\"><img src=\\\"/images/newsDetialsArticle_icon09.png\\\" width=\\\"21\\\" height=\\\"21\\\" alt=\\\"查看更多\\\" /></a>\r\n                            </div>\r\n                            <ul class=\\\"clearfix\\\">\r\n                                <li><a href=\\\"#\\\">东莞钢结构专业安装厂家哪家强？</a></li>\r\n                                <li><a href=\\\"#\\\">东莞钢结构专业安装厂家哪家强？</a></li>\r\n                                <li><a href=\\\"#\\\">东莞钢结构专业安装厂家哪家强？</a></li>\r\n                                <li><a href=\\\"#\\\">东莞钢结构专业安装厂家哪家强？</a></li>\r\n                                <li><a href=\\\"#\\\">东莞钢结构专业安装厂家哪家强？</a></li>\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\\\"clear\\\"></div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        \r\n        <!-- 最新案例 -->\r\n        <div class=\\\"proDetailsPictures newsDetialsPictures\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"top clearfix mub01Top\\\">\r\n                    <a href=\\\"http://www.dglifeng.com/product/\\\">\r\n                        <h3>最新<em>案例</em><i></i></h3>\r\n                    </a><a href=\\\"http://www.dglifeng.com/product/\\\" title=\\\"了解更多\\\" target=\\\"_blank\\\" class=\\\"more\\\">了解更多 +</a>\r\n                </div>\r\n                <div class=\\\"mainCon clearfix\\\">\r\n                    <ul class=\\\"clearfix\\\">\r\n                        <li>\r\n                            <a href=\\\"#\\\">\r\n                                <span><img src=\\\"/images/20180104194513_89868.jpg\\\" alt=\\\"\\\" /></span>\r\n                                <em>钢木结构别墅制作安装</em>\r\n                            </a>\r\n                        </li>\r\n                        \r\n                        <li>\r\n                            <a href=\\\"http://www.dglifeng.com/Products/qiangmianban820xing.html\\\" target=\\\"_blank\\\"\r\n                                title=\\\"墙面板820型\\\">\r\n                                <span><img src=\\\"/images/20180131190228_19133.jpg\\\" alt=\\\"墙面板820型\\\" /></span>\r\n                                <em>墙面板820型</em>\r\n                            </a>\r\n                        </li>\r\n                        <li>\r\n                            <a href=\\\"http://www.dglifeng.com/Products/qiangmianban1052xing.html\\\" target=\\\"_blank\\\"\r\n                                title=\\\"墙面板（1052型）\\\">\r\n                                <span><img src=\\\"/images/20180125174328_68873.jpg\\\" alt=\\\"墙面板（1052型）\\\" /></span>\r\n                                <em>墙面板（1052型）</em>\r\n                            </a>\r\n                        </li>\r\n                        <li>\r\n                            <a href=\\\"http://www.dglifeng.com/Products/shoubianzhewanji.html\\\" target=\\\"_blank\\\"\r\n                                title=\\\"收边折弯机\\\">\r\n                                <span><img src=\\\"/images/20180126142530_62028.jpg\\\" alt=\\\"收边折弯机\\\" /></span>\r\n                                <em>收边折弯机</em>\r\n                            </a>\r\n                        </li>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--content:end-->\r\n    [!--temp.footer--]\r\n    <script type=\\\"text/javascript\\\">\r\n        // $(\\\"#cntrBody img\\\").each(function () {\r\n        //     var vtitle = $(this).attr(\\\"title\\\");\r\n        //     if (vtitle != null && vtitle.indexOf(\\\'点击查看关于\\\') > -1) {\r\n        //         vtitle = vtitle.substring(vtitle.indexOf(\\\"=\\\'_blank\\\'>\\\") + 10).replace(\\\"</a>\\\", \\\"\\\");\r\n        //         $(this).attr(\\\"title\\\", vtitle).attr(\\\"alt\\\", vtitle);\r\n        //     }\r\n        // });\r\n        // newsLoad();\r\n        // headNavPosition(MARK, SID);\r\n    </script>\r\n</body>\r\n</html>', 0, 0, '', 0, 1, 'Y-m-d', 0, 0, 0, 1592302465, 'newstemp', 1, 'admin'),
(27, 2, '通用单页模板', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"IE=edge,chrome=1\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link type=\\\"text/css\\\" rel=\\\"stylesheet\\\" href=\\\"/css/Common.css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link rel=\\\"stylesheet\\\" rev=\\\"stylesheet\\\" href=\\\"/css/pshow2.css\\\" type=\\\"text/css\\\" />\r\n    <link rel=\\\"stylesheet\\\" rev=\\\"stylesheet\\\" href=\\\"/css/base_v4.css\\\" type=\\\"text/css\\\" />\r\n    <script src=\\\"/js/jquery-1.3.2.min.js\\\" type=\\\"text/javascript\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n    <script src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script src=\\\"/js/cj_sdw_msw.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    \r\n    <!--content:start-->\r\n    <div class=\\\"aboutBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\\\"newsDetialsArticle\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mainCon clearfix\\\">\r\n                    <div class=\\\"article\\\">\r\n                        <!-- 返回企业信息列表页 -->\r\n                        <a href=\\\"JavaScript:history.go(-1)\\\" class=\\\"backNewsList\\\" title=\\\"返回\\\">\r\n                            <img src=\\\"/images/newsDetialsArticle_icon01.png\\\" width=\\\"49\\\" height=\\\"49\\\" alt=\\\"返回\\\" /></a>\r\n                        <div class=\\\"conBox\\\">\r\n                            <div class=\\\"title\\\">\r\n                                <h1>[!--title--]</h1>\r\n                                <i></i>\r\n                            </div>\r\n                            <div class=\\\"con\\\">\r\n                                [!--newstext--]\r\n                                <p><br /></p>\r\n                            </div>\r\n                        </div>\r\n                        \r\n                    </div>\r\n                    <div class=\\\"hotNews\\\">\r\n                        <div class=\\\"sidebar\\\">\r\n                            <div class=\\\'top\\\'>\r\n                                <h3>[!--bclass.name--]</h3>\r\n                            </div>\r\n                            <div class=\\\"box1\\\">\r\n                                [showclasstemp]\\\'selfinfo\\\',7,0,0[/showclasstemp]\r\n                            </div>\r\n                        </div>\r\n                        <div class=\\\"clear\\\"></div>\r\n                        <div class=\\\"box box2\\\">\r\n                            <div class=\\\"top\\\">\r\n                                <a href=\\\"/xinwen/\\\">\r\n                                    <h3>最新<em>资讯</em><i></i></h3>\r\n                                </a>\r\n                                <a href=\\\"/xinwen/\\\" title=\\\"查看更多\\\" class=\\\"more\\\"><img src=\\\"/images/newsDetialsArticle_icon09.png\\\" width=\\\"21\\\" height=\\\"21\\\" alt=\\\"查看更多\\\" /></a>\r\n                            </div>\r\n                            <ul class=\\\"clearfix\\\">\r\n                                [e:loop={2,5,0,0}]\r\n                                <li><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a></li>\r\n                                [/e:loop]\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\\\"clear\\\"></div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--content:end-->\r\n    [!--temp.footer--]\r\n</body>\r\n</html>', 0, 0, '', 0, 1, 'Y-m-d', 0, 0, 0, 1592385662, 'newstemp', 1, 'admin'),
(28, 3, '关于单页模板', '<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"IE=edge,chrome=1\\\" />\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link href=\\\"/css/Common.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    <!--Content:Start-->\r\n    <div class=\\\"aboutBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\" style=\\\"padding-bottom: 0;\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--分类-->\r\n        <div class=\\\"aboutMenu\\\">\r\n            <ul class=\\\'clearfix\\\'>\r\n                [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n            </ul>\r\n        </div>\r\n        <script>\r\n            $(document).scroll(function () {\r\n                $(window).scroll(function () {\r\n                    var oTop = $(window).scrollTop();\r\n                    if (oTop > 600) {\r\n                        $(\\\".aboutMenu\\\").css({ \\\'position\\\': \\\'fixed\\\', \\\'top\\\': \\\'0\\\', \\\'width\\\': \\\'100%\\\', \\\'background-color\\\': \\\'#fff\\\', \\\'padding-bottom\\\': \\\'20px\\\', \\\'padding-top\\\': \\\'20px\\\', \\\"z-index\\\": \\\'9999\\\' });\r\n                    }\r\n                    else {\r\n                        $(\\\".aboutMenu\\\").css({ \\\'position\\\': \\\'\\\', \\\'top\\\': \\\'\\\', \\\'width\\\': \\\'\\\', \\\'background\\\': \\\'none\\\', \\\'padding-bottom\\\': \\\'\\\', \\\'padding-top\\\': \\\'40px\\\' })\r\n                    }\r\n                })\r\n            })\r\n\r\n            $(\\\'.aboutMenu li a\\\').each(function() {\r\n                $this = $(this);\r\n                if ($this[0].href == String(window.location)) {\r\n                    $this.parents(\\\'li\\\').addClass(\\\'cur\\\');\r\n                }\r\n            });\r\n        </script>\r\n        <!-- 公司介绍 -->\r\n        <div class=\\\"aboutIntro\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mub01Title\\\">\r\n                    <h3><i class=\\\"xianL\\\"></i>公司<em>简介</em><i class=\\\"xianR\\\"></i></h3>\r\n                    <p>Company &nbsp; Profile</p>\r\n                </div>\r\n                <div class=\\\"mainCon\\\">\r\n                    [!--newstext--]\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!-- 企业荣誉 -->\r\n        <div class=\\\"aboutHonor\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mub01Title\\\" id=\\\"ry\\\">\r\n                    <a href=\\\"/shili/rongyuzizhi/\\\">\r\n                        <h3><i class=\\\"xianL\\\"></i>荣誉资质<i class=\\\"xianR\\\"></i></h3>\r\n                    </a>\r\n                    <p>Honorary Qualification</p>\r\n                </div>\r\n                <div class=\\\"mainCon\\\">\r\n                    <i class=\\\"btn01\\\" id=\\\"aboutHonorBtn01\\\"></i><i class=\\\"btn02\\\" id=\\\"aboutHonorBtn02\\\">\r\n                    </i>\r\n                    <div class=\\\"aboutHonorCon\\\" id=\\\"aboutHonor\\\">\r\n                        <ul class=\\\"clearfix\\\">\r\n                            [e:loop={15,5,0,1}]\r\n                            <li>\r\n                                <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\">\r\n                                    <img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" width=\\\"280\\\" height=\\\"290\\\" />\r\n                                    <span><?=$bqr[\\\'title\\\']?></span>\r\n                                </a>\r\n                            </li>\r\n                            [/e:loop]\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!-- 图说力丰 -->\r\n        <div class=\\\"aboutMien\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mub01Title\\\" id=\\\"fc\\\">\r\n                    <a href=\\\"/guanyu/gongsilueying/\\\">\r\n                        <h3><i class=\\\"xianL\\\"></i>公司<em>掠影</em><i class=\\\"xianR\\\"></i></h3>\r\n                    </a>\r\n                    <p>Company Gallery</p>\r\n                </div>\r\n                <div class=\\\"mainCon\\\">\r\n                    <span class=\\\"btn01\\\" id=\\\"aboutMienBtn01\\\"></span><span class=\\\"btn02\\\" id=\\\"aboutMienBtn02\\\"></span>\r\n                    <div class=\\\"aboutMienCon\\\">\r\n                        <div id=\\\"aboutMien\\\" class=\\\"aboutMienBox\\\">\r\n                            [e:loop={20,4,0,1}]\r\n                            <div class=\\\"iteam\\\">\r\n                                <b></b>\r\n                                <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" /></a>\r\n                                <p><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a></p>\r\n                            </div>\r\n                            [/e:loop]\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--Content:End-->\r\n    \r\n    [!--temp.footer--]\r\n    \r\n    <script>\r\n        // headNavPosition(\\\"help\\\", \\\"0001,0009\\\");\r\n        msw_jzt(\\\"aboutMien\\\", \\\"aboutMienBtn01\\\", \\\"aboutMienBtn02\\\", \\\"iteam\\\", \\\"p\\\", 4000, 3, 50);\r\n        mswMove(\\\"aboutHonor\\\", \\\"aboutHonorBtn01\\\", \\\"aboutHonorBtn02\\\", \\\"\\\", true, \\\"left\\\", true, 310, 1000, 3000, 4);\r\n    </script>\r\n</body>\r\n</html>', 0, 0, '', 0, 1, 'Y-m-d', 0, 0, 0, 1592386589, 'newstemp', 1, 'admin');
INSERT INTO `hswl_enewstempbak` (`bid`, `tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`, `baktime`, `temptype`, `gid`, `lastuser`) VALUES
(14, 3, '关于单页模板', '<!DOCTYPE html\r\n    PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"IE=edge,chrome=1\\\" />\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link href=\\\"/css/Common.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    <!--Content:Start-->\r\n    <div class=\\\"aboutBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\" style=\\\"padding-bottom: 0;\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--分类-->\r\n        <div class=\\\"aboutMenu\\\">\r\n            <ul class=\\\'clearfix\\\'>\r\n                [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n            </ul>\r\n        </div>\r\n        <script>\r\n            $(document).scroll(function () {\r\n                $(window).scroll(function () {\r\n                    var oTop = $(window).scrollTop();\r\n                    if (oTop > 600) {\r\n                        $(\\\".aboutMenu\\\").css({ \\\'position\\\': \\\'fixed\\\', \\\'top\\\': \\\'0\\\', \\\'width\\\': \\\'100%\\\', \\\'background-color\\\': \\\'#fff\\\', \\\'padding-bottom\\\': \\\'20px\\\', \\\'padding-top\\\': \\\'20px\\\', \\\"z-index\\\": \\\'9999\\\' });\r\n                    }\r\n                    else {\r\n                        $(\\\".aboutMenu\\\").css({ \\\'position\\\': \\\'\\\', \\\'top\\\': \\\'\\\', \\\'width\\\': \\\'\\\', \\\'background\\\': \\\'none\\\', \\\'padding-bottom\\\': \\\'\\\', \\\'padding-top\\\': \\\'40px\\\' })\r\n                    }\r\n                })\r\n            })\r\n\r\n            $(\\\'.aboutMenu li a\\\').each(function() {\r\n                $this = $(this);\r\n                if ($this[0].href == String(window.location)) {\r\n                    $this.parents(\\\'li\\\').addClass(\\\'cur\\\');\r\n                }\r\n            });\r\n        </script>\r\n        <!-- 公司介绍 -->\r\n        <div class=\\\"aboutIntro\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mub01Title\\\">\r\n                    <h3><i class=\\\"xianL\\\"></i>公司<em>简介</em><i class=\\\"xianR\\\"></i></h3>\r\n                    <p>Company &nbsp; Profile</p>\r\n                </div>\r\n                <div class=\\\"mainCon\\\">\r\n                    <p style=\\\"margin-bottom: 15px; text-align: center;\\\"><img src=\\\"/images/aboutimg.jpg\\\" alt=\\\"公司照片\\\" /></p>\r\n                    <p style=\\\"line-height: 1.75em; margin-top: 20px; margin-bottom: 15px; text-indent: 2em;\\\">\r\n                        <span style=\\\"color: rgb(47, 74, 141);\\\"><strong>成都市华森物流有限公司</strong></span>\r\n                        创立于2012年，位于成都市龙潭工业园区，是一家专业从事冷藏、普通货物业务的物流服务商。专注于各类食品、乳品、水产、果蔬、酒业等产品的干线运输及区域配送、物流业务咨询与仓储服务的物流企业。</p>\r\n                    \r\n                    <p style=\\\"line-height: 1.75em; margin-bottom: 20px; text-indent: 2em;\\\">\r\n                        公司在软件上，拥有一支高素质、专业化、年轻化的物流管理团队和资深专家顾问群，有现代化的物流信息平台，汇聚了丰富的物流服务经验和先进的管理服务理念。\r\n                        &nbsp;</p>\r\n                    <p style=\\\"line-height: 1.75em; margin-bottom: 20px; text-indent: 2em;\\\">\r\n                        公司在硬件上，自有车型齐全，3-30吨的冷藏车、普通货运车多部，以及其他车型的联营车。配置有GPS卫星定位系统，全程监控车辆的运营状态，安全性强、可靠性高；其中冷藏车的制冷性能稳定，最低可达到-28℃   。能够满足各类客户的运输质量要求和客户用车需要。\r\n                    </p>\r\n                    <p style=\\\"text-indent: 2em; line-height: 1.75em; margin-bottom: 15px;\\\">\r\n                        华森物流为国内广大食品、乳品、水产、果蔬、酒业等企业，提供专业的仓储物流服务；同时，也为各类企业提供原材料供应运输，产、成品转移，物流支持等。\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!-- 企业荣誉 -->\r\n        <div class=\\\"aboutHonor\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mub01Title\\\" id=\\\"ry\\\">\r\n                    <a href=\\\"#\\\">\r\n                        <h3><i class=\\\"xianL\\\"></i>荣誉资质<i class=\\\"xianR\\\"></i></h3>\r\n                    </a>\r\n                    <p>Honorary Qualification</p>\r\n                </div>\r\n                <div class=\\\"mainCon\\\">\r\n                    <i class=\\\"btn01\\\" id=\\\"aboutHonorBtn01\\\"></i><i class=\\\"btn02\\\" id=\\\"aboutHonorBtn02\\\">\r\n                    </i>\r\n                    <div class=\\\"aboutHonorCon\\\" id=\\\"aboutHonor\\\">\r\n                        <ul class=\\\"clearfix\\\">\r\n                            <li>\r\n                                <a href=\\\"#\\\">\r\n                                    <img src=\\\"/images/zs.jpg\\\" alt=\\\"\\\" width=\\\"280\\\" height=\\\"290\\\" />\r\n                                    <span>公司荣誉资质证书照片</span>\r\n                                </a>\r\n                            </li>\r\n                            <li>\r\n                                <a href=\\\"#\\\">\r\n                                    <img src=\\\"/images/zs.jpg\\\" alt=\\\"\\\" width=\\\"280\\\" height=\\\"290\\\" />\r\n                                    <span>公司荣誉资质证书照片</span>\r\n                                </a>\r\n                            </li>\r\n                            <li>\r\n                                <a href=\\\"#\\\">\r\n                                    <img src=\\\"/images/zs.jpg\\\" alt=\\\"\\\" width=\\\"280\\\" height=\\\"290\\\" />\r\n                                    <span>公司荣誉资质证书照片</span>\r\n                                </a>\r\n                            </li>\r\n                            <li>\r\n                                <a href=\\\"#\\\">\r\n                                    <img src=\\\"/images/zs.jpg\\\" alt=\\\"\\\" width=\\\"280\\\" height=\\\"290\\\" />\r\n                                    <span>公司荣誉资质证书照片</span>\r\n                                </a>\r\n                            </li>\r\n                            <li>\r\n                                <a href=\\\"#\\\">\r\n                                    <img src=\\\"/images/zs.jpg\\\" alt=\\\"\\\" width=\\\"280\\\" height=\\\"290\\\" />\r\n                                    <span>公司荣誉资质证书照片</span>\r\n                                </a>\r\n                            </li>\r\n                            \r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!-- 图说力丰 -->\r\n        <div class=\\\"aboutMien\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mub01Title\\\" id=\\\"fc\\\">\r\n                    <a href=\\\"http://www.dglifeng.com/qyfc.htm\\\" title=\\\"图说力丰\\\" target=\\\"_blank\\\">\r\n                        <h3>\r\n                            <i class=\\\"xianL\\\"></i>公司<em>掠影</em><i class=\\\"xianR\\\"></i></h3>\r\n                    </a>\r\n                    <p>Company Gallery</p>\r\n                </div>\r\n                <div class=\\\"mainCon\\\">\r\n                    <span class=\\\"btn01\\\" id=\\\"aboutMienBtn01\\\"></span><span class=\\\"btn02\\\" id=\\\"aboutMienBtn02\\\">\r\n                    </span>\r\n                    <div class=\\\"aboutMienCon\\\">\r\n                        <div id=\\\"aboutMien\\\" class=\\\"aboutMienBox\\\">\r\n                            <div class=\\\"iteam\\\">\r\n                                <b></b><a href=\\\"#\\\">\r\n                                    <img src=\\\"/images/pic1.jpg\\\" alt=\\\"\\\" /></a>\r\n                                <p><a href=\\\"#\\\">公司照片</a></p>\r\n                            </div>\r\n                            <div class=\\\"iteam\\\">\r\n                                <b></b><a href=\\\"#\\\">\r\n                                    <img src=\\\"/images/pic2.jpg\\\" alt=\\\"\\\" /></a>\r\n                                <p><a href=\\\"#\\\">公司车辆</a></p>\r\n                            </div>\r\n                            <div class=\\\"iteam\\\">\r\n                                <b></b><a href=\\\"#\\\">\r\n                                    <img src=\\\"/images/pic3.jpg\\\" alt=\\\"\\\" /></a>\r\n                                <p><a href=\\\"#\\\">团队照片</a></p>\r\n                            </div>\r\n                            <div class=\\\"iteam\\\">\r\n                                <b></b><a href=\\\"#\\\">\r\n                                    <img src=\\\"/images/pic4.jpg\\\" alt=\\\"\\\" /></a>\r\n                                <p><a href=\\\"#\\\">办公室照片</a></p>\r\n                            </div>\r\n\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--Content:End-->\r\n    \r\n    [!--temp.footer--]\r\n    \r\n    <script>\r\n        // headNavPosition(\\\"help\\\", \\\"0001,0009\\\");\r\n        msw_jzt(\\\"aboutMien\\\", \\\"aboutMienBtn01\\\", \\\"aboutMienBtn02\\\", \\\"iteam\\\", \\\"p\\\", 4000, 3, 50);\r\n        mswMove(\\\"aboutHonor\\\", \\\"aboutHonorBtn01\\\", \\\"aboutHonorBtn02\\\", \\\"\\\", true, \\\"left\\\", true, 310, 1000, 3000, 4);\r\n    </script>\r\n</body>\r\n</html>', 0, 0, '', 0, 1, 'Y-m-d', 0, 0, 0, 1592302530, 'newstemp', 1, 'admin'),
(15, 4, '联系单页模板 ', '<!DOCTYPE html\r\n    PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head id=\\\"Head1\\\">\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link href=\\\"/css/Common.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    <!--Content:Start-->\r\n    <div class=\\\"linkUsBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!-- linkUsMap -->\r\n        <div class=\\\"linkUsMap\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mainCon clearfix\\\">\r\n                    <div style=\\\"background:#fff;padding:20px 50px;bborder-bottom:15px solide #f4f4f4;\\\">\r\n                        <table style=\\\"background:#fff;width:100%;margin-bottom:10px\\\">\r\n                            <tbody>\r\n                                <tr class=\\\"firstRow\\\">\r\n                                    <td valign=\\\"top\\\" style=\\\"word-break: break-all;\\\">\r\n                                        <p><img src=\\\"/images/20180108171705642855.png\\\" title=\\\"\\\" alt=\\\"\\\" /></p>\r\n                                    </td>\r\n                                    <td valign=\\\"middle\\\" style=\\\"word-break: break-all;\\\" align=\\\"left\\\">\r\n                                        <p style=\\\"font-size: 20px; color: #000; line-height: 1.75em;\\\"><strong style=\\\"font-size: 18px;\\\">欢迎您来到<span style=\\\"color: #2f4a8d;\\\">成都市华森物流有限公司</span>官网</strong><br /></p>\r\n                                        <p><br /></p>\r\n                                        <p style=\\\"line-height: 1.75em;\\\">\r\n                                            关于华森 成都市华森物流有限公司创立于2012年，位于成都市龙潭工业园区，是一家专业从事冷藏、普通货物业 务的物流服务商。专注于各类食品、乳品、水产、果蔬、酒业等产品的干线运输及区域配送、物流业务咨询 与仓储服务的物流企业。 \r\n                                        </p>\r\n                                    </td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        <p><br /></p>\r\n                        <hr />\r\n                        <table data-sort=\\\"sortDisabled\\\" style=\\\"width:100%\\\" width=\\\"1170\\\">\r\n                            <tbody>\r\n                                <tr class=\\\"firstRow\\\">\r\n                                    <td valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"2\\\" style=\\\"word-break: break-all;\\\"\r\n                                        align=\\\"center\\\" width=\\\"171\\\" height=\\\"119\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px; margin-top: 10px;\\\"><img\r\n                                                src=\\\"/images/20180108113919313273.png\\\" alt=\\\"\\\" /><span\r\n                                                id=\\\"_baidu_bookmark_start_0\\\"\r\n                                                style=\\\"display: none; line-height: 0px;\\\"></span></p>\r\n                                    </td>\r\n                                    <td width=\\\"57\\\" valign=\\\"middle\\\" rowspan=\\\"3\\\" colspan=\\\"1\\\"\r\n                                        style=\\\"word-break: break-all;\\\" align=\\\"center\\\"><img\r\n                                            src=\\\"/images/20180108113606472501.jpg\\\" alt=\\\"\\\" /></td>\r\n                                    <td valign=\\\"middle\\\" style=\\\"word-break: break-all;\\\" rowspan=\\\"1\\\" colspan=\\\"2\\\"\r\n                                        width=\\\"183\\\" align=\\\"center\\\" height=\\\"119\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px; margin-top: 10px;\\\"><img\r\n                                                src=\\\"/images/20180108113958377772.png\\\" alt=\\\"\\\" /></p>\r\n                                    </td>\r\n                                    <td width=\\\"57\\\" valign=\\\"middle\\\" rowspan=\\\"3\\\" colspan=\\\"1\\\"\r\n                                        style=\\\"word-break: break-all;\\\" align=\\\"center\\\"><img\r\n                                            src=\\\"/images/20180108113619556223.jpg\\\" alt=\\\"\\\" /></td>\r\n                                    <td valign=\\\"middle\\\" colspan=\\\"2\\\" rowspan=\\\"1\\\" style=\\\"word-break: break-all;\\\"\r\n                                        align=\\\"center\\\" width=\\\"198\\\" height=\\\"119\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px; margin-top: 10px;\\\"><img\r\n                                                src=\\\"/images/20180108114108224499.png\\\" alt=\\\"\\\" /></p>\r\n                                    </td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"2\\\" align=\\\"center\\\"\r\n                                        style=\\\"word-break: break-all;\\\" width=\\\"171\\\" height=\\\"31\\\"><img\r\n                                            src=\\\"/images/20180108113635080913.jpg\\\" title=\\\"\\\" alt=\\\"\\\" /></td>\r\n                                    <td valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"2\\\" align=\\\"center\\\"\r\n                                        style=\\\"word-break: break-all;\\\" width=\\\"183\\\" height=\\\"31\\\"><img\r\n                                            src=\\\"/images/20180108113650950411.jpg\\\" title=\\\"\\\" alt=\\\"\\\" /></td>\r\n                                    <td valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"2\\\" align=\\\"center\\\"\r\n                                        style=\\\"word-break: break-all;\\\" width=\\\"198\\\" height=\\\"31\\\"><img\r\n                                            src=\\\"/images/20180108113709672654.jpg\\\" title=\\\"\\\" alt=\\\"\\\" /></td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td valign=\\\"top\\\" style=\\\"word-break: break-all;\\\" align=\\\"center\\\" height=\\\"86\\\"\r\n                                        rowspan=\\\"1\\\" colspan=\\\"2\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-top: 10px;\\\">\r\n                                            24小时专线：13981791475</p>\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px;\\\"><span\r\n                                                style=\\\"text-align: -webkit-center; background-color: rgb(255, 255, 255);\\\">传真：028-61297652</span>\r\n                                        </p>\r\n                                    </td>\r\n                                    <td valign=\\\"top\\\" colspan=\\\"2\\\" rowspan=\\\"1\\\" style=\\\"word-break: break-all;\\\"\r\n                                        align=\\\"center\\\" height=\\\"86\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px; margin-top: 10px;\\\"><span\r\n                                                style=\\\"text-align: -webkit-center; background-color: rgb(255, 255, 255);\\\">咨询邮箱：qiaoj@hslcwl.cn</span>\r\n                                        </p>\r\n                                    </td>\r\n                                    <td valign=\\\"top\\\" style=\\\"word-break: break-all;\\\" align=\\\"center\\\" width=\\\"200\\\" height=\\\"86\\\"\r\n                                        rowspan=\\\"1\\\" colspan=\\\"2\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px; margin-top: 10px;\\\">\r\n                                            地址：四川省成都市成华区龙潭工业园钢铁领域B座518室成都市华森物流有限公司</p>\r\n                                    </td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        <p><br /></p>\r\n                        <hr />\r\n                        <p><br /></p>\r\n                        \r\n                        <div id=\\\"baiduMap\\\" style=\\\"width:100%;height:454px;\\\"></div>\r\n                        <script type=\\\"text/javascript\\\" src=\\\"http://api.map.baidu.com/api?v=2.0&ak=ny22a16GzbMDs1xHsTvjlqtZYpwFhUbw\\\"></script>\r\n                        <script type=\\\"text/javascript\\\">\r\n                            //创建地图\r\n                            var myMap = new BMap.Map(\\\"baiduMap\\\");\r\n                            var point = new BMap.Point(104.184247,30.699351);\r\n                            myMap.centerAndZoom(point, 16);\r\n                            //添加覆盖物\r\n                            var marker = new BMap.Marker(point);  // 创建标注 \r\n                            myMap.addOverlay(marker);   // 将标注添加到地图中\r\n                            //添加控件\r\n                            myMap.addControl(new BMap.NavigationControl()); // 平移缩放\r\n                            myMap.addControl(new BMap.OverviewMapControl()); //缩略地图\r\n                            //myMap.enableScrollWheelZoom(); //滚轮缩放\r\n                            //创建信息窗口\r\n                            var infoWindow = new BMap.InfoWindow(\\\"<p><strong>成都市华森物流有限公司</strong></p><p>地址：四川省成都市成华区龙潭工业园钢铁领域B座518室</p>\\\");\r\n                                marker.openInfoWindow(infoWindow);\r\n                        </script>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!-- 发车时间表-->\r\n        <div class=\\\"timetable\\\">\r\n            <div class=\\\"container\\\">\r\n                <h3>发车时间表</h3>\r\n                <table>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td><strong>干线信息</strong></td>\r\n                            <td colspan=\\\"3\\\">冷冻、冷藏及恒温零担、整车</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周一</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td></td>\r\n                            <td></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周二</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td>成都-贵州全境</td>\r\n                            <td>昆明-成都</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周三</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td></td>\r\n                            <td></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周四</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td></td>\r\n                            <td></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周五</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td>成都-贵州全境</td>\r\n                            <td>昆明-成都</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周六</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td></td>\r\n                            <td></td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <table>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td><strong>成都办公地址</strong></td>\r\n                            <td>成都市成华区龙潭工业园钢铁领域B座518室华森物流有限公司</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><strong>成都仓库地址</strong></td>\r\n                            <td>四川省成都市双流口岸路136号，郑明仓库</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><strong>昆明仓库地址</strong></td>\r\n                            <td>云南省昆明市呈贡区七甸工业园区哨达路16号</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><strong>贵阳仓库地址</strong></td>\r\n                            <td>贵州省贵阳市乌当区高新东路18号，贵州瀑布冷链</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <table>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td><strong>城配信息</strong></td>\r\n                            <td>成都市内配送及周边区域配送</td>\r\n                            <td>西安市内配送</td>\r\n                            <td>昆明市内配送</td>\r\n                            <td>贵阳市内配送</td>\r\n                        </tr>\r\n                        \r\n                    </tbody>\r\n                </table>\r\n            </div>\r\n            \r\n        </div>\r\n        <!-- linkUsLy-->\r\n        <div class=\\\"linkUsLy\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mainCon\\\">\r\n                    <div class=\\\"title\\\">\r\n                        <h3>在线留言</h3>\r\n                        <p>\r\n                            Online message</p>\r\n                    </div>\r\n                    <form name=\\\"Form1\\\" method=\\\"post\\\" action=\\\"Help/ContactUs.aspx\\\" id=\\\"Form1\\\">\r\n                        \r\n                        <div class=\\\"box\\\" id=\\\"QK\\\">\r\n                            <input type=\\\"text\\\" class=\\\"input1\\\" placeholder=\\\"您的姓名\\\" id=\\\"txtContact\\\" />\r\n                            <input type=\\\"text\\\" class=\\\"input2\\\" placeholder=\\\"您的电话\\\" id=\\\"txtTel\\\" />\r\n                            <input type=\\\"text\\\" class=\\\"input3\\\" placeholder=\\\"您的邮箱\\\" id=\\\"txtTel\\\" />\r\n                            <textarea placeholder=\\\"留言内容\\\" id=\\\"txtShortDesc\\\"></textarea>\r\n                            <input type=\\\"submit\\\" name=\\\"submit\\\" value=\\\"提交留言\\\" class=\\\"submit\\\" />\r\n                            <!-- <a href=\\\"javascript:void(0);\\\" title=\\\"提交留言\\\" onclick=\\\"sendLeaveword_notBz(this);\\\">提交留言</a> -->\r\n                        </div>\r\n                        \r\n                    </form>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--Content:End-->\r\n    \r\n    [!--temp.footer--]\r\n    \r\n</body>\r\n</html>', 0, 0, '', 0, 1, 'Y-m-d', 0, 0, 0, 1592302599, 'newstemp', 1, 'admin');
INSERT INTO `hswl_enewstempbak` (`bid`, `tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`, `baktime`, `temptype`, `gid`, `lastuser`) VALUES
(16, 1, '', '<!DOCTYPE html>\r\n<html>\r\n\r\n<head>\r\n    <meta name=\\\"renderer\\\" content=\\\"webkit\\\" />\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"IE=edge,chrome=1\\\" />\r\n    <link href=\\\"/css/Common.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Index.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <script src=\\\"/js/1.9.1jquery.min.js\\\" type=\\\"text/javascript\\\"></script>\r\n    <script src=\\\"/js/Index.js\\\" type=\\\"text/javascript\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/countUp.min.js\\\"></script>\r\n</head>\r\n\r\n<body>\r\n    <form name=\\\"form1\\\" method=\\\"post\\\" action=\\\"\\\" id=\\\"form1\\\">\r\n        [!--temp.header--]\r\n\r\n        <!--banner -->\r\n        <div class=\\\"banner\\\">\r\n            <div id=\\\"flashs\\\">\r\n                <div class=\\\"bd\\\">\r\n                    <div>\r\n\r\n                        <div alt=\\\"banner\\\" onclick=\\\"window.open(\\\'#\\\')\\\" class=\\\"bgitem\\\" id=\\\"flashbg0\\\" style=\\\"background: url(\\\'/images/banner.jpg\\\') no-repeat center top; height: 700px; width: 100%; cursor: pointer; overflow:hidden; position:relative;\\\">\r\n                        </div>\r\n\r\n                        <div alt=\\\"banner\\\" onclick=\\\"window.open(\\\'#\\\')\\\" class=\\\"bgitem\\\" id=\\\"flashbg1\\\" style=\\\"background: url(\\\'/images/banner.jpg\\\') no-repeat center top; height: 700px; width: 100%; cursor: pointer; overflow:hidden; position:relative;\\\">\r\n                        </div>\r\n\r\n                        <div alt=\\\"banner\\\" onclick=\\\"window.open(\\\'#\\\')\\\" class=\\\"bgitem\\\" id=\\\"flashbg2\\\" style=\\\"background: url(\\\'/images/banner.jpg\\\') no-repeat center top; height: 700px; width: 100%; cursor: pointer; overflow:hidden; position:relative;\\\">\r\n                        </div>\r\n\r\n                    </div>\r\n                </div>\r\n                <div class=\\\"btn hd\\\">\r\n                    <span></span>\r\n                    <span></span>\r\n                    <span></span>\r\n                </div>\r\n                <a href=\\\"javascript:;\\\" class=\\\"bot bot1 prev\\\"></a>\r\n                <a href=\\\"javascript:;\\\" class=\\\"bot bot2 next\\\"></a>\r\n            </div>\r\n        </div>\r\n\r\n        <!--业务范围-->\r\n        <div class=\\\"ywfw\\\">\r\n            <div class=\\\"container\\\">\r\n                <h2 class=\\\"h2_title\\\"><a href=\\\"#\\\">服务范围</a><i>华森物流--冷冻整车，零担业务</i><em></em></h2>\r\n\r\n                <div class=\\\"ywfw_con clearfix\\\">\r\n                    <dl class=\\\'dl1\\\'>\r\n                        <dt sid=\\\'0001,0045\\\'><img src=\\\'/images/fuwu1.jpg\\\' alt=\\\'钢构件制造安装\\\' />\r\n                            <div class=\\\'conbox\\\'>\r\n                                <h3><a href=\\\'/ggjzz.htm\\\'><i></i>冷链运输</a></h3>\r\n                                <h5><a href=\\\"#\\\">查看更多 +</a></h5>\r\n                            </div>\r\n                        </dt>\r\n                        <dd class=\\\'dd1\\\'><a href=\\\'/Products/wuliucangchufenjianz.html\\\'>冷链运输</a></dd>\r\n                        <dd class=\\\'dd2\\\'><a href=\\\'/Products/wuliucangchufenjianz.html\\\'>保持冷冻冷藏类食品质量，减少物品损耗</a></dd>\r\n                    </dl>\r\n                    <dl class=\\\'dl2\\\'>\r\n                        <dt sid=\\\'0001,0046\\\'><img src=\\\'/images/fuwu2.jpg\\\' alt=\\\'围护系统\\\' />\r\n                            <div class=\\\'conbox\\\'>\r\n                                <h3><a href=\\\'#\\\'><i></i>配送服务</a></h3>\r\n                                <h5><a href=\\\"#\\\">查看更多 +</a></h5>\r\n                                \r\n                            </div>\r\n                        </dt>\r\n                        <dd class=\\\'dd1\\\'><a href=\\\'/qtwhpj.htm\\\'>配送服务</a></dd>\r\n                        <dd class=\\\'dd2\\\'><a href=\\\'/qtwhpj.htm\\\'>专线运输直达，驾驶员团队优秀</a></dd>\r\n                    </dl>\r\n                    <dl class=\\\'dl3\\\'>\r\n                        <dt sid=\\\'0001,0048\\\'><img src=\\\'/images/fuwu3.jpg\\\' alt=\\\'项目出口\\\' />\r\n                            <div class=\\\'conbox\\\'>\r\n                                <h3><a href=\\\'/xmck.htm\\\'>仓储服务</a></h3>\r\n                                <h5><a href=\\\"#\\\">查看更多 +</a></h5>\r\n                            </div>\r\n                        </dt>\r\n                        <dd class=\\\'dd1\\\'><a href=\\\'/qtckcp.htm\\\'>仓储服务</a></dd>\r\n                        <dd class=\\\'dd2\\\'><a href=\\\'/qtckcp.htm\\\'>与招商仓库长期合作，交通便利</a></dd>\r\n                    </dl>\r\n\r\n                </div>\r\n\r\n            </div>\r\n        </div>\r\n\r\n        <!--关于我们-->\r\n        <div class=\\\"about\\\">\r\n            <div class=\\\"container\\\">\r\n                <h2 class=\\\"h2_title\\\"><a href=\\\"http://www.dglifeng.com/help/\\\">关于我们</a><i>华森物流--冷冻整车，零担业务</i><em></em></h2>\r\n\r\n                <dl class=\\\"abo_top\\\">\r\n                    <dt>\r\n                        <img src=\\\"/images/aboutimg.jpg\\\" alt=\\\"公司介绍\\\" class=\\\"videoImg\\\" /></dt>\r\n                    <dd>\r\n                        <a href=\\\"/help/\\\" title=\\\"公司介绍\\\"></a>\r\n                    </dd>\r\n                </dl>\r\n\r\n                <div class=\\\"abo_con clearfix\\\">\r\n                    <dl>\r\n                        <dt><img src=\\\"/images/aboicon03.png\\\" alt=\\\"始于2012年\\\" /></dt>\r\n                        <dd><i>始于</i><span><b id=\\\"num3\\\">2012</b>年</span></dd>\r\n                    </dl>\r\n                    <dl>\r\n                        <dt><img src=\\\"/images/aboicon01.png\\\" alt=\\\"专业团队100多人\\\" /></dt>\r\n                        <dd><i>专业团队</i><span><b id=\\\"num1\\\">100</b>多人</span></dd>\r\n                    </dl>\r\n\r\n                    <dl>\r\n                        <dt><img src=\\\"/images/aboicon02.png\\\" alt=\\\"占地面积200万㎡\\\" /></dt>\r\n                        <dd><i>占地面积</i><span><b id=\\\"num2\\\">100</b>万㎡</span></dd>\r\n                    </dl>\r\n\r\n                    <dl>\r\n                        <dt><img src=\\\"/images/aboicon04.png\\\" alt=\\\"成功案例1000项\\\" /></dt>\r\n                        <dd><i>成功案例</i><span><b id=\\\"num4\\\">1000</b>项</span></dd>\r\n                    </dl>\r\n\r\n                </div>\r\n\r\n            </div>\r\n        </div>\r\n\r\n        <!-- <div class=\\\"videobf\\\">\r\n            <div class=\\\"video_con\\\"><iframe height=500 width=1000 src=\\\'http://player.youku.com/embed/XMzM1MTM4NzExMg==\\\'\r\n                    frameborder=0 \\\'allowfullscreen\\\'></iframe> <span class=\\\"closeVideo\\\"></span></div>\r\n        </div> -->\r\n\r\n        <script>\r\n            var options = {\r\n                useEasing: true,\r\n                useGrouping: true,\r\n                separator: \\\'\\\',\r\n                decimal: \\\'.\\\',\r\n                prefix: \\\'\\\',\r\n                suffix: \\\'\\\'\r\n            };\r\n            var demo1 = new CountUp(\\\"num1\\\", 0, 100, 0, 2, options);\r\n            var demo2 = new CountUp(\\\"num2\\\", 0, 100, 0, 2, options);\r\n            var demo3 = new CountUp(\\\"num3\\\", 0, 2012, 0, 2, options);\r\n            var demo4 = new CountUp(\\\"num4\\\", 0, 1000, 0, 2, options);\r\n\r\n            $(window).scroll(function () {\r\n                if ($(window).scrollTop() >= 1600) {\r\n\r\n                    demo1.start();\r\n                    demo2.start();\r\n                    demo3.start();\r\n                    demo4.start();\r\n                }\r\n            })\r\n\r\n            $(\\\".videoImg\\\").click(function () {\r\n                $(\\\".videobf\\\").slideDown();\r\n                $(\\\".videobf .video_con\\\").addClass(\\\"cur\\\");\r\n            })\r\n\r\n            $(\\\".closeVideo\\\").click(function () {\r\n                $(\\\".videobf\\\").slideUp();\r\n                $(\\\".videobf .video_con\\\").removeClass(\\\"cur\\\");\r\n            })\r\n        </script>\r\n\r\n\r\n\r\n        <!--经典案例-->\r\n        <div class=\\\"jdal\\\">\r\n\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"jdal_top\\\">\r\n                    <dl>\r\n                        <dt><a href=\\\"http://www.dglifeng.com/jdal.htm\\\"><i>Successful Cases</i><span>成功案例</span><em></em></a></dt>\r\n                        <dd>\r\n                            <em></em><a href=\\\"http://www.dglifeng.com/jdal.htm\\\">查看更多</a></dd>\r\n                    </dl>\r\n                    <ul class=\\\"jdal_type clearfix\\\">\r\n\r\n                        <li class=\\\'cur\\\'><a href=\\\"/Helps/biyadiqiche1.html\\\">\r\n                                <span>冷链运输</span><i>Cold chain</i></a></li>\r\n\r\n                        <li><a href=\\\"/Helps/xugongbaxi.html\\\">\r\n                                <span>配送服务</span><i>Distribution</i></a></li>\r\n\r\n                        <li><a href=\\\"/Helps/aomenweinisirendujia.html\\\">\r\n                                <span>仓储服务</span><i>Storage</i></a></li>\r\n\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n            <div class=\\\"jdal_bot\\\">\r\n\r\n                <div class=\\\"conbox cur\\\">\r\n                    <img src=\\\"/images/20180104152049_60002.jpg\\\" alt=\\\"\\\" />\r\n                    <div class=\\\"container\\\">\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\">冷链运输</a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">随着人们生活水平的不断提高，对冷冻类食品的需求越来越多。但是冷冻食品不同于其他产品，它需要具有专业的冷链运输体系，才能确保冷冻冷藏类食品在规定的温度下保持其质量……</a>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\"><a href=\\\"#\\\">查看更多</a></dd>\r\n                        </dl>\r\n                    </div>\r\n                </div>\r\n\r\n                <div class=\\\"conbox \\\">\r\n                    <img src=\\\"/images/20180104152049_60002.jpg\\\" alt=\\\"\\\" />\r\n                    <div class=\\\"container\\\">\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\">配送服务</a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">保证货物品质安全，重中之重——全程GPS监控、温度异常随时报警。时效是每一个客户的需求——公司车型齐全，专线运输直达让您更放心更省心。优秀的驾驶员团队——严格招聘、规范管理……</a>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\"><a href=\\\"/Helps/biyadiqiche1.html\\\">查看更多</a></dd>\r\n                        </dl>\r\n                    </div>\r\n                </div>\r\n\r\n                <div class=\\\"conbox \\\">\r\n                    <img src=\\\"/images/20180104152049_60002.jpg\\\" alt=\\\"\\\" />\r\n                    <div class=\\\"container\\\">\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\">仓储服务</a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">仓库名称：招商局物流（我公司与招商仓库是长期合作伙伴） 仓库地址：新都区物流大道399号（位于绕城外侧，进出城交通便利） ……</a>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\"><a href=\\\"#\\\">查看更多</a></dd>\r\n                        </dl>\r\n                    </div>\r\n                </div>\r\n\r\n            </div>\r\n\r\n        </div>\r\n        <script type=\\\"text/javascript\\\">\r\n            $(\\\".jdal .jdal_top .jdal_type li\\\").mouseenter(function () {\r\n                $(this).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n                $(\\\".jdal .jdal_bot .conbox\\\").eq($(this).index()).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n\r\n            })\r\n        </script>\r\n\r\n\r\n        <div class=\\\"advantage\\\">\r\n\r\n            <h2 class=\\\"h2_title\\\"><span>为什么选择我们</span><i>专业从事冷藏、普通货物业务</i><em></em></h2>\r\n\r\n            <div class=\\\"adv_con\\\">\r\n                <span class=\\\"adv_btnl btn\\\" id=\\\"adv_btnl\\\"><i></i></span><span class=\\\"adv_btnr btn\\\" id=\\\"adv_btnr\\\"><i></i></span>\r\n                <div>\r\n\r\n                    <div class=\\\"conbox clearfix cur\\\">\r\n                        <div class=\\\"conleft fl\\\">\r\n                            <img src=\\\"/images/11.jpg\\\" alt=\\\"软件实力\\\" />\r\n                        </div>\r\n                        <div class=\\\"conright fr\\\">\r\n                            <h3><span>专业团队 物流平台 丰富经验</span><i>专业从事冷藏、普通货物业务</i></h3>\r\n                            <p class=\\\"p1\\\">成都市华森物流有限公司创立于2012年，专注于各类食品、乳品、水产、果蔬、酒业等产品的干线运输及区域配送、物流业务咨询与仓储服务。</p>\r\n                            <p class=\\\"p1\\\">公司在软件上，拥有一支高素质、专业化、年轻化的物流管理团队和资深专家顾问群，有现代化的物流信息平台，汇聚了丰富的物流服务经验和先进的管理服务理念。</p>\r\n                            \r\n                        </div>\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox clearfix \\\">\r\n                        <div class=\\\"conleft fl\\\">\r\n                            <img src=\\\"/images/22.jpg\\\" alt=\\\"硬件实力\\\" />\r\n                        </div>\r\n                        <div class=\\\"conright fr\\\">\r\n                            <h3><span>车型齐全 GPS监控 制冷性能好</span><i>满足各种运输、用车需求</i></h3>\r\n                            <p class=\\\"p1\\\">公司在硬件上，自有车型齐全，3-30吨的冷藏车、普通货运车多部，以及其他车型的联营车。</p>\r\n                            <p class=\\\"p1\\\">配置有GPS卫星定位系统，全程监控车辆的运营状态，安全性强、可靠性高；<br>其中冷藏车的制冷性能稳定，最低可达到-28℃。</p>\r\n                            <p class=\\\"p1\\\">能够满足各类客户的运输质量要求和客户用车需要。</p>\r\n                            \r\n                        </div>\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox clearfix \\\">\r\n                        <div class=\\\"conleft fl\\\">\r\n                            <img src=\\\"/images/33.jpg\\\" alt=\\\"荣誉资质\\\" />\r\n                        </div>\r\n                        <div class=\\\"conright fr\\\">\r\n                            <h3><span>专业团队 物流平台 丰富经验</span><i>专业从事冷藏、普通货物业务</i></h3>\r\n                            <p class=\\\"p1\\\">成都市华森物流有限公司创立于2012年，专注于各类食品、乳品、水产、果蔬、酒业等产品的干线运输及区域配送、物流业务咨询与仓储服务。</p>\r\n                            <p class=\\\"p1\\\">公司在软件上，拥有一支高素质、专业化、年轻化的物流管理团队和资深专家顾问群，有现代化的物流信息平台，汇聚了丰富的物流服务经验和先进的管理服务理念。</p>\r\n                            \r\n                        </div>\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox clearfix \\\">\r\n                        <div class=\\\"conleft fl\\\">\r\n                            <img src=\\\"/images/44.jpg\\\" alt=\\\"无忧服务\\\" />\r\n                        </div>\r\n                        <div class=\\\"conright fr\\\">\r\n                            <h3><span>车型齐全 GPS监控 制冷性能好</span><i>满足各种运输、用车需求</i></h3>\r\n                            <p class=\\\"p1\\\">公司在硬件上，自有车型齐全，3-30吨的冷藏车、普通货运车多部，以及其他车型的联营车。</p>\r\n                            <p class=\\\"p1\\\">配置有GPS卫星定位系统，全程监控车辆的运营状态，安全性强、可靠性高；<br>其中冷藏车的制冷性能稳定，最低可达到-28℃。</p>\r\n                            <p class=\\\"p1\\\">能够满足各类客户的运输质量要求和客户用车需要。</p>\r\n                            \r\n                        </div>\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n            <div class=\\\"container\\\">\r\n                <ul class=\\\"adv_type clearfix\\\">\r\n\r\n                    <li class=\\\"li1 cur\\\">\r\n                        <p><span>软件实力</span><i>Software</i><em></em></p>\r\n                    </li>\r\n\r\n                    <li class=\\\"li2 \\\">\r\n                        <p><span>硬件实力</span><i>Hardware</i><em></em></p>\r\n                    </li>\r\n\r\n                    <li class=\\\"li3 \\\">\r\n                        <p><span>荣誉资质</span><i>Honours</i><em></em></p>\r\n                    </li>\r\n\r\n                    <li class=\\\"li4 \\\">\r\n                        <p><span>无忧服务</span><i>service</i><em></em></p>\r\n                    </li>\r\n\r\n                </ul>\r\n            </div>\r\n\r\n        </div>\r\n        <script type=\\\"text/javascript\\\">\r\n            var Owid1 = $(\\\".advantage .conbox\\\").width() * 0.5;\r\n            var Onum = 0\r\n\r\n            $(\\\".advantage .conbox .conleft li\\\").width(Owid1);\r\n            $(\\\".advantage .conbox .conright li\\\").width(Owid1);\r\n            $(\\\".advantage .conbox .conright\\\").height($(\\\".advantage .conbox\\\").height())\r\n            $(\\\".advantage .conbox .conright li\\\").height($(\\\".advantage .conbox\\\").height())\r\n            $(\\\"#adv_btnr\\\").click(function () {\r\n                Onum++;\r\n                if (Onum > 3) {\r\n                    Onum = 0;\r\n                }\r\n                $(\\\".advantage .adv_type li\\\").eq(Onum).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n                $(\\\".advantage .adv_con .conbox\\\").eq(Onum).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\")\r\n            })\r\n\r\n            $(\\\"#adv_btnl\\\").click(function () {\r\n                Onum--;\r\n                if (Onum < 0) {\r\n                    Onum = 3;\r\n                }\r\n                $(\\\".advantage .adv_type li\\\").eq(Onum).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n                $(\\\".advantage .adv_con .conbox\\\").eq(Onum).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n            })\r\n\r\n            $(\\\".advantage .adv_type li\\\").mouseenter(function () {\r\n                $(this).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n                Onum = $(this).index();\r\n                $(\\\".advantage .adv_con .conbox\\\").eq(Onum).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\")\r\n            })\r\n\r\n            $(\\\'.btn\\\').bind(\\\"selectstart\\\", function () { return false; });\r\n        </script>\r\n\r\n\r\n        <div class=\\\"fwkh\\\">\r\n            <div class=\\\"container\\\">\r\n                <h2 class=\\\"h2_title\\\"><a href=\\\"http://www.dglifeng.com/hzhb.htm\\\"\r\n                       >合作伙伴</a><i>已为众多企业提供物流支持</i><em></em></h2>\r\n\r\n                <div class=\\\"fwkh_con clearfix\\\">\r\n\r\n                    <ul>\r\n\r\n                        <li><a href=\\\"#\\\" title=\\\"\\\"><img src=\\\"/images/p1.jpg\\\" alt=\\\"\\\" /></a></li>\r\n                        <li><a href=\\\"#\\\" title=\\\"\\\"><img src=\\\"/images/p2.jpg\\\" alt=\\\"\\\" /></a></li>\r\n                        <li><a href=\\\"#\\\" title=\\\"\\\"><img src=\\\"/images/p3.jpg\\\" alt=\\\"\\\" /></a></li>\r\n                        <li><a href=\\\"#\\\" title=\\\"\\\"><img src=\\\"/images/p4.jpg\\\" alt=\\\"\\\" /></a></li>\r\n                        <li><a href=\\\"#\\\" title=\\\"\\\"><img src=\\\"/images/p5.jpg\\\" alt=\\\"\\\" /></a></li>\r\n                        <li><a href=\\\"#\\\" title=\\\"\\\"><img src=\\\"/images/p6.jpg\\\" alt=\\\"\\\" /></a></li>\r\n                        <li><a href=\\\"#\\\" title=\\\"\\\"><img src=\\\"/images/p7.jpg\\\" alt=\\\"\\\" /></a></li>\r\n                        <li><a href=\\\"#\\\" title=\\\"\\\"><img src=\\\"/images/p8.jpg\\\" alt=\\\"\\\" /></a></li>\r\n                        <li><a href=\\\"#\\\" title=\\\"\\\"><img src=\\\"/images/p9.jpg\\\" alt=\\\"\\\" /></a></li>\r\n                        <li><a href=\\\"#\\\" title=\\\"\\\"><img src=\\\"/images/p10.jpg\\\" alt=\\\"\\\" /></a></li>\r\n                       \r\n                    </ul>\r\n\r\n\r\n                </div>\r\n\r\n            </div>\r\n        </div>\r\n\r\n\r\n        <!--新闻-->\r\n        <div class=\\\"news\\\">\r\n            <div class=\\\"container\\\">\r\n                <h2 class=\\\"h2_title\\\"><i>NEWS CENTER</i><a href=\\\"http://www.dglifeng.com/news/\\\"\r\n                       >新闻中心</a><em></em></h2>\r\n\r\n                <ul class=\\\"news_type clearfix\\\">\r\n\r\n                    <li class=\\\"cur\\\"><a href=\\\"#\\\">公司新闻</a></li>\r\n                    <li><a href=\\\"#\\\">行业动态</a></li>\r\n                    <li><a href=\\\"#\\\">媒体聚焦</a></li>\r\n                    <li><a href=\\\"#\\\">常见问题</a></li>\r\n\r\n                </ul>\r\n                <div class=\\\"news_con clearfix\\\">\r\n\r\n                    <div class=\\\"conbox cur\\\">\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news1.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">华森物流召开安全消防培训</a>\r\n                                <span>2020-02-02</span>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防 ...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news2.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">华森物流2019年年终聚餐</a>\r\n                                <span>2020-02-02</span></dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    为喜迎新年的到来，答谢公司全体员工2019年来的辛勤工作与不懈努力，公司于2019年12月30 日在举办了团年聚餐活动。...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news3.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">2017年我国冷链物流行业机遇与挑战</a>\r\n                                <span>2020-02-02</span></dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    机遇 1实体+电商+冷链实现共赢 李克强总理在7月20日的国务院常务会议上说：要推动互联网、大数据、云计算等信息技术 ...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox \\\">\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news1.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">华森物流召开安全消防培训</a>\r\n                                <span>2020-02-02</span>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防 ...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news2.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">华森物流2019年年终聚餐</a>\r\n                                <span>2020-02-02</span></dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    为喜迎新年的到来，答谢公司全体员工2019年来的辛勤工作与不懈努力，公司于2019年12月30 日在举办了团年聚餐活动。...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news3.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">2017年我国冷链物流行业机遇与挑战</a>\r\n                                <span>2020-02-02</span></dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    机遇 1实体+电商+冷链实现共赢 李克强总理在7月20日的国务院常务会议上说：要推动互联网、大数据、云计算等信息技术 ...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox \\\">\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news1.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">华森物流召开安全消防培训</a>\r\n                                <span>2020-02-02</span>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防 ...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news2.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">华森物流2019年年终聚餐</a>\r\n                                <span>2020-02-02</span></dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    为喜迎新年的到来，答谢公司全体员工2019年来的辛勤工作与不懈努力，公司于2019年12月30 日在举办了团年聚餐活动。...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news3.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">2017年我国冷链物流行业机遇与挑战</a>\r\n                                <span>2020-02-02</span></dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    机遇 1实体+电商+冷链实现共赢 李克强总理在7月20日的国务院常务会议上说：要推动互联网、大数据、云计算等信息技术 ...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox \\\">\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news1.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">华森物流召开安全消防培训</a>\r\n                                <span>2020-02-02</span>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    为了寓教于乐，更有效地普及消防安全知识，提升消防安全素养，华森物流于本月给驾驶员培训了消防知识有效的预防 ...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news2.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">华森物流2019年年终聚餐</a>\r\n                                <span>2020-02-02</span></dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    为喜迎新年的到来，答谢公司全体员工2019年来的辛勤工作与不懈努力，公司于2019年12月30 日在举办了团年聚餐活动。...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                        <dl>\r\n                            <dt><a href=\\\"#\\\"><img src=\\\"/images/news3.jpg\\\" alt=\\\"\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"#\\\">2017年我国冷链物流行业机遇与挑战</a>\r\n                                <span>2020-02-02</span></dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    机遇 1实体+电商+冷链实现共赢 李克强总理在7月20日的国务院常务会议上说：要推动互联网、大数据、云计算等信息技术 ...\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"#\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n\r\n                    </div>\r\n\r\n                </div>\r\n\r\n            </div>\r\n        </div>\r\n\r\n        <script type=\\\"text/javascript\\\">\r\n            $(\\\".news .news_type li\\\").mouseenter(function () {\r\n                $(this).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n                $(\\\".news .news_con .conbox\\\").eq($(this).index()).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n            })\r\n        </script>\r\n\r\n        [!--temp.footer--]\r\n\r\n    </form>\r\n</body>\r\n</html>', 0, 0, '', 0, 0, '', 0, 0, 0, 1592363167, 'pubindextemp', 1, 'admin'),
(17, 3, '关于单页模板', '<!DOCTYPE html\r\n    PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"IE=edge,chrome=1\\\" />\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link href=\\\"/css/Common.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    <!--Content:Start-->\r\n    <div class=\\\"aboutBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\" style=\\\"padding-bottom: 0;\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--分类-->\r\n        <div class=\\\"aboutMenu\\\">\r\n            <ul class=\\\'clearfix\\\'>\r\n                [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n            </ul>\r\n        </div>\r\n        <script>\r\n            $(document).scroll(function () {\r\n                $(window).scroll(function () {\r\n                    var oTop = $(window).scrollTop();\r\n                    if (oTop > 600) {\r\n                        $(\\\".aboutMenu\\\").css({ \\\'position\\\': \\\'fixed\\\', \\\'top\\\': \\\'0\\\', \\\'width\\\': \\\'100%\\\', \\\'background-color\\\': \\\'#fff\\\', \\\'padding-bottom\\\': \\\'20px\\\', \\\'padding-top\\\': \\\'20px\\\', \\\"z-index\\\": \\\'9999\\\' });\r\n                    }\r\n                    else {\r\n                        $(\\\".aboutMenu\\\").css({ \\\'position\\\': \\\'\\\', \\\'top\\\': \\\'\\\', \\\'width\\\': \\\'\\\', \\\'background\\\': \\\'none\\\', \\\'padding-bottom\\\': \\\'\\\', \\\'padding-top\\\': \\\'40px\\\' })\r\n                    }\r\n                })\r\n            })\r\n\r\n            $(\\\'.aboutMenu li a\\\').each(function() {\r\n                $this = $(this);\r\n                if ($this[0].href == String(window.location)) {\r\n                    $this.parents(\\\'li\\\').addClass(\\\'cur\\\');\r\n                }\r\n            });\r\n        </script>\r\n        <!-- 公司介绍 -->\r\n        <div class=\\\"aboutIntro\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mub01Title\\\">\r\n                    <h3><i class=\\\"xianL\\\"></i>公司<em>简介</em><i class=\\\"xianR\\\"></i></h3>\r\n                    <p>Company &nbsp; Profile</p>\r\n                </div>\r\n                <div class=\\\"mainCon\\\">\r\n                    [!--newstext--]\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!-- 企业荣誉 -->\r\n        <div class=\\\"aboutHonor\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mub01Title\\\" id=\\\"ry\\\">\r\n                    <a href=\\\"#\\\">\r\n                        <h3><i class=\\\"xianL\\\"></i>荣誉资质<i class=\\\"xianR\\\"></i></h3>\r\n                    </a>\r\n                    <p>Honorary Qualification</p>\r\n                </div>\r\n                <div class=\\\"mainCon\\\">\r\n                    <i class=\\\"btn01\\\" id=\\\"aboutHonorBtn01\\\"></i><i class=\\\"btn02\\\" id=\\\"aboutHonorBtn02\\\">\r\n                    </i>\r\n                    <div class=\\\"aboutHonorCon\\\" id=\\\"aboutHonor\\\">\r\n                        <ul class=\\\"clearfix\\\">\r\n                            <li>\r\n                                <a href=\\\"#\\\">\r\n                                    <img src=\\\"/images/zs.jpg\\\" alt=\\\"\\\" width=\\\"280\\\" height=\\\"290\\\" />\r\n                                    <span>公司荣誉资质证书照片</span>\r\n                                </a>\r\n                            </li>\r\n                            <li>\r\n                                <a href=\\\"#\\\">\r\n                                    <img src=\\\"/images/zs.jpg\\\" alt=\\\"\\\" width=\\\"280\\\" height=\\\"290\\\" />\r\n                                    <span>公司荣誉资质证书照片</span>\r\n                                </a>\r\n                            </li>\r\n                            <li>\r\n                                <a href=\\\"#\\\">\r\n                                    <img src=\\\"/images/zs.jpg\\\" alt=\\\"\\\" width=\\\"280\\\" height=\\\"290\\\" />\r\n                                    <span>公司荣誉资质证书照片</span>\r\n                                </a>\r\n                            </li>\r\n                            <li>\r\n                                <a href=\\\"#\\\">\r\n                                    <img src=\\\"/images/zs.jpg\\\" alt=\\\"\\\" width=\\\"280\\\" height=\\\"290\\\" />\r\n                                    <span>公司荣誉资质证书照片</span>\r\n                                </a>\r\n                            </li>\r\n                            <li>\r\n                                <a href=\\\"#\\\">\r\n                                    <img src=\\\"/images/zs.jpg\\\" alt=\\\"\\\" width=\\\"280\\\" height=\\\"290\\\" />\r\n                                    <span>公司荣誉资质证书照片</span>\r\n                                </a>\r\n                            </li>\r\n                            \r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!-- 图说力丰 -->\r\n        <div class=\\\"aboutMien\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mub01Title\\\" id=\\\"fc\\\">\r\n                    <a href=\\\"#\\\">\r\n                        <h3><i class=\\\"xianL\\\"></i>公司<em>掠影</em><i class=\\\"xianR\\\"></i></h3>\r\n                    </a>\r\n                    <p>Company Gallery</p>\r\n                </div>\r\n                <div class=\\\"mainCon\\\">\r\n                    <span class=\\\"btn01\\\" id=\\\"aboutMienBtn01\\\"></span><span class=\\\"btn02\\\" id=\\\"aboutMienBtn02\\\">\r\n                    </span>\r\n                    <div class=\\\"aboutMienCon\\\">\r\n                        <div id=\\\"aboutMien\\\" class=\\\"aboutMienBox\\\">\r\n                            <div class=\\\"iteam\\\">\r\n                                <b></b><a href=\\\"#\\\">\r\n                                    <img src=\\\"/images/pic1.jpg\\\" alt=\\\"\\\" /></a>\r\n                                <p><a href=\\\"#\\\">公司照片</a></p>\r\n                            </div>\r\n                            <div class=\\\"iteam\\\">\r\n                                <b></b><a href=\\\"#\\\">\r\n                                    <img src=\\\"/images/pic2.jpg\\\" alt=\\\"\\\" /></a>\r\n                                <p><a href=\\\"#\\\">公司车辆</a></p>\r\n                            </div>\r\n                            <div class=\\\"iteam\\\">\r\n                                <b></b><a href=\\\"#\\\">\r\n                                    <img src=\\\"/images/pic3.jpg\\\" alt=\\\"\\\" /></a>\r\n                                <p><a href=\\\"#\\\">团队照片</a></p>\r\n                            </div>\r\n                            <div class=\\\"iteam\\\">\r\n                                <b></b><a href=\\\"#\\\">\r\n                                    <img src=\\\"/images/pic4.jpg\\\" alt=\\\"\\\" /></a>\r\n                                <p><a href=\\\"#\\\">办公室照片</a></p>\r\n                            </div>\r\n\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--Content:End-->\r\n    \r\n    [!--temp.footer--]\r\n    \r\n    <script>\r\n        // headNavPosition(\\\"help\\\", \\\"0001,0009\\\");\r\n        msw_jzt(\\\"aboutMien\\\", \\\"aboutMienBtn01\\\", \\\"aboutMienBtn02\\\", \\\"iteam\\\", \\\"p\\\", 4000, 3, 50);\r\n        mswMove(\\\"aboutHonor\\\", \\\"aboutHonorBtn01\\\", \\\"aboutHonorBtn02\\\", \\\"\\\", true, \\\"left\\\", true, 310, 1000, 3000, 4);\r\n    </script>\r\n</body>\r\n</html>', 0, 0, '', 0, 1, 'Y-m-d', 0, 0, 0, 1592363353, 'newstemp', 1, 'admin');
INSERT INTO `hswl_enewstempbak` (`bid`, `tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`, `baktime`, `temptype`, `gid`, `lastuser`) VALUES
(18, 4, '联系单页模板 ', '<!DOCTYPE html\r\n    PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head id=\\\"Head1\\\">\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link href=\\\"/css/Common.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    <!--Content:Start-->\r\n    <div class=\\\"linkUsBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!-- linkUsMap -->\r\n        <div class=\\\"linkUsMap\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mainCon clearfix\\\">\r\n                    <div style=\\\"background:#fff;padding:20px 50px;bborder-bottom:15px solide #f4f4f4;\\\">\r\n                        <table style=\\\"background:#fff;width:100%;margin-bottom:10px\\\">\r\n                            <tbody>\r\n                                <tr class=\\\"firstRow\\\">\r\n                                    <td valign=\\\"top\\\" style=\\\"word-break: break-all;\\\">\r\n                                        <p><img src=\\\"/images/20180108171705642855.png\\\" title=\\\"\\\" alt=\\\"\\\" /></p>\r\n                                    </td>\r\n                                    <td valign=\\\"middle\\\" style=\\\"word-break: break-all;\\\" align=\\\"left\\\">\r\n                                        <p style=\\\"font-size: 20px; color: #000; line-height: 1.75em;\\\"><strong style=\\\"font-size: 18px;\\\">欢迎您来到<span style=\\\"color: #2f4a8d;\\\">成都市华森物流有限公司</span>官网</strong><br /></p>\r\n                                        <p><br /></p>\r\n                                        <p style=\\\"line-height: 1.75em;\\\">\r\n                                            [!--newstext--]\r\n                                        </p>\r\n                                    </td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        <p><br /></p>\r\n                        <hr />\r\n                        <table data-sort=\\\"sortDisabled\\\" style=\\\"width:100%\\\" width=\\\"1170\\\">\r\n                            <tbody>\r\n                                <tr class=\\\"firstRow\\\">\r\n                                    <td valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"2\\\" style=\\\"word-break: break-all;\\\"\r\n                                        align=\\\"center\\\" width=\\\"171\\\" height=\\\"119\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px; margin-top: 10px;\\\"><img\r\n                                                src=\\\"/images/20180108113919313273.png\\\" alt=\\\"\\\" /><span\r\n                                                id=\\\"_baidu_bookmark_start_0\\\"\r\n                                                style=\\\"display: none; line-height: 0px;\\\"></span></p>\r\n                                    </td>\r\n                                    <td width=\\\"57\\\" valign=\\\"middle\\\" rowspan=\\\"3\\\" colspan=\\\"1\\\"\r\n                                        style=\\\"word-break: break-all;\\\" align=\\\"center\\\"><img\r\n                                            src=\\\"/images/20180108113606472501.jpg\\\" alt=\\\"\\\" /></td>\r\n                                    <td valign=\\\"middle\\\" style=\\\"word-break: break-all;\\\" rowspan=\\\"1\\\" colspan=\\\"2\\\"\r\n                                        width=\\\"183\\\" align=\\\"center\\\" height=\\\"119\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px; margin-top: 10px;\\\"><img\r\n                                                src=\\\"/images/20180108113958377772.png\\\" alt=\\\"\\\" /></p>\r\n                                    </td>\r\n                                    <td width=\\\"57\\\" valign=\\\"middle\\\" rowspan=\\\"3\\\" colspan=\\\"1\\\"\r\n                                        style=\\\"word-break: break-all;\\\" align=\\\"center\\\"><img\r\n                                            src=\\\"/images/20180108113619556223.jpg\\\" alt=\\\"\\\" /></td>\r\n                                    <td valign=\\\"middle\\\" colspan=\\\"2\\\" rowspan=\\\"1\\\" style=\\\"word-break: break-all;\\\"\r\n                                        align=\\\"center\\\" width=\\\"198\\\" height=\\\"119\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px; margin-top: 10px;\\\"><img\r\n                                                src=\\\"/images/20180108114108224499.png\\\" alt=\\\"\\\" /></p>\r\n                                    </td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"2\\\" align=\\\"center\\\"\r\n                                        style=\\\"word-break: break-all;\\\" width=\\\"171\\\" height=\\\"31\\\"><img\r\n                                            src=\\\"/images/20180108113635080913.jpg\\\" title=\\\"\\\" alt=\\\"\\\" /></td>\r\n                                    <td valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"2\\\" align=\\\"center\\\"\r\n                                        style=\\\"word-break: break-all;\\\" width=\\\"183\\\" height=\\\"31\\\"><img\r\n                                            src=\\\"/images/20180108113650950411.jpg\\\" title=\\\"\\\" alt=\\\"\\\" /></td>\r\n                                    <td valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"2\\\" align=\\\"center\\\"\r\n                                        style=\\\"word-break: break-all;\\\" width=\\\"198\\\" height=\\\"31\\\"><img\r\n                                            src=\\\"/images/20180108113709672654.jpg\\\" title=\\\"\\\" alt=\\\"\\\" /></td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td valign=\\\"top\\\" style=\\\"word-break: break-all;\\\" align=\\\"center\\\" height=\\\"86\\\"\r\n                                        rowspan=\\\"1\\\" colspan=\\\"2\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-top: 10px;\\\">\r\n                                            24小时专线：13981791475</p>\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px;\\\"><span\r\n                                                style=\\\"text-align: -webkit-center; background-color: rgb(255, 255, 255);\\\">传真：028-61297652</span>\r\n                                        </p>\r\n                                    </td>\r\n                                    <td valign=\\\"top\\\" colspan=\\\"2\\\" rowspan=\\\"1\\\" style=\\\"word-break: break-all;\\\"\r\n                                        align=\\\"center\\\" height=\\\"86\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px; margin-top: 10px;\\\"><span\r\n                                                style=\\\"text-align: -webkit-center; background-color: rgb(255, 255, 255);\\\">咨询邮箱：qiaoj@hslcwl.cn</span>\r\n                                        </p>\r\n                                    </td>\r\n                                    <td valign=\\\"top\\\" style=\\\"word-break: break-all;\\\" align=\\\"center\\\" width=\\\"200\\\" height=\\\"86\\\"\r\n                                        rowspan=\\\"1\\\" colspan=\\\"2\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px; margin-top: 10px;\\\">\r\n                                            地址：四川省成都市成华区龙潭工业园钢铁领域B座518室成都市华森物流有限公司</p>\r\n                                    </td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        <p><br /></p>\r\n                        <hr />\r\n                        <p><br /></p>\r\n                        \r\n                        <div id=\\\"baiduMap\\\" style=\\\"width:100%;height:454px;\\\"></div>\r\n                        <script type=\\\"text/javascript\\\" src=\\\"http://api.map.baidu.com/api?v=2.0&ak=ny22a16GzbMDs1xHsTvjlqtZYpwFhUbw\\\"></script>\r\n                        <script type=\\\"text/javascript\\\">\r\n                            //创建地图\r\n                            var myMap = new BMap.Map(\\\"baiduMap\\\");\r\n                            var point = new BMap.Point(104.184247,30.699351);\r\n                            myMap.centerAndZoom(point, 16);\r\n                            //添加覆盖物\r\n                            var marker = new BMap.Marker(point);  // 创建标注 \r\n                            myMap.addOverlay(marker);   // 将标注添加到地图中\r\n                            //添加控件\r\n                            myMap.addControl(new BMap.NavigationControl()); // 平移缩放\r\n                            myMap.addControl(new BMap.OverviewMapControl()); //缩略地图\r\n                            //myMap.enableScrollWheelZoom(); //滚轮缩放\r\n                            //创建信息窗口\r\n                            var infoWindow = new BMap.InfoWindow(\\\"<p><strong>成都市华森物流有限公司</strong></p><p>地址：四川省成都市成华区龙潭工业园钢铁领域B座518室</p>\\\");\r\n                                marker.openInfoWindow(infoWindow);\r\n                        </script>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!-- 发车时间表-->\r\n        <div class=\\\"timetable\\\">\r\n            <div class=\\\"container\\\">\r\n                <h3>发车时间表</h3>\r\n                <table>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td><strong>干线信息</strong></td>\r\n                            <td colspan=\\\"3\\\">冷冻、冷藏及恒温零担、整车</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周一</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td></td>\r\n                            <td></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周二</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td>成都-贵州全境</td>\r\n                            <td>昆明-成都</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周三</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td></td>\r\n                            <td></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周四</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td></td>\r\n                            <td></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周五</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td>成都-贵州全境</td>\r\n                            <td>昆明-成都</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周六</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td></td>\r\n                            <td></td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <table>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td><strong>成都办公地址</strong></td>\r\n                            <td>成都市成华区龙潭工业园钢铁领域B座518室华森物流有限公司</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><strong>成都仓库地址</strong></td>\r\n                            <td>四川省成都市双流口岸路136号，郑明仓库</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><strong>昆明仓库地址</strong></td>\r\n                            <td>云南省昆明市呈贡区七甸工业园区哨达路16号</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><strong>贵阳仓库地址</strong></td>\r\n                            <td>贵州省贵阳市乌当区高新东路18号，贵州瀑布冷链</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <table>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td><strong>城配信息</strong></td>\r\n                            <td>成都市内配送及周边区域配送</td>\r\n                            <td>西安市内配送</td>\r\n                            <td>昆明市内配送</td>\r\n                            <td>贵阳市内配送</td>\r\n                        </tr>\r\n                        \r\n                    </tbody>\r\n                </table>\r\n            </div>\r\n            \r\n        </div>\r\n        <!-- linkUsLy-->\r\n        <div class=\\\"linkUsLy\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mainCon\\\">\r\n                    <div class=\\\"title\\\">\r\n                        <h3>在线留言</h3>\r\n                        <p>\r\n                            Online message</p>\r\n                    </div>\r\n                    <form name=\\\"Form1\\\" method=\\\"post\\\" action=\\\"Help/ContactUs.aspx\\\" id=\\\"Form1\\\">\r\n                        \r\n                        <div class=\\\"box\\\" id=\\\"QK\\\">\r\n                            <input type=\\\"text\\\" class=\\\"input1\\\" placeholder=\\\"您的姓名\\\" id=\\\"txtContact\\\" />\r\n                            <input type=\\\"text\\\" class=\\\"input2\\\" placeholder=\\\"您的电话\\\" id=\\\"txtTel\\\" />\r\n                            <input type=\\\"text\\\" class=\\\"input3\\\" placeholder=\\\"您的邮箱\\\" id=\\\"txtTel\\\" />\r\n                            <textarea placeholder=\\\"留言内容\\\" id=\\\"txtShortDesc\\\"></textarea>\r\n                            <input type=\\\"submit\\\" name=\\\"submit\\\" value=\\\"提交留言\\\" class=\\\"submit\\\" />\r\n                            <!-- <a href=\\\"javascript:void(0);\\\" title=\\\"提交留言\\\" onclick=\\\"sendLeaveword_notBz(this);\\\">提交留言</a> -->\r\n                        </div>\r\n                        \r\n                    </form>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--Content:End-->\r\n    \r\n    [!--temp.footer--]\r\n</body>\r\n</html>', 0, 0, '', 0, 1, 'Y-m-d', 0, 0, 0, 1592363719, 'newstemp', 1, 'admin'),
(19, 2, '通用单页模板', '<!DOCTYPE html\r\n    PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"IE=edge,chrome=1\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link type=\\\"text/css\\\" rel=\\\"stylesheet\\\" href=\\\"/css/Common.css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link rel=\\\"stylesheet\\\" rev=\\\"stylesheet\\\" href=\\\"/css/pshow2.css\\\" type=\\\"text/css\\\" />\r\n    <link rel=\\\"stylesheet\\\" rev=\\\"stylesheet\\\" href=\\\"/css/base_v4.css\\\" type=\\\"text/css\\\" />\r\n    <script src=\\\"/js/jquery-1.3.2.min.js\\\" type=\\\"text/javascript\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n    <script src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script src=\\\"/js/cj_sdw_msw.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    \r\n    <!--content:start-->\r\n    <div class=\\\"aboutBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\\\"newsDetialsArticle\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mainCon clearfix\\\">\r\n                    <div class=\\\"article\\\">\r\n                        <!-- 返回企业信息列表页 -->\r\n                        <a href=\\\"JavaScript:history.go(-1)\\\" class=\\\"backNewsList\\\" title=\\\"返回\\\">\r\n                            <img src=\\\"/images/newsDetialsArticle_icon01.png\\\" width=\\\"49\\\" height=\\\"49\\\" alt=\\\"返回\\\" /></a>\r\n                        <div class=\\\"conBox\\\">\r\n                            <div class=\\\"title\\\">\r\n                                <h1>[!--title--]</h1>\r\n                                <i></i>\r\n                            </div>\r\n                            <div class=\\\"con\\\">\r\n                                [!--newstext--]\r\n                                <p><br /></p>\r\n                            </div>\r\n                        </div>\r\n                        \r\n                    </div>\r\n                    <div class=\\\"hotNews\\\">\r\n                        <div class=\\\"sidebar\\\">\r\n                            <div class=\\\'top\\\'>\r\n                                <h3>力丰介绍</h3>\r\n                            </div>\r\n                            <div class=\\\"box1\\\">\r\n                                [showclasstemp]\\\'selfinfo\\\',7,0,0[/showclasstemp]\r\n                            </div>\r\n                        </div>\r\n                        <div class=\\\"clear\\\"></div>\r\n                        <div class=\\\"box box2\\\">\r\n                            <div class=\\\"top\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    <h3>最新<em>资讯</em><i></i></h3>\r\n                                </a>\r\n                                <a href=\\\"#\\\" title=\\\"查看更多\\\" class=\\\"more\\\"><img src=\\\"/images/newsDetialsArticle_icon09.png\\\" width=\\\"21\\\" height=\\\"21\\\" alt=\\\"查看更多\\\" /></a>\r\n                            </div>\r\n                            <ul class=\\\"clearfix\\\">\r\n                                <li><a href=\\\"#\\\">东莞钢结构专业安装厂家哪家强？</a></li>\r\n                                <li><a href=\\\"#\\\">东莞钢结构专业安装厂家哪家强？</a></li>\r\n                                <li><a href=\\\"#\\\">东莞钢结构专业安装厂家哪家强？</a></li>\r\n                                <li><a href=\\\"#\\\">东莞钢结构专业安装厂家哪家强？</a></li>\r\n                                <li><a href=\\\"#\\\">东莞钢结构专业安装厂家哪家强？</a></li>                             \r\n                            </ul>\r\n                        </div>\r\n                        <div class=\\\"clear\\\"></div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--content:end-->\r\n    [!--temp.footer--]\r\n</body>\r\n</html>', 0, 0, '', 0, 1, 'Y-m-d', 0, 0, 0, 1592374733, 'newstemp', 1, 'admin'),
(20, 1, '新闻内容模板', '<!DOCTYPE html\r\n    PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"IE=edge,chrome=1\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link type=\\\"text/css\\\" rel=\\\"stylesheet\\\" href=\\\"/css/Common.css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link rel=\\\"stylesheet\\\" rev=\\\"stylesheet\\\" href=\\\"/css/pshow2.css\\\" type=\\\"text/css\\\" />\r\n    <link rel=\\\"stylesheet\\\" rev=\\\"stylesheet\\\" href=\\\"/css/base_v4.css\\\" type=\\\"text/css\\\" />\r\n    <script src=\\\"/js/jquery-1.3.2.min.js\\\" type=\\\"text/javascript\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n    <script src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script src=\\\"/js/cj_sdw_msw.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    \r\n    <!--content:start-->\r\n    <div class=\\\"newsDetialsBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!-- newsDetialsArticle -->\r\n        <div class=\\\"newsDetialsArticle\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mainCon clearfix\\\">\r\n                    <div class=\\\"article\\\">\r\n                        <!-- 返回新闻列表页 -->\r\n                        <a href=\\\"JavaScript:history.go(-1)\\\" class=\\\"backNewsList\\\" title=\\\"返回\\\">\r\n                            <img src=\\\"/images/newsDetialsArticle_icon01.png\\\" width=\\\"49\\\" height=\\\"49\\\" alt=\\\"返回\\\" /></a>\r\n                        <div class=\\\"conBox\\\">\r\n                            <div class=\\\"title\\\">\r\n                                <h1>[!--title--]</h1>\r\n                                <div class=\\\"share\\\">\r\n                                    <p><span>发布时间：[!--newstime--]</span></p>\r\n                                </div>\r\n                                <i></i>\r\n                            </div>\r\n                            <div class=\\\"con\\\">\r\n                                [!--newstext--]\r\n                            </div>\r\n                        </div>\r\n                        <div class=\\\"context clearfix\\\">\r\n                            <p class=\\\"prevNews bot_left\\\">\r\n                                [!--info.pre--]\r\n                            </p>\r\n                            <p class=\\\"NextNews bot_right\\\">\r\n                                [!--info.next--]\r\n                            </p>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\\\"hotNews\\\">\r\n                        <div class=\\\"sidebar\\\">\r\n                            <div class=\\\'top\\\'>\r\n                                <h3>[!--bclass.name--]</h3>\r\n                            </div>\r\n                            <div class=\\\"box1\\\">\r\n                                [showclasstemp]\\\'selfinfo\\\',7,0,0[/showclasstemp]\r\n                            </div>\r\n                        </div>\r\n                        <div class=\\\"clear\\\"></div>\r\n                        <div class=\\\"box box2\\\">\r\n                            <div class=\\\"top\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    <h3>最新<em>资讯</em><i></i></h3>\r\n                                </a>\r\n                                <a href=\\\"#\\\" title=\\\"查看更多\\\" class=\\\"more\\\"><img src=\\\"/images/newsDetialsArticle_icon09.png\\\" width=\\\"21\\\" height=\\\"21\\\" alt=\\\"查看更多\\\" /></a>\r\n                            </div>\r\n                            <ul class=\\\"clearfix\\\">\r\n                                <li><a href=\\\"#\\\">东莞钢结构专业安装厂家哪家强？</a></li>\r\n                                <li><a href=\\\"#\\\">东莞钢结构专业安装厂家哪家强？</a></li>\r\n                                <li><a href=\\\"#\\\">东莞钢结构专业安装厂家哪家强？</a></li>\r\n                                <li><a href=\\\"#\\\">东莞钢结构专业安装厂家哪家强？</a></li>\r\n                                <li><a href=\\\"#\\\">东莞钢结构专业安装厂家哪家强？</a></li>\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\\\"clear\\\"></div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        \r\n        <!-- 最新案例 -->\r\n        <div class=\\\"proDetailsPictures newsDetialsPictures\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"top clearfix mub01Top\\\">\r\n                    <a href=\\\"http://www.dglifeng.com/product/\\\">\r\n                        <h3>最新<em>案例</em><i></i></h3>\r\n                    </a><a href=\\\"http://www.dglifeng.com/product/\\\" title=\\\"了解更多\\\" target=\\\"_blank\\\" class=\\\"more\\\">了解更多 +</a>\r\n                </div>\r\n                <div class=\\\"mainCon clearfix\\\">\r\n                    <ul class=\\\"clearfix\\\">\r\n                        <li>\r\n                            <a href=\\\"#\\\">\r\n                                <span><img src=\\\"/images/20180104194513_89868.jpg\\\" alt=\\\"\\\" /></span>\r\n                                <em>钢木结构别墅制作安装</em>\r\n                            </a>\r\n                        </li>\r\n                        \r\n                        <li>\r\n                            <a href=\\\"http://www.dglifeng.com/Products/qiangmianban820xing.html\\\" target=\\\"_blank\\\"\r\n                                title=\\\"墙面板820型\\\">\r\n                                <span><img src=\\\"/images/20180131190228_19133.jpg\\\" alt=\\\"墙面板820型\\\" /></span>\r\n                                <em>墙面板820型</em>\r\n                            </a>\r\n                        </li>\r\n                        <li>\r\n                            <a href=\\\"http://www.dglifeng.com/Products/qiangmianban1052xing.html\\\" target=\\\"_blank\\\"\r\n                                title=\\\"墙面板（1052型）\\\">\r\n                                <span><img src=\\\"/images/20180125174328_68873.jpg\\\" alt=\\\"墙面板（1052型）\\\" /></span>\r\n                                <em>墙面板（1052型）</em>\r\n                            </a>\r\n                        </li>\r\n                        <li>\r\n                            <a href=\\\"http://www.dglifeng.com/Products/shoubianzhewanji.html\\\" target=\\\"_blank\\\"\r\n                                title=\\\"收边折弯机\\\">\r\n                                <span><img src=\\\"/images/20180126142530_62028.jpg\\\" alt=\\\"收边折弯机\\\" /></span>\r\n                                <em>收边折弯机</em>\r\n                            </a>\r\n                        </li>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--content:end-->\r\n    [!--temp.footer--]\r\n    <script type=\\\"text/javascript\\\">\r\n        // $(\\\"#cntrBody img\\\").each(function () {\r\n        //     var vtitle = $(this).attr(\\\"title\\\");\r\n        //     if (vtitle != null && vtitle.indexOf(\\\'点击查看关于\\\') > -1) {\r\n        //         vtitle = vtitle.substring(vtitle.indexOf(\\\"=\\\'_blank\\\'>\\\") + 10).replace(\\\"</a>\\\", \\\"\\\");\r\n        //         $(this).attr(\\\"title\\\", vtitle).attr(\\\"alt\\\", vtitle);\r\n        //     }\r\n        // });\r\n        // newsLoad();\r\n        // headNavPosition(MARK, SID);\r\n    </script>\r\n</body>\r\n</html>', 0, 0, '', 0, 1, 'Y-m-d', 0, 0, 0, 1592378872, 'newstemp', 1, 'admin'),
(21, 2, '通用单页模板', '<!DOCTYPE html\r\n    PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"IE=edge,chrome=1\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link type=\\\"text/css\\\" rel=\\\"stylesheet\\\" href=\\\"/css/Common.css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link rel=\\\"stylesheet\\\" rev=\\\"stylesheet\\\" href=\\\"/css/pshow2.css\\\" type=\\\"text/css\\\" />\r\n    <link rel=\\\"stylesheet\\\" rev=\\\"stylesheet\\\" href=\\\"/css/base_v4.css\\\" type=\\\"text/css\\\" />\r\n    <script src=\\\"/js/jquery-1.3.2.min.js\\\" type=\\\"text/javascript\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n    <script src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script src=\\\"/js/cj_sdw_msw.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    \r\n    <!--content:start-->\r\n    <div class=\\\"aboutBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\\\"newsDetialsArticle\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mainCon clearfix\\\">\r\n                    <div class=\\\"article\\\">\r\n                        <!-- 返回企业信息列表页 -->\r\n                        <a href=\\\"JavaScript:history.go(-1)\\\" class=\\\"backNewsList\\\" title=\\\"返回\\\">\r\n                            <img src=\\\"/images/newsDetialsArticle_icon01.png\\\" width=\\\"49\\\" height=\\\"49\\\" alt=\\\"返回\\\" /></a>\r\n                        <div class=\\\"conBox\\\">\r\n                            <div class=\\\"title\\\">\r\n                                <h1>[!--title--]</h1>\r\n                                <i></i>\r\n                            </div>\r\n                            <div class=\\\"con\\\">\r\n                                [!--newstext--]\r\n                                <p><br /></p>\r\n                            </div>\r\n                        </div>\r\n                        \r\n                    </div>\r\n                    <div class=\\\"hotNews\\\">\r\n                        <div class=\\\"sidebar\\\">\r\n                            <div class=\\\'top\\\'>\r\n                                <h3>[!--bclass.name--]</h3>\r\n                            </div>\r\n                            <div class=\\\"box1\\\">\r\n                                [showclasstemp]\\\'selfinfo\\\',7,0,0[/showclasstemp]\r\n                            </div>\r\n                        </div>\r\n                        <div class=\\\"clear\\\"></div>\r\n                        <div class=\\\"box box2\\\">\r\n                            <div class=\\\"top\\\">\r\n                                <a href=\\\"#\\\">\r\n                                    <h3>最新<em>资讯</em><i></i></h3>\r\n                                </a>\r\n                                <a href=\\\"#\\\" title=\\\"查看更多\\\" class=\\\"more\\\"><img src=\\\"/images/newsDetialsArticle_icon09.png\\\" width=\\\"21\\\" height=\\\"21\\\" alt=\\\"查看更多\\\" /></a>\r\n                            </div>\r\n                            <ul class=\\\"clearfix\\\">\r\n                                <li><a href=\\\"#\\\">东莞钢结构专业安装厂家哪家强？</a></li>\r\n                                <li><a href=\\\"#\\\">东莞钢结构专业安装厂家哪家强？</a></li>\r\n                                <li><a href=\\\"#\\\">东莞钢结构专业安装厂家哪家强？</a></li>\r\n                                <li><a href=\\\"#\\\">东莞钢结构专业安装厂家哪家强？</a></li>\r\n                                <li><a href=\\\"#\\\">东莞钢结构专业安装厂家哪家强？</a></li>                             \r\n                            </ul>\r\n                        </div>\r\n                        <div class=\\\"clear\\\"></div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--content:end-->\r\n    [!--temp.footer--]\r\n</body>\r\n</html>', 0, 0, '', 0, 1, 'Y-m-d', 0, 0, 0, 1592378899, 'newstemp', 1, 'admin'),
(22, 1, '新闻列表模板', '<!DOCTYPE html\r\n    PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head id=\\\"Head1\\\">\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link href=\\\"/css/Common.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    <!--Content:Start-->\r\n    <div class=\\\"linkUsBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!--分类列表-->\r\n        <div class=\\\"newsListMenu\\\">\r\n            <ul class=\\\'clearfix\\\'>\r\n                [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n            </ul>\r\n        </div>\r\n        <script type=\\\"text/javascript\\\">\r\n            $(\\\'.newsListMenu li a\\\').each(function() {\r\n                $this = $(this);\r\n                if ($this[0].href == String(window.location)) {\r\n                    $this.parents(\\\'li\\\').addClass(\\\'cur\\\');\r\n                }\r\n            });\r\n        </script>\r\n        \r\n        <!-- newsListCon -->\r\n        <div class=\\\"newsListCon\\\">\r\n            <div class=\\\"mainCon\\\">\r\n                <div class=\\\"conBox\\\">\r\n                    <div class=\\\"con\\\">\r\n                        [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]\r\n                        \r\n                    </div>\r\n                    <div class=\\\"clear\\\"></div>\r\n                    \r\n                    <div class=\\\"pageBox\\\">[!--show.listpage--]</div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--Content:End-->\r\n    \r\n    [!--temp.footer--]\r\n</body>\r\n</html>', 280, 0, '<dl class=\\\"clearfix\\\">\r\n                            <dt><a href=\\\"[!--titleurl--]\\\"><img src=\\\"[!--titlepic--]\\\" alt=\\\"[!--title--]\\\" /></a></dt>\r\n                            <dd>\r\n                                <h3><a href=\\\"[!--titleurl--]\\\">[!--title--]</a></h3>\r\n                                <p><a href=\\\"[!--titleurl--]\\\">\r\n                                    [!--smalltext--]……\r\n                                </a></p>\r\n                                <span class=\\\"rq\\\">[!--newstime--]</span>\r\n                                <a href=\\\"[!--titleurl--]\\\" class=\\\"more\\\"></a>\r\n                            </dd>\r\n                        </dl>', 1, 1, 'Y-m-d', 0, 0, 0, 1592383450, 'listtemp', 1, 'admin'),
(23, 1, 'header', '<!--Header:Start-->\r\n    <script src=\\\"/js/cj_sdw_msw.js\\\"></script>\r\n    <div class=\\\"wrap-header clearfix\\\">\r\n        <h1><a href=\\\"/\\\"><img src=\\\"/images/logo.png\\\" alt=\\\"\\\" /></a></h1>\r\n        <div class=\\\"navbg\\\"></div>\r\n        <div class=\\\"h_box\\\">\r\n            <div class=\\\"nav\\\">\r\n                <ul class=\\\"Navbox clearfix\\\" id=\\\"nav\\\">\r\n                    <li class=\\\"navli\\\"><a href=\\\"/\\\">网站首页</a></li>\r\n                    <li class=\\\"navli\\\"><a href=\\\"/fuwu/\\\">服务范围</a>\r\n                        <ul class=\\\"liUl clearfix\\\">\r\n                            <li><a href=\\\"/fuwu/lenglianyunshu/\\\">冷链运输</a></li>\r\n                            <li><a href=\\\"/fuwu/peisongfuwu/\\\">配送服务</a></li>\r\n                            <li><a href=\\\"/fuwu/cangchufuwu/\\\">仓储服务</a></li>\r\n                        </ul>\r\n                    </li>\r\n                    <li class=\\\"navli\\\"><a href=\\\"/shili/anli/\\\">成功案例</a></li>\r\n                    <li class=\\\"navli\\\"><a href=\\\"/shili/hezuo/\\\">公司实力</a>\r\n                        <ul class=\\\"liUl clearfix\\\">\r\n                            <li><a href=\\\"/shili/anli/\\\">成功案例</a></li>\r\n                            <li><a href=\\\"/shili/lengcangshebei/\\\">冷藏设备</a></li>\r\n                            <li><a href=\\\"/shili/hezuo/\\\">合作伙伴</a></li>\r\n                            <li><a href=\\\"/shili/rongyuzizhi/\\\">荣誉资质</a></li>\r\n                            <li><a href=\\\"/shili/shouhoufuwu/\\\">售后服务</a></li>\r\n                        </ul>\r\n                    </li>\r\n                    <li class=\\\"navli\\\"><a href=\\\"/xinwen/\\\">新闻中心</a>\r\n                        <ul class=\\\"liUl clearfix\\\">\r\n                            <li><a href=\\\"/xinwen/gongsixinwen/\\\">公司新闻</a></li>\r\n                            <li><a href=\\\"/xinwen/hangyedongtai/\\\">行业动态</a></li>\r\n                            <li><a href=\\\"/xinwen/meitijujiao/\\\">媒体聚焦</a></li>\r\n                            <li><a href=\\\"/xinwen/changjianwenti/\\\">常见问题</a></li>\r\n                        </ul>\r\n                    </li>\r\n                    \r\n                    <li class=\\\"navli\\\"><a href=\\\"/guanyu/jianjie/\\\">关于我们</a>\r\n                        <ul class=\\\"liUl clearfix\\\">\r\n                            <li><a href=\\\"/guanyu/jianjie/\\\">公司简介</a></li>\r\n                            <li><a href=\\\"/guanyu/qiyeyoushi/\\\">企业优势</a></li>\r\n                            <li><a href=\\\"/guanyu/zuzhijiagou/\\\">组织架构</a></li>\r\n                            <li><a href=\\\"/guanyu/gongsilueying/\\\">公司掠影</a></li>\r\n                            <li><a href=\\\"/guanyu/lianxi/\\\">联系我们</a></li>\r\n                        </ul>\r\n                    </li>\r\n                    \r\n                    <li class=\\\"navli last\\\"><a href=\\\"/guanyu/lianxi/\\\">联系我们</a></li>\r\n                </ul>\r\n                <span class=\\\"navline\\\"></span>\r\n            </div>\r\n\r\n            <p class=\\\"h_share\\\">\r\n                <a href=\\\"javascript:;\\\" class=\\\"a1\\\"></a>\r\n                <i class=\\\"a2\\\"><span><img src=\\\"/images/20180206135606_51322.jpg\\\" alt=\\\"\\\" /></span></i>\r\n            </p>\r\n\r\n            <div class=\\\"searchbox\\\">\r\n                <p class=\\\"searchBtn\\\"><span></span> <em></em></p>\r\n\r\n                <div class=\\\"search\\\">\r\n                    <div class=\\\"hotline\\\"><a href=\\\"tel:400-028-1238\\\">400-028-1238</a></div>\r\n                    <p class=\\\"searchInp\\\"><a href=\\\"javascript:;\\\"></a></p>\r\n                </div>\r\n            </div>\r\n\r\n        </div>\r\n    </div>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/header.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\">\r\n        $(\\\".wrap-header .navli\\\").mouseenter(function () {\r\n            if ($(this).find(\\\".liUl\\\").length) {\r\n                $(\\\".navbg\\\").show();\r\n            }\r\n        })\r\n        $(\\\".wrap-header .navli\\\").mouseleave(function () {\r\n            $(\\\".navbg\\\").hide();\r\n        })\r\n    </script>\r\n    <!--Header:End-->', 1, 0, '页面头部', 0, 0, '', 0, 0, 0, 1592383978, 'tempvar', 1, 'admin');
INSERT INTO `hswl_enewstempbak` (`bid`, `tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`, `baktime`, `temptype`, `gid`, `lastuser`) VALUES
(24, 2, 'footer', '<!--wrap-footer-->\r\n    <div class=\\\"wrap-footer\\\">\r\n        <div class=\\\"f_top clearfix\\\">\r\n            <div class=\\\"container\\\">\r\n                <div id=\\\"ucFooter_plPartner\\\">\r\n                    <ul class=\\\"f_ul f_ul1\\\">\r\n                        <li><a href=\\\"javascript:;\\\"><i></i>热门关键词</a></li>\r\n                        <li><a href=\\\"#\\\">冷链运输</a></li>\r\n                        <li><a href=\\\"#\\\">配送服务</a></li>\r\n                        <li><a href=\\\"#\\\">仓储服务</a></li>\r\n                        <li><a href=\\\"#\\\">冷冻整车</a></li>\r\n                    </ul>\r\n                </div>\r\n\r\n                <ul class=\\\"f_ul f_ul2\\\">\r\n                    <li><a href=\\\"/guanyu/jianjie/\\\"><i></i>关于我们</a></li>\r\n                    <li><a href=\\\"/guanyu/jianjie/\\\">公司简介</a></li>\r\n                    <li><a href=\\\"/guanyu/qiyeyoushi/\\\">企业优势</a></li>\r\n                    <li><a href=\\\"/guanyu/gongsilueying/\\\">公司掠影</a></li>\r\n                    <li><a href=\\\"/guanyu/lianxi/\\\">联系我们</a></li>\r\n                </ul>\r\n\r\n                <ul class=\\\"f_ul f_ul3\\\">\r\n                    <li><a href=\\\"/fuwu/\\\"><i></i>服务范围</a></li>\r\n                    <li><a href=\\\"/fuwu/lenglianyunshu/\\\">冷链运输</a></li>\r\n                    <li><a href=\\\"/fuwu/peisongfuwu/\\\">配送服务</a></li>\r\n                    <li><a href=\\\"/fuwu/cangchufuwu/\\\">仓储服务</a></li>\r\n                </ul>\r\n\r\n                <dl class=\\\"f_erwm\\\">\r\n                    <dt><img src=\\\"/images/20180206135606_51322.jpg\\\" alt=\\\"二维码\\\" /></dt>\r\n                    <dd>微信二维码</dd>\r\n                </dl>\r\n\r\n                <ul class=\\\"f_ul4\\\">\r\n                    <li>24小时专线：13981791475</li>\r\n                    <li>咨询邮箱：qiaoj@hslcwl.cn</li>\r\n                    <li>传真：028-61297652</li>\r\n                    <li>公司地址：四川省成都市成华区龙潭工业园钢铁领域B座518室成都市华森物流有限公司</li>\r\n                </ul>\r\n\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\\\"f_bot\\\">\r\n            <div class=\\\"container clearfix\\\">\r\n                <p class=\\\"fl\\\">版权所有@2020. 成都市华森物流有限公司</p>\r\n                <p class=\\\"fr\\\">技术支持：<a href=\\\"https://www.shunking.cn/\\\" target=\\\"_blank\\\">舜王科技</a> &nbsp; &nbsp; &nbsp; 备案号：<a href=\\\"http://www.beian.miit.gov.cn/\\\" target=\\\"_blank\\\">蜀ICP备13019420号</a></p>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\\\"float\\\">\r\n        <div class=\\\"float_show float_show0\\\">\r\n            <a style=\\\"cursor:pointer;\\\" title=\\\"回到顶部\\\"></a>\r\n        </div>\r\n        <div class=\\\"float_show float_show1\\\" style=\\\"right: -86px;\\\">\r\n            <a href=\\\"#\\\"><img width=\\\"24\\\" height=\\\"24\\\" rel=\\\"nofollow\\\" alt=\\\"客服咨询\\\" src=\\\"/images/float_qqicon2.png\\\">客服咨询</a>\r\n        </div>\r\n        <div class=\\\"float_show float_show2\\\" style=\\\"right: -146px;\\\">\r\n            <a href=\\\"tel:13981791475\\\"><img width=\\\"24\\\" height=\\\"24\\\" alt=\\\"电话\\\" src=\\\"/images/float_qqicon3.png\\\">13981791475</a>\r\n        </div>\r\n\r\n        <div class=\\\"float_show float_show3\\\" style=\\\"right: -202px;\\\">\r\n            <a href=\\\"mailto:qiaoj@hslcwl.cn\\\"><img width=\\\"24\\\" height=\\\"24\\\" alt=\\\"邮箱\\\" src=\\\"/images/float_qqicon5.png\\\">qiaoj@hslcwl.cn</a>\r\n        </div>\r\n\r\n        <div class=\\\"float_show float_show4\\\">\r\n            <a href=\\\"javascript:;\\\"><img width=\\\"24\\\" height=\\\"24\\\" alt=\\\"二维码\\\" src=\\\"/images/float_qqicon4.png\\\"></a>\r\n            <div class=\\\"float_wx\\\" style=\\\"display: none;\\\"><img width=\\\"144\\\" height=\\\"144\\\" alt=\\\"扫描二维码\\\" src=\\\"/images/20180206135606_51322.jpg\\\"></div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\\\"zxly\\\">\r\n        <div class=\\\"container\\\">\r\n            <span class=\\\"close_zxly\\\"></span>\r\n            <ul class=\\\"clearfix\\\" id=\\\"LYFrom\\\">\r\n                <form method=\\\"post\\\" enctype=\\\"multipart/form-data\\\" action=\\\"/e/enews/index.php\\\">\r\n                    <input type=\\\"hidden\\\" name=\\\"bid\\\" value=1>\r\n                    <!-- <input type=\\\"hidden\\\" name=\\\"ecmsfrom\\\" value=\\\"javaScript:history.go(-1)\\\"> -->\r\n                    <input name=\\\"enews\\\" type=\\\"hidden\\\" value=\\\"AddFeedback\\\">\r\n                    <li><input type=\\\"text\\\" name=\\\"title\\\" placeholder=\\\"联系人：\\\" id=\\\"LEAVEWORD_txtContact\\\" class=\\\"fromtext\\\" /></li>\r\n                    <li><input type=\\\"text\\\" name=\\\"mycall\\\" placeholder=\\\"电话：\\\" id=\\\"LEAVEWORD_txtTel\\\" class=\\\"fromtext\\\" /></li>\r\n                    <li><input type=\\\"text\\\" name=\\\"email\\\" placeholder=\\\"邮箱：\\\" id=\\\"LEAVEWORD_txtEmail\\\" class=\\\"fromtext\\\" /></li>\r\n                    <li class=\\\"fr\\\"><input type=\\\"submit\\\" name=\\\"submit\\\" value=\\\"立即获取方案\\\"></li>\r\n                </form>\r\n            </ul>\r\n        </div>\r\n    </div>\r\n\r\n    <script type=\\\"text/javascript\\\">\r\n        initCommonHeader();\r\n        if (MARK == \\\"\\\") var MARK = \\\"index\\\";\r\n        initCommonHeaderKeywords(MARK);\r\n    \r\n        $(function () {\r\n            $(\\\'.float_show0\\\').hide();\r\n            action();\r\n        })\r\n        function action() {\r\n            $(window).scroll(function () {\r\n                var st = $(document).scrollTop();\r\n                if (st > 500) {\r\n                    $(\\\'.float_show0\\\').show();\r\n                } else {\r\n                    $(\\\'.float_show0\\\').hide();\r\n                }\r\n            })\r\n\r\n            $(\\\'.float_show0 a\\\').click(function () {\r\n                $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n            });\r\n        }\r\n\r\n        $(\\\'.float_show1\\\').hover(function () {\r\n            $(this).stop().animate({ \\\'right\\\': \\\'0\\\' }, 450)\r\n\r\n        }, function () {\r\n\r\n            $(this).stop().animate({ \\\'right\\\': \\\'-86px\\\' }, 450)\r\n\r\n        })\r\n\r\n        $(\\\'.float_show2\\\').hover(function () {\r\n            $(this).stop().animate({ \\\'right\\\': \\\'0\\\' }, 450)\r\n\r\n        }, function () {\r\n\r\n            $(this).stop().animate({ \\\'right\\\': \\\'-146px\\\' }, 450)\r\n\r\n        })\r\n\r\n\r\n        $(\\\'.float_show3\\\').hover(function () {\r\n            $(this).stop().animate({ \\\'right\\\': \\\'0\\\' }, 450)\r\n\r\n        }, function () {\r\n\r\n            $(this).stop().animate({ \\\'right\\\': \\\'-202px\\\' }, 450)\r\n\r\n        })\r\n\r\n        $(\\\'.float_show4\\\').hover(function () {\r\n\r\n            $(this).stop().find(\\\'.float_wx\\\').fadeIn(350)\r\n\r\n        }, function () {\r\n\r\n            $(this).stop().find(\\\'.float_wx\\\').fadeOut(350)\r\n\r\n        })\r\n\r\n        //悬浮留言\r\n        $(\\\".wrap-footer\\\").css(\\\"padding-bottom\\\", 105);\r\n        $(\\\".close_zxly\\\").click(function () {\r\n            $(\\\".zxly\\\").hide();\r\n            $(\\\".wrap-footer\\\").css(\\\"padding-bottom\\\", 0);\r\n        })      \r\n    </script>', 0, 0, '页面尾部', 0, 0, '', 0, 0, 0, 1592384244, 'tempvar', 1, 'admin'),
(25, 4, '联系单页模板 ', '<!DOCTYPE html\r\n    PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head id=\\\"Head1\\\">\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <link href=\\\"/css/Common.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/temp.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/1.9.1jquery.min.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/Ajax.js\\\"></script>\r\n</head>\r\n<body>\r\n    [!--temp.header--]\r\n    <!--Content:Start-->\r\n    <div class=\\\"linkUsBanner mub01InpageBannerr\\\">\r\n        <a href=\\\'javascript:;\\\' style=\\\'background:url(/images/20180130092310_13578.jpg) no-repeat center top;\\\'></a>\r\n    </div>\r\n    <div class=\\\"mub01MainContent\\\">\r\n        <div class=\\\"mub01address\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"con clearfix\\\">\r\n                    <p class=\\\"p1\\\">\r\n                        <img src=\\\"/images/mub01address_icon01.png\\\" width=\\\"13\\\" height=\\\"18\\\" alt=\\\"当前位置\\\" />\r\n                        当前位置：[!--newsnav--]\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!-- linkUsMap -->\r\n        <div class=\\\"linkUsMap\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mainCon clearfix\\\">\r\n                    <div style=\\\"background:#fff;padding:20px 50px;bborder-bottom:15px solide #f4f4f4;\\\">\r\n                        <table style=\\\"background:#fff;width:100%;margin-bottom:10px\\\">\r\n                            <tbody>\r\n                                <tr class=\\\"firstRow\\\">\r\n                                    <td valign=\\\"top\\\" style=\\\"word-break: break-all;\\\">\r\n                                        <p><img src=\\\"/images/20180108171705642855.png\\\" title=\\\"\\\" alt=\\\"\\\" /></p>\r\n                                    </td>\r\n                                    <td valign=\\\"middle\\\" style=\\\"word-break: break-all;\\\" align=\\\"left\\\">\r\n                                        <p style=\\\"font-size: 20px; color: #000; line-height: 1.75em;\\\"><strong style=\\\"font-size: 18px;\\\">欢迎您来到<span style=\\\"color: #2f4a8d;\\\">成都市华森物流有限公司</span>官网</strong><br /></p>\r\n                                        <p><br /></p>\r\n                                        <p style=\\\"line-height: 1.75em;\\\">\r\n                                            [!--newstext--]\r\n                                        </p>\r\n                                    </td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        <p><br /></p>\r\n                        <hr />\r\n                        <table data-sort=\\\"sortDisabled\\\" style=\\\"width:100%\\\" width=\\\"1170\\\">\r\n                            <tbody>\r\n                                <tr class=\\\"firstRow\\\">\r\n                                    <td valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"2\\\" style=\\\"word-break: break-all;\\\"\r\n                                        align=\\\"center\\\" width=\\\"171\\\" height=\\\"119\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px; margin-top: 10px;\\\"><img\r\n                                                src=\\\"/images/20180108113919313273.png\\\" alt=\\\"\\\" /><span\r\n                                                id=\\\"_baidu_bookmark_start_0\\\"\r\n                                                style=\\\"display: none; line-height: 0px;\\\"></span></p>\r\n                                    </td>\r\n                                    <td width=\\\"57\\\" valign=\\\"middle\\\" rowspan=\\\"3\\\" colspan=\\\"1\\\"\r\n                                        style=\\\"word-break: break-all;\\\" align=\\\"center\\\"><img\r\n                                            src=\\\"/images/20180108113606472501.jpg\\\" alt=\\\"\\\" /></td>\r\n                                    <td valign=\\\"middle\\\" style=\\\"word-break: break-all;\\\" rowspan=\\\"1\\\" colspan=\\\"2\\\"\r\n                                        width=\\\"183\\\" align=\\\"center\\\" height=\\\"119\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px; margin-top: 10px;\\\"><img\r\n                                                src=\\\"/images/20180108113958377772.png\\\" alt=\\\"\\\" /></p>\r\n                                    </td>\r\n                                    <td width=\\\"57\\\" valign=\\\"middle\\\" rowspan=\\\"3\\\" colspan=\\\"1\\\"\r\n                                        style=\\\"word-break: break-all;\\\" align=\\\"center\\\"><img\r\n                                            src=\\\"/images/20180108113619556223.jpg\\\" alt=\\\"\\\" /></td>\r\n                                    <td valign=\\\"middle\\\" colspan=\\\"2\\\" rowspan=\\\"1\\\" style=\\\"word-break: break-all;\\\"\r\n                                        align=\\\"center\\\" width=\\\"198\\\" height=\\\"119\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px; margin-top: 10px;\\\"><img\r\n                                                src=\\\"/images/20180108114108224499.png\\\" alt=\\\"\\\" /></p>\r\n                                    </td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"2\\\" align=\\\"center\\\"\r\n                                        style=\\\"word-break: break-all;\\\" width=\\\"171\\\" height=\\\"31\\\"><img\r\n                                            src=\\\"/images/20180108113635080913.jpg\\\" title=\\\"\\\" alt=\\\"\\\" /></td>\r\n                                    <td valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"2\\\" align=\\\"center\\\"\r\n                                        style=\\\"word-break: break-all;\\\" width=\\\"183\\\" height=\\\"31\\\"><img\r\n                                            src=\\\"/images/20180108113650950411.jpg\\\" title=\\\"\\\" alt=\\\"\\\" /></td>\r\n                                    <td valign=\\\"middle\\\" rowspan=\\\"1\\\" colspan=\\\"2\\\" align=\\\"center\\\"\r\n                                        style=\\\"word-break: break-all;\\\" width=\\\"198\\\" height=\\\"31\\\"><img\r\n                                            src=\\\"/images/20180108113709672654.jpg\\\" title=\\\"\\\" alt=\\\"\\\" /></td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td valign=\\\"top\\\" style=\\\"word-break: break-all;\\\" align=\\\"center\\\" height=\\\"86\\\"\r\n                                        rowspan=\\\"1\\\" colspan=\\\"2\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-top: 10px;\\\">\r\n                                            24小时专线：13981791475</p>\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px;\\\"><span\r\n                                                style=\\\"text-align: -webkit-center; background-color: rgb(255, 255, 255);\\\">传真：028-61297652</span>\r\n                                        </p>\r\n                                    </td>\r\n                                    <td valign=\\\"top\\\" colspan=\\\"2\\\" rowspan=\\\"1\\\" style=\\\"word-break: break-all;\\\"\r\n                                        align=\\\"center\\\" height=\\\"86\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px; margin-top: 10px;\\\"><span\r\n                                                style=\\\"text-align: -webkit-center; background-color: rgb(255, 255, 255);\\\">咨询邮箱：qiaoj@hslcwl.cn</span>\r\n                                        </p>\r\n                                    </td>\r\n                                    <td valign=\\\"top\\\" style=\\\"word-break: break-all;\\\" align=\\\"center\\\" width=\\\"200\\\" height=\\\"86\\\"\r\n                                        rowspan=\\\"1\\\" colspan=\\\"2\\\">\r\n                                        <p style=\\\"line-height: 1.75em; margin-bottom: 10px; margin-top: 10px;\\\">\r\n                                            地址：四川省成都市成华区龙潭工业园钢铁领域B座518室成都市华森物流有限公司</p>\r\n                                    </td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        <p><br /></p>\r\n                        <hr />\r\n                        <p><br /></p>\r\n                        \r\n                        <div id=\\\"baiduMap\\\" style=\\\"width:100%;height:454px;\\\"></div>\r\n                        <script type=\\\"text/javascript\\\" src=\\\"http://api.map.baidu.com/api?v=2.0&ak=ny22a16GzbMDs1xHsTvjlqtZYpwFhUbw\\\"></script>\r\n                        <script type=\\\"text/javascript\\\">\r\n                            //创建地图\r\n                            var myMap = new BMap.Map(\\\"baiduMap\\\");\r\n                            var point = new BMap.Point(104.184247,30.699351);\r\n                            myMap.centerAndZoom(point, 16);\r\n                            //添加覆盖物\r\n                            var marker = new BMap.Marker(point);  // 创建标注 \r\n                            myMap.addOverlay(marker);   // 将标注添加到地图中\r\n                            //添加控件\r\n                            myMap.addControl(new BMap.NavigationControl()); // 平移缩放\r\n                            myMap.addControl(new BMap.OverviewMapControl()); //缩略地图\r\n                            //myMap.enableScrollWheelZoom(); //滚轮缩放\r\n                            //创建信息窗口\r\n                            var infoWindow = new BMap.InfoWindow(\\\"<p><strong>成都市华森物流有限公司</strong></p><p>地址：四川省成都市成华区龙潭工业园钢铁领域B座518室</p>\\\");\r\n                                marker.openInfoWindow(infoWindow);\r\n                        </script>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <!-- 发车时间表-->\r\n        <div class=\\\"timetable\\\">\r\n            <div class=\\\"container\\\">\r\n                <h3>发车时间表</h3>\r\n                <table>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td><strong>干线信息</strong></td>\r\n                            <td colspan=\\\"3\\\">冷冻、冷藏及恒温零担、整车</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周一</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td></td>\r\n                            <td></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周二</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td>成都-贵州全境</td>\r\n                            <td>昆明-成都</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周三</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td></td>\r\n                            <td></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周四</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td></td>\r\n                            <td></td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周五</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td>成都-贵州全境</td>\r\n                            <td>昆明-成都</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>周六</td>\r\n                            <td>成都-云南全境</td>\r\n                            <td></td>\r\n                            <td></td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <table>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td><strong>成都办公地址</strong></td>\r\n                            <td>成都市成华区龙潭工业园钢铁领域B座518室华森物流有限公司</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><strong>成都仓库地址</strong></td>\r\n                            <td>四川省成都市双流口岸路136号，郑明仓库</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><strong>昆明仓库地址</strong></td>\r\n                            <td>云南省昆明市呈贡区七甸工业园区哨达路16号</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td><strong>贵阳仓库地址</strong></td>\r\n                            <td>贵州省贵阳市乌当区高新东路18号，贵州瀑布冷链</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <table>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td><strong>城配信息</strong></td>\r\n                            <td>成都市内配送及周边区域配送</td>\r\n                            <td>西安市内配送</td>\r\n                            <td>昆明市内配送</td>\r\n                            <td>贵阳市内配送</td>\r\n                        </tr>\r\n                        \r\n                    </tbody>\r\n                </table>\r\n            </div>\r\n            \r\n        </div>\r\n        <!-- linkUsLy-->\r\n        <div class=\\\"linkUsLy\\\">\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"mainCon\\\">\r\n                    <div class=\\\"title\\\">\r\n                        <h3>在线留言</h3>\r\n                        <p>\r\n                            Online message</p>\r\n                    </div>\r\n                    <form name=\\\"Form1\\\" id=\\\"Form1\\\" method=\\\"post\\\" enctype=\\\"multipart/form-data\\\" action=\\\"/e/enews/index.php\\\">\r\n                        <input type=\\\"hidden\\\" name=\\\"bid\\\" value=1>\r\n                        <input type=\\\"hidden\\\" name=\\\"ecmsfrom\\\" value=\\\"/guanyu/lianxi/\\\">\r\n                        <input name=\\\"enews\\\" type=\\\"hidden\\\" value=\\\"AddFeedback\\\">\r\n                        <div class=\\\"box\\\" id=\\\"QK\\\">\r\n                            <input type=\\\"text\\\" name=\\\"title\\\" class=\\\"input1\\\" placeholder=\\\"您的姓名\\\" id=\\\"txtContact\\\" />\r\n                            <input type=\\\"text\\\" name=\\\"mycall\\\" class=\\\"input2\\\" placeholder=\\\"您的电话\\\" id=\\\"txtTel\\\" />\r\n                            <input type=\\\"text\\\" name=\\\"email\\\" class=\\\"input3\\\" placeholder=\\\"您的邮箱\\\" id=\\\"txtTel\\\" />\r\n                            <textarea name=\\\"saytext\\\" placeholder=\\\"留言内容\\\" id=\\\"txtShortDesc\\\"></textarea>\r\n                            <input type=\\\"submit\\\" name=\\\"submit\\\" value=\\\"提交留言\\\" class=\\\"submit\\\" />\r\n                        </div>\r\n                    </form>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <!--Content:End-->\r\n    \r\n    [!--temp.footer--]\r\n</body>\r\n</html>', 0, 0, '', 0, 1, 'Y-m-d', 0, 0, 0, 1592384580, 'newstemp', 1, 'admin'),
(29, 1, '', '<!DOCTYPE html>\r\n<html>\r\n\r\n<head>\r\n    <meta name=\\\"renderer\\\" content=\\\"webkit\\\" />\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"IE=edge,chrome=1\\\" />\r\n    <link href=\\\"/css/Common.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/css/Index.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <script src=\\\"/js/1.9.1jquery.min.js\\\" type=\\\"text/javascript\\\"></script>\r\n    <script src=\\\"/js/Index.js\\\" type=\\\"text/javascript\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/countUp.min.js\\\"></script>\r\n</head>\r\n\r\n<body>\r\n    <form name=\\\"form1\\\" method=\\\"post\\\" action=\\\"\\\" id=\\\"form1\\\">\r\n        [!--temp.header--]\r\n\r\n        <!--banner -->\r\n        <div class=\\\"banner\\\">\r\n            <div id=\\\"flashs\\\">\r\n                <div class=\\\"bd\\\">\r\n                    <div>\r\n\r\n                        <div alt=\\\"banner\\\" class=\\\"bgitem\\\" id=\\\"flashbg0\\\" style=\\\"background: url(\\\'/images/banner.jpg\\\') no-repeat center top; height: 700px; width: 100%; cursor: pointer; overflow:hidden; position:relative;\\\">\r\n                        </div>\r\n\r\n                        <div alt=\\\"banner\\\" class=\\\"bgitem\\\" id=\\\"flashbg1\\\" style=\\\"background: url(\\\'/images/banner.jpg\\\') no-repeat center top; height: 700px; width: 100%; cursor: pointer; overflow:hidden; position:relative;\\\">\r\n                        </div>\r\n\r\n                        <div alt=\\\"banner\\\" class=\\\"bgitem\\\" id=\\\"flashbg2\\\" style=\\\"background: url(\\\'/images/banner.jpg\\\') no-repeat center top; height: 700px; width: 100%; cursor: pointer; overflow:hidden; position:relative;\\\">\r\n                        </div>\r\n\r\n                    </div>\r\n                </div>\r\n                <div class=\\\"btn hd\\\">\r\n                    <span></span>\r\n                    <span></span>\r\n                    <span></span>\r\n                </div>\r\n                <a href=\\\"javascript:;\\\" class=\\\"bot bot1 prev\\\"></a>\r\n                <a href=\\\"javascript:;\\\" class=\\\"bot bot2 next\\\"></a>\r\n            </div>\r\n        </div>\r\n\r\n        <!--业务范围-->\r\n        <div class=\\\"ywfw\\\">\r\n            <div class=\\\"container\\\">\r\n                <h2 class=\\\"h2_title\\\"><a href=\\\"/fuwu/\\\">服务范围</a><i>华森物流--冷冻整车，零担业务</i><em></em></h2>\r\n\r\n                <div class=\\\"ywfw_con clearfix\\\">\r\n                    <dl class=\\\'dl1\\\'>\r\n                        <dt><img src=\\\'/images/fuwu1.jpg\\\' alt=\\\'冷链运输\\\' />\r\n                            <div class=\\\'conbox\\\'>\r\n                                <h3><a href=\\\'/fuwu/lenglianyunshu/\\\'><i></i>冷链运输</a></h3>\r\n                                <h5><a href=\\\"/fuwu/lenglianyunshu/\\\">查看更多 +</a></h5>\r\n                            </div>\r\n                        </dt>\r\n                        <dd class=\\\'dd1\\\'><a href=\\\'/fuwu/lenglianyunshu/\\\'>冷链运输</a></dd>\r\n                        <dd class=\\\'dd2\\\'><a href=\\\'/fuwu/lenglianyunshu/\\\'>保持冷冻冷藏类食品质量，减少物品损耗</a></dd>\r\n                    </dl>\r\n                    <dl class=\\\'dl2\\\'>\r\n                        <dt><img src=\\\'/images/fuwu2.jpg\\\' alt=\\\'配送服务\\\' />\r\n                            <div class=\\\'conbox\\\'>\r\n                                <h3><a href=\\\'/fuwu/peisongfuwu/\\\'><i></i>配送服务</a></h3>\r\n                                <h5><a href=\\\"/fuwu/peisongfuwu/\\\">查看更多 +</a></h5>\r\n                                \r\n                            </div>\r\n                        </dt>\r\n                        <dd class=\\\'dd1\\\'><a href=\\\'/fuwu/peisongfuwu/\\\'>配送服务</a></dd>\r\n                        <dd class=\\\'dd2\\\'><a href=\\\'/fuwu/peisongfuwu/\\\'>专线运输直达，驾驶员团队优秀</a></dd>\r\n                    </dl>\r\n                    <dl class=\\\'dl3\\\'>\r\n                        <dt><img src=\\\'/images/fuwu3.jpg\\\' alt=\\\'仓储服务\\\' />\r\n                            <div class=\\\'conbox\\\'>\r\n                                <h3><a href=\\\'/fuwu/cangchufuwu/\\\'>仓储服务</a></h3>\r\n                                <h5><a href=\\\"/fuwu/cangchufuwu/\\\">查看更多 +</a></h5>\r\n                            </div>\r\n                        </dt>\r\n                        <dd class=\\\'dd1\\\'><a href=\\\'/fuwu/cangchufuwu/\\\'>仓储服务</a></dd>\r\n                        <dd class=\\\'dd2\\\'><a href=\\\'/fuwu/cangchufuwu/\\\'>与招商仓库长期合作，交通便利</a></dd>\r\n                    </dl>\r\n\r\n                </div>\r\n\r\n            </div>\r\n        </div>\r\n\r\n        <!--关于我们-->\r\n        <div class=\\\"about\\\">\r\n            <div class=\\\"container\\\">\r\n                <h2 class=\\\"h2_title\\\"><a href=\\\"/guanyu/jianjie/\\\">关于我们</a><i>华森物流--冷冻整车，零担业务</i><em></em></h2>\r\n\r\n                <dl class=\\\"abo_top\\\">\r\n                    <dt>\r\n                        <img src=\\\"/images/aboutimg.jpg\\\" alt=\\\"公司简介\\\" class=\\\"videoImg\\\" /></dt>\r\n                    <dd>\r\n                        <a href=\\\"/guanyu/jianjie/\\\" title=\\\"公司简介\\\"></a>\r\n                    </dd>\r\n                </dl>\r\n\r\n                <div class=\\\"abo_con clearfix\\\">\r\n                    <dl>\r\n                        <dt><img src=\\\"/images/aboicon03.png\\\" alt=\\\"始于\\\" /></dt>\r\n                        <dd><i>始于</i><span><b id=\\\"num3\\\">2012</b>年</span></dd>\r\n                    </dl>\r\n                    <dl>\r\n                        <dt><img src=\\\"/images/aboicon01.png\\\" alt=\\\"专业团队\\\" /></dt>\r\n                        <dd><i>专业团队</i><span><b id=\\\"num1\\\">100</b>多人</span></dd>\r\n                    </dl>\r\n\r\n                    <dl>\r\n                        <dt><img src=\\\"/images/aboicon02.png\\\" alt=\\\"占地面积\\\" /></dt>\r\n                        <dd><i>占地面积</i><span><b id=\\\"num2\\\">100</b>万㎡</span></dd>\r\n                    </dl>\r\n\r\n                    <dl>\r\n                        <dt><img src=\\\"/images/aboicon04.png\\\" alt=\\\"成功案例\\\" /></dt>\r\n                        <dd><i>成功案例</i><span><b id=\\\"num4\\\">1000</b>项</span></dd>\r\n                    </dl>\r\n\r\n                </div>\r\n\r\n            </div>\r\n        </div>\r\n\r\n        <!-- <div class=\\\"videobf\\\">\r\n            <div class=\\\"video_con\\\"><iframe height=500 width=1000 src=\\\'http://player.youku.com/embed/XMzM1MTM4NzExMg==\\\'\r\n                    frameborder=0 \\\'allowfullscreen\\\'></iframe> <span class=\\\"closeVideo\\\"></span></div>\r\n        </div> -->\r\n\r\n        <script>\r\n            var options = {\r\n                useEasing: true,\r\n                useGrouping: true,\r\n                separator: \\\'\\\',\r\n                decimal: \\\'.\\\',\r\n                prefix: \\\'\\\',\r\n                suffix: \\\'\\\'\r\n            };\r\n            var demo1 = new CountUp(\\\"num1\\\", 0, 100, 0, 2, options);\r\n            var demo2 = new CountUp(\\\"num2\\\", 0, 100, 0, 2, options);\r\n            var demo3 = new CountUp(\\\"num3\\\", 0, 2012, 0, 2, options);\r\n            var demo4 = new CountUp(\\\"num4\\\", 0, 1000, 0, 2, options);\r\n\r\n            $(window).scroll(function () {\r\n                if ($(window).scrollTop() >= 1600) {\r\n\r\n                    demo1.start();\r\n                    demo2.start();\r\n                    demo3.start();\r\n                    demo4.start();\r\n                }\r\n            })\r\n\r\n            $(\\\".videoImg\\\").click(function () {\r\n                $(\\\".videobf\\\").slideDown();\r\n                $(\\\".videobf .video_con\\\").addClass(\\\"cur\\\");\r\n            })\r\n\r\n            $(\\\".closeVideo\\\").click(function () {\r\n                $(\\\".videobf\\\").slideUp();\r\n                $(\\\".videobf .video_con\\\").removeClass(\\\"cur\\\");\r\n            })\r\n        </script>\r\n\r\n        <!--成功案例-->\r\n        <div class=\\\"jdal\\\">\r\n\r\n            <div class=\\\"container\\\">\r\n                <div class=\\\"jdal_top\\\">\r\n                    <dl>\r\n                        <dt><a href=\\\"/shili/anli/\\\"><i>Successful Cases</i><span>成功案例</span><em></em></a></dt>\r\n                        <dd>\r\n                            <em></em><a href=\\\"/shili/anli/\\\">查看更多</a></dd>\r\n                    </dl>\r\n                    <ul class=\\\"jdal_type clearfix\\\">\r\n\r\n                        <li class=\\\'cur\\\'><a href=\\\"/shili/anli/anli1/\\\">\r\n                                <span>冷链运输</span><i>Cold chain</i></a></li>\r\n\r\n                        <li><a href=\\\"/shili/anli/anli2/\\\">\r\n                                <span>配送服务</span><i>Distribution</i></a></li>\r\n\r\n                        <li><a href=\\\"/shili/anli/anli3/\\\">\r\n                                <span>仓储服务</span><i>Storage</i></a></li>\r\n\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n            <div class=\\\"jdal_bot\\\">\r\n\r\n                <div class=\\\"conbox cur\\\">\r\n                    <img src=\\\"/images/20180104152049_60002.jpg\\\" alt=\\\"\\\" />\r\n                    <div class=\\\"container\\\">\r\n                        <dl>\r\n                            <dt><a href=\\\"/shili/anli/anli1/\\\">冷链运输</a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"/shili/anli/anli1/\\\">随着人们生活水平的不断提高，对冷冻类食品的需求越来越多。但是冷冻食品不同于其他产品，它需要具有专业的冷链运输体系，才能确保冷冻冷藏类食品在规定的温度下保持其质量……</a>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\"><a href=\\\"/shili/anli/anli1/\\\">查看更多</a></dd>\r\n                        </dl>\r\n                    </div>\r\n                </div>\r\n\r\n                <div class=\\\"conbox \\\">\r\n                    <img src=\\\"/images/20180104152049_60002.jpg\\\" alt=\\\"\\\" />\r\n                    <div class=\\\"container\\\">\r\n                        <dl>\r\n                            <dt><a href=\\\"/shili/anli/anli2/\\\">配送服务</a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"/shili/anli/anli2/\\\">保证货物品质安全，重中之重——全程GPS监控、温度异常随时报警。时效是每一个客户的需求——公司车型齐全，专线运输直达让您更放心更省心。优秀的驾驶员团队——严格招聘、规范管理……</a>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\"><a href=\\\"/shili/anli/anli2/\\\">查看更多</a></dd>\r\n                        </dl>\r\n                    </div>\r\n                </div>\r\n\r\n                <div class=\\\"conbox \\\">\r\n                    <img src=\\\"/images/20180104152049_60002.jpg\\\" alt=\\\"\\\" />\r\n                    <div class=\\\"container\\\">\r\n                        <dl>\r\n                            <dt><a href=\\\"/shili/anli/anli3/\\\">仓储服务</a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"/shili/anli/anli3/\\\">仓库名称：招商局物流（我公司与招商仓库是长期合作伙伴） 仓库地址：新都区物流大道399号（位于绕城外侧，进出城交通便利） ……</a>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\"><a href=\\\"/shili/anli/anli3/\\\">查看更多</a></dd>\r\n                        </dl>\r\n                    </div>\r\n                </div>\r\n\r\n            </div>\r\n\r\n        </div>\r\n        <script type=\\\"text/javascript\\\">\r\n            $(\\\".jdal .jdal_top .jdal_type li\\\").mouseenter(function () {\r\n                $(this).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n                $(\\\".jdal .jdal_bot .conbox\\\").eq($(this).index()).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n            })\r\n        </script>\r\n\r\n        <div class=\\\"advantage\\\">\r\n\r\n            <h2 class=\\\"h2_title\\\"><span>为什么选择我们</span><i>专业从事冷藏、普通货物业务</i><em></em></h2>\r\n\r\n            <div class=\\\"adv_con\\\">\r\n                <span class=\\\"adv_btnl btn\\\" id=\\\"adv_btnl\\\"><i></i></span><span class=\\\"adv_btnr btn\\\" id=\\\"adv_btnr\\\"><i></i></span>\r\n                <div>\r\n\r\n                    <div class=\\\"conbox clearfix cur\\\">\r\n                        <div class=\\\"conleft fl\\\">\r\n                            <img src=\\\"/images/11.jpg\\\" alt=\\\"软件实力\\\" />\r\n                        </div>\r\n                        <div class=\\\"conright fr\\\">\r\n                            <h3><span>专业团队 物流平台 丰富经验</span><i>专业从事冷藏、普通货物业务</i></h3>\r\n                            <p class=\\\"p1\\\">成都市华森物流有限公司创立于2012年，专注于各类食品、乳品、水产、果蔬、酒业等产品的干线运输及区域配送、物流业务咨询与仓储服务。</p>\r\n                            <p class=\\\"p1\\\">公司在软件上，拥有一支高素质、专业化、年轻化的物流管理团队和资深专家顾问群，有现代化的物流信息平台，汇聚了丰富的物流服务经验和先进的管理服务理念。</p>\r\n                            \r\n                        </div>\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox clearfix \\\">\r\n                        <div class=\\\"conleft fl\\\">\r\n                            <img src=\\\"/images/22.jpg\\\" alt=\\\"硬件实力\\\" />\r\n                        </div>\r\n                        <div class=\\\"conright fr\\\">\r\n                            <h3><span>车型齐全 GPS监控 制冷性能好</span><i>满足各种运输、用车需求</i></h3>\r\n                            <p class=\\\"p1\\\">公司在硬件上，自有车型齐全，3-30吨的冷藏车、普通货运车多部，以及其他车型的联营车。</p>\r\n                            <p class=\\\"p1\\\">配置有GPS卫星定位系统，全程监控车辆的运营状态，安全性强、可靠性高；<br>其中冷藏车的制冷性能稳定，最低可达到-28℃。</p>\r\n                            <p class=\\\"p1\\\">能够满足各类客户的运输质量要求和客户用车需要。</p>\r\n                            \r\n                        </div>\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox clearfix \\\">\r\n                        <div class=\\\"conleft fl\\\">\r\n                            <img src=\\\"/images/33.jpg\\\" alt=\\\"荣誉资质\\\" />\r\n                        </div>\r\n                        <div class=\\\"conright fr\\\">\r\n                            <h3><span>专业团队 物流平台 丰富经验</span><i>专业从事冷藏、普通货物业务</i></h3>\r\n                            <p class=\\\"p1\\\">成都市华森物流有限公司创立于2012年，专注于各类食品、乳品、水产、果蔬、酒业等产品的干线运输及区域配送、物流业务咨询与仓储服务。</p>\r\n                            <p class=\\\"p1\\\">公司在软件上，拥有一支高素质、专业化、年轻化的物流管理团队和资深专家顾问群，有现代化的物流信息平台，汇聚了丰富的物流服务经验和先进的管理服务理念。</p>\r\n                            \r\n                        </div>\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox clearfix \\\">\r\n                        <div class=\\\"conleft fl\\\">\r\n                            <img src=\\\"/images/44.jpg\\\" alt=\\\"无忧服务\\\" />\r\n                        </div>\r\n                        <div class=\\\"conright fr\\\">\r\n                            <h3><span>车型齐全 GPS监控 制冷性能好</span><i>满足各种运输、用车需求</i></h3>\r\n                            <p class=\\\"p1\\\">公司在硬件上，自有车型齐全，3-30吨的冷藏车、普通货运车多部，以及其他车型的联营车。</p>\r\n                            <p class=\\\"p1\\\">配置有GPS卫星定位系统，全程监控车辆的运营状态，安全性强、可靠性高；<br>其中冷藏车的制冷性能稳定，最低可达到-28℃。</p>\r\n                            <p class=\\\"p1\\\">能够满足各类客户的运输质量要求和客户用车需要。</p>\r\n                            \r\n                        </div>\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n            <div class=\\\"container\\\">\r\n                <ul class=\\\"adv_type clearfix\\\">\r\n\r\n                    <li class=\\\"li1 cur\\\">\r\n                        <p><span>软件实力</span><i>Software</i><em></em></p>\r\n                    </li>\r\n\r\n                    <li class=\\\"li2 \\\">\r\n                        <p><span>硬件实力</span><i>Hardware</i><em></em></p>\r\n                    </li>\r\n\r\n                    <li class=\\\"li3 \\\">\r\n                        <p><span>荣誉资质</span><i>Honours</i><em></em></p>\r\n                    </li>\r\n\r\n                    <li class=\\\"li4 \\\">\r\n                        <p><span>无忧服务</span><i>service</i><em></em></p>\r\n                    </li>\r\n\r\n                </ul>\r\n            </div>\r\n\r\n        </div>\r\n        <script type=\\\"text/javascript\\\">\r\n            var Owid1 = $(\\\".advantage .conbox\\\").width() * 0.5;\r\n            var Onum = 0\r\n\r\n            $(\\\".advantage .conbox .conleft li\\\").width(Owid1);\r\n            $(\\\".advantage .conbox .conright li\\\").width(Owid1);\r\n            $(\\\".advantage .conbox .conright\\\").height($(\\\".advantage .conbox\\\").height())\r\n            $(\\\".advantage .conbox .conright li\\\").height($(\\\".advantage .conbox\\\").height())\r\n            $(\\\"#adv_btnr\\\").click(function () {\r\n                Onum++;\r\n                if (Onum > 3) {\r\n                    Onum = 0;\r\n                }\r\n                $(\\\".advantage .adv_type li\\\").eq(Onum).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n                $(\\\".advantage .adv_con .conbox\\\").eq(Onum).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\")\r\n            })\r\n\r\n            $(\\\"#adv_btnl\\\").click(function () {\r\n                Onum--;\r\n                if (Onum < 0) {\r\n                    Onum = 3;\r\n                }\r\n                $(\\\".advantage .adv_type li\\\").eq(Onum).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n                $(\\\".advantage .adv_con .conbox\\\").eq(Onum).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n            })\r\n\r\n            $(\\\".advantage .adv_type li\\\").mouseenter(function () {\r\n                $(this).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n                Onum = $(this).index();\r\n                $(\\\".advantage .adv_con .conbox\\\").eq(Onum).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\")\r\n            })\r\n\r\n            $(\\\'.btn\\\').bind(\\\"selectstart\\\", function () { return false; });\r\n        </script>\r\n\r\n\r\n        <div class=\\\"fwkh\\\">\r\n            <div class=\\\"container\\\">\r\n                <h2 class=\\\"h2_title\\\"><a href=\\\"/shili/hezuo/\\\">合作伙伴</a><i>已为众多企业提供物流支持</i><em></em></h2>\r\n\r\n                <div class=\\\"fwkh_con clearfix\\\">\r\n\r\n                    <ul>\r\n                        [e:loop={14,10,0,1}]\r\n                        <li><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\" title=\\\"<?=$bqr[\\\'title\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" /></a></li>\r\n                        [/e:loop]\r\n                    </ul>\r\n\r\n                </div>\r\n\r\n            </div>\r\n        </div>\r\n\r\n\r\n        <!--新闻-->\r\n        <div class=\\\"news\\\">\r\n            <div class=\\\"container\\\">\r\n                <h2 class=\\\"h2_title\\\"><i>NEWS CENTER</i><a href=\\\"/xinwen/\\\">新闻中心</a><em></em></h2>\r\n\r\n                <ul class=\\\"news_type clearfix\\\">\r\n                    <li class=\\\"cur\\\"><a href=\\\"/xinwen/gongsixinwen/\\\">公司新闻</a></li>\r\n                    <li><a href=\\\"/xinwen/hangyedongtai/\\\">行业动态</a></li>\r\n                    <li><a href=\\\"/xinwen/meitijujiao/\\\">媒体聚焦</a></li>\r\n                    <li><a href=\\\"/xinwen/changjianwenti/\\\">常见问题</a></li>\r\n                </ul>\r\n                <div class=\\\"news_con clearfix\\\">\r\n\r\n                    <div class=\\\"conbox cur\\\">\r\n                        [e:loop={8,3,0,1}]\r\n                        <dl>\r\n                            <dt><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a>\r\n                                <span><?=date(\\\'Y-m-d\\\',$bqr[newstime])?></span>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\">\r\n                                    <?=esub($bqr[smalltext],104),\\\'……\\\'?>\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n                        [/e:loop]\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox \\\">\r\n\r\n                        [e:loop={9,3,0,1}]\r\n                        <dl>\r\n                            <dt><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a>\r\n                                <span><?=date(\\\'Y-m-d\\\',$bqr[newstime])?></span>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\">\r\n                                    <?=esub($bqr[smalltext],104),\\\'……\\\'?>\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n                        [/e:loop]\r\n\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox \\\">\r\n\r\n                        [e:loop={10,3,0,1}]\r\n                        <dl>\r\n                            <dt><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a>\r\n                                <span><?=date(\\\'Y-m-d\\\',$bqr[newstime])?></span>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\">\r\n                                    <?=esub($bqr[smalltext],104),\\\'……\\\'?>\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n                        [/e:loop]\r\n\r\n                    </div>\r\n\r\n                    <div class=\\\"conbox \\\">\r\n\r\n                        [e:loop={11,3,0,1}]\r\n                        <dl>\r\n                            <dt><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" /></a></dt>\r\n                            <dd class=\\\"dd1\\\">\r\n                                <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a>\r\n                                <span><?=date(\\\'Y-m-d\\\',$bqr[newstime])?></span>\r\n                            </dd>\r\n                            <dd class=\\\"dd2\\\">\r\n                                <a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\">\r\n                                    <?=esub($bqr[smalltext],104),\\\'……\\\'?>\r\n                                </a>\r\n                            </dd>\r\n                            <dd class=\\\"dd3\\\"><a href=\\\"<?=$bqsr[\\\'titleurl\\\']?>\\\">查看更多 +</a></dd>\r\n                        </dl>\r\n                        [/e:loop]\r\n\r\n                    </div>\r\n\r\n                </div>\r\n\r\n            </div>\r\n        </div>\r\n\r\n        <script type=\\\"text/javascript\\\">\r\n            $(\\\".news .news_type li\\\").mouseenter(function () {\r\n                $(this).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n                $(\\\".news .news_con .conbox\\\").eq($(this).index()).addClass(\\\"cur\\\").siblings().removeClass(\\\"cur\\\");\r\n            })\r\n        </script>\r\n\r\n        [!--temp.footer--]\r\n\r\n    </form>\r\n</body>\r\n</html>', 0, 0, '', 0, 0, '', 0, 0, 0, 1592387588, 'pubindextemp', 1, 'admin');
INSERT INTO `hswl_enewstempbak` (`bid`, `tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`, `baktime`, `temptype`, `gid`, `lastuser`) VALUES
(30, 2, 'footer', '<!--wrap-footer-->\r\n    <div class=\\\"wrap-footer\\\">\r\n        <div class=\\\"f_top clearfix\\\">\r\n            <div class=\\\"container\\\">\r\n                <div id=\\\"ucFooter_plPartner\\\">\r\n                    <ul class=\\\"f_ul f_ul1\\\">\r\n                        <li><a href=\\\"javascript:;\\\"><i></i>热门关键词</a></li>\r\n                        <li><a href=\\\"#\\\">冷链运输</a></li>\r\n                        <li><a href=\\\"#\\\">配送服务</a></li>\r\n                        <li><a href=\\\"#\\\">仓储服务</a></li>\r\n                        <li><a href=\\\"#\\\">冷冻整车</a></li>\r\n                    </ul>\r\n                </div>\r\n\r\n                <ul class=\\\"f_ul f_ul2\\\">\r\n                    <li><a href=\\\"/guanyu/jianjie/\\\"><i></i>关于我们</a></li>\r\n                    <li><a href=\\\"/guanyu/jianjie/\\\">公司简介</a></li>\r\n                    <li><a href=\\\"/guanyu/qiyeyoushi/\\\">企业优势</a></li>\r\n                    <li><a href=\\\"/guanyu/gongsilueying/\\\">公司掠影</a></li>\r\n                    <li><a href=\\\"/guanyu/lianxi/\\\">联系我们</a></li>\r\n                </ul>\r\n\r\n                <ul class=\\\"f_ul f_ul3\\\">\r\n                    <li><a href=\\\"/fuwu/\\\"><i></i>服务范围</a></li>\r\n                    <li><a href=\\\"/fuwu/lenglianyunshu/\\\">冷链运输</a></li>\r\n                    <li><a href=\\\"/fuwu/peisongfuwu/\\\">配送服务</a></li>\r\n                    <li><a href=\\\"/fuwu/cangchufuwu/\\\">仓储服务</a></li>\r\n                </ul>\r\n\r\n                <dl class=\\\"f_erwm\\\">\r\n                    <dt><img src=\\\"/images/20180206135606_51322.jpg\\\" alt=\\\"二维码\\\" /></dt>\r\n                    <dd>微信二维码</dd>\r\n                </dl>\r\n\r\n                <ul class=\\\"f_ul4\\\">\r\n                    <li>24小时专线：13981791475</li>\r\n                    <li>咨询邮箱：qiaoj@hslcwl.cn</li>\r\n                    <li>传真：028-61297652</li>\r\n                    <li>公司地址：四川省成都市成华区龙潭工业园钢铁领域B座518室成都市华森物流有限公司</li>\r\n                </ul>\r\n\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\\\"f_bot\\\">\r\n            <div class=\\\"container clearfix\\\">\r\n                <p class=\\\"fl\\\">版权所有@2020. 成都市华森物流有限公司</p>\r\n                <p class=\\\"fr\\\">技术支持：<a href=\\\"https://www.shunking.cn/\\\" target=\\\"_blank\\\">舜王科技</a> &nbsp; &nbsp; &nbsp; 备案号：<a href=\\\"http://www.beian.miit.gov.cn/\\\" target=\\\"_blank\\\">蜀ICP备13019420号</a></p>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\\\"float\\\">\r\n        <div class=\\\"float_show float_show0\\\">\r\n            <a style=\\\"cursor:pointer;\\\" title=\\\"回到顶部\\\"></a>\r\n        </div>\r\n        <div class=\\\"float_show float_show1\\\" style=\\\"right: -86px;\\\">\r\n            <a href=\\\"#\\\"><img width=\\\"24\\\" height=\\\"24\\\" rel=\\\"nofollow\\\" alt=\\\"客服咨询\\\" src=\\\"/images/float_qqicon2.png\\\">客服咨询</a>\r\n        </div>\r\n        <div class=\\\"float_show float_show2\\\" style=\\\"right: -146px;\\\">\r\n            <a href=\\\"tel:13981791475\\\"><img width=\\\"24\\\" height=\\\"24\\\" alt=\\\"电话\\\" src=\\\"/images/float_qqicon3.png\\\">13981791475</a>\r\n        </div>\r\n\r\n        <div class=\\\"float_show float_show3\\\" style=\\\"right: -202px;\\\">\r\n            <a href=\\\"mailto:qiaoj@hslcwl.cn\\\"><img width=\\\"24\\\" height=\\\"24\\\" alt=\\\"邮箱\\\" src=\\\"/images/float_qqicon5.png\\\">qiaoj@hslcwl.cn</a>\r\n        </div>\r\n\r\n        <div class=\\\"float_show float_show4\\\">\r\n            <a href=\\\"javascript:;\\\"><img width=\\\"24\\\" height=\\\"24\\\" alt=\\\"二维码\\\" src=\\\"/images/float_qqicon4.png\\\"></a>\r\n            <div class=\\\"float_wx\\\" style=\\\"display: none;\\\"><img width=\\\"144\\\" height=\\\"144\\\" alt=\\\"扫描二维码\\\" src=\\\"/images/20180206135606_51322.jpg\\\"></div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\\\"zxly\\\">\r\n        <div class=\\\"container\\\">\r\n            <span class=\\\"close_zxly\\\"></span>\r\n            <ul class=\\\"clearfix\\\" id=\\\"LYFrom\\\">\r\n                <form method=\\\"post\\\" enctype=\\\"multipart/form-data\\\" action=\\\"/e/enews/index.php\\\">\r\n                    <input type=\\\"hidden\\\" name=\\\"bid\\\" value=1>\r\n                    <input type=\\\"hidden\\\" name=\\\"ecmsfrom\\\" value=\\\"javaScript:history.go(-1)\\\">\r\n                    <input name=\\\"enews\\\" type=\\\"hidden\\\" value=\\\"AddFeedback\\\">\r\n                    <li><input type=\\\"text\\\" name=\\\"title\\\" placeholder=\\\"联系人：\\\" id=\\\"LEAVEWORD_txtContact\\\" class=\\\"fromtext\\\" /></li>\r\n                    <li><input type=\\\"text\\\" name=\\\"mycall\\\" placeholder=\\\"电话：\\\" id=\\\"LEAVEWORD_txtTel\\\" class=\\\"fromtext\\\" /></li>\r\n                    <li><input type=\\\"text\\\" name=\\\"email\\\" placeholder=\\\"邮箱：\\\" id=\\\"LEAVEWORD_txtEmail\\\" class=\\\"fromtext\\\" /></li>\r\n                    <li class=\\\"fr\\\"><input type=\\\"submit\\\" name=\\\"submit\\\" value=\\\"立即获取方案\\\"></li>\r\n                </form>\r\n            </ul>\r\n        </div>\r\n    </div>\r\n\r\n    <script type=\\\"text/javascript\\\">\r\n        initCommonHeader();\r\n        if (MARK == \\\"\\\") var MARK = \\\"index\\\";\r\n        initCommonHeaderKeywords(MARK);\r\n    \r\n        $(function () {\r\n            $(\\\'.float_show0\\\').hide();\r\n            action();\r\n        })\r\n        function action() {\r\n            $(window).scroll(function () {\r\n                var st = $(document).scrollTop();\r\n                if (st > 500) {\r\n                    $(\\\'.float_show0\\\').show();\r\n                } else {\r\n                    $(\\\'.float_show0\\\').hide();\r\n                }\r\n            })\r\n\r\n            $(\\\'.float_show0 a\\\').click(function () {\r\n                $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n            });\r\n        }\r\n\r\n        $(\\\'.float_show1\\\').hover(function () {\r\n            $(this).stop().animate({ \\\'right\\\': \\\'0\\\' }, 450)\r\n\r\n        }, function () {\r\n\r\n            $(this).stop().animate({ \\\'right\\\': \\\'-86px\\\' }, 450)\r\n\r\n        })\r\n\r\n        $(\\\'.float_show2\\\').hover(function () {\r\n            $(this).stop().animate({ \\\'right\\\': \\\'0\\\' }, 450)\r\n\r\n        }, function () {\r\n\r\n            $(this).stop().animate({ \\\'right\\\': \\\'-146px\\\' }, 450)\r\n\r\n        })\r\n\r\n\r\n        $(\\\'.float_show3\\\').hover(function () {\r\n            $(this).stop().animate({ \\\'right\\\': \\\'0\\\' }, 450)\r\n\r\n        }, function () {\r\n\r\n            $(this).stop().animate({ \\\'right\\\': \\\'-202px\\\' }, 450)\r\n\r\n        })\r\n\r\n        $(\\\'.float_show4\\\').hover(function () {\r\n\r\n            $(this).stop().find(\\\'.float_wx\\\').fadeIn(350)\r\n\r\n        }, function () {\r\n\r\n            $(this).stop().find(\\\'.float_wx\\\').fadeOut(350)\r\n\r\n        })\r\n\r\n        //悬浮留言\r\n        $(\\\".wrap-footer\\\").css(\\\"padding-bottom\\\", 105);\r\n        $(\\\".close_zxly\\\").click(function () {\r\n            $(\\\".zxly\\\").hide();\r\n            $(\\\".wrap-footer\\\").css(\\\"padding-bottom\\\", 0);\r\n        })      \r\n    </script>', 0, 0, '页面尾部', 0, 0, '', 0, 0, 0, 1592387745, 'tempvar', 1, 'admin'),
(49, 1, 'header', '<header>\r\n            <h1><a href=\\\"/mobile/\\\"><img src=\\\"/mobile/images/logo.jpg\\\" alt=\\\"\\\" /></a></h1>\r\n            <section class=\\\"h_tit\\\">\r\n                <P class=p1><strong>成都市华森物流有限公司</strong></P>\r\n                <p class=\\\"p2\\\"><i></i>咨询热线：<a href=\\\"tel:13981791475\\\">13981791475</a></p>\r\n            </section>\r\n        </header>\r\n        <nav class=\\\"clearfix\\\">\r\n            <ul>\r\n                <li><a href=\\\"/mobile/\\\">网站首页</a></li>\r\n                <li><a href=\\\"/mobile/fuwu/\\\">服务范围</a></li>\r\n                <li><a href=\\\"/mobile/shili/anli/\\\">成功案例</a></li>\r\n                <li><a href=\\\"/mobile/shili/hezuo/\\\">公司实力</a></li>\r\n                <li><a href=\\\"/mobile/xinwen/\\\">新闻中心</a></li>\r\n                <li><a href=\\\"/mobile/guanyu/jianjie/\\\">关于我们</a></li>\r\n                <li><a href=\\\"/mobile/guanyu/lianxi/\\\">联系我们</a></li>\r\n                <li><a href=\\\"#\\\">在线咨询</a></li>\r\n            </ul>\r\n        </nav>', 1, 0, '页面头部', 0, 0, '', 0, 0, 0, 1593849954, 'tempvar', 2, 'admin'),
(32, 2, 'footer', '<section class=\\\"f_icp\\\">\r\n            <ul>\r\n                <li>24小时专线：<a href=\\\"tel:13981791475\\\">13981791475</a></li>\r\n                <li>版权所有&copy;成都市华森物流有限公司</li>\r\n                <li>备案号：<a href=\\\"http://www.beian.miit.gov.cn/\\\" target=\\\"_blank\\\">蜀ICP备13019420号</a></li>\r\n            </ul>\r\n        </section>\r\n        <a href=\\\"javascript:void(0)\\\" class=\\\"hddb\\\"><img src=\\\"images/hddb.png\\\" alt=\\\"返回顶部\\\" /></a>\r\n        <section class=\\\"wrap-footer\\\">\r\n            <footer>\r\n                <a href=\\\"/mobile/\\\">返回首页</a>\r\n                <a href=\\\"/mobile/fuwu/\\\">服务范围</a>\r\n                <a href=\\\"tel:13981791475\\\">拨打电话</a>\r\n                <a href=\\\"#\\\">在线咨询</a>\r\n            </footer>\r\n        </section>', 0, 0, '页面尾部', 0, 0, '', 0, 0, 0, 1592896787, 'tempvar', 2, 'admin'),
(33, 1, '子栏目导航标签模板', '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 0, 0, '<li><a href=\\\"/mobile[!--classurl--]\\\">[!--classname--]</a></li>', 1, 1, 'Y-m-d', 0, 0, 0, 1592896839, 'bqtemp', 2, 'admin'),
(34, 1, 'header', '<header>\r\n            <h1><a href=\\\"/mobile/\\\"><img src=\\\"/mobile/images/logo.png\\\" alt=\\\"\\\" /></a></h1>\r\n            <section class=\\\"h_tit\\\">\r\n                <P class=p1><strong>华森物流--冷冻整车 零担业务</strong></P>\r\n                <p class=\\\"p2\\\"><i></i>咨询热线：<a href=\\\"tel:13981791475\\\">13981791475</a></p>\r\n            </section>\r\n        </header>\r\n        <nav class=\\\"clearfix\\\">\r\n            <ul>\r\n                <li><a href=\\\"/mobile/\\\">网站首页</a></li>\r\n                <li><a href=\\\"/mobile/fuwu/\\\">服务范围</a></li>\r\n                <li><a href=\\\"/mobile/shili/anli/\\\">成功案例</a></li>\r\n                <li><a href=\\\"/mobile/shili/hezuo/\\\">公司实力</a></li>\r\n                <li><a href=\\\"/mobile/xinwen/\\\">新闻中心</a></li>\r\n                <li><a href=\\\"/mobile/guanyu/jianjie/\\\">关于我们</a></li>\r\n                <li><a href=\\\"/mobile/guanyu/lianxi/\\\">联系我们</a></li>\r\n                <li><a href=\\\"#\\\">在线咨询</a></li>\r\n            </ul>\r\n        </nav>', 1, 0, '页面头部', 0, 0, '', 0, 0, 0, 1592897445, 'tempvar', 2, 'admin'),
(35, 2, 'footer', '<section class=\\\"f_icp\\\">\r\n            <ul>\r\n                <li>24小时专线：<a href=\\\"tel:13981791475\\\">13981791475</a></li>\r\n                <li>版权所有&copy;成都市华森物流有限公司</li>\r\n                <li>备案号：<a href=\\\"http://www.beian.miit.gov.cn/\\\" target=\\\"_blank\\\">蜀ICP备13019420号</a></li>\r\n            </ul>\r\n        </section>\r\n        <a href=\\\"javascript:void(0)\\\" class=\\\"hddb\\\"><img src=\\\"/mobile/images/hddb.png\\\" alt=\\\"返回顶部\\\" /></a>\r\n        <section class=\\\"wrap-footer\\\">\r\n            <footer>\r\n                <a href=\\\"/mobile/\\\">返回首页</a>\r\n                <a href=\\\"/mobile/fuwu/\\\">服务范围</a>\r\n                <a href=\\\"tel:13981791475\\\">拨打电话</a>\r\n                <a href=\\\"#\\\">在线咨询</a>\r\n            </footer>\r\n        </section>', 0, 0, '页面尾部', 0, 0, '', 0, 0, 0, 1592897473, 'tempvar', 2, 'admin'),
(36, 1, '新闻列表模板', '<!DOCTYPE html>\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n\r\n<HEAD id=Head1>\r\n    <META name=viewport content=\\\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;\\\">\r\n    <META name=viewport content=width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0;>\r\n    <META name=apple-mobile-web-app-capable content=yes>\r\n    <META name=apple-mobile-web-app-status-bar-style content=black>\r\n    <META name=format-detection content=telephone=no>\r\n    <META content=\\\"text/html; charset=utf-8\\\" http-equiv=Content-Type>\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/reset.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/Common.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/prlist.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/fontsStyle.css\\\">\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/prefixfree.min.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/Jquery.js\\\"></SCRIPT>\r\n    <SCRIPT src=\\\"/mobile/js/tools.js\\\"></SCRIPT>\r\n</HEAD>\r\n\r\n<BODY style=\\\"ZOOM: 1\\\">\r\n    <FORM id=form1 >\r\n\r\n        <DIV class=mian>\r\n            [!--temp.header--]\r\n            \r\n            <div class=\\\"CategoryList_Title\\\">\r\n                <a href=\\\"javascript:history.go(-1);\\\"><i class=\\\"icon-left fl\\\"></i></a>\r\n                [!--pagetitle--]<a href=\\\"javascript:;\\\"><i class=\\\"icon-details fr\\\"> 分类</i></a>\r\n            </div>\r\n            <ul id=\\\"fenl\\\" class=\\\"CategoryLista\\\" style=\\\"display:none;\\\">\r\n                [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n            </ul>\r\n            <script type=\\\"text/javascript\\\">\r\n                $(document).ready(function(){\r\n                  $(\\\".CategoryList_Title a .icon-details\\\").click(function(){\r\n                    $(\\\"#fenl\\\").toggle();\r\n                  });\r\n                });\r\n            </script>\r\n\r\n            <DIV class=nyContent style=\\\"MARGIN-BOTTOM: 0em\\\">\r\n                <DIV class=news>\r\n                    <DIV class=newsbox>\r\n                        <DIV class=newslist>\r\n                            <DL>\r\n                                <DT><A href=\\\"#\\\"><IMG alt=\\\"\\\" src=\\\"/mobile/images/20180428145517_46120.jpg\\\"></A></DT>\r\n                                <DD>\r\n                                    <H3><A href=\\\"#\\\">东莞轻钢结构厂房</A></H3>\r\n                                    <P>东莞市力丰钢结构工程有限公司?，企业本着\\\"立足东莞，幅射全国；做强钢构产业，拓宽施工领域\\\"的经营方针，形成了轻...</P>\r\n                                </DD>\r\n                            </DL>\r\n                        </DIV>\r\n                    </DIV>\r\n                </DIV>\r\n                <DIV class=newsList>\r\n                    <UL>\r\n                        [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]\r\n                        \r\n                    </UL>\r\n                </DIV>\r\n                <div class=\\\"pageBox\\\">[!--show.listpage--]</div>\r\n            </DIV>\r\n            [!--temp.footer--]\r\n        </DIV><!-- cb_mian[end] -->\r\n        \r\n    </FORM>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/prefixfree.min.js\\\"></SCRIPT>\r\n    <SCRIPT src=\\\"/mobile/js/tools.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript>\r\n        jQuery(document).ready(function ($) {\r\n            $(\\\'.hddb img\\\').click(function () {\r\n                $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n            });\r\n            //回到顶部函数\r\n        });\r\n\r\n    </SCRIPT>\r\n</BODY>\r\n</HTML>', 0, 0, '<LI><A href=\\\"[!--titleurl--]\\\">[!--title--]</A><SPAN class=\\\"last\\\">[ [!--newstime--] ]</SPAN></LI>', 1, 1, 'Y-m-d', 0, 0, 0, 1592897756, 'listtemp', 2, 'admin'),
(37, 2, '通用列表模板', '<!DOCTYPE html>\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n\r\n<HEAD>\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <META name=viewport content=\\\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;\\\">\r\n    <META name=apple-mobile-web-app-capable content=yes>\r\n    <META name=apple-mobile-web-app-status-bar-style content=black>\r\n    <META name=format-detection content=telephone=no>\r\n    <META content=\\\"text/html; charset=utf-8\\\" http-equiv=Content-Type>\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/fontsStyle.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/reset.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/Common.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/prlist.css\\\">\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/Jquery.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/prefixfree.min.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/sdw_mobile.js\\\"></SCRIPT>\r\n    <SCRIPT src=\\\"/mobile/js/tools.js\\\"></SCRIPT>\r\n</HEAD>\r\n\r\n<BODY style=\\\"ZOOM: 1\\\">\r\n    <!-- header_end -->\r\n    <DIV class=mian>\r\n        [!--temp.header--]\r\n        <div class=\\\"CategoryList_Title\\\">\r\n            <a href=\\\"javascript:history.go(-1);\\\"><i class=\\\"icon-left fl\\\"></i></a>\r\n            [!--pagetitle--]<a href=\\\"javascript:;\\\"><i class=\\\"icon-details fr\\\"> 分类</i></a>\r\n        </div>\r\n        <ul id=\\\"fenl\\\" class=\\\"CategoryLista\\\" style=\\\"display:none;\\\">\r\n            [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n        </ul>\r\n        <script type=\\\"text/javascript\\\">\r\n            $(document).ready(function(){\r\n              $(\\\".CategoryList_Title a .icon-details\\\").click(function(){\r\n                $(\\\"#fenl\\\").toggle();\r\n              });\r\n            });\r\n        </script>\r\n\r\n        <DIV class=productLayout>\r\n            [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]\r\n            \r\n        </DIV>\r\n        <div class=\\\"pageBox\\\">[!--show.listpage--]</div>\r\n\r\n        [!--temp.footer--]\r\n    </DIV><!-- cb_mian[end] -->\r\n    \r\n    <SCRIPT type=text/javascript>\r\n        jQuery(document).ready(function ($) {\r\n            $(\\\'.hddb img\\\').click(function () {\r\n                $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n            });\r\n            //回到顶部函数\r\n        });\r\n    </SCRIPT>\r\n</BODY>\r\n</HTML>', 0, 0, '<DL>\r\n                <DT><A href=\\\"[!--titleurl--]\\\"><IMG alt=\\\"[!--title--]\\\" src=\\\"[!--titlepic--]\\\" /></A></DT>\r\n                <DD>\r\n                    <A href=\\\"[!--titleurl--]\\\"><H5>[!--title--]</H5></A>\r\n                </DD>\r\n            </DL>', 1, 1, 'Y-m-d', 0, 0, 0, 1592897855, 'listtemp', 2, 'admin'),
(38, 3, '合作列表模板', '<!DOCTYPE html>\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n\r\n<HEAD id=Head1>\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <META name=viewport content=\\\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;\\\">\r\n    <META name=viewport content=width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0;>\r\n    <META name=apple-mobile-web-app-capable content=yes>\r\n    <META name=apple-mobile-web-app-status-bar-style content=black>\r\n    <META name=format-detection content=telephone=no>\r\n    <META content=\\\"text/html; charset=utf-8\\\" http-equiv=Content-Type>\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/fontsStyle.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/reset.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/Common.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/prlist.css\\\">\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/prefixfree.min.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/Jquery.js\\\"></SCRIPT>\r\n    <SCRIPT src=\\\"/mobile/js/tools.js\\\"></SCRIPT>\r\n</HEAD>\r\n\r\n<BODY style=\\\"ZOOM: 1\\\">\r\n    <FORM id=form1 method=post name=form1 action=../mobile/Help/list.aspx?sid=0001%2c0009%2c0012>\r\n        <DIV class=mian>\r\n            [!--temp.header--]\r\n            \r\n            <div class=\\\"CategoryList_Title\\\">\r\n                <a href=\\\"javascript:history.go(-1);\\\"><i class=\\\"icon-left fl\\\"></i></a>\r\n                [!--pagetitle--]<a href=\\\"javascript:;\\\"><i class=\\\"icon-details fr\\\"> 分类</i></a>\r\n            </div>\r\n            <ul id=\\\"fenl\\\" class=\\\"CategoryLista\\\" style=\\\"display:none;\\\">\r\n                [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n            </ul>\r\n            <script type=\\\"text/javascript\\\">\r\n                $(document).ready(function(){\r\n                  $(\\\".CategoryList_Title a .icon-details\\\").click(function(){\r\n                    $(\\\"#fenl\\\").toggle();\r\n                  });\r\n                });\r\n            </script>\r\n\r\n            <DIV class=nyContent>\r\n                <UL class=\\\"m-con-1 m-prol\\\">\r\n                    [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]\r\n                </UL>\r\n                <DIV class=clear></DIV>\r\n                <div class=\\\"pageBox\\\">[!--show.listpage--]</div>\r\n            </DIV>\r\n            [!--temp.footer--]\r\n        </DIV><!-- cb_mian[end] -->\r\n\r\n        <SCRIPT type=text/javascript>\r\n            jQuery(document).ready(function ($) {\r\n                $(\\\'.hddb img\\\').click(function () {\r\n                    $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n                });\r\n                //回到顶部函数\r\n            });\r\n        </SCRIPT>\r\n    </FORM>\r\n</BODY>\r\n</HTML>', 0, 0, '<LI><IMG alt=\\\"[!--title--]\\\" src=\\\"[!--titlepic--]\\\" width=\\\"138\\\">\r\n                        <H5>[!--title--]</H5>\r\n                    </LI>', 1, 1, 'Y-m-d', 0, 0, 0, 1592897932, 'listtemp', 2, 'admin'),
(39, 1, '新闻列表模板', '<!DOCTYPE html>\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n\r\n<HEAD id=Head1>\r\n    <META name=viewport content=\\\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;\\\">\r\n    <META name=viewport content=width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0;>\r\n    <META name=apple-mobile-web-app-capable content=yes>\r\n    <META name=apple-mobile-web-app-status-bar-style content=black>\r\n    <META name=format-detection content=telephone=no>\r\n    <META content=\\\"text/html; charset=utf-8\\\" http-equiv=Content-Type>\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/reset.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/Common.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/prlist.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/fontsStyle.css\\\">\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/prefixfree.min.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/Jquery.js\\\"></SCRIPT>\r\n    <SCRIPT src=\\\"/mobile/js/tools.js\\\"></SCRIPT>\r\n</HEAD>\r\n\r\n<BODY style=\\\"ZOOM: 1\\\">\r\n    <FORM id=form1 >\r\n\r\n        <DIV class=mian>\r\n            [!--temp.header--]\r\n            \r\n            <div class=\\\"CategoryList_Title\\\">\r\n                <a href=\\\"javascript:history.go(-1);\\\"><i class=\\\"icon-left fl\\\"></i></a>\r\n                [!--pagetitle--]<a href=\\\"javascript:;\\\"><i class=\\\"icon-details fr\\\"> 分类</i></a>\r\n            </div>\r\n            <ul id=\\\"fenl\\\" class=\\\"CategoryLista\\\" style=\\\"display:none;\\\">\r\n                [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n            </ul>\r\n            <script type=\\\"text/javascript\\\">\r\n                $(document).ready(function(){\r\n                  $(\\\".CategoryList_Title a .icon-details\\\").click(function(){\r\n                    $(\\\"#fenl\\\").toggle();\r\n                  });\r\n                });\r\n            </script>\r\n\r\n            <DIV class=nyContent style=\\\"MARGIN-BOTTOM: 0em\\\">\r\n                <DIV class=news>\r\n                    <DIV class=newsbox>\r\n                        <DIV class=newslist>\r\n                            [e:loop={\\\'selfinfo\\\',1,0,1}]\r\n                            <DL>\r\n                                <DT><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><IMG alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\"></A></DT>\r\n                                <DD>\r\n                                    <H3><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></A></H3>\r\n                                    <P><?=esub($bqr[smalltext],110),\\\'……\\\'?></P>\r\n                                </DD>\r\n                            </DL>\r\n                            [/e:loop]\r\n                        </DIV>\r\n                    </DIV>\r\n                </DIV>\r\n                <DIV class=newsList>\r\n                    <UL>\r\n                        [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]\r\n                    </UL>\r\n                </DIV>\r\n                <div class=\\\"pageBox\\\">[!--show.listpage--]</div>\r\n            </DIV>\r\n            [!--temp.footer--]\r\n        </DIV><!-- cb_mian[end] -->\r\n        \r\n    </FORM>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/prefixfree.min.js\\\"></SCRIPT>\r\n    <SCRIPT src=\\\"/mobile/js/tools.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript>\r\n        jQuery(document).ready(function ($) {\r\n            $(\\\'.hddb img\\\').click(function () {\r\n                $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n            });\r\n            //回到顶部函数\r\n        });\r\n    </SCRIPT>\r\n</BODY>\r\n</HTML>', 0, 0, '<LI><A href=\\\"/mobile[!--titleurl--]\\\">[!--title--]</A><SPAN class=\\\"last\\\">[ [!--newstime--] ]</SPAN></LI>', 1, 1, 'Y-m-d', 0, 0, 0, 1592898167, 'listtemp', 2, 'admin'),
(40, 2, '通用列表模板', '<!DOCTYPE html>\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n\r\n<HEAD>\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <META name=viewport content=\\\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;\\\">\r\n    <META name=apple-mobile-web-app-capable content=yes>\r\n    <META name=apple-mobile-web-app-status-bar-style content=black>\r\n    <META name=format-detection content=telephone=no>\r\n    <META content=\\\"text/html; charset=utf-8\\\" http-equiv=Content-Type>\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/fontsStyle.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/reset.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/Common.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/prlist.css\\\">\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/Jquery.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/prefixfree.min.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/sdw_mobile.js\\\"></SCRIPT>\r\n    <SCRIPT src=\\\"/mobile/js/tools.js\\\"></SCRIPT>\r\n</HEAD>\r\n\r\n<BODY style=\\\"ZOOM: 1\\\">\r\n    <!-- header_end -->\r\n    <DIV class=mian>\r\n        [!--temp.header--]\r\n        <div class=\\\"CategoryList_Title\\\">\r\n            <a href=\\\"javascript:history.go(-1);\\\"><i class=\\\"icon-left fl\\\"></i></a>\r\n            [!--pagetitle--]<a href=\\\"javascript:;\\\"><i class=\\\"icon-details fr\\\"> 分类</i></a>\r\n        </div>\r\n        <ul id=\\\"fenl\\\" class=\\\"CategoryLista\\\" style=\\\"display:none;\\\">\r\n            [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n        </ul>\r\n        <script type=\\\"text/javascript\\\">\r\n            $(document).ready(function(){\r\n              $(\\\".CategoryList_Title a .icon-details\\\").click(function(){\r\n                $(\\\"#fenl\\\").toggle();\r\n              });\r\n            });\r\n        </script>\r\n\r\n        <DIV class=productLayout>\r\n            [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]\r\n            \r\n        </DIV>\r\n        <div class=\\\"pageBox\\\">[!--show.listpage--]</div>\r\n\r\n        [!--temp.footer--]\r\n    </DIV><!-- cb_mian[end] -->\r\n    \r\n    <SCRIPT type=text/javascript>\r\n        jQuery(document).ready(function ($) {\r\n            $(\\\'.hddb img\\\').click(function () {\r\n                $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n            });\r\n            //回到顶部函数\r\n        });\r\n    </SCRIPT>\r\n</BODY>\r\n</HTML>', 0, 0, '<DL>\r\n                <DT><A href=\\\"/mobile[!--titleurl--]\\\"><IMG alt=\\\"[!--title--]\\\" src=\\\"[!--titlepic--]\\\" /></A></DT>\r\n                <DD>\r\n                    <A href=\\\"/mobile[!--titleurl--]\\\"><H5>[!--title--]</H5></A>\r\n                </DD>\r\n            </DL>', 1, 1, 'Y-m-d', 0, 0, 0, 1592898182, 'listtemp', 2, 'admin'),
(41, 3, '合作列表模板', '<!DOCTYPE html>\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n\r\n<HEAD id=Head1>\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <META name=viewport content=\\\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;\\\">\r\n    <META name=viewport content=width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0;>\r\n    <META name=apple-mobile-web-app-capable content=yes>\r\n    <META name=apple-mobile-web-app-status-bar-style content=black>\r\n    <META name=format-detection content=telephone=no>\r\n    <META content=\\\"text/html; charset=utf-8\\\" http-equiv=Content-Type>\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/fontsStyle.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/reset.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/Common.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/prlist.css\\\">\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/prefixfree.min.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/Jquery.js\\\"></SCRIPT>\r\n    <SCRIPT src=\\\"/mobile/js/tools.js\\\"></SCRIPT>\r\n</HEAD>\r\n\r\n<BODY style=\\\"ZOOM: 1\\\">\r\n    <FORM id=form1 method=post name=form1 action=../mobile/Help/list.aspx?sid=0001%2c0009%2c0012>\r\n        <DIV class=mian>\r\n            [!--temp.header--]\r\n            \r\n            <div class=\\\"CategoryList_Title\\\">\r\n                <a href=\\\"javascript:history.go(-1);\\\"><i class=\\\"icon-left fl\\\"></i></a>\r\n                [!--pagetitle--]<a href=\\\"javascript:;\\\"><i class=\\\"icon-details fr\\\"> 分类</i></a>\r\n            </div>\r\n            <ul id=\\\"fenl\\\" class=\\\"CategoryLista\\\" style=\\\"display:none;\\\">\r\n                [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n            </ul>\r\n            <script type=\\\"text/javascript\\\">\r\n                $(document).ready(function(){\r\n                  $(\\\".CategoryList_Title a .icon-details\\\").click(function(){\r\n                    $(\\\"#fenl\\\").toggle();\r\n                  });\r\n                });\r\n            </script>\r\n\r\n            <DIV class=nyContent>\r\n                <UL class=\\\"m-con-1 m-prol\\\">\r\n                    [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]\r\n                </UL>\r\n                <DIV class=clear></DIV>\r\n                <div class=\\\"pageBox\\\">[!--show.listpage--]</div>\r\n            </DIV>\r\n            [!--temp.footer--]\r\n        </DIV><!-- cb_mian[end] -->\r\n\r\n        <SCRIPT type=text/javascript>\r\n            jQuery(document).ready(function ($) {\r\n                $(\\\'.hddb img\\\').click(function () {\r\n                    $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n                });\r\n                //回到顶部函数\r\n            });\r\n        </SCRIPT>\r\n    </FORM>\r\n</BODY>\r\n</HTML>', 0, 0, '<LI><IMG alt=\\\"[!--title--]\\\" src=\\\"[!--titlepic--]\\\" width=\\\"138\\\"><H5>[!--title--]</H5></LI>', 1, 1, 'Y-m-d', 0, 0, 0, 1592898209, 'listtemp', 2, 'admin'),
(42, 3, '关于单页模板', '<!DOCTYPE html>\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n\r\n<HEAD id=Head1>\r\n    <META content=\\\"text/html; charset=utf-8\\\" http-equiv=Content-Type>\r\n    <META name=viewport content=\\\"initial-scale=1.0, maximum-scale=1.0,user-scalable=0\\\">\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/fontsStyle.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/reset.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/Common.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/prlist.css\\\">\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/Jquery.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/sdw_mobile.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/Tools.js\\\"></SCRIPT>\r\n</HEAD>\r\n\r\n<BODY style=\\\"ZOOM: 1\\\">\r\n    <!-- header_end -->\r\n    <DIV class=mian>\r\n        [!--temp.header--]\r\n        <DIV class=CategoryList_Title>\r\n            <A href=\\\"javascript:history.go(-1)\\\"><I class=\\\"icon-left fl\\\"></I></A>\r\n            <A href=\\\"#\\\"><I class=\\\"icon-details fr\\\"> 分类</I></A>[!--pagetitle--]\r\n        </DIV>\r\n        <UL id=\\\"fenl\\\" class=\\\"CategoryLista\\\" style=\\\"display:none;\\\">\r\n            [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n        </UL>\r\n        <script type=\\\"text/javascript\\\">\r\n            $(document).ready(function(){\r\n              $(\\\".CategoryList_Title a .icon-details\\\").click(function(){\r\n                $(\\\"#fenl\\\").toggle();\r\n              });\r\n            });\r\n        </script>\r\n\r\n        <DIV class=content>\r\n            <DIV class=cont_c>\r\n                <P style=\\\"MARGIN-BOTTOM: 15px; TEXT-ALIGN: left; LINE-HEIGHT: 1.75em; TEXT-INDENT: 0em\\\"><SPAN\r\n                        style=\\\"COLOR: #2f4a8d\\\"><STRONG><IMG style=\\\"WHITE-SPACE: normal; TEXT-ALIGN: center\\\"\r\n                                alt=\\\"\\\" src=\\\"/mobile/images/aboutimg.jpg\\\"></STRONG></SPAN></P>\r\n                [!--newstext--]\r\n            </DIV>\r\n        </DIV>\r\n        <DIV class=bottomTop></DIV>\r\n        [!--temp.footer--]\r\n    </DIV>\r\n    \r\n    <SCRIPT type=text/javascript>\r\n        jQuery(document).ready(function ($) {\r\n            $(\\\'.hddb img\\\').click(function () {\r\n                $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n            });\r\n            //回到顶部函数\r\n        });\r\n    </SCRIPT>\r\n</BODY>\r\n</HTML>', 0, 0, '', 0, 1, 'Y-m-d', 0, 0, 0, 1592898266, 'newstemp', 2, 'admin'),
(43, 2, '通用单页模板', '<!DOCTYPE html>\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n\r\n<HEAD id=Head1>\r\n    <META content=\\\"text/html; charset=utf-8\\\" http-equiv=Content-Type>\r\n    <META name=viewport content=\\\"initial-scale=1.0, maximum-scale=1.0,user-scalable=0\\\">\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/fontsStyle.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/reset.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/Common.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/prlist.css\\\">\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/Jquery.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/sdw_mobile.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/Tools.js\\\"></SCRIPT>\r\n</HEAD>\r\n\r\n<BODY style=\\\"ZOOM: 1\\\">\r\n    <!-- header_end -->\r\n    <DIV class=mian>\r\n        [!--temp.header--]\r\n        <DIV class=CategoryList_Title>\r\n            <A href=\\\"javascript:history.go(-1)\\\"><I class=\\\"icon-left fl\\\"></I></A>\r\n            <A href=\\\"#\\\"><I class=\\\"icon-details fr\\\"> 分类</I></A>[!--pagetitle--]\r\n        </DIV>\r\n        <UL id=\\\"fenl\\\" class=\\\"CategoryLista\\\" style=\\\"display:none;\\\">\r\n            [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n        </UL>\r\n        <script type=\\\"text/javascript\\\">\r\n            $(document).ready(function(){\r\n              $(\\\".CategoryList_Title a .icon-details\\\").click(function(){\r\n                $(\\\"#fenl\\\").toggle();\r\n              });\r\n            });\r\n        </script>\r\n\r\n        <DIV class=content>\r\n            <DIV class=cont_c>\r\n                [!--newstext--]\r\n            </DIV>\r\n        </DIV>\r\n        <DIV class=bottomTop></DIV>\r\n        [!--temp.footer--]\r\n    </DIV>\r\n    \r\n    <SCRIPT type=text/javascript>\r\n        jQuery(document).ready(function ($) {\r\n            $(\\\'.hddb img\\\').click(function () {\r\n                $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n            });\r\n            //回到顶部函数\r\n        });\r\n    </SCRIPT>\r\n</BODY>\r\n</HTML>', 0, 0, '', 0, 1, 'Y-m-d', 0, 0, 0, 1592898285, 'newstemp', 2, 'admin'),
(44, 4, '联系单页模板 ', '<!DOCTYPE html>\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n\r\n<HEAD id=Head1>\r\n    <META content=\\\"text/html; charset=utf-8\\\" http-equiv=Content-Type>\r\n    <META name=viewport content=\\\"initial-scale=1.0, maximum-scale=1.0,user-scalable=0\\\">\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/fontsStyle.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/reset.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/Common.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/prlist.css\\\">\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/Jquery.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/sdw_mobile.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/Tools.js\\\"></SCRIPT>\r\n</HEAD>\r\n\r\n<BODY style=\\\"ZOOM: 1\\\">\r\n    <!-- header_end -->\r\n    <DIV class=mian>\r\n        [!--temp.header--]\r\n        <DIV class=CategoryList_Title>\r\n            <A href=\\\"javascript:history.go(-1)\\\"><I class=\\\"icon-left fl\\\"></I></A>\r\n            <A href=\\\"#\\\"><I class=\\\"icon-details fr\\\"> 分类</I></A>[!--pagetitle--]\r\n        </DIV>\r\n        <UL id=\\\"fenl\\\" class=\\\"CategoryLista\\\" style=\\\"display:none;\\\">\r\n            [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n        </UL>\r\n        <script type=\\\"text/javascript\\\">\r\n            $(document).ready(function(){\r\n              $(\\\".CategoryList_Title a .icon-details\\\").click(function(){\r\n                $(\\\"#fenl\\\").toggle();\r\n              });\r\n            });\r\n        </script>\r\n\r\n        <DIV class=content>\r\n            <DIV class=cont_c>\r\n                <DIV class=conL>\r\n                    <H3><SPAN style=\\\"COLOR: #fe0000\\\"><STRONG\r\n                                style=\\\"FONT-SIZE: 20px; WHITE-SPACE: normal; BACKGROUND-COLOR: rgb(255,255,255)\\\"><SPAN\r\n                                    style=\\\"COLOR: rgb(47,74,141)\\\">成都市华森物流有限公司</SPAN></STRONG></SPAN></H3>\r\n                    \r\n                    <DIV class=box>\r\n                        <TABLE align=center>\r\n                            <TBODY>\r\n                                <TR class=firstRow>\r\n                                    <TD vAlign=middle width=39 align=left><IMG alt=\\\"\\\"\r\n                                            src=\\\"/mobile/images/20180109101346286686.jpg\\\" width=32 height=32><BR></TD>\r\n                                    <TD style=\\\"WORD-BREAK: break-all\\\" vAlign=middle width=759 align=left>\r\n                                        地址：<EM>四川省成都市成华区龙潭工业园钢铁领域B座518室成都市华森物流有限公司</EM><BR></TD>\r\n                                </TR>\r\n                                <TR>\r\n                                    <TD vAlign=middle width=39 align=left><IMG alt=\\\"\\\"\r\n                                            src=\\\"/mobile/images/20180109101323365719.jpg\\\" width=32 height=32><BR></TD>\r\n                                    <TD style=\\\"WORD-BREAK: break-all\\\" vAlign=middle width=759 align=left>\r\n                                        24小时专线：<EM>13981791475</EM><BR></TD>\r\n                                </TR>\r\n                                \r\n                                <TR>\r\n                                    <TD vAlign=middle width=39 align=left><IMG alt=\\\"\\\"\r\n                                            src=\\\"/mobile/images/20180109101407003556.jpg\\\" width=32 height=32><BR></TD>\r\n                                    <TD style=\\\"WORD-BREAK: break-all\\\" vAlign=middle width=759 align=left>\r\n                                        咨询邮箱：<EM>qiaoj@hslcwl.cn</EM><BR></TD>\r\n                                </TR>\r\n                                <TR>\r\n                                    <TD vAlign=middle width=39 align=left><IMG alt=\\\"\\\"\r\n                                            src=\\\"/mobile/images/20180109101422108233.jpg\\\" width=32 height=32><BR></TD>\r\n                                    <TD style=\\\"WORD-BREAK: break-all\\\" vAlign=middle width=759 align=left>\r\n                                        传真：<EM>028-61297652</EM></TD>\r\n                                </TR>\r\n                            </TBODY>\r\n                        </TABLE>\r\n                    </DIV>\r\n                </DIV>\r\n                <P><SPAN style=\\\"COLOR: #fe0000\\\"><BR></SPAN></P>\r\n                <DIV id=\\\"baiduMap\\\" style=\\\"TEXT-ALIGN: center; width:100%; height: 300px;\\\"></DIV>\r\n                <script type=\\\"text/javascript\\\" src=\\\"http://api.map.baidu.com/api?v=2.0&ak=ny22a16GzbMDs1xHsTvjlqtZYpwFhUbw\\\"></script>\r\n                <script type=\\\"text/javascript\\\">\r\n                    //创建地图\r\n                    var myMap = new BMap.Map(\\\"baiduMap\\\");\r\n                    var point = new BMap.Point(104.184247,30.699351);\r\n                    myMap.centerAndZoom(point, 16);\r\n                    //添加覆盖物\r\n                    var marker = new BMap.Marker(point);  // 创建标注 \r\n                    myMap.addOverlay(marker);   // 将标注添加到地图中\r\n                    //添加控件\r\n                    myMap.addControl(new BMap.NavigationControl()); // 平移缩放\r\n                    myMap.addControl(new BMap.OverviewMapControl()); //缩略地图\r\n                    //myMap.enableScrollWheelZoom(); //滚轮缩放\r\n                    //创建信息窗口\r\n                    var infoWindow = new BMap.InfoWindow(\\\"<p><strong>成都市华森物流有限公司</strong></p><p>地址：四川省成都市成华区龙潭工业园钢铁领域B座518室</p>\\\");\r\n                        marker.openInfoWindow(infoWindow);\r\n                </script>\r\n                <P><SPAN style=\\\"COLOR: #fe0000\\\"><BR></SPAN></P>\r\n                <div class=\\\"ProductTitle\\\" id=\\\"order\\\"><span class=\\\"fl\\\">在线留言</span><span class=\\\"fr\\\"><a href=\\\"tel:13981791475\\\">13981791475</a></span></div>\r\n                <form method=\\\"post\\\" enctype=\\\"multipart/form-data\\\" action=\\\"/mobile/e/enews/index.php\\\">\r\n                    <input type=\\\"hidden\\\" name=\\\"bid\\\" value=1>\r\n                    <input type=\\\"hidden\\\" name=\\\"ecmsfrom\\\" value=\\\"/mobile/guanyu/lianxi/\\\">\r\n                    <input name=\\\"enews\\\" type=\\\"hidden\\\" value=\\\"AddFeedback\\\">\r\n                    <table class=\\\"formSpan\\\">\r\n                        <tr>\r\n                            <td class=\\\"td1\\\">\r\n                                姓名:\r\n                            </td>\r\n                            <td>\r\n                                <input type=\\\"text\\\" name=\\\"title\\\" placeholder=\\\"请输入您的姓名\\\" id=\\\"UserName\\\" /><br />\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>\r\n                                电话:\r\n                            </td>\r\n                            <td>\r\n                                <input type=\\\"text\\\" name=\\\"mycall\\\" value=\\\"\\\" placeholder=\\\"请输入您的电话\\\" id=\\\"Phone\\\" />\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>\r\n                                邮箱:\r\n                            </td>\r\n                            <td>\r\n                                <input type=\\\"text\\\" name=\\\"email\\\" value=\\\"\\\" placeholder=\\\"请输入您的邮箱\\\" id=\\\"Email\\\" />\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>\r\n                                信息:\r\n                            </td>\r\n                            <td>\r\n                                <textarea name=\\\"saytext\\\" placeholder=\\\"请输入您的需求\\\" id=\\\"OrderInfo\\\"></textarea>\r\n                                <p id=\\\"ErrorInfo\\\" class=\\\"red pl10\\\"></p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>\r\n                            </td>\r\n                            <td>\r\n                                <input class=\\\"sbutton\\\" type=\\\"submit\\\" name=\\\"submit\\\" value=\\\"提交\\\">\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </form>\r\n\r\n            </DIV>\r\n        </DIV>\r\n        <DIV class=bottomTop></DIV>\r\n        [!--temp.footer--]\r\n    </DIV><!-- cb_mian[end] -->\r\n    <SCRIPT type=text/javascript>\r\n        jQuery(document).ready(function ($) {\r\n            $(\\\'.hddb img\\\').click(function () {\r\n                $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n            });\r\n            //回到顶部函数\r\n        });\r\n    </SCRIPT>\r\n</BODY>\r\n</HTML>', 0, 0, '', 0, 1, 'Y-m-d', 0, 0, 0, 1592898349, 'newstemp', 2, 'admin');
INSERT INTO `hswl_enewstempbak` (`bid`, `tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`, `baktime`, `temptype`, `gid`, `lastuser`) VALUES
(45, 1, '新闻内容模板', '<!DOCTYPE html>\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n\r\n<head runat=\\\"server\\\">\r\n    <meta content=\\\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0\\\" name=\\\"viewport\\\" />\r\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0\\\" />\r\n    <meta content=\\\"yes\\\" name=\\\"apple-mobile-web-app-capable\\\" />\r\n    <meta content=\\\"black\\\" name=\\\"apple-mobile-web-app-status-bar-style\\\" />\r\n    <meta content=\\\"telephone=no\\\" name=\\\"format-detection\\\" />\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <script type=\\\"text/javascript\\\" src=\\\"/mobile/js/Jquery.js\\\"></script>\r\n    <link href=\\\"/mobile/css/fontsStyle.css\\\" rel=\\\"stylesheet\\\" />\r\n    <link href=\\\"/mobile/css/reset.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/mobile/css/Common.css\\\" rel=\\\"stylesheet\\\" />\r\n    <link href=\\\"/mobile/css/prlist.css\\\" rel=\\\"stylesheet\\\" />\r\n</head>\r\n\r\n<body>\r\n    <div class=\\\"mian\\\">\r\n        [!--temp.header--]\r\n        \r\n        <div class=\\\"CategoryList_Title\\\">\r\n            <a href=\\\"javascript:history.go(-1);\\\"><i class=\\\"icon-left fl\\\"></i></a>\r\n            [!--class.name--]<a href=\\\"javascript:;\\\"><i class=\\\"icon-details fr\\\"> 分类</i></a>\r\n        </div>\r\n        <ul id=\\\"fenl\\\" class=\\\"CategoryLista\\\" style=\\\"display:none;\\\">\r\n            [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n        </ul>\r\n        <script type=\\\"text/javascript\\\">\r\n            $(document).ready(function(){\r\n              $(\\\".CategoryList_Title a .icon-details\\\").click(function(){\r\n                $(\\\"#fenl\\\").toggle();\r\n              });\r\n            });\r\n        </script>\r\n\r\n        <div class=\\\"content\\\">\r\n            <div class=\\\"cont_t\\\">\r\n                <h1 id=\\\"currentTitle\\\">[!--title--]</h1>\r\n                <p>发布时间：[!--newstime--]</p>\r\n            </div>\r\n            <div class=\\\"cont_c\\\">\r\n                [!--newstext--]\r\n            </div>\r\n            \r\n            <div class=\\\"ProductTitle\\\">\r\n                <span class=\\\"fl\\\">最新资讯</span>\r\n                <span class=\\\"fr\\\"><a href=\\\"tel:13981791475\\\">13981791475</a></span>\r\n            </div>\r\n            <ul class=\\\"newsList\\\">\r\n                [e:loop={2,5,0,0}]\r\n                <li><a href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a></li>\r\n                [/e:loop]\r\n            </ul>\r\n            \r\n            <div class=\\\"j-slide-np\\\">\r\n                <div class=\\\"ProductTitle\\\"><span class=\\\"fl\\\">服务范围</span><span class=\\\"fr\\\"><a href=\\\"tel:13981791475\\\">13981791475</a></span></div>\r\n                <div class=\\\"SimilarBox m-con\\\">\r\n                    <a class=\\\"btnLeft fl prev\\\" href=\\\"javascript:;\\\"><i class=\\\"icon-arrow-left\\\"></i></a>\r\n                    <div class=\\\"m-nowr\\\">\r\n                        <ul class=\\\"clearfix fl m-box\\\">\r\n                            <li>\r\n                                [e:loop={1,2,0,1}]\r\n                                <a href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" />\r\n                                    <h5><?=$bqr[\\\'title\\\']?></h5>\r\n                                </a>\r\n                                [/e:loop]\r\n                            </li>\r\n                            <li>\r\n                                [e:loop={1,\\\'2,1\\\',0,1}]\r\n                                <a href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" />\r\n                                    <h5><?=$bqr[\\\'title\\\']?></h5>\r\n                                </a>\r\n                                [/e:loop]\r\n                                \r\n                            </li>\r\n                        </ul>\r\n                    </div>\r\n                    <a class=\\\"btnRight fr next\\\" href=\\\"javascript:;\\\"><i class=\\\"icon-arrow-right\\\"></i>\r\n                    </a>\r\n                    <div class=\\\"clear\\\"></div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n        <script type=\\\"text/javascript\\\">\r\n            var NewsID = 18;\r\n            $(function () {\r\n                GetCommentById(\\\"reply\\\", 3, 18, \\\"news\\\");\r\n            });\r\n            $(\\\".cont_c p\\\").css(\\\"width\\\", \\\"100%\\\");\r\n            $(\\\".cont_c img\\\").each(function () {\r\n                $(this).removeAttr(\\\"style\\\");\r\n                $(this).removeAttr(\\\"width\\\");\r\n                $(this).removeAttr(\\\"height\\\");\r\n            });\r\n        </script>\r\n        <!--content:end-->\r\n\r\n        [!--temp.footer--]\r\n    </div>\r\n    <!-- cb_mian[end] -->\r\n    <script type=\\\"text/javascript\\\" src=\\\"/mobile/js/sdw_mobile.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/mobile/js/tools.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\">\r\n        jQuery(document).ready(function ($) {\r\n            $(\\\'.hddb img\\\').click(function () {\r\n                $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n            });\r\n            //回到顶部函数\r\n        });\r\n    </script>\r\n</body>\r\n</html>', 0, 0, '', 0, 1, 'Y-m-d', 0, 0, 0, 1592898736, 'newstemp', 2, 'admin'),
(46, 1, '', '<!DOCTYPE html>\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n\r\n<HEAD id=Head1>\r\n    <title>[!--pagetitle--]</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <META name=viewport content=\\\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0\\\">\r\n    <META name=viewport content=width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0>\r\n    <META name=apple-mobile-web-app-capable content=yes>\r\n    <META name=apple-mobile-web-app-status-bar-style content=black>\r\n    <META name=format-detection content=telephone=no>\r\n    <META content=\\\"text/html; charset=utf-8\\\" http-equiv=Content-Type>\r\n    <LINK rel=apple-touch-icon-precomposed href=\\\"/mobile/images/touch-icon.png\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/reset.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/fontsStyle.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/index.css\\\">\r\n    <LINK rel=stylesheet type=text/css href=\\\"/mobile/css/Common.css\\\">\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/TouchSlide.1.1.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/prefixfree.min.js\\\"></SCRIPT>\r\n    <SCRIPT type=text/javascript src=\\\"/mobile/js/1.9.1jquery.min.js\\\"></SCRIPT>\r\n</HEAD>\r\n\r\n<BODY style=\\\"ZOOM: 1\\\">\r\n    <FORM id=\\\"form1\\\">\r\n        \r\n        <DIV class=mian>\r\n            [!--temp.header--]\r\n            <!--banner-->\r\n            <DIV class=banner>\r\n                <DIV id=focus class=focus>\r\n                    <DIV class=hd>\r\n                        <UL>\r\n                            <LI></LI>\r\n                            <LI></LI>\r\n                            <LI></LI>\r\n                        </UL>\r\n                    </DIV>\r\n                    <DIV class=bd>\r\n                        <DIV>\r\n                            <UL>\r\n                                <LI><A href=\\\"#\\\"><IMG alt=\\\"\\\" src=\\\"/mobile/images/banner.jpg\\\" width=320></A>\r\n                                <LI><A href=\\\"#\\\"><IMG alt=\\\"\\\" src=\\\"/mobile/images/banner.jpg\\\" width=320></A>\r\n                                <LI><A href=\\\"#\\\"><IMG alt=\\\"\\\" src=\\\"/mobile/images/banner.jpg\\\" width=320></A>\r\n                            </UL>\r\n                        </DIV>\r\n                    </DIV>\r\n                </DIV>\r\n                <SCRIPT type=text/javascript>\r\n                    TouchSlide({\r\n                        slideCell: \\\"#focus\\\",\r\n                        titCell: \\\".hd ul\\\", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层\r\n                        mainCell: \\\".bd ul\\\",\r\n                        effect: \\\"leftLoop\\\",\r\n                        autoPlay: true, //自动播放\r\n                        autoPage: true, //自动分页\r\n                        delayTime:500, //毫秒；切换效果持续时间（执行一次效果用多少毫秒）。\r\n                        interTime:2800 //毫秒；自动运行间隔（隔多少毫秒后执行下一个效果）\r\n                    });\r\n                </SCRIPT>\r\n            </DIV>\r\n            <SECTION class=\\\"ywfw dbimg\\\">\r\n                <SECTION class=section>\r\n                    <H2 class=h2_title><A href=\\\"/mobile/fuwu/\\\">服务范围</A><I>Service Scope</I><EM></EM></H2>\r\n                    <SECTION class=\\\"ywfw_con clearfix\\\">\r\n                        <DL>\r\n                            <DT><A href=\\\"/mobile/fuwu/lenglianyunshu/\\\"><IMG alt=\\\"\\\" src=\\\"/mobile/images/fuwu1.jpg\\\"></A>\r\n                            <DD><A href=\\\"/mobile/fuwu/lenglianyunshu/\\\">冷链运输</A></DD>\r\n                        </DL>\r\n                        <DL>\r\n                            <DT><A href=\\\"/mobile/fuwu/peisongfuwu/\\\"><IMG alt=\\\"\\\" src=\\\"/mobile/images/fuwu2.jpg\\\"></A>\r\n                            <DD><A href=\\\"/mobile/fuwu/peisongfuwu/\\\">配送服务</A></DD>\r\n                        </DL>\r\n                        <DL>\r\n                            <DT><A href=\\\"/mobile/fuwu/cangchufuwu/\\\"><IMG alt=\\\"\\\" src=\\\"/mobile/images/fuwu3.jpg\\\"></A>\r\n                            <DD><A href=\\\"/mobile/fuwu/cangchufuwu/\\\">仓储服务</A></DD>\r\n                        </DL>\r\n                    </SECTION>\r\n                </SECTION>\r\n            </SECTION>\r\n            <SECTION class=\\\"about dbimg\\\">\r\n                <SECTION class=section>\r\n                    <H2 class=h2_title><A href=\\\"/mobile/guanyu/jianjie/\\\">关于我们</A><I>About Us</I><EM></EM></H2>\r\n                    <DL class=abo_top>\r\n                        <DT><IMG class=videoImg alt=\\\"\\\" src=\\\"/mobile/images/aboutimg.jpg\\\">\r\n                        <DD><A href=\\\"/mobile/guanyu/jianjie/\\\"></A></DD>\r\n                    </DL>\r\n                    <UL class=\\\"abo_bot clearfix\\\">\r\n                        <LI><A href=\\\"/mobile/guanyu/jianjie/\\\"><IMG alt=\\\"\\\" src=\\\"/mobile/images/aboicon01.png\\\"></A>\r\n                        <LI><A href=\\\"/mobile/guanyu/qiyeyoushi/\\\"><IMG alt=\\\"\\\" src=\\\"/mobile/images/aboicon02.png\\\"></A>\r\n                        <LI><A href=\\\"/mobile/guanyu/gongsilueying/\\\"><IMG alt=\\\"\\\" src=\\\"/mobile/images/aboicon03.png\\\"></A> </LI>\r\n                    </UL>\r\n                </SECTION>\r\n            </SECTION>\r\n            <SECTION id=jdal class=\\\"jdal dbimg\\\">\r\n                <SECTION class=section>\r\n                    <H2 class=h2_title><A href=\\\"/mobile/shili/anli/\\\">成功案例</A><I>Successful Cases</I><EM></EM></H2>\r\n                    <DIV class=bd>\r\n                        [e:loop={12,3,0,1}]\r\n                        <SECTION class=jdal_con>\r\n                            <DL>\r\n                                <DT><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><IMG alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\"></A>\r\n                                <DD><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></A>\r\n                                <DD><?=esub($bqr[smalltext],166),\\\'……\\\'?></DD>\r\n                            </DL>\r\n                        </SECTION>\r\n                        [/e:loop]\r\n                    </DIV>\r\n                    <UL class=\\\"jdal_type hd\\\">\r\n                        <LI></LI>\r\n                        <LI></LI>\r\n                        <LI></LI>\r\n                    </UL>\r\n                </SECTION>\r\n            </SECTION>\r\n            <SECTION id=ys class=\\\"advantage dbimg\\\">\r\n                <H2 class=h2_title><SPAN>为什么选择我们</SPAN><I>Why Choose Us</I><EM></EM></H2>\r\n                <SECTION class=section>\r\n                    <UL class=\\\"adv_type hd\\\">\r\n                        <LI>软件实力</LI>\r\n                        <LI>硬件实力</LI>\r\n                        <LI>荣誉资质</LI>\r\n                        <LI>无忧服务</LI>\r\n                    </UL>\r\n                    <DIV class=bd>\r\n                        <SECTION class=adv_con>\r\n                            <DL>\r\n                                <DT><IMG alt=\\\"\\\" src=\\\"/mobile/images/11.jpg\\\">\r\n                                <DD>专业团队 物流平台 丰富经验<br>专业从事冷藏、普通货物业务</DD>\r\n                                <DD>成都市华森物流有限公司创立于2012年，专注于各类食品、乳品、水产、果蔬、酒业等产品的干线运输及区域配送、物流业务咨询与仓储服务。<br>\r\n                                公司在软件上，拥有一支高素质、专业化、年轻化的物流管理团队和资深专家顾问群，有现代化的物流信息平台，汇聚了丰富的物流服务经验和先进的管理服务理念。\r\n                                </DD>\r\n                            </DL>\r\n                        </SECTION>\r\n                        <SECTION class=adv_con>\r\n                            <DL>\r\n                                <DT><IMG alt=\\\"\\\" src=\\\"/mobile/images/22.jpg\\\">\r\n                                <DD>车型齐全 GPS监控 制冷性能好<br>满足各种运输、用车需求</DD>\r\n                                <DD>公司在硬件上，自有车型齐全，3-30吨的冷藏车、普通货运车多部，以及其他车型的联营车。<br>\r\n                                配置有GPS卫星定位系统，全程监控车辆的运营状态，安全性强、可靠性高；<br>其中冷藏车的制冷性能稳定，最低可达到-28℃。<br>\r\n                                能够满足各类客户的运输质量要求和客户用车需要。\r\n                                </DD>\r\n                            </DL>\r\n                        </SECTION>\r\n                        <SECTION class=adv_con>\r\n                            <DL>\r\n                                <DT><IMG alt=\\\"\\\" src=\\\"/mobile/images/33.jpg\\\">\r\n                                <DD>专业团队 物流平台 丰富经验<br>专业从事冷藏、普通货物业务</DD>\r\n                                <DD>成都市华森物流有限公司创立于2012年，专注于各类食品、乳品、水产、果蔬、酒业等产品的干线运输及区域配送、物流业务咨询与仓储服务。<br>\r\n                                公司在软件上，拥有一支高素质、专业化、年轻化的物流管理团队和资深专家顾问群，有现代化的物流信息平台，汇聚了丰富的物流服务经验和先进的管理服务理念。\r\n                                </DD>\r\n                            </DL>\r\n                        </SECTION>\r\n                        <SECTION class=adv_con>\r\n                            <DL>\r\n                                <DT><IMG alt=\\\"\\\" src=\\\"/mobile/images/44.jpg\\\">\r\n                                <DD>车型齐全 GPS监控 制冷性能好<br>满足各种运输、用车需求</DD>\r\n                                <DD>公司在硬件上，自有车型齐全，3-30吨的冷藏车、普通货运车多部，以及其他车型的联营车。<br>\r\n                                配置有GPS卫星定位系统，全程监控车辆的运营状态，安全性强、可靠性高；<br>其中冷藏车的制冷性能稳定，最低可达到-28℃。<br>\r\n                                能够满足各类客户的运输质量要求和客户用车需要。</DD>\r\n                            </DL>\r\n                        </SECTION>\r\n                    </DIV>\r\n                </SECTION>\r\n            </SECTION>\r\n            <SECTION class=\\\"fwkh dbimg\\\">\r\n                <SECTION class=section>\r\n                    <H2 class=h2_title><A href=\\\"/mobile/shili/hezuo/\\\"><SPAN>合作伙伴</SPAN></A><I>Cooperative Partner</I><EM></EM></H2>\r\n                    <SECTION class=fwkh_con>\r\n                        <UL class=clearfix>\r\n                            [e:loop={14,9,0,1}]\r\n                            <LI><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><IMG alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\"></A></LI>\r\n                            [/e:loop]\r\n                        </UL>\r\n                    </SECTION>\r\n                </SECTION>\r\n            </SECTION>\r\n            <SECTION class=news>\r\n                <SECTION id=news class=section>\r\n                    <H2 class=h2_title><A href=\\\"/mobile/xinwen/\\\">新闻中心</A><I>News Center</I><EM></EM></H2>\r\n                    <UL class=\\\"news_type hd\\\">\r\n                        <LI>公司新闻</LI>\r\n                        <LI>行业动态</LI>\r\n                        <LI>媒体聚焦</LI>\r\n                        <LI>常见问题</LI>\r\n                    </UL>\r\n                    <DIV class=bd>\r\n                        <SECTION class=news_con>\r\n                            [e:loop={8,3,0,0}]\r\n                            <DL>\r\n                                <DT><SPAN><?=date(\\\'d\\\',$bqr[newstime])?></SPAN><I><?=date(\\\'Y-m\\\',$bqr[newstime])?></I></DT>\r\n                                <DD><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></A></DD>\r\n                                <DD><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=esub($bqr[smalltext],70),\\\'...\\\'?></A></DD>\r\n                            </DL>\r\n                            [/e:loop]\r\n                        </SECTION>\r\n                        <SECTION class=news_con>\r\n                            [e:loop={9,3,0,0}]\r\n                            <DL>\r\n                                <DT><SPAN><?=date(\\\'d\\\',$bqr[newstime])?></SPAN><I><?=date(\\\'Y-m\\\',$bqr[newstime])?></I></DT>\r\n                                <DD><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></A></DD>\r\n                                <DD><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=esub($bqr[smalltext],70),\\\'...\\\'?></A></DD>\r\n                            </DL>\r\n                            [/e:loop]\r\n                        </SECTION>\r\n                        <SECTION class=news_con>\r\n                            [e:loop={10,3,0,0}]\r\n                            <DL>\r\n                                <DT><SPAN><?=date(\\\'d\\\',$bqr[newstime])?></SPAN><I><?=date(\\\'Y-m\\\',$bqr[newstime])?></I></DT>\r\n                                <DD><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></A></DD>\r\n                                <DD><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=esub($bqr[smalltext],70),\\\'...\\\'?></A></DD>\r\n                            </DL>\r\n                            [/e:loop]\r\n                        </SECTION>\r\n                        <SECTION class=news_con>\r\n                            [e:loop={11,3,0,0}]\r\n                            <DL>\r\n                                <DT><SPAN><?=date(\\\'d\\\',$bqr[newstime])?></SPAN><I><?=date(\\\'Y-m\\\',$bqr[newstime])?></I></DT>\r\n                                <DD><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></A></DD>\r\n                                <DD><A href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=esub($bqr[smalltext],70),\\\'...\\\'?></A></DD>\r\n                            </DL>\r\n                            [/e:loop]\r\n                        </SECTION>\r\n                    </DIV><A class=ckgda href=\\\"/mobile/xinwen/\\\">查看更多 +</A>\r\n                </SECTION>\r\n            </SECTION>\r\n            [!--temp.footer--]\r\n        </DIV><!-- cb_mian[end] -->\r\n    </FORM>\r\n\r\n    <SCRIPT type=text/javascript>\r\n        jQuery(document).ready(function ($) {\r\n            $(\\\'.hddb img\\\').click(function () {\r\n                $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n            });\r\n            //回到顶部函数\r\n        });\r\n    </SCRIPT>\r\n    <SCRIPT type=text/javascript>\r\n       TouchSlide({ slideCell: \\\"#jdal\\\", mainCell: \\\".bd\\\", titCell: \\\".hd li\\\", autoPlay: false, interTime: 5000 });\r\n       TouchSlide({ slideCell: \\\"#ys\\\", mainCell: \\\".bd\\\", titCell: \\\".hd li\\\", autoPlay: false, interTime: 5000 });\r\n       TouchSlide({ slideCell: \\\"#news\\\", mainCell: \\\".bd\\\", titCell: \\\".hd li\\\", autoPlay: false, interTime: 5000 });\r\n    </SCRIPT>\r\n</BODY>\r\n</HTML>', 0, 0, '', 0, 0, '', 0, 0, 0, 1592899377, 'pubindextemp', 2, 'admin'),
(47, 1, '新闻内容模板', '<!DOCTYPE html>\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n\r\n<head runat=\\\"server\\\">\r\n    <meta content=\\\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0\\\" name=\\\"viewport\\\" />\r\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0\\\" />\r\n    <meta content=\\\"yes\\\" name=\\\"apple-mobile-web-app-capable\\\" />\r\n    <meta content=\\\"black\\\" name=\\\"apple-mobile-web-app-status-bar-style\\\" />\r\n    <meta content=\\\"telephone=no\\\" name=\\\"format-detection\\\" />\r\n    <meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n    <title>[!--pagetitle--]-成都市华森物流有限公司</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n    <script type=\\\"text/javascript\\\" src=\\\"/mobile/js/Jquery.js\\\"></script>\r\n    <link href=\\\"/mobile/css/fontsStyle.css\\\" rel=\\\"stylesheet\\\" />\r\n    <link href=\\\"/mobile/css/reset.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n    <link href=\\\"/mobile/css/Common.css\\\" rel=\\\"stylesheet\\\" />\r\n    <link href=\\\"/mobile/css/prlist.css\\\" rel=\\\"stylesheet\\\" />\r\n    <script type=\\\"text/javascript\\\" src=\\\"/mobile/js/pagemode.js\\\"></script>\r\n</head>\r\n\r\n<body>\r\n    <div class=\\\"mian\\\">\r\n        [!--temp.header--]\r\n        \r\n        <div class=\\\"CategoryList_Title\\\">\r\n            <a href=\\\"javascript:history.go(-1);\\\"><i class=\\\"icon-left fl\\\"></i></a>\r\n            [!--class.name--]<a href=\\\"javascript:;\\\"><i class=\\\"icon-details fr\\\"> 分类</i></a>\r\n        </div>\r\n        <ul id=\\\"fenl\\\" class=\\\"CategoryLista\\\" style=\\\"display:none;\\\">\r\n            [showclasstemp]\\\'selfinfo\\\',1,0,0[/showclasstemp]\r\n        </ul>\r\n        <script type=\\\"text/javascript\\\">\r\n            $(document).ready(function(){\r\n              $(\\\".CategoryList_Title a .icon-details\\\").click(function(){\r\n                $(\\\"#fenl\\\").toggle();\r\n              });\r\n            });\r\n        </script>\r\n\r\n        <div class=\\\"content\\\">\r\n            <div class=\\\"cont_t\\\">\r\n                <h1 id=\\\"currentTitle\\\">[!--title--]</h1>\r\n                <p>发布时间：[!--newstime--]</p>\r\n            </div>\r\n            <div class=\\\"cont_c\\\">\r\n                [!--newstext--]\r\n            </div>\r\n            \r\n            <div class=\\\"ProductTitle\\\">\r\n                <span class=\\\"fl\\\">最新资讯</span>\r\n                <span class=\\\"fr\\\"><a href=\\\"tel:13981791475\\\">13981791475</a></span>\r\n            </div>\r\n            <ul class=\\\"newsList\\\">\r\n                [e:loop={2,5,0,0}]\r\n                <li><a href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a></li>\r\n                [/e:loop]\r\n            </ul>\r\n            \r\n            <div class=\\\"j-slide-np\\\">\r\n                <div class=\\\"ProductTitle\\\"><span class=\\\"fl\\\">服务范围</span><span class=\\\"fr\\\"><a href=\\\"tel:13981791475\\\">13981791475</a></span></div>\r\n                <div class=\\\"SimilarBox m-con\\\">\r\n                    <a class=\\\"btnLeft fl prev\\\" href=\\\"javascript:;\\\"><i class=\\\"icon-arrow-left\\\"></i></a>\r\n                    <div class=\\\"m-nowr\\\">\r\n                        <ul class=\\\"clearfix fl m-box\\\">\r\n                            <li>\r\n                                [e:loop={1,2,0,1}]\r\n                                <a href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" />\r\n                                    <h5><?=$bqr[\\\'title\\\']?></h5>\r\n                                </a>\r\n                                [/e:loop]\r\n                            </li>\r\n                            <li>\r\n                                [e:loop={1,\\\'2,1\\\',0,1}]\r\n                                <a href=\\\"/mobile<?=$bqsr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" alt=\\\"<?=$bqr[\\\'title\\\']?>\\\" />\r\n                                    <h5><?=$bqr[\\\'title\\\']?></h5>\r\n                                </a>\r\n                                [/e:loop]\r\n                                \r\n                            </li>\r\n                        </ul>\r\n                    </div>\r\n                    <a class=\\\"btnRight fr next\\\" href=\\\"javascript:;\\\"><i class=\\\"icon-arrow-right\\\"></i>\r\n                    </a>\r\n                    <div class=\\\"clear\\\"></div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n        <script type=\\\"text/javascript\\\">\r\n            var NewsID = 18;\r\n            $(function () {\r\n                GetCommentById(\\\"reply\\\", 3, 18, \\\"news\\\");\r\n            });\r\n            $(\\\".cont_c p\\\").css(\\\"width\\\", \\\"100%\\\");\r\n            $(\\\".cont_c img\\\").each(function () {\r\n                $(this).removeAttr(\\\"style\\\");\r\n                $(this).removeAttr(\\\"width\\\");\r\n                $(this).removeAttr(\\\"height\\\");\r\n            });\r\n        </script>\r\n        <!--content:end-->\r\n\r\n        [!--temp.footer--]\r\n    </div>\r\n    <!-- cb_mian[end] -->\r\n    <script type=\\\"text/javascript\\\" src=\\\"/mobile/js/sdw_mobile.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/mobile/js/tools.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\">\r\n        jQuery(document).ready(function ($) {\r\n            $(\\\'.hddb img\\\').click(function () {\r\n                $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n            });\r\n            //回到顶部函数\r\n        });\r\n    </script>\r\n</body>\r\n</html>', 0, 0, '', 0, 1, 'Y-m-d', 0, 0, 0, 1592899903, 'newstemp', 2, 'admin'),
(48, 1, 'header', '<header>\r\n            <h1><a href=\\\"/mobile/\\\"><img src=\\\"/mobile/images/logo.jpg\\\" alt=\\\"\\\" /></a></h1>\r\n            <section class=\\\"h_tit\\\">\r\n                <P class=p1><strong>华森物流--冷冻整车 零担业务</strong></P>\r\n                <p class=\\\"p2\\\"><i></i>咨询热线：<a href=\\\"tel:13981791475\\\">13981791475</a></p>\r\n            </section>\r\n        </header>\r\n        <nav class=\\\"clearfix\\\">\r\n            <ul>\r\n                <li><a href=\\\"/mobile/\\\">网站首页</a></li>\r\n                <li><a href=\\\"/mobile/fuwu/\\\">服务范围</a></li>\r\n                <li><a href=\\\"/mobile/shili/anli/\\\">成功案例</a></li>\r\n                <li><a href=\\\"/mobile/shili/hezuo/\\\">公司实力</a></li>\r\n                <li><a href=\\\"/mobile/xinwen/\\\">新闻中心</a></li>\r\n                <li><a href=\\\"/mobile/guanyu/jianjie/\\\">关于我们</a></li>\r\n                <li><a href=\\\"/mobile/guanyu/lianxi/\\\">联系我们</a></li>\r\n                <li><a href=\\\"#\\\">在线咨询</a></li>\r\n            </ul>\r\n        </nav>', 1, 0, '页面头部', 0, 0, '', 0, 0, 0, 1593849758, 'tempvar', 2, 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewstempdt`
--

CREATE TABLE `hswl_enewstempdt` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempvar` char(30) NOT NULL DEFAULT '',
  `tempname` char(30) NOT NULL DEFAULT '',
  `tempsay` char(255) NOT NULL DEFAULT '',
  `tempfile` char(200) NOT NULL DEFAULT '',
  `myorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `temptype` char(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewstempdt`
--

INSERT INTO `hswl_enewstempdt` (`tempid`, `tempvar`, `tempname`, `tempsay`, `tempfile`, `myorder`, `temptype`) VALUES
(1, 'header', '主界面头部', '主界面头部', 'e/template/incfile/header.php', 0, 'incfile'),
(2, 'footer', '主界面尾部', '主界面尾部', 'e/template/incfile/footer.php', 0, 'incfile'),
(3, 'qDoInfo', '管理投稿首页', '管理投稿首页', 'e/template/DoInfo/DoInfo.php', 0, 'doinfo'),
(4, 'qChangeClass', '投稿选择栏目页', '投稿选择栏目页', 'e/template/DoInfo/ChangeClass.php', 0, 'doinfo'),
(5, 'qDoInfoTran', '发布投稿上传附件页面', '发布投稿上传附件页面', 'e/template/DoInfo/tran.php', 0, 'doinfo'),
(6, 'qAddInfo', '发布投稿页', '发布投稿页', 'e/template/DoInfo/AddInfo.php', 0, 'doinfo'),
(7, 'qListInfo', '默认管理投稿列表页', '默认管理投稿列表页', 'e/data/html/list/qlistinfo.php', 0, 'doinfo'),
(8, 'report', '提交错误报告页面', '提交错误报告页面', 'e/template/public/report.php', 0, 'pubtemp'),
(9, 'payapi', '在线支付页面', '在线支付页面', 'e/template/payapi/payapi.php', 0, 'pubtemp'),
(10, 'infovote', '信息投票页面', '信息投票页面', 'e/template/public/vote.php', 0, 'pubtemp'),
(11, 'vote', '投票插件页面', '投票插件页面', 'e/template/tool/vote.php', 0, 'pubtemp'),
(12, 'ShopBurcar', '购物车页面', '购物车页面', 'e/template/ShopSys/buycar.php', 0, 'shopsys'),
(13, 'ShopOrder', '提交订单页面', '提交订单页面', 'e/template/ShopSys/order.php', 0, 'shopsys'),
(14, 'ShopSubmitOrder', '确认提交订单页面', '确认提交订单页面', 'e/template/ShopSys/SubmitOrder.php', 0, 'shopsys'),
(15, 'ShopListDd', '订单列表页面', '订单列表页面', 'e/template/ShopSys/ListDd.php', 0, 'shopsys'),
(16, 'ShopShowDd', '订单详细页面', '订单详细页面', 'e/template/ShopSys/ShowDd.php', 0, 'shopsys'),
(17, 'ShopBurcarForm', '购物车-加入表单模板', '购物车-加入表单模板', 'e/template/ShopSys/buycar/buycar_form.php', 0, 'shopsys'),
(18, 'ShopBurcarOrder', '购物车-确认订单模板', '购物车-确认订单模板', 'e/template/ShopSys/buycar/buycar_order.php', 0, 'shopsys'),
(19, 'ShopBurcarShowdd', '购物车-显示订单模板', '购物车-显示订单模板', 'e/template/ShopSys/buycar/buycar_showdd.php', 0, 'shopsys'),
(20, 'ShopAddAddress', '增加配送地址页面', '增加配送地址页面', 'e/template/ShopSys/AddAddress.php', 0, 'shopsys'),
(21, 'ShopListAddress', '管理配送地址页面', '管理配送地址页面', 'e/template/ShopSys/ListAddress.php', 0, 'shopsys'),
(22, 'MemberReg', '会员注册页面', '会员注册页面', 'e/template/member/register.php', 0, 'member'),
(23, 'MemberChangeReg', '选择注册类型页面', '选择注册类型页面', 'e/template/member/ChangeRegister.php', 0, 'member'),
(24, 'MemberRegsend', '重发注册激活邮件页面', '重发注册激活邮件页面', 'e/template/member/regsend.php', 0, 'member'),
(25, 'MemberLogin', '会员登录页面', '会员登录页面', 'e/template/member/login.php', 0, 'member'),
(26, 'MemberLoginopen', '会员登录弹出页面', '会员登录弹出页面', 'e/template/member/loginopen.php', 0, 'member'),
(27, 'MemberEditinfo', '修改会员信息页面', '修改会员信息页面', 'e/template/member/EditInfo.php', 0, 'member'),
(28, 'MemberEditsafeinfo', '修改会员安全信息页面', '修改会员安全信息页面', 'e/template/member/EditSafeInfo.php', 0, 'member'),
(29, 'MemberGetPassword', '取回密码页面', '取回密码页面', 'e/template/member/GetPassword.php', 0, 'member'),
(30, 'MemberGetResetPass', '取回密码重置页面', '取回密码重置页面', 'e/template/member/getpass.php', 0, 'member'),
(31, 'MemberCp', '会员中心首页', '会员中心首页', 'e/template/member/cp.php', 0, 'member'),
(32, 'MemberMy', '会员状态页面', '会员状态页面', 'e/template/member/my.php', 0, 'member'),
(33, 'MemberShowInfo', '查看会员信息页面', '查看会员信息页面', 'e/template/member/ShowInfo.php', 0, 'member'),
(34, 'MemberList1', '默认会员列表页面', '默认会员列表页面', 'e/template/member/memberlist/1.php', 0, 'member'),
(35, 'MemberAddMsg', '发送站内消息页面', '发送站内消息页面', 'e/template/member/AddMsg.php', 0, 'membermsg'),
(36, 'MemberMsg', '站内消息列表页面', '站内消息列表页面', 'e/template/member/msg.php', 0, 'membermsg'),
(37, 'MemberViewMsg', '查看站内消息页面', '查看站内消息页面', 'e/template/member/ViewMsg.php', 0, 'membermsg'),
(38, 'MemberAddFriend', '增加好友页面', '增加好友页面', 'e/template/member/AddFriend.php', 0, 'memberfriend'),
(39, 'MemberFriend', '好友列表页面', '好友列表页面', 'e/template/member/friend.php', 0, 'memberfriend'),
(40, 'MemberFriendClass', '好友分类页面', '好友分类页面', 'e/template/member/FriendClass.php', 0, 'memberfriend'),
(41, 'MemberChangeFriend', '选择好友页面', '选择好友页面', 'e/template/member/ChangeFriend.php', 0, 'memberfriend'),
(42, 'MemberAddFava', '增加收藏信息页面', '增加收藏信息页面', 'e/template/member/AddFava.php', 0, 'memberfav'),
(43, 'MemberFava', '管理收藏页面', '管理收藏页面', 'e/template/member/fava.php', 0, 'memberfav'),
(44, 'MemberFavaClass', '管理收藏分类页面', '管理收藏分类页面', 'e/template/member/FavaClass.php', 0, 'memberfav'),
(45, 'MemberBuybak', '充值记录页面', '充值记录页面', 'e/template/member/buybak.php', 0, 'memberother'),
(46, 'MemberDownbak', '下载记录页面', '下载记录页面', 'e/template/member/downbak.php', 0, 'memberother'),
(47, 'MemberBuygroup', '购买会员类型页面', '购买会员类型页面', 'e/template/member/buygroup.php', 0, 'memberother'),
(48, 'MemberCard', '点卡充值页面', '点卡充值页面', 'e/template/member/card.php', 0, 'memberother'),
(49, 'MemberChangeStyle', '选择会员空间风格页面', '选择会员空间风格页面', 'e/template/member/mspace/ChangeStyle.php', 0, 'memberspace'),
(50, 'MemberSetSpace', '设置会员空间页面', '设置会员空间页面', 'e/template/member/mspace/SetSpace.php', 0, 'memberspace'),
(51, 'MemberFeedback', '管理会员空间反馈页面', '管理会员空间反馈页面', 'e/template/member/mspace/feedback.php', 0, 'memberspace'),
(52, 'MemberShowFeedback', '查看会员空间反馈页面', '查看会员空间反馈页面', 'e/template/member/mspace/ShowFeedback.php', 0, 'memberspace'),
(53, 'MemberGbook', '管理会员空间留言页面', '管理会员空间留言页面', 'e/template/member/mspace/gbook.php', 0, 'memberspace'),
(54, 'MemberReGbook', '回复会员空间留言页面', '回复会员空间留言页面', 'e/template/member/mspace/ReGbook.php', 0, 'memberspace'),
(55, 'MemberConnectListBind', '登录绑定管理页面', '登录绑定管理页面', 'e/template/memberconnect/ListBind.php', 0, 'memberconnect'),
(56, 'MemberConnectTobind', '绑定登录帐号页面', '绑定登录帐号页面', 'e/template/memberconnect/tobind.php', 0, 'memberconnect'),
(57, 'InfoViewLevel', '信息权限提示页面', '查看信息权限提示页面', 'e/template/public/checklevel/info1.php', 0, 'pubtemp');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewstempgroup`
--

CREATE TABLE `hswl_enewstempgroup` (
  `gid` smallint(5) UNSIGNED NOT NULL,
  `gname` varchar(60) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewstempgroup`
--

INSERT INTO `hswl_enewstempgroup` (`gid`, `gname`, `isdefault`) VALUES
(1, '电脑端模板组', 1),
(2, '手机端模板组', 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewstempvar`
--

CREATE TABLE `hswl_enewstempvar` (
  `varid` smallint(5) UNSIGNED NOT NULL,
  `myvar` varchar(60) NOT NULL DEFAULT '',
  `varname` varchar(60) NOT NULL DEFAULT '',
  `varvalue` mediumtext NOT NULL,
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewstempvar`
--

INSERT INTO `hswl_enewstempvar` (`varid`, `myvar`, `varname`, `varvalue`, `classid`, `isclose`, `myorder`) VALUES
(1, 'header', '页面头部', '<!--Header:Start-->\r\n    <script src=\\\"/js/cj_sdw_msw.js\\\"></script>\r\n    <div class=\\\"wrap-header clearfix\\\">\r\n        <h1><a href=\\\"/\\\"><img src=\\\"/images/logo.png\\\" alt=\\\"\\\" /></a></h1>\r\n        <div class=\\\"navbg\\\"></div>\r\n        <div class=\\\"h_box\\\">\r\n            <div class=\\\"nav\\\">\r\n                <ul class=\\\"Navbox clearfix\\\" id=\\\"nav\\\">\r\n                    <li class=\\\"navli\\\"><a href=\\\"/\\\">网站首页</a></li>\r\n                    <li class=\\\"navli\\\"><a href=\\\"/fuwu/\\\">服务范围</a>\r\n                        <ul class=\\\"liUl clearfix\\\">\r\n                            <li><a href=\\\"/fuwu/lenglianyunshu/\\\">冷链运输</a></li>\r\n                            <li><a href=\\\"/fuwu/peisongfuwu/\\\">配送服务</a></li>\r\n                            <li><a href=\\\"/fuwu/cangchufuwu/\\\">仓储服务</a></li>\r\n                        </ul>\r\n                    </li>\r\n                    <li class=\\\"navli\\\"><a href=\\\"/shili/anli/\\\">成功案例</a></li>\r\n                    <li class=\\\"navli\\\"><a href=\\\"/shili/hezuo/\\\">公司实力</a>\r\n                        <ul class=\\\"liUl clearfix\\\">\r\n                            <li><a href=\\\"/shili/anli/\\\">成功案例</a></li>\r\n                            <li><a href=\\\"/shili/lengcangshebei/\\\">冷藏设备</a></li>\r\n                            <li><a href=\\\"/shili/hezuo/\\\">合作伙伴</a></li>\r\n                            <li><a href=\\\"/shili/rongyuzizhi/\\\">荣誉资质</a></li>\r\n                            <li><a href=\\\"/shili/shouhoufuwu/\\\">售后服务</a></li>\r\n                        </ul>\r\n                    </li>\r\n                    <li class=\\\"navli\\\"><a href=\\\"/xinwen/\\\">新闻中心</a>\r\n                        <ul class=\\\"liUl clearfix\\\">\r\n                            <li><a href=\\\"/xinwen/gongsixinwen/\\\">公司新闻</a></li>\r\n                            <li><a href=\\\"/xinwen/hangyedongtai/\\\">行业动态</a></li>\r\n                            <li><a href=\\\"/xinwen/meitijujiao/\\\">媒体聚焦</a></li>\r\n                            <li><a href=\\\"/xinwen/changjianwenti/\\\">常见问题</a></li>\r\n                        </ul>\r\n                    </li>\r\n                    \r\n                    <li class=\\\"navli\\\"><a href=\\\"/guanyu/jianjie/\\\">关于我们</a>\r\n                        <ul class=\\\"liUl clearfix\\\">\r\n                            <li><a href=\\\"/guanyu/jianjie/\\\">公司简介</a></li>\r\n                            <li><a href=\\\"/guanyu/qiyeyoushi/\\\">企业优势</a></li>\r\n                            <li><a href=\\\"/guanyu/zuzhijiagou/\\\">组织架构</a></li>\r\n                            <li><a href=\\\"/guanyu/gongsilueying/\\\">公司掠影</a></li>\r\n                            <li><a href=\\\"/guanyu/lianxi/\\\">联系我们</a></li>\r\n                        </ul>\r\n                    </li>\r\n                    \r\n                    <li class=\\\"navli last\\\"><a href=\\\"/guanyu/lianxi/\\\">联系我们</a></li>\r\n                </ul>\r\n                <span class=\\\"navline\\\"></span>\r\n            </div>\r\n\r\n            <p class=\\\"h_share\\\">\r\n                <a href=\\\"javascript:;\\\" class=\\\"a1\\\"></a>\r\n                <i class=\\\"a2\\\"><span><img src=\\\"/images/20180206135606_51322.jpg\\\" alt=\\\"\\\" /></span></i>\r\n            </p>\r\n\r\n            <div class=\\\"searchbox\\\">\r\n                <p class=\\\"searchBtn\\\"><span></span> <em></em></p>\r\n\r\n                <div class=\\\"search\\\">\r\n                    <div class=\\\"hotline\\\"><a href=\\\"tel:400-028-1238\\\">400-028-1238</a></div>\r\n                    <p class=\\\"searchInp\\\"><a href=\\\"javascript:;\\\"></a></p>\r\n                </div>\r\n            </div>\r\n\r\n        </div>\r\n    </div>\r\n    <script type=\\\"text/javascript\\\" src=\\\"/js/header.js\\\"></script>\r\n    <script type=\\\"text/javascript\\\">\r\n        $(\\\".wrap-header .navli\\\").mouseenter(function () {\r\n            if ($(this).find(\\\".liUl\\\").length) {\r\n                $(\\\".navbg\\\").show();\r\n            }\r\n        })\r\n        $(\\\".wrap-header .navli\\\").mouseleave(function () {\r\n            $(\\\".navbg\\\").hide();\r\n        })\r\n    </script>\r\n    <!--Header:End-->', 0, 0, 1),
(2, 'footer', '页面尾部', '<!--wrap-footer-->\r\n    <div class=\\\"wrap-footer\\\">\r\n        <div class=\\\"f_top clearfix\\\">\r\n            <div class=\\\"container\\\">\r\n                <div id=\\\"ucFooter_plPartner\\\">\r\n                    <ul class=\\\"f_ul f_ul1\\\">\r\n                        <li><a href=\\\"javascript:;\\\"><i></i>热门关键词</a></li>\r\n                        <li><a href=\\\"#\\\">冷链运输</a></li>\r\n                        <li><a href=\\\"#\\\">配送服务</a></li>\r\n                        <li><a href=\\\"#\\\">仓储服务</a></li>\r\n                        <li><a href=\\\"#\\\">冷冻整车</a></li>\r\n                    </ul>\r\n                </div>\r\n\r\n                <ul class=\\\"f_ul f_ul2\\\">\r\n                    <li><a href=\\\"/guanyu/jianjie/\\\"><i></i>关于我们</a></li>\r\n                    <li><a href=\\\"/guanyu/jianjie/\\\">公司简介</a></li>\r\n                    <li><a href=\\\"/guanyu/qiyeyoushi/\\\">企业优势</a></li>\r\n                    <li><a href=\\\"/guanyu/gongsilueying/\\\">公司掠影</a></li>\r\n                    <li><a href=\\\"/guanyu/lianxi/\\\">联系我们</a></li>\r\n                </ul>\r\n\r\n                <ul class=\\\"f_ul f_ul3\\\">\r\n                    <li><a href=\\\"/fuwu/\\\"><i></i>服务范围</a></li>\r\n                    <li><a href=\\\"/fuwu/lenglianyunshu/\\\">冷链运输</a></li>\r\n                    <li><a href=\\\"/fuwu/peisongfuwu/\\\">配送服务</a></li>\r\n                    <li><a href=\\\"/fuwu/cangchufuwu/\\\">仓储服务</a></li>\r\n                </ul>\r\n\r\n                <dl class=\\\"f_erwm\\\">\r\n                    <dt><img src=\\\"/images/20180206135606_51322.jpg\\\" alt=\\\"二维码\\\" /></dt>\r\n                    <dd>微信二维码</dd>\r\n                </dl>\r\n\r\n                <ul class=\\\"f_ul4\\\">\r\n                    <li>24小时专线：13981791475</li>\r\n                    <li>咨询邮箱：qiaoj@hslcwl.cn</li>\r\n                    <li>传真：028-61297652</li>\r\n                    <li>公司地址：四川省成都市成华区龙潭工业园钢铁领域B座518室成都市华森物流有限公司</li>\r\n                </ul>\r\n\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\\\"f_bot\\\">\r\n            <div class=\\\"container clearfix\\\">\r\n                <p class=\\\"fl\\\">版权所有@2020. 成都市华森物流有限公司</p>\r\n                <p class=\\\"fr\\\">技术支持：<a href=\\\"https://www.shunking.cn/\\\" target=\\\"_blank\\\">舜王科技</a> &nbsp; &nbsp; &nbsp; 备案号：<a href=\\\"http://www.beian.miit.gov.cn/\\\" target=\\\"_blank\\\">蜀ICP备13019420号</a></p>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\\\"float\\\">\r\n        <div class=\\\"float_show float_show0\\\">\r\n            <a style=\\\"cursor:pointer;\\\" title=\\\"回到顶部\\\"></a>\r\n        </div>\r\n        <div class=\\\"float_show float_show1\\\" style=\\\"right: -86px;\\\">\r\n            <a href=\\\"#\\\"><img width=\\\"24\\\" height=\\\"24\\\" rel=\\\"nofollow\\\" alt=\\\"客服咨询\\\" src=\\\"/images/float_qqicon2.png\\\">客服咨询</a>\r\n        </div>\r\n        <div class=\\\"float_show float_show2\\\" style=\\\"right: -146px;\\\">\r\n            <a href=\\\"tel:13981791475\\\"><img width=\\\"24\\\" height=\\\"24\\\" alt=\\\"电话\\\" src=\\\"/images/float_qqicon3.png\\\">13981791475</a>\r\n        </div>\r\n\r\n        <div class=\\\"float_show float_show3\\\" style=\\\"right: -202px;\\\">\r\n            <a href=\\\"mailto:qiaoj@hslcwl.cn\\\"><img width=\\\"24\\\" height=\\\"24\\\" alt=\\\"邮箱\\\" src=\\\"/images/float_qqicon5.png\\\">qiaoj@hslcwl.cn</a>\r\n        </div>\r\n\r\n        <div class=\\\"float_show float_show4\\\">\r\n            <a href=\\\"javascript:;\\\"><img width=\\\"24\\\" height=\\\"24\\\" alt=\\\"二维码\\\" src=\\\"/images/float_qqicon4.png\\\"></a>\r\n            <div class=\\\"float_wx\\\" style=\\\"display: none;\\\"><img width=\\\"144\\\" height=\\\"144\\\" alt=\\\"扫描二维码\\\" src=\\\"/images/20180206135606_51322.jpg\\\"></div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\\\"zxly\\\">\r\n        <div class=\\\"container\\\">\r\n            <span class=\\\"close_zxly\\\"></span>\r\n            <ul class=\\\"clearfix\\\" id=\\\"LYFrom\\\">\r\n                <form method=\\\"post\\\" enctype=\\\"multipart/form-data\\\" action=\\\"/e/enews/index.php\\\">\r\n                    <input type=\\\"hidden\\\" name=\\\"bid\\\" value=1>\r\n                    <input type=\\\"hidden\\\" name=\\\"ecmsfrom\\\" value=\\\"javaScript:history.go(-1)\\\">\r\n                    <input name=\\\"enews\\\" type=\\\"hidden\\\" value=\\\"AddFeedback\\\">\r\n                    <li><input type=\\\"text\\\" name=\\\"title\\\" placeholder=\\\"联系人：\\\" id=\\\"LEAVEWORD_txtContact\\\" class=\\\"fromtext\\\" /></li>\r\n                    <li><input type=\\\"text\\\" name=\\\"mycall\\\" placeholder=\\\"电话：\\\" id=\\\"LEAVEWORD_txtTel\\\" class=\\\"fromtext\\\" /></li>\r\n                    <li><input type=\\\"text\\\" name=\\\"email\\\" placeholder=\\\"邮箱：\\\" id=\\\"LEAVEWORD_txtEmail\\\" class=\\\"fromtext\\\" /></li>\r\n                    <li class=\\\"fr\\\"><input type=\\\"submit\\\" name=\\\"submit\\\" value=\\\"立即获取方案\\\"></li>\r\n                </form>\r\n            </ul>\r\n        </div>\r\n    </div>\r\n\r\n    <script type=\\\"text/javascript\\\">\r\n        initCommonHeader();\r\n        if (MARK == \\\"\\\") var MARK = \\\"index\\\";\r\n        initCommonHeaderKeywords(MARK);\r\n    \r\n        $(function () {\r\n            $(\\\'.float_show0\\\').hide();\r\n            action();\r\n        })\r\n        function action() {\r\n            $(window).scroll(function () {\r\n                var st = $(document).scrollTop();\r\n                if (st > 500) {\r\n                    $(\\\'.float_show0\\\').show();\r\n                } else {\r\n                    $(\\\'.float_show0\\\').hide();\r\n                }\r\n            })\r\n\r\n            $(\\\'.float_show0 a\\\').click(function () {\r\n                $(\\\'html,body\\\').animate({ \\\'scrollTop\\\': 0 }, 500);\r\n            });\r\n        }\r\n\r\n        $(\\\'.float_show1\\\').hover(function () {\r\n            $(this).stop().animate({ \\\'right\\\': \\\'0\\\' }, 450)\r\n\r\n        }, function () {\r\n\r\n            $(this).stop().animate({ \\\'right\\\': \\\'-86px\\\' }, 450)\r\n\r\n        })\r\n\r\n        $(\\\'.float_show2\\\').hover(function () {\r\n            $(this).stop().animate({ \\\'right\\\': \\\'0\\\' }, 450)\r\n\r\n        }, function () {\r\n\r\n            $(this).stop().animate({ \\\'right\\\': \\\'-146px\\\' }, 450)\r\n\r\n        })\r\n\r\n\r\n        $(\\\'.float_show3\\\').hover(function () {\r\n            $(this).stop().animate({ \\\'right\\\': \\\'0\\\' }, 450)\r\n\r\n        }, function () {\r\n\r\n            $(this).stop().animate({ \\\'right\\\': \\\'-202px\\\' }, 450)\r\n\r\n        })\r\n\r\n        $(\\\'.float_show4\\\').hover(function () {\r\n\r\n            $(this).stop().find(\\\'.float_wx\\\').fadeIn(350)\r\n\r\n        }, function () {\r\n\r\n            $(this).stop().find(\\\'.float_wx\\\').fadeOut(350)\r\n\r\n        })\r\n\r\n        //悬浮留言\r\n        $(\\\".wrap-footer\\\").css(\\\"padding-bottom\\\", 105);\r\n        $(\\\".close_zxly\\\").click(function () {\r\n            $(\\\".zxly\\\").hide();\r\n            $(\\\".wrap-footer\\\").css(\\\"padding-bottom\\\", 0);\r\n        })      \r\n    </script>', 0, 0, 0),
(3, 'dtheader', '动态页面头部', '<!-- 页头 -->\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"top\\\">\r\n<tr>\r\n<td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n<tr>\r\n<td width=\\\"63%\\\">\r\n<!-- 登录 -->\r\n<script>\r\ndocument.write(\\\'<script src=\\\"[!--news.url--]e/member/login/loginjs.php?t=\\\'+Math.random()+\\\'\\\"><\\\'+\\\'/script>\\\');\r\n</script>\r\n</td>\r\n<td align=\\\"right\\\">\r\n<a onclick=\\\"window.external.addFavorite(location.href,document.title)\\\" href=\\\"#ecms\\\">加入收藏</a> | <a onclick=\\\"this.style.behavior=\\\'url(#default#homepage)\\\';this.setHomePage(\\\'[!--news.url--]\\\')\\\" href=\\\"#ecms\\\">设为首页</a> | <a href=\\\"[!--news.url--]e/member/cp/\\\">会员中心</a> | <a href=\\\"[!--news.url--]e/DoInfo/\\\">我要投稿</a> | <a href=\\\"[!--news.url--]e/web/?type=rss2\\\" target=\\\"_blank\\\">RSS<img src=\\\"[!--news.url--]skin/default/images/rss.gif\\\" border=\\\"0\\\" hspace=\\\"2\\\" /></a>\r\n</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"10\\\">\r\n<tr valign=\\\"middle\\\">\r\n<td width=\\\"240\\\" align=\\\"center\\\"><a href=\\\"[!--news.url--]\\\"><img src=\\\"[!--news.url--]skin/default/images/logo.gif\\\" width=\\\"200\\\" height=\\\"65\\\" border=\\\"0\\\" /></a></td>\r\n<td align=\\\"center\\\"><a href=\\\"http://www.shunking.cn/\\\" target=\\\"_blank\\\"><img src=\\\"[!--news.url--]skin/default/images/opensource.gif\\\" width=\\\"100%\\\" height=\\\"70\\\" border=\\\"0\\\" /></a></td>\r\n</tr>\r\n</table>\r\n<!-- 导航tab选项卡 -->\r\n<table width=\\\"920\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"nav\\\">\r\n  <tr> \r\n    <td class=\\\"nav_global\\\"><ul>\r\n        <li class=\\\"curr\\\" id=\\\"tabnav_btn_0\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]\\\">首页</a></li>\r\n        <li id=\\\"tabnav_btn_1\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]news/\\\">新闻中心</a></li>\r\n        <li id=\\\"tabnav_btn_2\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]download/\\\">下载中心</a></li>\r\n        <li id=\\\"tabnav_btn_3\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]movie/\\\">影视频道</a></li>\r\n        <li id=\\\"tabnav_btn_4\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]shop/\\\">网上商城</a></li>\r\n        <li id=\\\"tabnav_btn_5\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]flash/\\\">FLASH频道</a></li>\r\n        <li id=\\\"tabnav_btn_6\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]photo/\\\">图片频道</a></li>\r\n        <li id=\\\"tabnav_btn_7\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]article/\\\">文章中心</a></li>\r\n        <li id=\\\"tabnav_btn_8\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]info/\\\">分类信息</a></li>\r\n      </ul></td>\r\n  </tr>\r\n</table>', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewstempvarclass`
--

CREATE TABLE `hswl_enewstempvarclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewstempvar_2`
--

CREATE TABLE `hswl_enewstempvar_2` (
  `varid` smallint(5) UNSIGNED NOT NULL,
  `myvar` varchar(60) NOT NULL DEFAULT '',
  `varname` varchar(60) NOT NULL DEFAULT '',
  `varvalue` mediumtext NOT NULL,
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewstempvar_2`
--

INSERT INTO `hswl_enewstempvar_2` (`varid`, `myvar`, `varname`, `varvalue`, `classid`, `isclose`, `myorder`) VALUES
(1, 'header', '页面头部', '<header>\r\n            <h1><a href=\\\"/mobile/\\\"><img src=\\\"/mobile/images/logo.jpg\\\" alt=\\\"\\\" /></a></h1>\r\n            <section class=\\\"h_tit\\\">\r\n                <P class=p1><strong>成都市华森物流有限公司</strong></P>\r\n                <p class=\\\"p2\\\"><i></i>咨询热线：<a href=\\\"tel:13981791475\\\">13981791475</a></p>\r\n            </section>\r\n        </header>\r\n        <nav class=\\\"clearfix\\\">\r\n            <ul>\r\n                <li><a href=\\\"/mobile/\\\">网站首页</a></li>\r\n                <li><a href=\\\"/mobile/fuwu/\\\">服务范围</a></li>\r\n                <li><a href=\\\"/mobile/shili/anli/\\\">成功案例</a></li>\r\n                <li><a href=\\\"/mobile/shili/hezuo/\\\">公司实力</a></li>\r\n                <li><a href=\\\"/mobile/xinwen/\\\">新闻中心</a></li>\r\n                <li><a href=\\\"/mobile/guanyu/jianjie/\\\">关于我们</a></li>\r\n                <li><a href=\\\"/mobile/guanyu/lianxi/\\\">联系我们</a></li>\r\n                <li><a href=\\\"#\\\">在线咨询</a></li>\r\n            </ul>\r\n        </nav>', 0, 0, 1),
(2, 'footer', '页面尾部', '<section class=\\\"f_icp\\\">\r\n            <ul>\r\n                <li>24小时专线：<a href=\\\"tel:13981791475\\\">13981791475</a></li>\r\n                <li>版权所有&copy;成都市华森物流有限公司</li>\r\n                <li>备案号：<a href=\\\"http://www.beian.miit.gov.cn/\\\" target=\\\"_blank\\\">蜀ICP备13019420号</a></li>\r\n            </ul>\r\n        </section>\r\n        <a href=\\\"javascript:void(0)\\\" class=\\\"hddb\\\"><img src=\\\"/mobile/images/hddb.png\\\" alt=\\\"返回顶部\\\" /></a>\r\n        <section class=\\\"wrap-footer\\\">\r\n            <footer>\r\n                <a href=\\\"/mobile/\\\">返回首页</a>\r\n                <a href=\\\"/mobile/fuwu/\\\">服务范围</a>\r\n                <a href=\\\"tel:13981791475\\\">拨打电话</a>\r\n                <a href=\\\"#\\\">在线咨询</a>\r\n            </footer>\r\n        </section>', 0, 0, 0),
(3, 'dtheader', '动态页面头部', '<!-- 页头 -->\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"top\\\">\r\n<tr>\r\n<td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n<tr>\r\n<td width=\\\"63%\\\">\r\n<!-- 登录 -->\r\n<script>\r\ndocument.write(\\\'<script src=\\\"[!--news.url--]e/member/login/loginjs.php?t=\\\'+Math.random()+\\\'\\\"><\\\'+\\\'/script>\\\');\r\n</script>\r\n</td>\r\n<td align=\\\"right\\\">\r\n<a onclick=\\\"window.external.addFavorite(location.href,document.title)\\\" href=\\\"#ecms\\\">加入收藏</a> | <a onclick=\\\"this.style.behavior=\\\'url(#default#homepage)\\\';this.setHomePage(\\\'[!--news.url--]\\\')\\\" href=\\\"#ecms\\\">设为首页</a> | <a href=\\\"[!--news.url--]e/member/cp/\\\">会员中心</a> | <a href=\\\"[!--news.url--]e/DoInfo/\\\">我要投稿</a> | <a href=\\\"[!--news.url--]e/web/?type=rss2\\\" target=\\\"_blank\\\">RSS<img src=\\\"[!--news.url--]skin/default/images/rss.gif\\\" border=\\\"0\\\" hspace=\\\"2\\\" /></a>\r\n</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"10\\\">\r\n<tr valign=\\\"middle\\\">\r\n<td width=\\\"240\\\" align=\\\"center\\\"><a href=\\\"[!--news.url--]\\\"><img src=\\\"[!--news.url--]skin/default/images/logo.gif\\\" width=\\\"200\\\" height=\\\"65\\\" border=\\\"0\\\" /></a></td>\r\n<td align=\\\"center\\\"><a href=\\\"http://www.shunking.cn/\\\" target=\\\"_blank\\\"><img src=\\\"[!--news.url--]skin/default/images/opensource.gif\\\" width=\\\"100%\\\" height=\\\"70\\\" border=\\\"0\\\" /></a></td>\r\n</tr>\r\n</table>\r\n<!-- 导航tab选项卡 -->\r\n<table width=\\\"920\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"nav\\\">\r\n  <tr> \r\n    <td class=\\\"nav_global\\\"><ul>\r\n        <li class=\\\"curr\\\" id=\\\"tabnav_btn_0\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]\\\">首页</a></li>\r\n        <li id=\\\"tabnav_btn_1\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]news/\\\">新闻中心</a></li>\r\n        <li id=\\\"tabnav_btn_2\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]download/\\\">下载中心</a></li>\r\n        <li id=\\\"tabnav_btn_3\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]movie/\\\">影视频道</a></li>\r\n        <li id=\\\"tabnav_btn_4\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]shop/\\\">网上商城</a></li>\r\n        <li id=\\\"tabnav_btn_5\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]flash/\\\">FLASH频道</a></li>\r\n        <li id=\\\"tabnav_btn_6\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]photo/\\\">图片频道</a></li>\r\n        <li id=\\\"tabnav_btn_7\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]article/\\\">文章中心</a></li>\r\n        <li id=\\\"tabnav_btn_8\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]info/\\\">分类信息</a></li>\r\n      </ul></td>\r\n  </tr>\r\n</table>', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewstogzts`
--

CREATE TABLE `hswl_enewstogzts` (
  `togid` int(10) UNSIGNED NOT NULL,
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `searchf` varchar(255) NOT NULL DEFAULT '',
  `query` text NOT NULL,
  `specialsearch` varchar(255) NOT NULL DEFAULT '',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `retype` tinyint(1) NOT NULL DEFAULT '0',
  `startday` varchar(20) NOT NULL DEFAULT '',
  `endday` varchar(20) NOT NULL DEFAULT '',
  `startid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `endid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pline` int(11) NOT NULL DEFAULT '0',
  `doecmszt` tinyint(1) NOT NULL DEFAULT '0',
  `togztname` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsuser`
--

CREATE TABLE `hswl_enewsuser` (
  `userid` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `rnd` varchar(20) NOT NULL DEFAULT '',
  `adminclass` mediumtext NOT NULL,
  `groupid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `styleid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `filelevel` tinyint(1) NOT NULL DEFAULT '0',
  `salt` varchar(8) NOT NULL DEFAULT '',
  `loginnum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lasttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(20) NOT NULL DEFAULT '',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT '',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `pretime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `preip` varchar(20) NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `addip` varchar(20) NOT NULL DEFAULT '',
  `userprikey` varchar(50) NOT NULL DEFAULT '',
  `salt2` varchar(20) NOT NULL DEFAULT '',
  `lastipport` varchar(6) NOT NULL DEFAULT '',
  `preipport` varchar(6) NOT NULL DEFAULT '',
  `addipport` varchar(6) NOT NULL DEFAULT '',
  `uprnd` varchar(32) NOT NULL DEFAULT '',
  `wname` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(20) NOT NULL DEFAULT '',
  `wxno` varchar(80) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsuser`
--

INSERT INTO `hswl_enewsuser` (`userid`, `username`, `password`, `rnd`, `adminclass`, `groupid`, `checked`, `styleid`, `filelevel`, `salt`, `loginnum`, `lasttime`, `lastip`, `truename`, `email`, `classid`, `pretime`, `preip`, `addtime`, `addip`, `userprikey`, `salt2`, `lastipport`, `preipport`, `addipport`, `uprnd`, `wname`, `tel`, `wxno`, `qq`) VALUES
(1, 'admin', '79dcb5581c6bdd9b684d79cbffe43622', 'Xzq5HMgs3mALpDDHcjQC', '', 1, 0, 1, 0, 'uhmikIyo', 7, 1593849711, '222.210.139.229', '', '', 0, 1593399948, '171.213.29.24', 1592299189, '127.0.0.1', 'jliUdnY2aqE0tQYxtiFFrA7vh97qyYcGjBdHeIUeftrWeuwB', 'ZTV02UCohGKRBZbsN8rR', '21477', '29709', '63425', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsuseradd`
--

CREATE TABLE `hswl_enewsuseradd` (
  `userid` int(10) UNSIGNED NOT NULL,
  `equestion` tinyint(4) NOT NULL DEFAULT '0',
  `eanswer` varchar(32) NOT NULL DEFAULT '',
  `openip` text NOT NULL,
  `certkey` varchar(60) NOT NULL DEFAULT '',
  `certtime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsuseradd`
--

INSERT INTO `hswl_enewsuseradd` (`userid`, `equestion`, `eanswer`, `openip`, `certkey`, `certtime`) VALUES
(1, 0, '', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsuserclass`
--

CREATE TABLE `hswl_enewsuserclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsuserjs`
--

CREATE TABLE `hswl_enewsuserjs` (
  `jsid` smallint(5) UNSIGNED NOT NULL,
  `jsname` varchar(60) NOT NULL DEFAULT '',
  `jssql` text NOT NULL,
  `jstempid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `jsfilename` varchar(120) NOT NULL DEFAULT '',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsuserjsclass`
--

CREATE TABLE `hswl_enewsuserjsclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsuserlist`
--

CREATE TABLE `hswl_enewsuserlist` (
  `listid` smallint(5) UNSIGNED NOT NULL,
  `listname` varchar(60) NOT NULL DEFAULT '',
  `pagetitle` varchar(120) NOT NULL DEFAULT '',
  `filepath` varchar(120) NOT NULL DEFAULT '',
  `filetype` varchar(12) NOT NULL DEFAULT '',
  `totalsql` text NOT NULL,
  `listsql` text NOT NULL,
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `lencord` int(11) NOT NULL DEFAULT '0',
  `listtempid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `pagekeywords` varchar(255) NOT NULL DEFAULT '',
  `pagedescription` varchar(255) NOT NULL DEFAULT '',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsuserlistclass`
--

CREATE TABLE `hswl_enewsuserlistclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsuserloginck`
--

CREATE TABLE `hswl_enewsuserloginck` (
  `userid` int(10) UNSIGNED NOT NULL,
  `andauth` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsvg`
--

CREATE TABLE `hswl_enewsvg` (
  `vgid` smallint(5) UNSIGNED NOT NULL,
  `gname` char(60) NOT NULL DEFAULT '',
  `gids` char(255) NOT NULL DEFAULT '',
  `ingids` char(255) NOT NULL DEFAULT '',
  `agids` char(255) NOT NULL DEFAULT '',
  `mlist` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsvglist`
--

CREATE TABLE `hswl_enewsvglist` (
  `vgid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `outtime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsvote`
--

CREATE TABLE `hswl_enewsvote` (
  `voteid` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL DEFAULT '',
  `votenum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `voteip` mediumtext NOT NULL,
  `votetext` text NOT NULL,
  `voteclass` tinyint(1) NOT NULL DEFAULT '0',
  `doip` tinyint(1) NOT NULL DEFAULT '0',
  `votetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dotime` date NOT NULL DEFAULT '0000-00-00',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tempid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsvotemod`
--

CREATE TABLE `hswl_enewsvotemod` (
  `voteid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL DEFAULT '',
  `votetext` text NOT NULL,
  `voteclass` tinyint(1) NOT NULL DEFAULT '0',
  `doip` tinyint(1) NOT NULL DEFAULT '0',
  `dotime` date NOT NULL DEFAULT '0000-00-00',
  `tempid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `votenum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ysvotename` varchar(60) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsvotetemp`
--

CREATE TABLE `hswl_enewsvotetemp` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsvotetemp`
--

INSERT INTO `hswl_enewsvotetemp` (`tempid`, `tempname`, `temptext`) VALUES
(1, '默认投票模板', '<table width=100% border=0 align=center cellpadding=3 cellspacing=0><form name=enewsvote method=POST action=\'[!--vote.action--]\' target=_blank><tr><td><strong>[!--title--]</strong></td></tr><input type=hidden name=voteid value=\'[!--voteid--]\'><input type=hidden name=enews value=AddVote>\r\n[!--empirenews.listtemp--]\r\n<tr><td>[!--vote.box--]&nbsp;[!--vote.name--]</td></tr>\r\n[!--empirenews.listtemp--]\r\n<tr><td align=center><input type=submit name=submit value=投票>&nbsp;&nbsp;<input type=button name=button value=查看结果 onclick=javascript:window.open(\'[!--vote.view--]\',\'\',\'width=[!--width--],height=[!--height--],scrollbars=yes\');></td></tr></form></table>'),
(2, '默认信息投票模板', '<table width=\\\'100%\\\' border=0 align=center cellpadding=3 cellspacing=0><form name=enewsvote method=POST action=\\\'[!--news.url--]e/enews/index.php\\\' target=_blank><tr><td><strong>[!--title--]</strong></td></tr><input type=hidden name=id value=\\\'[!--id--]\\\'><input type=hidden name=classid value=\\\'[!--classid--]\\\'><input type=hidden name=enews value=AddInfoVote>\r\n[!--empirenews.listtemp--]\r\n<tr><td>[!--vote.box--]&nbsp;[!--vote.name--]</td></tr>\r\n[!--empirenews.listtemp--]\r\n<tr><td align=center><input type=submit name=submit value=投票>&nbsp;&nbsp;<input type=button name=button value=查看结果 onclick=javascript:window.open(\\\'[!--news.url--]e/public/vote/?classid=[!--classid--]&id=[!--id--]\\\',\\\'\\\',\\\'width=[!--width--],height=[!--height--],scrollbars=yes\\\');></td></tr></form></table>');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsvotetemp_2`
--

CREATE TABLE `hswl_enewsvotetemp_2` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewsvotetemp_2`
--

INSERT INTO `hswl_enewsvotetemp_2` (`tempid`, `tempname`, `temptext`) VALUES
(1, '默认投票模板', '<table width=100% border=0 align=center cellpadding=3 cellspacing=0><form name=enewsvote method=POST action=\\\'[!--vote.action--]\\\' target=_blank><tr><td><strong>[!--title--]</strong></td></tr><input type=hidden name=voteid value=\\\'[!--voteid--]\\\'><input type=hidden name=enews value=AddVote>\r\n[!--empirenews.listtemp--]\r\n<tr><td>[!--vote.box--]&nbsp;[!--vote.name--]</td></tr>\r\n[!--empirenews.listtemp--]\r\n<tr><td align=center><input type=submit name=submit value=投票>&nbsp;&nbsp;<input type=button name=button value=查看结果 onclick=javascript:window.open(\\\'[!--vote.view--]\\\',\\\'\\\',\\\'width=[!--width--],height=[!--height--],scrollbars=yes\\\');></td></tr></form></table>'),
(2, '默认信息投票模板', '<table width=\\\'100%\\\' border=0 align=center cellpadding=3 cellspacing=0><form name=enewsvote method=POST action=\\\'[!--news.url--]e/enews/index.php\\\' target=_blank><tr><td><strong>[!--title--]</strong></td></tr><input type=hidden name=id value=\\\'[!--id--]\\\'><input type=hidden name=classid value=\\\'[!--classid--]\\\'><input type=hidden name=enews value=AddInfoVote>\r\n[!--empirenews.listtemp--]\r\n<tr><td>[!--vote.box--]&nbsp;[!--vote.name--]</td></tr>\r\n[!--empirenews.listtemp--]\r\n<tr><td align=center><input type=submit name=submit value=投票>&nbsp;&nbsp;<input type=button name=button value=查看结果 onclick=javascript:window.open(\\\'[!--news.url--]e/public/vote/?classid=[!--classid--]&id=[!--id--]\\\',\\\'\\\',\\\'width=[!--width--],height=[!--height--],scrollbars=yes\\\');></td></tr></form></table>');

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewswapstyle`
--

CREATE TABLE `hswl_enewswapstyle` (
  `styleid` smallint(5) UNSIGNED NOT NULL,
  `stylename` varchar(60) NOT NULL DEFAULT '',
  `path` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hswl_enewswapstyle`
--

INSERT INTO `hswl_enewswapstyle` (`styleid`, `stylename`, `path`) VALUES
(1, '新闻模板', 1),
(2, '分类信息模板', 2);

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewswfinfo`
--

CREATE TABLE `hswl_enewswfinfo` (
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `wfid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `groupid` text NOT NULL,
  `userclass` text NOT NULL,
  `username` text NOT NULL,
  `checknum` tinyint(4) NOT NULL DEFAULT '0',
  `tstatus` varchar(30) NOT NULL DEFAULT '0',
  `checktno` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewswfinfolog`
--

CREATE TABLE `hswl_enewswfinfolog` (
  `logid` int(10) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `wfid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `checktime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checktext` text NOT NULL,
  `checknum` tinyint(4) NOT NULL DEFAULT '0',
  `checktype` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewswords`
--

CREATE TABLE `hswl_enewswords` (
  `wordid` smallint(5) UNSIGNED NOT NULL,
  `oldword` varchar(255) NOT NULL DEFAULT '',
  `newword` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsworkflow`
--

CREATE TABLE `hswl_enewsworkflow` (
  `wfid` smallint(5) UNSIGNED NOT NULL,
  `wfname` varchar(60) NOT NULL DEFAULT '',
  `wftext` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `adduser` varchar(30) NOT NULL DEFAULT '',
  `canedit` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsworkflowitem`
--

CREATE TABLE `hswl_enewsworkflowitem` (
  `tid` int(10) UNSIGNED NOT NULL,
  `wfid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `tname` varchar(60) NOT NULL DEFAULT '',
  `tno` int(11) NOT NULL DEFAULT '0',
  `ttext` varchar(255) NOT NULL DEFAULT '',
  `groupid` text NOT NULL,
  `userclass` text NOT NULL,
  `username` text NOT NULL,
  `lztype` tinyint(1) NOT NULL DEFAULT '0',
  `tbdo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tddo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstatus` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewswriter`
--

CREATE TABLE `hswl_enewswriter` (
  `wid` smallint(5) UNSIGNED NOT NULL,
  `writer` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsyh`
--

CREATE TABLE `hswl_enewsyh` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `yhname` varchar(30) NOT NULL DEFAULT '',
  `yhtext` varchar(255) NOT NULL DEFAULT '',
  `hlist` int(11) NOT NULL DEFAULT '0',
  `qlist` int(11) NOT NULL DEFAULT '0',
  `bqnew` int(11) NOT NULL DEFAULT '0',
  `bqhot` int(11) NOT NULL DEFAULT '0',
  `bqpl` int(11) NOT NULL DEFAULT '0',
  `bqgood` int(11) NOT NULL DEFAULT '0',
  `bqfirst` int(11) NOT NULL DEFAULT '0',
  `bqdown` int(11) NOT NULL DEFAULT '0',
  `otherlink` int(11) NOT NULL DEFAULT '0',
  `qmlist` int(11) NOT NULL DEFAULT '0',
  `dobq` tinyint(1) NOT NULL DEFAULT '0',
  `dojs` tinyint(1) NOT NULL DEFAULT '0',
  `dosbq` tinyint(1) NOT NULL DEFAULT '0',
  `rehtml` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewszt`
--

CREATE TABLE `hswl_enewszt` (
  `ztid` smallint(5) UNSIGNED NOT NULL,
  `ztname` varchar(60) NOT NULL DEFAULT '',
  `onclick` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ztnum` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `listtempid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `ztpath` varchar(255) NOT NULL DEFAULT '',
  `zttype` varchar(10) NOT NULL DEFAULT '',
  `zturl` varchar(200) NOT NULL DEFAULT '',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `ztimg` varchar(255) NOT NULL DEFAULT '',
  `zcid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `showzt` tinyint(1) NOT NULL DEFAULT '0',
  `ztpagekey` varchar(255) NOT NULL DEFAULT '',
  `classtempid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `myorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `usezt` tinyint(1) NOT NULL DEFAULT '0',
  `yhid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `checkpl` tinyint(1) NOT NULL DEFAULT '0',
  `restb` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `usernames` varchar(255) NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pltempid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsztadd`
--

CREATE TABLE `hswl_enewsztadd` (
  `ztid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `classtext` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsztclass`
--

CREATE TABLE `hswl_enewsztclass` (
  `classid` smallint(5) UNSIGNED NOT NULL,
  `classname` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsztf`
--

CREATE TABLE `hswl_enewsztf` (
  `fid` smallint(5) UNSIGNED NOT NULL,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  `fformsize` varchar(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewsztinfo`
--

CREATE TABLE `hswl_enewsztinfo` (
  `zid` int(10) UNSIGNED NOT NULL,
  `ztid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `cid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `newstime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `isgood` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewszttype`
--

CREATE TABLE `hswl_enewszttype` (
  `cid` mediumint(8) UNSIGNED NOT NULL,
  `ztid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `cname` varchar(20) NOT NULL DEFAULT '',
  `myorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `listtempid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `maxnum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tnum` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `ttype` varchar(10) NOT NULL DEFAULT '',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tfile` varchar(60) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hswl_enewszttypeadd`
--

CREATE TABLE `hswl_enewszttypeadd` (
  `cid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `classtext` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hswl_ecms_infoclass_news`
--
ALTER TABLE `hswl_ecms_infoclass_news`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_ecms_infotmp_news`
--
ALTER TABLE `hswl_ecms_infotmp_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classid` (`classid`),
  ADD KEY `checked` (`checked`);

--
-- Indexes for table `hswl_ecms_news`
--
ALTER TABLE `hswl_ecms_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classid` (`classid`),
  ADD KEY `newstime` (`newstime`),
  ADD KEY `ttid` (`ttid`),
  ADD KEY `firsttitle` (`firsttitle`),
  ADD KEY `isgood` (`isgood`),
  ADD KEY `ispic` (`ispic`),
  ADD KEY `useridis` (`userid`,`ismember`);

--
-- Indexes for table `hswl_ecms_news_check`
--
ALTER TABLE `hswl_ecms_news_check`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classid` (`classid`),
  ADD KEY `newstime` (`newstime`),
  ADD KEY `ttid` (`ttid`),
  ADD KEY `firsttitle` (`firsttitle`),
  ADD KEY `isgood` (`isgood`),
  ADD KEY `ispic` (`ispic`),
  ADD KEY `useridis` (`userid`,`ismember`);

--
-- Indexes for table `hswl_ecms_news_check_data`
--
ALTER TABLE `hswl_ecms_news_check_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `hswl_ecms_news_data_1`
--
ALTER TABLE `hswl_ecms_news_data_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `hswl_ecms_news_doc`
--
ALTER TABLE `hswl_ecms_news_doc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classid` (`classid`),
  ADD KEY `newstime` (`newstime`),
  ADD KEY `ttid` (`ttid`),
  ADD KEY `firsttitle` (`firsttitle`),
  ADD KEY `isgood` (`isgood`),
  ADD KEY `ispic` (`ispic`),
  ADD KEY `useridis` (`userid`,`ismember`);

--
-- Indexes for table `hswl_ecms_news_doc_data`
--
ALTER TABLE `hswl_ecms_news_doc_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `hswl_ecms_news_doc_index`
--
ALTER TABLE `hswl_ecms_news_doc_index`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classid` (`classid`),
  ADD KEY `checked` (`checked`),
  ADD KEY `newstime` (`newstime`),
  ADD KEY `truetime` (`truetime`,`id`),
  ADD KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`);

--
-- Indexes for table `hswl_ecms_news_index`
--
ALTER TABLE `hswl_ecms_news_index`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classid` (`classid`),
  ADD KEY `checked` (`checked`),
  ADD KEY `newstime` (`newstime`),
  ADD KEY `truetime` (`truetime`,`id`),
  ADD KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`);

--
-- Indexes for table `hswl_enewsad`
--
ALTER TABLE `hswl_enewsad`
  ADD PRIMARY KEY (`adid`),
  ADD KEY `classid` (`classid`),
  ADD KEY `t` (`t`);

--
-- Indexes for table `hswl_enewsadclass`
--
ALTER TABLE `hswl_enewsadclass`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewsadminstyle`
--
ALTER TABLE `hswl_enewsadminstyle`
  ADD PRIMARY KEY (`styleid`);

--
-- Indexes for table `hswl_enewsag`
--
ALTER TABLE `hswl_enewsag`
  ADD PRIMARY KEY (`agid`),
  ADD KEY `isadmin` (`isadmin`);

--
-- Indexes for table `hswl_enewsautodo`
--
ALTER TABLE `hswl_enewsautodo`
  ADD PRIMARY KEY (`doid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `dotime` (`dotime`),
  ADD KEY `ckstr` (`ckstr`),
  ADD KEY `ecmspno` (`ecmspno`);

--
-- Indexes for table `hswl_enewsbefrom`
--
ALTER TABLE `hswl_enewsbefrom`
  ADD PRIMARY KEY (`befromid`);

--
-- Indexes for table `hswl_enewsbq`
--
ALTER TABLE `hswl_enewsbq`
  ADD PRIMARY KEY (`bqid`),
  ADD KEY `classid` (`classid`),
  ADD KEY `isclose` (`isclose`),
  ADD KEY `myorder` (`myorder`);

--
-- Indexes for table `hswl_enewsbqclass`
--
ALTER TABLE `hswl_enewsbqclass`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewsbqtemp`
--
ALTER TABLE `hswl_enewsbqtemp`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `hswl_enewsbqtempclass`
--
ALTER TABLE `hswl_enewsbqtempclass`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewsbqtemp_2`
--
ALTER TABLE `hswl_enewsbqtemp_2`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `hswl_enewsbuybak`
--
ALTER TABLE `hswl_enewsbuybak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `hswl_enewsbuygroup`
--
ALTER TABLE `hswl_enewsbuygroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hswl_enewscard`
--
ALTER TABLE `hswl_enewscard`
  ADD PRIMARY KEY (`cardid`);

--
-- Indexes for table `hswl_enewsclass`
--
ALTER TABLE `hswl_enewsclass`
  ADD PRIMARY KEY (`classid`),
  ADD KEY `bclassid` (`bclassid`);

--
-- Indexes for table `hswl_enewsclassadd`
--
ALTER TABLE `hswl_enewsclassadd`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewsclassf`
--
ALTER TABLE `hswl_enewsclassf`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `hswl_enewsclassnavcache`
--
ALTER TABLE `hswl_enewsclassnavcache`
  ADD KEY `navtype` (`navtype`);

--
-- Indexes for table `hswl_enewsclasstemp`
--
ALTER TABLE `hswl_enewsclasstemp`
  ADD PRIMARY KEY (`tempid`);

--
-- Indexes for table `hswl_enewsclasstempclass`
--
ALTER TABLE `hswl_enewsclasstempclass`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewsclasstemp_2`
--
ALTER TABLE `hswl_enewsclasstemp_2`
  ADD PRIMARY KEY (`tempid`);

--
-- Indexes for table `hswl_enewsclass_stats`
--
ALTER TABLE `hswl_enewsclass_stats`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewsclass_stats_ip`
--
ALTER TABLE `hswl_enewsclass_stats_ip`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `hswl_enewsdiggips`
--
ALTER TABLE `hswl_enewsdiggips`
  ADD KEY `classid` (`classid`,`id`);

--
-- Indexes for table `hswl_enewsdo`
--
ALTER TABLE `hswl_enewsdo`
  ADD PRIMARY KEY (`doid`);

--
-- Indexes for table `hswl_enewsdolog`
--
ALTER TABLE `hswl_enewsdolog`
  ADD PRIMARY KEY (`logid`),
  ADD KEY `pubid` (`pubid`);

--
-- Indexes for table `hswl_enewsdownerror`
--
ALTER TABLE `hswl_enewsdownerror`
  ADD PRIMARY KEY (`errorid`);

--
-- Indexes for table `hswl_enewsdownrecord`
--
ALTER TABLE `hswl_enewsdownrecord`
  ADD KEY `userid` (`userid`),
  ADD KEY `truetime` (`truetime`);

--
-- Indexes for table `hswl_enewsdownurlqz`
--
ALTER TABLE `hswl_enewsdownurlqz`
  ADD PRIMARY KEY (`urlid`);

--
-- Indexes for table `hswl_enewserrorclass`
--
ALTER TABLE `hswl_enewserrorclass`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewsf`
--
ALTER TABLE `hswl_enewsf`
  ADD PRIMARY KEY (`fid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `hswl_enewsfava`
--
ALTER TABLE `hswl_enewsfava`
  ADD PRIMARY KEY (`favaid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `hswl_enewsfavaclass`
--
ALTER TABLE `hswl_enewsfavaclass`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `hswl_enewsfeedback`
--
ALTER TABLE `hswl_enewsfeedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bid` (`bid`),
  ADD KEY `haveread` (`haveread`);

--
-- Indexes for table `hswl_enewsfeedbackclass`
--
ALTER TABLE `hswl_enewsfeedbackclass`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `hswl_enewsfeedbackf`
--
ALTER TABLE `hswl_enewsfeedbackf`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `hswl_enewsfile_1`
--
ALTER TABLE `hswl_enewsfile_1`
  ADD PRIMARY KEY (`fileid`),
  ADD KEY `id` (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `classid` (`classid`),
  ADD KEY `pubid` (`pubid`);

--
-- Indexes for table `hswl_enewsfile_member`
--
ALTER TABLE `hswl_enewsfile_member`
  ADD PRIMARY KEY (`fileid`),
  ADD KEY `id` (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `hswl_enewsfile_other`
--
ALTER TABLE `hswl_enewsfile_other`
  ADD PRIMARY KEY (`fileid`),
  ADD KEY `id` (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `modtype` (`modtype`);

--
-- Indexes for table `hswl_enewsfile_public`
--
ALTER TABLE `hswl_enewsfile_public`
  ADD PRIMARY KEY (`fileid`),
  ADD KEY `id` (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `modtype` (`modtype`);

--
-- Indexes for table `hswl_enewsgbook`
--
ALTER TABLE `hswl_enewsgbook`
  ADD PRIMARY KEY (`lyid`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `hswl_enewsgbookclass`
--
ALTER TABLE `hswl_enewsgbookclass`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `hswl_enewsgfenip`
--
ALTER TABLE `hswl_enewsgfenip`
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Indexes for table `hswl_enewsgoodtype`
--
ALTER TABLE `hswl_enewsgoodtype`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `ttype` (`ttype`),
  ADD KEY `levelid` (`levelid`),
  ADD KEY `myorder` (`myorder`);

--
-- Indexes for table `hswl_enewsgroup`
--
ALTER TABLE `hswl_enewsgroup`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `hswl_enewshmsg`
--
ALTER TABLE `hswl_enewshmsg`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `to_username` (`to_username`);

--
-- Indexes for table `hswl_enewshnotice`
--
ALTER TABLE `hswl_enewshnotice`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `to_username` (`to_username`);

--
-- Indexes for table `hswl_enewshy`
--
ALTER TABLE `hswl_enewshy`
  ADD PRIMARY KEY (`fid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `hswl_enewshyclass`
--
ALTER TABLE `hswl_enewshyclass`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `hswl_enewsindexpage`
--
ALTER TABLE `hswl_enewsindexpage`
  ADD PRIMARY KEY (`tempid`);

--
-- Indexes for table `hswl_enewsinfoclass`
--
ALTER TABLE `hswl_enewsinfoclass`
  ADD PRIMARY KEY (`classid`),
  ADD KEY `newsclassid` (`newsclassid`);

--
-- Indexes for table `hswl_enewsinfotype`
--
ALTER TABLE `hswl_enewsinfotype`
  ADD PRIMARY KEY (`typeid`),
  ADD KEY `mid` (`mid`),
  ADD KEY `myorder` (`myorder`);

--
-- Indexes for table `hswl_enewsinfovote`
--
ALTER TABLE `hswl_enewsinfovote`
  ADD PRIMARY KEY (`pubid`),
  ADD KEY `id` (`id`,`classid`);

--
-- Indexes for table `hswl_enewsingroup`
--
ALTER TABLE `hswl_enewsingroup`
  ADD PRIMARY KEY (`gid`),
  ADD KEY `myorder` (`myorder`);

--
-- Indexes for table `hswl_enewsjstemp`
--
ALTER TABLE `hswl_enewsjstemp`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `hswl_enewsjstempclass`
--
ALTER TABLE `hswl_enewsjstempclass`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewsjstemp_2`
--
ALTER TABLE `hswl_enewsjstemp_2`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `hswl_enewskey`
--
ALTER TABLE `hswl_enewskey`
  ADD PRIMARY KEY (`keyid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `hswl_enewskeyclass`
--
ALTER TABLE `hswl_enewskeyclass`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewslink`
--
ALTER TABLE `hswl_enewslink`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `hswl_enewslinkclass`
--
ALTER TABLE `hswl_enewslinkclass`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewslinktmp`
--
ALTER TABLE `hswl_enewslinktmp`
  ADD PRIMARY KEY (`linkid`),
  ADD KEY `checkrnd` (`checkrnd`);

--
-- Indexes for table `hswl_enewslisttemp`
--
ALTER TABLE `hswl_enewslisttemp`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `hswl_enewslisttempclass`
--
ALTER TABLE `hswl_enewslisttempclass`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewslisttemp_2`
--
ALTER TABLE `hswl_enewslisttemp_2`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `hswl_enewslog`
--
ALTER TABLE `hswl_enewslog`
  ADD PRIMARY KEY (`loginid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `hswl_enewsloginfail`
--
ALTER TABLE `hswl_enewsloginfail`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `hswl_enewsmember`
--
ALTER TABLE `hswl_enewsmember`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `groupid` (`groupid`),
  ADD KEY `ingid` (`ingid`);

--
-- Indexes for table `hswl_enewsmemberadd`
--
ALTER TABLE `hswl_enewsmemberadd`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `hswl_enewsmemberf`
--
ALTER TABLE `hswl_enewsmemberf`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `hswl_enewsmemberfeedback`
--
ALTER TABLE `hswl_enewsmemberfeedback`
  ADD PRIMARY KEY (`fid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `hswl_enewsmemberform`
--
ALTER TABLE `hswl_enewsmemberform`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `hswl_enewsmembergbook`
--
ALTER TABLE `hswl_enewsmembergbook`
  ADD PRIMARY KEY (`gid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `hswl_enewsmembergroup`
--
ALTER TABLE `hswl_enewsmembergroup`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `hswl_enewsmemberpub`
--
ALTER TABLE `hswl_enewsmemberpub`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `hswl_enewsmember_connect`
--
ALTER TABLE `hswl_enewsmember_connect`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `bindkey` (`bindkey`),
  ADD KEY `apptype` (`apptype`);

--
-- Indexes for table `hswl_enewsmember_connect_app`
--
ALTER TABLE `hswl_enewsmember_connect_app`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `apptype` (`apptype`),
  ADD KEY `isclose` (`isclose`),
  ADD KEY `myorder` (`myorder`);

--
-- Indexes for table `hswl_enewsmenu`
--
ALTER TABLE `hswl_enewsmenu`
  ADD PRIMARY KEY (`menuid`),
  ADD KEY `myorder` (`myorder`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `hswl_enewsmenuclass`
--
ALTER TABLE `hswl_enewsmenuclass`
  ADD PRIMARY KEY (`classid`),
  ADD KEY `myorder` (`myorder`),
  ADD KEY `classtype` (`classtype`);

--
-- Indexes for table `hswl_enewsmod`
--
ALTER TABLE `hswl_enewsmod`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `hswl_enewsmoreport`
--
ALTER TABLE `hswl_enewsmoreport`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `isclose` (`isclose`);

--
-- Indexes for table `hswl_enewsnewstemp`
--
ALTER TABLE `hswl_enewsnewstemp`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `hswl_enewsnewstempclass`
--
ALTER TABLE `hswl_enewsnewstempclass`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewsnewstemp_2`
--
ALTER TABLE `hswl_enewsnewstemp_2`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `hswl_enewsnotcj`
--
ALTER TABLE `hswl_enewsnotcj`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hswl_enewsnotice`
--
ALTER TABLE `hswl_enewsnotice`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `to_username` (`to_username`);

--
-- Indexes for table `hswl_enewspage`
--
ALTER TABLE `hswl_enewspage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `hswl_enewspageclass`
--
ALTER TABLE `hswl_enewspageclass`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewspagetemp`
--
ALTER TABLE `hswl_enewspagetemp`
  ADD PRIMARY KEY (`tempid`);

--
-- Indexes for table `hswl_enewspagetemp_2`
--
ALTER TABLE `hswl_enewspagetemp_2`
  ADD PRIMARY KEY (`tempid`);

--
-- Indexes for table `hswl_enewspayapi`
--
ALTER TABLE `hswl_enewspayapi`
  ADD PRIMARY KEY (`payid`),
  ADD UNIQUE KEY `paytype` (`paytype`);

--
-- Indexes for table `hswl_enewspayrecord`
--
ALTER TABLE `hswl_enewspayrecord`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`,`orderid`);

--
-- Indexes for table `hswl_enewspic`
--
ALTER TABLE `hswl_enewspic`
  ADD PRIMARY KEY (`picid`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `hswl_enewspicclass`
--
ALTER TABLE `hswl_enewspicclass`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewsplayer`
--
ALTER TABLE `hswl_enewsplayer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hswl_enewsplf`
--
ALTER TABLE `hswl_enewsplf`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `hswl_enewspltemp`
--
ALTER TABLE `hswl_enewspltemp`
  ADD PRIMARY KEY (`tempid`);

--
-- Indexes for table `hswl_enewspltemp_2`
--
ALTER TABLE `hswl_enewspltemp_2`
  ADD PRIMARY KEY (`tempid`);

--
-- Indexes for table `hswl_enewspl_1`
--
ALTER TABLE `hswl_enewspl_1`
  ADD PRIMARY KEY (`plid`),
  ADD KEY `id` (`id`),
  ADD KEY `classid` (`classid`),
  ADD KEY `pubid` (`pubid`,`checked`,`plid`);

--
-- Indexes for table `hswl_enewspl_set`
--
ALTER TABLE `hswl_enewspl_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hswl_enewspostdata`
--
ALTER TABLE `hswl_enewspostdata`
  ADD PRIMARY KEY (`postid`),
  ADD KEY `rnd` (`rnd`);

--
-- Indexes for table `hswl_enewspostserver`
--
ALTER TABLE `hswl_enewspostserver`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `ptype` (`ptype`);

--
-- Indexes for table `hswl_enewsprinttemp`
--
ALTER TABLE `hswl_enewsprinttemp`
  ADD PRIMARY KEY (`tempid`);

--
-- Indexes for table `hswl_enewsprinttemp_2`
--
ALTER TABLE `hswl_enewsprinttemp_2`
  ADD PRIMARY KEY (`tempid`);

--
-- Indexes for table `hswl_enewspublic`
--
ALTER TABLE `hswl_enewspublic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hswl_enewspublicadd`
--
ALTER TABLE `hswl_enewspublicadd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hswl_enewspublic_fc`
--
ALTER TABLE `hswl_enewspublic_fc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hswl_enewspublic_up`
--
ALTER TABLE `hswl_enewspublic_up`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hswl_enewspubtemp`
--
ALTER TABLE `hswl_enewspubtemp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hswl_enewspubtemp_2`
--
ALTER TABLE `hswl_enewspubtemp_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hswl_enewspubvar`
--
ALTER TABLE `hswl_enewspubvar`
  ADD PRIMARY KEY (`varid`),
  ADD UNIQUE KEY `varname` (`varname`),
  ADD KEY `classid` (`classid`),
  ADD KEY `tocache` (`tocache`);

--
-- Indexes for table `hswl_enewspubvarclass`
--
ALTER TABLE `hswl_enewspubvarclass`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewsqmsg`
--
ALTER TABLE `hswl_enewsqmsg`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `to_username` (`to_username`);

--
-- Indexes for table `hswl_enewssearch`
--
ALTER TABLE `hswl_enewssearch`
  ADD PRIMARY KEY (`searchid`),
  ADD KEY `checkpass` (`checkpass`);

--
-- Indexes for table `hswl_enewssearchall`
--
ALTER TABLE `hswl_enewssearchall`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `id` (`id`,`classid`,`infotime`);
ALTER TABLE `hswl_enewssearchall` ADD FULLTEXT KEY `title` (`title`,`infotext`);

--
-- Indexes for table `hswl_enewssearchall_load`
--
ALTER TABLE `hswl_enewssearchall_load`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `hswl_enewssearchtemp`
--
ALTER TABLE `hswl_enewssearchtemp`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `hswl_enewssearchtempclass`
--
ALTER TABLE `hswl_enewssearchtempclass`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewssearchtemp_2`
--
ALTER TABLE `hswl_enewssearchtemp_2`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `hswl_enewssp`
--
ALTER TABLE `hswl_enewssp`
  ADD PRIMARY KEY (`spid`),
  ADD UNIQUE KEY `varname` (`varname`),
  ADD KEY `refile` (`refile`);

--
-- Indexes for table `hswl_enewsspacestyle`
--
ALTER TABLE `hswl_enewsspacestyle`
  ADD PRIMARY KEY (`styleid`);

--
-- Indexes for table `hswl_enewsspclass`
--
ALTER TABLE `hswl_enewsspclass`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewssp_1`
--
ALTER TABLE `hswl_enewssp_1`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `spid` (`spid`),
  ADD KEY `newstime` (`newstime`);

--
-- Indexes for table `hswl_enewssp_2`
--
ALTER TABLE `hswl_enewssp_2`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `spid` (`spid`),
  ADD KEY `newstime` (`newstime`);

--
-- Indexes for table `hswl_enewssp_3`
--
ALTER TABLE `hswl_enewssp_3`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `spid` (`spid`);

--
-- Indexes for table `hswl_enewssp_3_bak`
--
ALTER TABLE `hswl_enewssp_3_bak`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `spid` (`spid`);

--
-- Indexes for table `hswl_enewssql`
--
ALTER TABLE `hswl_enewssql`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hswl_enewstable`
--
ALTER TABLE `hswl_enewstable`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `hswl_enewstags`
--
ALTER TABLE `hswl_enewstags`
  ADD PRIMARY KEY (`tagid`),
  ADD UNIQUE KEY `tagname` (`tagname`),
  ADD KEY `isgood` (`isgood`),
  ADD KEY `cid` (`cid`),
  ADD KEY `num` (`num`);

--
-- Indexes for table `hswl_enewstagsclass`
--
ALTER TABLE `hswl_enewstagsclass`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewstagsdata`
--
ALTER TABLE `hswl_enewstagsdata`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `tagid` (`tagid`),
  ADD KEY `classid` (`classid`),
  ADD KEY `id` (`id`),
  ADD KEY `newstime` (`newstime`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `hswl_enewstask`
--
ALTER TABLE `hswl_enewstask`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hswl_enewstempbak`
--
ALTER TABLE `hswl_enewstempbak`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `tempid` (`tempid`),
  ADD KEY `temptype` (`temptype`),
  ADD KEY `gid` (`gid`);

--
-- Indexes for table `hswl_enewstempdt`
--
ALTER TABLE `hswl_enewstempdt`
  ADD PRIMARY KEY (`tempid`),
  ADD UNIQUE KEY `tempvar` (`tempvar`),
  ADD KEY `temptype` (`temptype`),
  ADD KEY `myorder` (`myorder`);

--
-- Indexes for table `hswl_enewstempgroup`
--
ALTER TABLE `hswl_enewstempgroup`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `hswl_enewstempvar`
--
ALTER TABLE `hswl_enewstempvar`
  ADD PRIMARY KEY (`varid`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `hswl_enewstempvarclass`
--
ALTER TABLE `hswl_enewstempvarclass`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewstempvar_2`
--
ALTER TABLE `hswl_enewstempvar_2`
  ADD PRIMARY KEY (`varid`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `hswl_enewstogzts`
--
ALTER TABLE `hswl_enewstogzts`
  ADD PRIMARY KEY (`togid`),
  ADD KEY `togztname` (`togztname`);

--
-- Indexes for table `hswl_enewsuser`
--
ALTER TABLE `hswl_enewsuser`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `hswl_enewsuseradd`
--
ALTER TABLE `hswl_enewsuseradd`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `hswl_enewsuserclass`
--
ALTER TABLE `hswl_enewsuserclass`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewsuserjs`
--
ALTER TABLE `hswl_enewsuserjs`
  ADD PRIMARY KEY (`jsid`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `hswl_enewsuserjsclass`
--
ALTER TABLE `hswl_enewsuserjsclass`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewsuserlist`
--
ALTER TABLE `hswl_enewsuserlist`
  ADD PRIMARY KEY (`listid`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `hswl_enewsuserlistclass`
--
ALTER TABLE `hswl_enewsuserlistclass`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewsuserloginck`
--
ALTER TABLE `hswl_enewsuserloginck`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `hswl_enewsvg`
--
ALTER TABLE `hswl_enewsvg`
  ADD PRIMARY KEY (`vgid`);

--
-- Indexes for table `hswl_enewsvglist`
--
ALTER TABLE `hswl_enewsvglist`
  ADD KEY `vgid` (`vgid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `addtime` (`addtime`);

--
-- Indexes for table `hswl_enewsvote`
--
ALTER TABLE `hswl_enewsvote`
  ADD PRIMARY KEY (`voteid`);

--
-- Indexes for table `hswl_enewsvotemod`
--
ALTER TABLE `hswl_enewsvotemod`
  ADD PRIMARY KEY (`voteid`);

--
-- Indexes for table `hswl_enewsvotetemp`
--
ALTER TABLE `hswl_enewsvotetemp`
  ADD PRIMARY KEY (`tempid`);

--
-- Indexes for table `hswl_enewsvotetemp_2`
--
ALTER TABLE `hswl_enewsvotetemp_2`
  ADD PRIMARY KEY (`tempid`);

--
-- Indexes for table `hswl_enewswapstyle`
--
ALTER TABLE `hswl_enewswapstyle`
  ADD PRIMARY KEY (`styleid`);

--
-- Indexes for table `hswl_enewswfinfo`
--
ALTER TABLE `hswl_enewswfinfo`
  ADD KEY `id` (`id`,`classid`);

--
-- Indexes for table `hswl_enewswfinfolog`
--
ALTER TABLE `hswl_enewswfinfolog`
  ADD PRIMARY KEY (`logid`),
  ADD KEY `id` (`id`,`classid`);

--
-- Indexes for table `hswl_enewswords`
--
ALTER TABLE `hswl_enewswords`
  ADD PRIMARY KEY (`wordid`);

--
-- Indexes for table `hswl_enewsworkflow`
--
ALTER TABLE `hswl_enewsworkflow`
  ADD PRIMARY KEY (`wfid`);

--
-- Indexes for table `hswl_enewsworkflowitem`
--
ALTER TABLE `hswl_enewsworkflowitem`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `wfid` (`wfid`),
  ADD KEY `tno` (`tno`);

--
-- Indexes for table `hswl_enewswriter`
--
ALTER TABLE `hswl_enewswriter`
  ADD PRIMARY KEY (`wid`);

--
-- Indexes for table `hswl_enewsyh`
--
ALTER TABLE `hswl_enewsyh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hswl_enewszt`
--
ALTER TABLE `hswl_enewszt`
  ADD PRIMARY KEY (`ztid`),
  ADD KEY `classid` (`classid`),
  ADD KEY `zcid` (`zcid`),
  ADD KEY `usezt` (`usezt`);

--
-- Indexes for table `hswl_enewsztadd`
--
ALTER TABLE `hswl_enewsztadd`
  ADD PRIMARY KEY (`ztid`);

--
-- Indexes for table `hswl_enewsztclass`
--
ALTER TABLE `hswl_enewsztclass`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `hswl_enewsztf`
--
ALTER TABLE `hswl_enewsztf`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `hswl_enewsztinfo`
--
ALTER TABLE `hswl_enewsztinfo`
  ADD PRIMARY KEY (`zid`),
  ADD KEY `ztid` (`ztid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `classid` (`classid`),
  ADD KEY `id` (`id`),
  ADD KEY `newstime` (`newstime`),
  ADD KEY `mid` (`mid`),
  ADD KEY `isgood` (`isgood`);

--
-- Indexes for table `hswl_enewszttype`
--
ALTER TABLE `hswl_enewszttype`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `ztid` (`ztid`),
  ADD KEY `myorder` (`myorder`);

--
-- Indexes for table `hswl_enewszttypeadd`
--
ALTER TABLE `hswl_enewszttypeadd`
  ADD PRIMARY KEY (`cid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `hswl_ecms_infotmp_news`
--
ALTER TABLE `hswl_ecms_infotmp_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_ecms_news`
--
ALTER TABLE `hswl_ecms_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- 使用表AUTO_INCREMENT `hswl_ecms_news_check`
--
ALTER TABLE `hswl_ecms_news_check`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_ecms_news_doc`
--
ALTER TABLE `hswl_ecms_news_doc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_ecms_news_doc_index`
--
ALTER TABLE `hswl_ecms_news_doc_index`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_ecms_news_index`
--
ALTER TABLE `hswl_ecms_news_index`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- 使用表AUTO_INCREMENT `hswl_enewsad`
--
ALTER TABLE `hswl_enewsad`
  MODIFY `adid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsadclass`
--
ALTER TABLE `hswl_enewsadclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewsadminstyle`
--
ALTER TABLE `hswl_enewsadminstyle`
  MODIFY `styleid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `hswl_enewsag`
--
ALTER TABLE `hswl_enewsag`
  MODIFY `agid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `hswl_enewsautodo`
--
ALTER TABLE `hswl_enewsautodo`
  MODIFY `doid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsbefrom`
--
ALTER TABLE `hswl_enewsbefrom`
  MODIFY `befromid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsbq`
--
ALTER TABLE `hswl_enewsbq`
  MODIFY `bqid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- 使用表AUTO_INCREMENT `hswl_enewsbqclass`
--
ALTER TABLE `hswl_enewsbqclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `hswl_enewsbqtemp`
--
ALTER TABLE `hswl_enewsbqtemp`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `hswl_enewsbqtempclass`
--
ALTER TABLE `hswl_enewsbqtempclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsbqtemp_2`
--
ALTER TABLE `hswl_enewsbqtemp_2`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `hswl_enewsbuybak`
--
ALTER TABLE `hswl_enewsbuybak`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsbuygroup`
--
ALTER TABLE `hswl_enewsbuygroup`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewscard`
--
ALTER TABLE `hswl_enewscard`
  MODIFY `cardid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsclass`
--
ALTER TABLE `hswl_enewsclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- 使用表AUTO_INCREMENT `hswl_enewsclassf`
--
ALTER TABLE `hswl_enewsclassf`
  MODIFY `fid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsclasstemp`
--
ALTER TABLE `hswl_enewsclasstemp`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `hswl_enewsclasstempclass`
--
ALTER TABLE `hswl_enewsclasstempclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsclasstemp_2`
--
ALTER TABLE `hswl_enewsclasstemp_2`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `hswl_enewsdo`
--
ALTER TABLE `hswl_enewsdo`
  MODIFY `doid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewsdolog`
--
ALTER TABLE `hswl_enewsdolog`
  MODIFY `logid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;
--
-- 使用表AUTO_INCREMENT `hswl_enewsdownerror`
--
ALTER TABLE `hswl_enewsdownerror`
  MODIFY `errorid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsdownurlqz`
--
ALTER TABLE `hswl_enewsdownurlqz`
  MODIFY `urlid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewserrorclass`
--
ALTER TABLE `hswl_enewserrorclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsf`
--
ALTER TABLE `hswl_enewsf`
  MODIFY `fid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `hswl_enewsfava`
--
ALTER TABLE `hswl_enewsfava`
  MODIFY `favaid` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsfavaclass`
--
ALTER TABLE `hswl_enewsfavaclass`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsfeedback`
--
ALTER TABLE `hswl_enewsfeedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `hswl_enewsfeedbackclass`
--
ALTER TABLE `hswl_enewsfeedbackclass`
  MODIFY `bid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewsfeedbackf`
--
ALTER TABLE `hswl_enewsfeedbackf`
  MODIFY `fid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `hswl_enewsfile_1`
--
ALTER TABLE `hswl_enewsfile_1`
  MODIFY `fileid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewsfile_member`
--
ALTER TABLE `hswl_enewsfile_member`
  MODIFY `fileid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsfile_other`
--
ALTER TABLE `hswl_enewsfile_other`
  MODIFY `fileid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsfile_public`
--
ALTER TABLE `hswl_enewsfile_public`
  MODIFY `fileid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsgbook`
--
ALTER TABLE `hswl_enewsgbook`
  MODIFY `lyid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsgbookclass`
--
ALTER TABLE `hswl_enewsgbookclass`
  MODIFY `bid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewsgoodtype`
--
ALTER TABLE `hswl_enewsgoodtype`
  MODIFY `tid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- 使用表AUTO_INCREMENT `hswl_enewsgroup`
--
ALTER TABLE `hswl_enewsgroup`
  MODIFY `groupid` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewshmsg`
--
ALTER TABLE `hswl_enewshmsg`
  MODIFY `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewshnotice`
--
ALTER TABLE `hswl_enewshnotice`
  MODIFY `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewshy`
--
ALTER TABLE `hswl_enewshy`
  MODIFY `fid` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewshyclass`
--
ALTER TABLE `hswl_enewshyclass`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsindexpage`
--
ALTER TABLE `hswl_enewsindexpage`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsinfoclass`
--
ALTER TABLE `hswl_enewsinfoclass`
  MODIFY `classid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsinfotype`
--
ALTER TABLE `hswl_enewsinfotype`
  MODIFY `typeid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsingroup`
--
ALTER TABLE `hswl_enewsingroup`
  MODIFY `gid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsjstemp`
--
ALTER TABLE `hswl_enewsjstemp`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewsjstempclass`
--
ALTER TABLE `hswl_enewsjstempclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsjstemp_2`
--
ALTER TABLE `hswl_enewsjstemp_2`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewskey`
--
ALTER TABLE `hswl_enewskey`
  MODIFY `keyid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewskeyclass`
--
ALTER TABLE `hswl_enewskeyclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewslink`
--
ALTER TABLE `hswl_enewslink`
  MODIFY `lid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewslinkclass`
--
ALTER TABLE `hswl_enewslinkclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewslinktmp`
--
ALTER TABLE `hswl_enewslinktmp`
  MODIFY `linkid` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewslisttemp`
--
ALTER TABLE `hswl_enewslisttemp`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `hswl_enewslisttempclass`
--
ALTER TABLE `hswl_enewslisttempclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewslisttemp_2`
--
ALTER TABLE `hswl_enewslisttemp_2`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `hswl_enewslog`
--
ALTER TABLE `hswl_enewslog`
  MODIFY `loginid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `hswl_enewsmember`
--
ALTER TABLE `hswl_enewsmember`
  MODIFY `userid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsmemberf`
--
ALTER TABLE `hswl_enewsmemberf`
  MODIFY `fid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `hswl_enewsmemberfeedback`
--
ALTER TABLE `hswl_enewsmemberfeedback`
  MODIFY `fid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsmemberform`
--
ALTER TABLE `hswl_enewsmemberform`
  MODIFY `fid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `hswl_enewsmembergbook`
--
ALTER TABLE `hswl_enewsmembergbook`
  MODIFY `gid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsmembergroup`
--
ALTER TABLE `hswl_enewsmembergroup`
  MODIFY `groupid` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `hswl_enewsmemberpub`
--
ALTER TABLE `hswl_enewsmemberpub`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsmember_connect`
--
ALTER TABLE `hswl_enewsmember_connect`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsmember_connect_app`
--
ALTER TABLE `hswl_enewsmember_connect_app`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsmenu`
--
ALTER TABLE `hswl_enewsmenu`
  MODIFY `menuid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsmenuclass`
--
ALTER TABLE `hswl_enewsmenuclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsmod`
--
ALTER TABLE `hswl_enewsmod`
  MODIFY `mid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewsmoreport`
--
ALTER TABLE `hswl_enewsmoreport`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `hswl_enewsnewstemp`
--
ALTER TABLE `hswl_enewsnewstemp`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `hswl_enewsnewstempclass`
--
ALTER TABLE `hswl_enewsnewstempclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsnewstemp_2`
--
ALTER TABLE `hswl_enewsnewstemp_2`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `hswl_enewsnotcj`
--
ALTER TABLE `hswl_enewsnotcj`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `hswl_enewsnotice`
--
ALTER TABLE `hswl_enewsnotice`
  MODIFY `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewspage`
--
ALTER TABLE `hswl_enewspage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewspageclass`
--
ALTER TABLE `hswl_enewspageclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewspagetemp`
--
ALTER TABLE `hswl_enewspagetemp`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewspagetemp_2`
--
ALTER TABLE `hswl_enewspagetemp_2`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewspayapi`
--
ALTER TABLE `hswl_enewspayapi`
  MODIFY `payid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `hswl_enewspayrecord`
--
ALTER TABLE `hswl_enewspayrecord`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewspic`
--
ALTER TABLE `hswl_enewspic`
  MODIFY `picid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewspicclass`
--
ALTER TABLE `hswl_enewspicclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewsplayer`
--
ALTER TABLE `hswl_enewsplayer`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `hswl_enewsplf`
--
ALTER TABLE `hswl_enewsplf`
  MODIFY `fid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewspltemp`
--
ALTER TABLE `hswl_enewspltemp`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewspltemp_2`
--
ALTER TABLE `hswl_enewspltemp_2`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewspl_1`
--
ALTER TABLE `hswl_enewspl_1`
  MODIFY `plid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewspl_set`
--
ALTER TABLE `hswl_enewspl_set`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewspostdata`
--
ALTER TABLE `hswl_enewspostdata`
  MODIFY `postid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewspostserver`
--
ALTER TABLE `hswl_enewspostserver`
  MODIFY `pid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewsprinttemp`
--
ALTER TABLE `hswl_enewsprinttemp`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewsprinttemp_2`
--
ALTER TABLE `hswl_enewsprinttemp_2`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewspublic`
--
ALTER TABLE `hswl_enewspublic`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewspublicadd`
--
ALTER TABLE `hswl_enewspublicadd`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewspublic_fc`
--
ALTER TABLE `hswl_enewspublic_fc`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewspublic_up`
--
ALTER TABLE `hswl_enewspublic_up`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewspubtemp`
--
ALTER TABLE `hswl_enewspubtemp`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewspubtemp_2`
--
ALTER TABLE `hswl_enewspubtemp_2`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewspubvar`
--
ALTER TABLE `hswl_enewspubvar`
  MODIFY `varid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewspubvarclass`
--
ALTER TABLE `hswl_enewspubvarclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsqmsg`
--
ALTER TABLE `hswl_enewsqmsg`
  MODIFY `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewssearch`
--
ALTER TABLE `hswl_enewssearch`
  MODIFY `searchid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewssearchall`
--
ALTER TABLE `hswl_enewssearchall`
  MODIFY `sid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewssearchall_load`
--
ALTER TABLE `hswl_enewssearchall_load`
  MODIFY `lid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewssearchtemp`
--
ALTER TABLE `hswl_enewssearchtemp`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewssearchtempclass`
--
ALTER TABLE `hswl_enewssearchtempclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewssearchtemp_2`
--
ALTER TABLE `hswl_enewssearchtemp_2`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewssp`
--
ALTER TABLE `hswl_enewssp`
  MODIFY `spid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsspacestyle`
--
ALTER TABLE `hswl_enewsspacestyle`
  MODIFY `styleid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `hswl_enewsspclass`
--
ALTER TABLE `hswl_enewsspclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewssp_1`
--
ALTER TABLE `hswl_enewssp_1`
  MODIFY `sid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewssp_2`
--
ALTER TABLE `hswl_enewssp_2`
  MODIFY `sid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewssp_3`
--
ALTER TABLE `hswl_enewssp_3`
  MODIFY `sid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewssp_3_bak`
--
ALTER TABLE `hswl_enewssp_3_bak`
  MODIFY `bid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewssql`
--
ALTER TABLE `hswl_enewssql`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewstable`
--
ALTER TABLE `hswl_enewstable`
  MODIFY `tid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewstags`
--
ALTER TABLE `hswl_enewstags`
  MODIFY `tagid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewstagsclass`
--
ALTER TABLE `hswl_enewstagsclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewstagsdata`
--
ALTER TABLE `hswl_enewstagsdata`
  MODIFY `tid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewstask`
--
ALTER TABLE `hswl_enewstask`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewstempbak`
--
ALTER TABLE `hswl_enewstempbak`
  MODIFY `bid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- 使用表AUTO_INCREMENT `hswl_enewstempdt`
--
ALTER TABLE `hswl_enewstempdt`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- 使用表AUTO_INCREMENT `hswl_enewstempgroup`
--
ALTER TABLE `hswl_enewstempgroup`
  MODIFY `gid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `hswl_enewstempvar`
--
ALTER TABLE `hswl_enewstempvar`
  MODIFY `varid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `hswl_enewstempvarclass`
--
ALTER TABLE `hswl_enewstempvarclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewstempvar_2`
--
ALTER TABLE `hswl_enewstempvar_2`
  MODIFY `varid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `hswl_enewstogzts`
--
ALTER TABLE `hswl_enewstogzts`
  MODIFY `togid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsuser`
--
ALTER TABLE `hswl_enewsuser`
  MODIFY `userid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewsuseradd`
--
ALTER TABLE `hswl_enewsuseradd`
  MODIFY `userid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewsuserclass`
--
ALTER TABLE `hswl_enewsuserclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsuserjs`
--
ALTER TABLE `hswl_enewsuserjs`
  MODIFY `jsid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsuserjsclass`
--
ALTER TABLE `hswl_enewsuserjsclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsuserlist`
--
ALTER TABLE `hswl_enewsuserlist`
  MODIFY `listid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsuserlistclass`
--
ALTER TABLE `hswl_enewsuserlistclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsuserloginck`
--
ALTER TABLE `hswl_enewsuserloginck`
  MODIFY `userid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hswl_enewsvg`
--
ALTER TABLE `hswl_enewsvg`
  MODIFY `vgid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsvote`
--
ALTER TABLE `hswl_enewsvote`
  MODIFY `voteid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsvotemod`
--
ALTER TABLE `hswl_enewsvotemod`
  MODIFY `voteid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsvotetemp`
--
ALTER TABLE `hswl_enewsvotetemp`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `hswl_enewsvotetemp_2`
--
ALTER TABLE `hswl_enewsvotetemp_2`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `hswl_enewswapstyle`
--
ALTER TABLE `hswl_enewswapstyle`
  MODIFY `styleid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `hswl_enewswfinfolog`
--
ALTER TABLE `hswl_enewswfinfolog`
  MODIFY `logid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewswords`
--
ALTER TABLE `hswl_enewswords`
  MODIFY `wordid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsworkflow`
--
ALTER TABLE `hswl_enewsworkflow`
  MODIFY `wfid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsworkflowitem`
--
ALTER TABLE `hswl_enewsworkflowitem`
  MODIFY `tid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewswriter`
--
ALTER TABLE `hswl_enewswriter`
  MODIFY `wid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsyh`
--
ALTER TABLE `hswl_enewsyh`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewszt`
--
ALTER TABLE `hswl_enewszt`
  MODIFY `ztid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsztclass`
--
ALTER TABLE `hswl_enewsztclass`
  MODIFY `classid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsztf`
--
ALTER TABLE `hswl_enewsztf`
  MODIFY `fid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewsztinfo`
--
ALTER TABLE `hswl_enewsztinfo`
  MODIFY `zid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hswl_enewszttype`
--
ALTER TABLE `hswl_enewszttype`
  MODIFY `cid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

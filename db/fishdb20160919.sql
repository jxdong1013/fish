/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : fish

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2016-09-19 19:07:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_callrecords
-- ----------------------------
DROP TABLE IF EXISTS `t_callrecords`;
CREATE TABLE `t_callrecords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL COMMENT '记录单号',
  `currentdate` timestamp NULL DEFAULT NULL COMMENT '日期',
  `nextdate` timestamp NULL DEFAULT NULL COMMENT '下次联系日期',
  `customercode` varchar(50) DEFAULT NULL COMMENT '往来单位编号',
  `customer` varchar(100) DEFAULT NULL COMMENT '往来单位',
  `customerlevel` varchar(45) DEFAULT NULL,
  `linkmancode` varchar(45) DEFAULT NULL,
  `linkman` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `requiredquantity` varchar(100) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `officetel` varchar(45) DEFAULT NULL,
  `products` varchar(45) DEFAULT NULL,
  `weekestimate` varchar(45) DEFAULT NULL,
  `monthestimate` varchar(45) DEFAULT NULL,
  `communicatecontent` varchar(500) DEFAULT NULL COMMENT '沟通内容',
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createman` varchar(45) DEFAULT NULL,
  `modifytime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifyman` varchar(45) DEFAULT NULL,
  `isdelete` tinyint(4) DEFAULT '0',
  `buydate` varchar(45) DEFAULT NULL COMMENT '预计购买时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='通话记录表';

-- ----------------------------
-- Records of t_callrecords
-- ----------------------------
INSERT INTO `t_callrecords` VALUES ('7', '201506070007', '2015-06-07 12:34:11', '2015-06-07 12:34:11', '000002', '上海正东饲料有限公司', '一星', '00000003', '朱番禹', '上海浦东区', '22432423 , 6666666', '', '', '05711', '虾料', '', '', '撒kllkllmkmlmlmdsg sdg  受到犯规斯蒂芬广东省高速单反多个是大概否定式广东省高速大概多少的供电所古典诗歌大赛供电所但是大多数十大撒发的。\r\n撒kllkllmkmlmlmdsg sdg  受到犯规斯蒂芬广东省高速单反多个是大概否定式广东省高速大概多少的供电所古典诗歌大赛供电所但是大多数十大撒发的。\r\n撒kllkllmkmlmlmdsg sdg  受到犯规斯蒂芬广东省高速单反多个是大概否定式广东省高速大概多少的供电所古典诗歌大赛供电所但是大多数十大撒发的。\r\n撒kllkllmkmlmlmdsg sdg  受到犯规斯蒂芬广东省高速单反多个是大概否定式广东省高速大概多少的供电所古典诗歌大赛供电所但是大多数十大撒发的。\r\n撒kllkllmkmlmlmdsg sdg  受到犯规斯蒂芬广东省高速单反多个是大概否定式广东省高速大概多少的供电所古典诗歌大赛供电所但是大多数十大撒发的。', '2015-06-07 12:34:18', 'admin', '2015-06-07 12:34:18', 'admin', '0', '2015-06-07 12:34:10');
INSERT INTO `t_callrecords` VALUES ('8', '201506130001', '2015-06-13 21:53:51', '2015-06-13 21:53:51', '000001', '杭州市景芳', '低下', '00000001', '金向东', '杭州市江干区凯旋街道景芳四区', '13757193476 , 444444 , 555555555555', '', '', '057188983412', '禽料', '4.43', '564', '的萨芬 撒旦啊倒萨发  啊', '2015-06-13 22:00:15', 'admin', '2015-06-13 22:00:15', 'admin', '0', '2015-06-13 21:53:50');
INSERT INTO `t_callrecords` VALUES ('9', '201506130002', '2015-06-13 22:00:17', '2015-06-13 22:00:17', '000003', '杭州市通策会', '', '00000004', '吕建明', '', '', '', '', '', '', '', '', '阿斯顿发阿斯的发', '2015-06-13 22:01:05', 'admin', '2015-06-13 22:01:05', 'admin', '0', '2015-06-13 22:00:17');
INSERT INTO `t_callrecords` VALUES ('10', '201506130003', '2015-06-13 22:02:06', '2015-06-13 22:02:06', '000004', '杭州火图科技', '', '00000005', '杨', '', '', '', '', '', '', '', '', '撒旦法啊飞是的\r\n阿斯的发发', '2015-06-13 22:02:19', 'admin', '2015-06-13 22:02:19', 'admin', '0', '2015-06-13 22:02:06');
INSERT INTO `t_callrecords` VALUES ('11', '201506130004', '2015-06-13 22:14:55', '2015-06-13 22:14:55', '000004', '杭州火图科技', '', '00000005', '杨', '', '', '', '', '', '', '', '', '撒旦法爱的色放斯蒂芬爱的色放 的发发', '2015-06-13 22:15:08', 'admin', '2015-06-13 22:15:08', 'admin', '0', '2015-06-13 22:14:54');
INSERT INTO `t_callrecords` VALUES ('12', '201506130005', '2015-06-13 22:22:24', '2015-06-13 22:22:24', '000003', '杭州市通策会', '', '00000004', '吕建明', '', '', '', '', '', '', '', '', 'ffffffffa dsa sad fasd fas', '2015-06-13 22:22:34', 'admin', '2015-06-13 22:22:34', 'admin', '0', '2015-06-13 22:22:24');
INSERT INTO `t_callrecords` VALUES ('13', '201506130006', '2015-06-13 22:22:36', '2015-06-13 22:22:36', '000004', '杭州火图科技', '', '00000005', '杨', '', '', '', '', '', '', '', '', 'dffffffffffffffasdfas sad asd', '2015-06-13 22:22:44', 'admin', '2015-06-13 22:22:44', 'admin', '0', '2015-06-13 22:22:36');
INSERT INTO `t_callrecords` VALUES ('14', '201506130007', '2015-06-13 22:22:46', '2015-06-13 22:22:46', '000004', '杭州火图科技', '', '00000005', '杨', '', '', '', '', '', '', '', '', 'sd fasd fasd sa ads sad ad fads', '2015-06-13 22:22:52', 'admin', '2015-06-13 22:22:52', 'admin', '0', '2015-06-13 22:22:45');
INSERT INTO `t_callrecords` VALUES ('15', '201609190001', '2016-09-19 18:56:43', '2016-09-19 18:56:43', '000004', '杭州火图科技', '', '00000005', '杨', '', '', '', '', '', '', '', '', '啊啊啊', '2016-09-19 18:57:17', 'admin', '2016-09-19 18:57:17', 'admin', '0', '2016-09-19 18:56:43');

-- ----------------------------
-- Table structure for t_callrecordsdetail
-- ----------------------------
DROP TABLE IF EXISTS `t_callrecordsdetail`;
CREATE TABLE `t_callrecordsdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `callrecordid` int(11) NOT NULL,
  `no` int(11) DEFAULT '1',
  `nature` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `specification` varchar(255) DEFAULT NULL,
  `orderstate` varchar(255) DEFAULT NULL,
  `quoteprice` decimal(10,2) DEFAULT NULL,
  `weight` decimal(8,3) DEFAULT NULL,
  `saleprice` decimal(10,2) DEFAULT NULL,
  `paymethod` varchar(255) DEFAULT NULL,
  `payperiod` varchar(255) DEFAULT NULL,
  `domestic_tvn` decimal(8,2) DEFAULT NULL,
  `domestic_graypart` decimal(8,2) DEFAULT NULL,
  `domestic_sandsalt` decimal(8,2) DEFAULT NULL,
  `domestic_sour` decimal(8,2) DEFAULT NULL,
  `domestic_lysine` decimal(8,2) DEFAULT NULL,
  `domestic_amine` decimal(8,2) DEFAULT NULL,
  `domestic_aminototal` decimal(8,2) DEFAULT NULL,
  `domestic_methionine` decimal(8,2) DEFAULT NULL,
  `domestic_fat` decimal(8,2) DEFAULT NULL,
  `domestic_protein` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_callrecordsdetail
-- ----------------------------
INSERT INTO `t_callrecordsdetail` VALUES ('5', '7', '1', '中国', '阿迪达斯', '普通', '预计', '1.00', '2.000', '3.00', 'TT付款', '4', '12.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('6', '7', '2', '美国', '耐克', '超级', '确定', '2342.00', '1234.000', '1324.00', '远期信用证6个月', '2', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('7', '7', '3', '美国', '耐克', '普通', '确定', '0.00', '234.000', '123.00', '', '4', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('8', '7', '4', '', '', '普通', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('9', '8', '1', '英国', '', '普通', '确定', '1234.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('10', '8', '2', '', '', '优良', '确定', '34234.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('11', '8', '3', '', '', '超级', '预计', '2342.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('12', '8', '4', '', '', '普通', '确定', '234.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('13', '9', '1', '中国', '', '', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('14', '9', '2', '英国', '', '', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('15', '9', '3', '', '', '', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('16', '9', '4', '', '', '', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('17', '10', '1', '', '', '', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('18', '10', '2', '中国', '', 'B', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('19', '10', '3', '', '', '', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('20', '10', '4', '', '', '', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('21', '11', '1', '', '', '', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('22', '11', '2', '', '', '', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('23', '11', '3', '', '', '', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('24', '11', '4', '', '', '', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('25', '12', '1', '', '', '', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('26', '12', '2', '', '', '', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('27', '12', '3', '', '', '', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('28', '12', '4', '', '', '', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('29', '13', '1', '', '', '', 'a', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('30', '13', '2', '', '', '', 'a', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('31', '13', '3', '', '', '', 'a', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('32', '13', '4', '', '', '', 'a', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('33', '14', '1', '', '', '', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('34', '14', '2', '', '我', '', 'a', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('35', '14', '3', '', '是', '', 'b', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('36', '14', '4', '', '我', '', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('37', '15', '1', '中国', '耐克', '超级', '确定', '11.00', '7.000', '8.00', '即期信用证', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('38', '15', '2', '', '', '', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('39', '15', '3', '', '', '', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `t_callrecordsdetail` VALUES ('40', '15', '4', '', '', '', '', '0.00', '0.000', '0.00', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');

-- ----------------------------
-- Table structure for t_check
-- ----------------------------
DROP TABLE IF EXISTS `t_check`;
CREATE TABLE `t_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `checkdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `checkunitid` int(8) NOT NULL,
  `checkunitcode` varchar(45) NOT NULL,
  `checkunit` varchar(100) NOT NULL,
  `checkfee` decimal(12,3) NOT NULL,
  `productid` int(11) NOT NULL,
  `productcode` varchar(45) NOT NULL,
  `productname` varchar(50) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `createman` varchar(45) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `modifyman` varchar(45) NOT NULL,
  `modifytime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_check
-- ----------------------------

-- ----------------------------
-- Table structure for t_checkdetail
-- ----------------------------
DROP TABLE IF EXISTS `t_checkdetail`;
CREATE TABLE `t_checkdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `line` int(11) NOT NULL,
  `checkkey` varchar(100) DEFAULT NULL COMMENT '国内实测指标：蛋白',
  `checkvalue` varchar(20) DEFAULT NULL,
  `orderid` int(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `checkdetail_mid_idx` (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_checkdetail
-- ----------------------------

-- ----------------------------
-- Table structure for t_checkrecord
-- ----------------------------
DROP TABLE IF EXISTS `t_checkrecord`;
CREATE TABLE `t_checkrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) NOT NULL,
  `productcode` varchar(45) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `recordno` int(11) DEFAULT '1' COMMENT '检测记录号',
  `checkdate` varchar(255) DEFAULT NULL,
  `testdate` varchar(255) DEFAULT NULL,
  `testcompanyid` int(11) DEFAULT NULL,
  `testcompanycode` varchar(45) DEFAULT NULL,
  `testcompanyname` varchar(255) DEFAULT NULL,
  `regularindex1` decimal(6,2) DEFAULT NULL,
  `regularindex2` decimal(6,2) DEFAULT NULL,
  `regularindex3` decimal(6,2) DEFAULT NULL,
  `regularindex4` decimal(6,2) DEFAULT NULL,
  `regularindex5` decimal(6,2) DEFAULT NULL,
  `regularindex6` decimal(6,2) DEFAULT NULL,
  `regularindex7` decimal(6,2) DEFAULT NULL,
  `regularindex8` decimal(6,2) DEFAULT NULL,
  `regularindex9` decimal(6,2) DEFAULT NULL,
  `regularindex10` decimal(6,2) DEFAULT NULL,
  `regularindex11` decimal(6,2) DEFAULT NULL,
  `regularindex12` decimal(6,2) DEFAULT NULL,
  `aminoindex1` decimal(8,4) DEFAULT NULL,
  `aminoindex2` decimal(8,4) DEFAULT NULL,
  `aminoindex3` decimal(8,4) DEFAULT NULL,
  `aminoindex4` decimal(8,4) DEFAULT NULL,
  `aminoindex5` decimal(8,4) DEFAULT NULL,
  `aminoindex6` decimal(8,4) DEFAULT NULL,
  `aminoindex7` decimal(8,4) DEFAULT NULL,
  `aminoindex8` decimal(8,4) DEFAULT NULL,
  `aminoindex9` decimal(8,4) DEFAULT NULL,
  `aminoindex10` decimal(8,4) DEFAULT NULL,
  `aminoindex11` decimal(8,4) DEFAULT NULL,
  `aminoindex12` decimal(8,4) DEFAULT NULL,
  `aminoindex13` decimal(8,4) DEFAULT NULL,
  `aminoindex14` decimal(8,4) DEFAULT NULL,
  `aminoindex15` decimal(8,4) DEFAULT NULL,
  `aminoindex16` decimal(8,4) DEFAULT NULL,
  `aminoindex17` decimal(8,4) DEFAULT NULL,
  `aminoindex18` decimal(8,4) DEFAULT NULL,
  `aminoindex19` decimal(8,4) DEFAULT NULL,
  `aminoindex20` decimal(8,4) DEFAULT NULL,
  `aminoindex21` decimal(8,4) DEFAULT NULL,
  `aminoindex22` decimal(8,4) DEFAULT NULL,
  `aminoindex23` decimal(8,4) DEFAULT NULL,
  `specialindex1` varchar(255) DEFAULT NULL COMMENT '特殊指标1',
  `specialindex2` varchar(255) DEFAULT NULL,
  `specialindex3` varchar(255) DEFAULT NULL,
  `specialindex4` varchar(255) DEFAULT NULL,
  `specialindex5` varchar(255) DEFAULT NULL,
  `fee` decimal(6,2) DEFAULT '0.00' COMMENT '费用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_checkrecord
-- ----------------------------
INSERT INTO `t_checkrecord` VALUES ('14', '3', '', '发型', '1', '2014.10.11', '2014.12.11', '2', '', '上海正东饲料有限公司', '1.00', '2.00', '3.00', '4.00', '5.00', '6.00', '7.00', '8.00', '0.00', '0.00', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '无检测', '', '', '', '', '1.00');
INSERT INTO `t_checkrecord` VALUES ('15', '3', '', '发型', '2', '2015.02.02', '2015.09.08', '0', '', '', '11.00', '12.00', '13.00', '14.00', '15.00', '16.00', '17.00', '18.00', '0.00', '0.00', '0.00', '0.00', '9.0000', '10.0000', '11.0000', '12.0000', '13.0000', '14.0000', '15.0000', '16.0000', '17.0000', '0.0000', '0.0000', '0.0000', '0.0000', '22.0000', '0.0000', '0.0000', '0.0000', '0.0000', '23.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '', '', '', '2.00');
INSERT INTO `t_checkrecord` VALUES ('16', '3', '', '发型', '3', '', '', '0', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '18.0000', '19.0000', '20.0000', '21.0000', '22.0000', '23.0000', '24.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '', '', '', '3.00');
INSERT INTO `t_checkrecord` VALUES ('17', '3', '', '发型', '4', '', '', '0', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '25.0000', '26.0000', '27.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '', '', '', '4.00');
INSERT INTO `t_checkrecord` VALUES ('18', '3', '', '发型', '5', '', '', '0', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '无检测', '', '', '', '', '5.00');
INSERT INTO `t_checkrecord` VALUES ('19', '3', '', '发型', '6', '', '', '0', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '', '', '', '6.00');
INSERT INTO `t_checkrecord` VALUES ('20', '2', '00000003', '墨绿', '1', '', '', '1', '', '景芳', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '32.0000', '23.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '', '', '', '0.00');
INSERT INTO `t_checkrecord` VALUES ('21', '2', '00000003', '墨绿', '2', '', '', '0', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '', '', '', '0.00');
INSERT INTO `t_checkrecord` VALUES ('22', '2', '00000003', '墨绿', '3', '', '', '0', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '', '', '', '0.00');
INSERT INTO `t_checkrecord` VALUES ('23', '2', '00000003', '墨绿', '4', '', '', '0', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '', '', '', '0.00');
INSERT INTO `t_checkrecord` VALUES ('24', '2', '00000003', '墨绿', '5', '', '', '0', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '', '', '', '0.00');
INSERT INTO `t_checkrecord` VALUES ('25', '2', '00000003', '墨绿', '6', '', '', '0', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '', '', '', '0.00');
INSERT INTO `t_checkrecord` VALUES ('27', '4', '00000005', '发型', '2', '', '', '0', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '', '', '', '0.00');
INSERT INTO `t_checkrecord` VALUES ('28', '4', '00000005', '发型', '3', '', '', '0', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '', '', '', '0.00');
INSERT INTO `t_checkrecord` VALUES ('29', '4', '00000005', '发型', '4', '', '', '0', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '', '', '', '0.00');
INSERT INTO `t_checkrecord` VALUES ('30', '4', '00000005', '发型', '5', '', '', '0', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '', '', '', '0.00');
INSERT INTO `t_checkrecord` VALUES ('31', '4', '00000005', '发型', '6', '', '', '0', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '', '', '', '0.00');
INSERT INTO `t_checkrecord` VALUES ('32', '4', '00000005', '发型', '1', '', '', '0', '', '', null, null, '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '', '', '', '', '', '0.00');

-- ----------------------------
-- Table structure for t_company
-- ----------------------------
DROP TABLE IF EXISTS `t_company`;
CREATE TABLE `t_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `fullname` varchar(100) NOT NULL,
  `shortname` varchar(50) NOT NULL,
  `generallevel` varchar(45) DEFAULT NULL,
  `creditlevel` varchar(45) DEFAULT NULL,
  `requiredlevel` varchar(45) DEFAULT NULL,
  `managestandard` varchar(45) DEFAULT NULL,
  `activelevel` varchar(45) DEFAULT NULL,
  `loyalty` varchar(45) DEFAULT NULL,
  `products` varchar(45) DEFAULT NULL,
  `salesmancode` varchar(45) DEFAULT NULL,
  `salesman` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `nature` varchar(45) DEFAULT NULL,
  `manageprojects` varchar(45) DEFAULT NULL,
  `registermoney` varchar(45) DEFAULT NULL,
  `registertime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `personnumber` int(11) DEFAULT '1',
  `zipcode` varchar(45) DEFAULT NULL,
  `fox` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `linkmancode` varchar(45) DEFAULT NULL,
  `linkman` varchar(45) DEFAULT NULL,
  `currentlink` varchar(45) DEFAULT NULL,
  `currentweekestimate` varchar(45) DEFAULT NULL,
  `currentmonthestimate` varchar(45) DEFAULT NULL,
  `nextlinkdate` timestamp NULL DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `validate` smallint(2) DEFAULT '1',
  `modifyman` varchar(45) NOT NULL,
  `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createman` varchar(45) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isdelete` smallint(6) NOT NULL DEFAULT '0',
  `fatures` smallint(6) DEFAULT '0' COMMENT '是否需要期货',
  `bank` varchar(45) DEFAULT NULL,
  `account` varchar(45) DEFAULT NULL,
  `threecard` varchar(45) DEFAULT NULL,
  `type_customer` varchar(45) DEFAULT '0',
  `type_suppliers` varchar(45) DEFAULT '0',
  `type_quote` varchar(45) DEFAULT '0',
  `type_merchants` varchar(45) DEFAULT '0',
  `type_goods` varchar(45) DEFAULT '0',
  `type_agents` varchar(45) DEFAULT '0',
  `estimatepurchasetime` varchar(45) DEFAULT NULL COMMENT '预计购买时间',
  `customerproperty` varchar(45) DEFAULT NULL,
  `customergroup` varchar(45) DEFAULT NULL COMMENT '客户分组',
  `cashdeposit` varchar(100) DEFAULT NULL COMMENT '保证金比例',
  `paymethod` varchar(100) DEFAULT NULL COMMENT '付款方式',
  `competitors` varchar(100) DEFAULT NULL COMMENT '竞争对手',
  `requiredproduct` varchar(100) DEFAULT NULL COMMENT '品质规格',
  `registerman` varchar(10) DEFAULT NULL COMMENT '法人代表',
  `cooperation` varchar(45) DEFAULT NULL COMMENT '合作认识',
  `province` varchar(45) DEFAULT NULL COMMENT '省份',
  `zone` varchar(100) DEFAULT NULL COMMENT '地区',
  `productrequire` varchar(45) DEFAULT NULL COMMENT '品像要求',
  `freight` decimal(6,2) DEFAULT '0.00' COMMENT '运费',
  `tare` decimal(8,3) DEFAULT '0.000' COMMENT '扣袋皮重量',
  `yearSale` varchar(255) DEFAULT '' COMMENT '年销售量',
  `productgoods` varchar(255) DEFAULT NULL COMMENT '生产商品',
  `yearproduct` varchar(255) DEFAULT NULL COMMENT '年生产量',
  `supportproduct` varchar(255) DEFAULT NULL COMMENT '供应商品',
  `yearsupport` varchar(255) DEFAULT NULL COMMENT '年供应量',
  `cashdate` varchar(255) DEFAULT NULL COMMENT '保证金打款时间',
  `cashmethod` varchar(255) DEFAULT NULL COMMENT '收款方式',
  `agentfeerate` varchar(255) DEFAULT NULL COMMENT '代理费单价费率',
  `issuingfeerate` varchar(255) DEFAULT NULL COMMENT '开证费单价费率',
  `billperiod` int(11) DEFAULT '0' COMMENT '帐期天数',
  `passfeerate` varchar(255) DEFAULT NULL COMMENT '通关费单价费率',
  `storageday1` varchar(255) DEFAULT NULL,
  `storagefee1` decimal(8,2) DEFAULT NULL COMMENT '堆存费1',
  `storageday2` varchar(255) DEFAULT NULL,
  `storagefee2` decimal(8,2) DEFAULT NULL,
  `storageday3` varchar(255) DEFAULT NULL,
  `storagefee3` decimal(8,2) DEFAULT NULL,
  `storageday4` varchar(255) DEFAULT NULL,
  `storagefee4` decimal(8,2) DEFAULT NULL,
  `storageday5` varchar(255) DEFAULT NULL,
  `storagefee5` decimal(8,2) DEFAULT NULL,
  `freight1` decimal(8,2) DEFAULT NULL COMMENT '运费1',
  `freight2` decimal(8,2) DEFAULT NULL,
  `freight3` decimal(8,2) DEFAULT NULL,
  `freight4` decimal(8,2) DEFAULT NULL,
  `freight5` decimal(8,2) DEFAULT NULL,
  `freight6` decimal(8,2) DEFAULT NULL,
  `paydays` int(6) DEFAULT NULL COMMENT '付款时间',
  `requiregoods` varchar(255) DEFAULT NULL COMMENT '需求商品',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='往来单位';

-- ----------------------------
-- Records of t_company
-- ----------------------------
INSERT INTO `t_company` VALUES ('1', '000001', '客户', '杭州市景芳', '景芳', '五星', '二星', '二星', '三星', '三星', '三星', '禽料', '6', '管理员', '', '杭州市江干区凯旋街道景芳四区', '', 'DDGS', '', '2015-05-17 17:51:02', '0', '', '057189093456', 'www.jxdong.com', '00000001', '金向东', '2015-06-13 21:53:51', '4.43', '564', '2015-06-13 21:53:51', '', '1', 'admin', '2015-07-31 13:20:22', 'admin', '2015-05-17 17:51:18', '0', '1', '', '', '', '1', '0', '0', '0', '0', '0', '2015-06-13 21:53:50', '地方贸易商', '', '', 'TT付款', '热播 而额我人', '台湾级', '金向东', '普通量小', '浙江', '杭州', '', '46.00', '46.000', '', null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_company` VALUES ('2', '000002', '客户', '上海正东饲料有限公司', '上海正东', '一星', '', '', '', '', '', '虾料', '6', '管理员', '', '上海浦东区', '国企', '', '', '2015-05-23 11:24:47', '0', '', '02145344353', '', '', '', '2015-06-07 12:34:11', '', '', '2015-06-07 12:34:11', '', '1', 'admin', '2015-05-23 11:25:46', 'admin', '2015-05-23 11:25:46', '0', '0', '', '', '', '1', '0', '0', '0', '0', '0', '2015-06-07 12:34:10', '地方贸易商', '', '', '', '大水法', '台湾级', '', '', '', '', '热管铁丝网', '98.00', '55.000', '', null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_company` VALUES ('3', '000003', '供应商', '杭州市通策会', '通策会', '', '', '', '', '', '', '', '6', '管理员', '', '', '', '', '', '2015-05-25 08:51:30', '0', '', '', '', '', '', '2015-06-13 22:22:24', '', '', '2015-06-13 22:22:24', '', '1', 'admin', '2015-05-25 08:51:58', 'admin', '2015-05-25 08:51:58', '0', '0', '', '', '', '0', '1', '0', '0', '0', '0', '2015-06-13 22:22:24', '', '', '', '', '', '', '', '', '', '', '', '0.00', '0.000', '', null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_company` VALUES ('4', '000004', '客户', '杭州火图科技', '火图', '', '', '', '', '', '', '', '6', '管理员', '', '', '', '', '', '2015-06-13 22:01:23', '0', '', '', '', null, null, '2016-09-19 18:56:43', '', '', '2016-09-19 18:56:43', '', '1', 'admin', '2015-06-13 22:01:47', 'admin', '2015-06-13 22:01:47', '0', '0', '', '', null, '1', '0', '0', '0', '0', '0', '2016-09-19 18:56:43', '', '', '', '', '', '', '', '', '', '', '', '0.00', '0.000', '', null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_company` VALUES ('5', '000005', '客户', '杭州思达电子科技有限公司', '思达电子', '', '', '', '', '', '', '', '6', '管理员', '', '', '', '', '', '2015-06-21 10:12:51', '0', '', '', '', '', '', '', '11', '23', '2015-06-21 10:12:51', '', '1', 'admin', '2015-09-14 12:17:52', 'admin', '2015-06-21 10:13:21', '0', '0', '', '', '', '1', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '0.000', '', '', '', '', '', '', '', '', '', '0', '', '', null, '', null, '', null, '', null, '', null, null, null, null, null, null, null, null, '');
INSERT INTO `t_company` VALUES ('6', '000006', '客户', '杭州万事利', '万事利', '', '', '', '', '', '', '', '6', '管理员', '', '', '', '', '', '2015-06-28 14:23:36', '0', '', '', '', '00000006', '图书', '', '', '', '2015-06-28 14:23:36', '', '1', 'admin', '2015-06-28 14:24:15', 'admin', '2015-06-28 14:24:15', '0', '0', '', '', null, '1', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '0.000', '', null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_company` VALUES ('7', '000007', '客户', '杭州青春宝公司', '杭州青春宝', '', '', '', '', '', '', '', '6', '管理员', '', '', '', '', '', '2015-06-28 15:06:03', '0', '', '', '', null, null, '', '', '', '2015-06-28 15:06:03', '', '1', 'admin', '2015-06-28 15:06:10', 'admin', '2015-06-28 15:06:10', '0', '0', '', '', null, '1', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '0.000', '', null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for t_contract
-- ----------------------------
DROP TABLE IF EXISTS `t_contract`;
CREATE TABLE `t_contract` (
  `contractid` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(255) NOT NULL DEFAULT '1' COMMENT '合同类型',
  `contractno` varchar(45) NOT NULL COMMENT '合同号',
  `signdate` varchar(45) DEFAULT NULL COMMENT '签约日期',
  `signaddress` varchar(255) DEFAULT NULL COMMENT '签约地点',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总金额',
  `yifangcode` varchar(45) DEFAULT NULL COMMENT '买方',
  `yifang` varchar(255) DEFAULT NULL,
  `yiduanzhuang` varchar(100) DEFAULT NULL COMMENT '溢短装',
  `check1` varchar(255) DEFAULT NULL COMMENT '验收方式1',
  `check2` varchar(255) DEFAULT NULL COMMENT '验收方式2',
  `check3` varchar(255) DEFAULT NULL COMMENT '验收方式3',
  `deliverytime` varchar(100) DEFAULT NULL COMMENT '提货时间',
  `address` varchar(255) DEFAULT NULL COMMENT '交货地点',
  `package` varchar(255) DEFAULT NULL COMMENT '包装',
  `date1` varchar(255) DEFAULT NULL,
  `date2` varchar(255) DEFAULT NULL,
  `date3` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL COMMENT '卖方收款行',
  `bankaccount` varchar(255) DEFAULT NULL COMMENT '卖方收款账号',
  `resolve` varchar(255) DEFAULT NULL COMMENT '争议解决方式',
  `time1` varchar(45) DEFAULT NULL,
  `time2` varchar(45) DEFAULT NULL,
  `time3` varchar(45) DEFAULT NULL,
  `time4` varchar(45) DEFAULT NULL,
  `maifangcode` varchar(45) DEFAULT NULL,
  `maifang` varchar(255) DEFAULT NULL,
  `maifangaddress` varchar(255) DEFAULT NULL,
  `maifangtelephone` varchar(255) DEFAULT NULL,
  `maifangfox` varchar(255) DEFAULT NULL,
  `yifangaddress` varchar(255) DEFAULT NULL,
  `yifangtelephone` varchar(255) DEFAULT NULL,
  `yifangfox` varchar(255) DEFAULT NULL,
  `salemanid` int(11) DEFAULT '0' COMMENT ' 业务员id',
  `saleman` varchar(255) DEFAULT NULL COMMENT ' 业务员',
  `status` int(2) DEFAULT '0' COMMENT '合同状态',
  PRIMARY KEY (`contractid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='合同表';

-- ----------------------------
-- Records of t_contract
-- ----------------------------
INSERT INTO `t_contract` VALUES ('6', '1', '15050005', 'YYYY/05/DD', '', '0.00', '000001', '杭州市景芳', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '000002', '上海正东饲料有限公司', '上海浦东区', '02145344353', '02145344353', '杭州市江干区凯旋街道景芳四区', '057189093456', '057189093456', '6', 'admin', '4');
INSERT INTO `t_contract` VALUES ('7', '1', '15050006', '2015/05/23', '杭州', '0.00', '000001', '杭州市景芳', '44', '55', '', '', '66', '77', '88', '99', '10', '11', '12', '', '', '13', '14', '15', '16', '000002', '上海正东饲料有限公司', '上海浦东区', '02145344353', '02145344353', '杭州市江干区凯旋街道景芳四区', '057189093456', '057189093456', '6', 'admin', '4');
INSERT INTO `t_contract` VALUES ('8', '2', '15050007', '2015/05/23', '', '0.00', '000001', '杭州市景芳', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '000002', '上海正东饲料有限公司', '上海浦东区', '02145344353', '02145344353', '杭州市江干区凯旋街道景芳四区', '057189093456', '057189093456', '0', 'jxd', '0');
INSERT INTO `t_contract` VALUES ('9', '2', 'ZD15050008', '2015/05/23', '北京', '0.00', '000001', '杭州市景芳', '+6', '7', '8', '9', '11', '10', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '000002', '上海正东饲料有限公司', '上海浦东区22', '02145344353，23424242', '02145344353，2343242', '杭州市江干区凯旋街道景芳四区', '057189093456', '057189093456', '0', 'jxd', '0');
INSERT INTO `t_contract` VALUES ('11', '3', 'ZD15050010', '2015/05/23', '如果爱', '0.00', '000001', '杭州市景芳', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '000002', '上海正东饲料有限公司', '上海浦东区', '02145344353', '02145344353', '杭州市江干区凯旋街道景芳四区', '057189093456', '057189093456', '0', 'jxd', '0');
INSERT INTO `t_contract` VALUES ('12', '2', 'ZD15050011', '2015/05/23', '', '0.00', '000001', '杭州市景芳', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '000002', '上海正东饲料有限公司', '上海浦东区', '02145344353', '02145344353', '杭州市江干区凯旋街道景芳四区', '057189093456', '057189093456', '0', 'jxd', '0');
INSERT INTO `t_contract` VALUES ('13', '1', 'ZD15050012', '2015/05/23', '是大概', '0.00', '000001', '杭州市景芳', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '000002', '上海正东饲料有限公司', '上海浦东区', '02145344353', '02145344353', '杭州市江干区凯旋街道景芳四区', '057189093456', '057189093456', '6', 'admin', '0');
INSERT INTO `t_contract` VALUES ('14', '1', 'ZD15050013', '2015/05/26', '算法', '0.00', '000003', '杭州市通策会', '', '', null, null, '', '', '', '', '', '', '', null, null, '', '', '', '', '000002', '上海正东饲料有限公司', '上海浦东区', '02145344353', '02145344353', '', '', '', '6', 'admin', '0');

-- ----------------------------
-- Table structure for t_contractdetail
-- ----------------------------
DROP TABLE IF EXISTS `t_contractdetail`;
CREATE TABLE `t_contractdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contractid` int(11) NOT NULL,
  `no` int(11) DEFAULT NULL COMMENT '序号',
  `productid` int(11) DEFAULT NULL,
  `productno` varchar(45) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `specification` varchar(255) DEFAULT NULL,
  `weight` decimal(8,3) DEFAULT '0.000' COMMENT ' 重量',
  `quantity` int(6) DEFAULT '0' COMMENT '数量',
  `unitprice` decimal(10,2) DEFAULT '0.00' COMMENT '单价',
  `money` decimal(10,2) DEFAULT '0.00' COMMENT '总金额',
  `getweight` decimal(8,3) DEFAULT '0.000' COMMENT '已经提取的重量',
  `getquantity` int(6) DEFAULT '0' COMMENT ' 已经提取的数量',
  `isfinished` tinyint(2) DEFAULT '0' COMMENT '是否提完',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_contractdetail
-- ----------------------------
INSERT INTO `t_contractdetail` VALUES ('12', '6', '1', '0', '', '大同', null, '21.000', '1', '12.00', '252.00', '8.000', '4', '0');
INSERT INTO `t_contractdetail` VALUES ('13', '14', '1', '0', '', '泌乳', null, '0.000', '23', '32.00', '0.00', '0.000', '0', '0');
INSERT INTO `t_contractdetail` VALUES ('14', '8', '1', '0', '', '发型', null, '2.000', '2', '2.00', '4.00', '2.000', '0', '0');
INSERT INTO `t_contractdetail` VALUES ('15', '7', '1', '0', '', '泌乳', null, '100.000', '100', '0.00', '0.00', '100.000', '8', '0');
INSERT INTO `t_contractdetail` VALUES ('16', '7', '2', '0', '', '天高', null, '0.000', '0', '0.00', '0.00', '0.000', '0', '0');
INSERT INTO `t_contractdetail` VALUES ('17', '7', '3', '0', '', '古巴', null, '0.000', '0', '0.00', '0.00', '0.000', '0', '0');
INSERT INTO `t_contractdetail` VALUES ('18', '13', '1', '0', '', '发型', null, '10.000', '0', '0.00', '0.00', '0.000', '0', '0');
INSERT INTO `t_contractdetail` VALUES ('19', '11', '1', '0', '', '泌乳', null, '10.000', '10', '0.00', '0.00', '10.000', '10', '0');

-- ----------------------------
-- Table structure for t_contractproduct
-- ----------------------------
DROP TABLE IF EXISTS `t_contractproduct`;
CREATE TABLE `t_contractproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) DEFAULT NULL,
  `contractid` int(11) DEFAULT NULL,
  `contractdetailid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_contractproduct
-- ----------------------------
INSERT INTO `t_contractproduct` VALUES ('3', '9', '6', '12');
INSERT INTO `t_contractproduct` VALUES ('9', '6', '6', '12');
INSERT INTO `t_contractproduct` VALUES ('10', '8', '6', '12');
INSERT INTO `t_contractproduct` VALUES ('16', '2', '7', '15');
INSERT INTO `t_contractproduct` VALUES ('17', '8', '13', '18');
INSERT INTO `t_contractproduct` VALUES ('18', '7', '13', '18');
INSERT INTO `t_contractproduct` VALUES ('19', '12', '11', '19');
INSERT INTO `t_contractproduct` VALUES ('20', '11', '11', '19');
INSERT INTO `t_contractproduct` VALUES ('21', '15', '8', '14');

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL COMMENT '联系人编号',
  `name` varchar(50) NOT NULL COMMENT '联系人',
  `currentlinkDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `telephone` varchar(45) DEFAULT NULL COMMENT '电话',
  `phone1` varchar(45) DEFAULT NULL COMMENT '手机1',
  `phone2` varchar(45) DEFAULT NULL COMMENT '手机2',
  `phone3` varchar(45) DEFAULT NULL COMMENT '收件3',
  `post` varchar(45) DEFAULT NULL COMMENT '职务',
  `department` varchar(45) DEFAULT NULL COMMENT '部门',
  `email` varchar(45) DEFAULT NULL,
  `qq` varchar(45) DEFAULT NULL,
  `weixin` varchar(45) DEFAULT NULL,
  `nextcallrecordid` int(11) DEFAULT NULL,
  `nextlinkdate` timestamp NULL DEFAULT NULL,
  `validate` smallint(6) DEFAULT '1',
  `remark` varchar(200) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createman` varchar(45) DEFAULT NULL,
  `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifyman` varchar(45) DEFAULT NULL,
  `isdelete` smallint(6) DEFAULT '0',
  `flag` tinyint(2) DEFAULT '0' COMMENT '标记是否主联系人',
  `homeaddress` varchar(255) DEFAULT NULL COMMENT '家庭地址',
  `officeaddress` varchar(255) DEFAULT NULL COMMENT '办公地址',
  `sex` varchar(8) DEFAULT '男' COMMENT '性别',
  `headpictureid` int(9) NOT NULL DEFAULT '0' COMMENT '名片id',
  `fox` varchar(255) DEFAULT NULL COMMENT '传真',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_customer_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='联系人';

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES ('1', '00000001', '金向东', '2015-06-13 21:53:51', '057188983412', '13757193476', '444444', '555555555555', '工程师', null, 'jxdong1013@163.com', '51818549', 'jxdong1013', '8', '2015-06-13 21:53:51', '1', '百分比。', '000001', '2015-05-17 17:51:28', null, '2015-05-17 17:51:28', 'admin', '0', '1', null, '杭州地铁1号线金沙湖站', '男', '0', '0571889843534');
INSERT INTO `t_customer` VALUES ('2', '00000002', '金向东', '2015-05-17 19:20:58', '', '', '', '', '', null, '', '', '', '0', null, '1', '', '000001', '2015-05-17 19:21:16', null, '2015-05-17 19:21:16', 'admin', '0', '0', null, '', '男', '0', null);
INSERT INTO `t_customer` VALUES ('3', '00000003', '朱番禹', '2015-06-07 12:34:11', '05711', '22432423', '', '6666666', '', null, '', '', '', '7', '2015-06-07 12:34:11', '1', '', '000002', '2015-05-25 08:51:24', null, '2015-05-25 08:51:24', 'admin', '0', '1', null, '', '男', '0', '678900');
INSERT INTO `t_customer` VALUES ('4', '00000004', '吕建明', '2015-06-13 22:22:24', '', '', '', '', '', null, '', '', '', '12', '2015-06-13 22:22:24', '1', '', '000003', '2015-05-25 08:51:59', null, '2015-05-25 08:51:59', 'admin', '0', '1', null, '', '男', '0', null);
INSERT INTO `t_customer` VALUES ('5', '00000005', '杨', '2016-09-19 18:56:43', '', '', '', '', '', null, '', '', '', '15', '2016-09-19 18:56:43', '1', '', '000004', '2015-06-13 22:01:47', 'admin', '2015-06-13 22:01:47', 'admin', '0', '1', null, '', '男', '0', null);
INSERT INTO `t_customer` VALUES ('6', '00000006', '图书', '2015-06-28 14:24:16', '', '', '', '', '', null, '', '', '', '0', null, '1', '', '000006', '2015-06-28 14:24:16', null, '2015-06-28 14:24:16', 'admin', '0', '1', null, '', '男', '0', '');
INSERT INTO `t_customer` VALUES ('7', '00000007', '斯蒂芬', '2015-07-31 13:20:22', '', '', '', '', '', null, '', '', '', '0', null, '1', '', '000001', '2015-07-31 13:20:22', 'admin', '2015-07-31 13:20:22', 'admin', '0', '0', null, '', '男', '0', '');

-- ----------------------------
-- Table structure for t_customerofcompany
-- ----------------------------
DROP TABLE IF EXISTS `t_customerofcompany`;
CREATE TABLE `t_customerofcompany` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyid` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  PRIMARY KEY (`id`,`companyid`,`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='往来单位联系人关联表';

-- ----------------------------
-- Records of t_customerofcompany
-- ----------------------------
INSERT INTO `t_customerofcompany` VALUES ('1', '1', '1');
INSERT INTO `t_customerofcompany` VALUES ('3', '2', '3');
INSERT INTO `t_customerofcompany` VALUES ('4', '3', '4');
INSERT INTO `t_customerofcompany` VALUES ('5', '4', '5');
INSERT INTO `t_customerofcompany` VALUES ('6', '6', '6');
INSERT INTO `t_customerofcompany` VALUES ('7', '1', '7');

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pcode` varchar(45) NOT NULL,
  `isdelete` smallint(6) NOT NULL DEFAULT '0',
  `orderid` int(11) DEFAULT '0',
  `remark` varchar(100) DEFAULT NULL,
  `issystem` smallint(6) NOT NULL DEFAULT '0' COMMENT '0:系统数据\n1:业务数据',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pid` int(11) DEFAULT '0' COMMENT '父id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of t_dict
-- ----------------------------
INSERT INTO `t_dict` VALUES ('1', '一星', '优秀', '100', '0', '1', '啊飞 啊飞', '1', '2015-02-28 16:20:04', '2015-06-28 08:13:56', '0');
INSERT INTO `t_dict` VALUES ('2', '二星', '良好', '100', '0', '2', '', '1', '2015-02-28 16:20:04', '2015-04-01 10:21:12', '0');
INSERT INTO `t_dict` VALUES ('3', '三星', '及格', '100', '0', '3', '', '1', '2015-02-28 16:20:04', '2015-04-01 10:21:22', '0');
INSERT INTO `t_dict` VALUES ('4', '四星', '差评', '100', '0', '4', '', '1', '2015-02-28 16:20:04', '2015-04-01 10:21:40', '0');
INSERT INTO `t_dict` VALUES ('5', '五星', '低下', '100', '0', '5', '', '1', '2015-02-28 16:20:04', '2015-04-01 10:22:02', '0');
INSERT INTO `t_dict` VALUES ('9', '供应商', '供应商', '109', '0', '1', '', '1', '2015-03-03 15:28:29', '2015-03-20 10:56:52', '0');
INSERT INTO `t_dict` VALUES ('10', '代理商', '代理商', '109', '0', '2', '', '1', '2015-03-03 15:28:46', '2015-03-20 10:57:05', '0');
INSERT INTO `t_dict` VALUES ('11', '客户', '客户', '109', '0', '3', '', '1', '2015-03-03 15:28:55', '2015-03-03 15:28:55', '0');
INSERT INTO `t_dict` VALUES ('12', ' 一星', '骗子', '101', '0', '1', '', '1', '2015-03-03 15:40:36', '2015-03-03 15:43:38', '0');
INSERT INTO `t_dict` VALUES ('13', '二星', '不守信', '101', '0', '2', '', '1', '2015-03-03 15:40:44', '2015-03-03 15:51:56', '0');
INSERT INTO `t_dict` VALUES ('14', '三星', '正常', '101', '0', '3', '', '1', '2015-03-03 15:52:12', '2015-03-03 15:52:12', '0');
INSERT INTO `t_dict` VALUES ('15', '四星', '守信', '101', '0', '4', '', '1', '2015-03-03 15:52:41', '2015-03-03 15:53:12', '0');
INSERT INTO `t_dict` VALUES ('16', '五星', '优秀', '101', '0', '5', '', '1', '2015-03-03 15:52:55', '2015-03-03 15:53:05', '0');
INSERT INTO `t_dict` VALUES ('17', '一星', '休眠', '104', '0', '1', '', '1', '2015-03-03 17:27:49', '2015-04-06 17:52:35', '0');
INSERT INTO `t_dict` VALUES ('18', '二星', '投机', '104', '0', '2', '', '1', '2015-03-03 17:27:59', '2015-04-06 17:52:24', '0');
INSERT INTO `t_dict` VALUES ('19', '鱼粉', '鱼粉', '108', '0', '1', '', '1', '2015-03-03 17:28:19', '2015-04-06 17:57:22', '0');
INSERT INTO `t_dict` VALUES ('20', '一星', '不可控', '105', '0', '1', '', '1', '2015-03-03 17:43:42', '2015-04-06 17:50:47', '0');
INSERT INTO `t_dict` VALUES ('21', '一星', '不稳定', '102', '0', '5', '', '1', '2015-03-03 17:44:20', '2015-04-01 10:36:20', '0');
INSERT INTO `t_dict` VALUES ('22', '猪料', '猪料', '106', '0', '1', '', '1', '2015-03-03 17:44:25', '2015-04-06 17:55:44', '0');
INSERT INTO `t_dict` VALUES ('23', '一星', '混乱', '103', '0', '1', '', '1', '2015-03-03 17:44:48', '2015-04-06 17:48:14', '0');
INSERT INTO `t_dict` VALUES ('24', '国企', '国企', '107', '0', '1', '', '1', '2015-03-16 13:46:18', '2015-03-16 13:46:18', '0');
INSERT INTO `t_dict` VALUES ('25', '私企', '私企', '107', '0', '2', '', '1', '2015-03-16 13:46:37', '2015-03-16 13:46:37', '0');
INSERT INTO `t_dict` VALUES ('26', '外企', '外企', '107', '0', '3', '', '1', '2015-03-16 13:47:07', '2015-03-16 13:47:07', '0');
INSERT INTO `t_dict` VALUES ('27', '港资', '港资', '107', '0', '4', '', '1', '2015-03-16 13:47:28', '2015-03-16 13:47:28', '0');
INSERT INTO `t_dict` VALUES ('28', '台资', '台资', '107', '0', '5', '', '1', '2015-03-16 13:47:42', '2015-03-16 13:47:42', '0');
INSERT INTO `t_dict` VALUES ('30', '英国', '英国大不列颠岛', '200', '0', '1', '', '0', '2015-03-20 09:26:14', '2015-06-20 08:54:48', '0');
INSERT INTO `t_dict` VALUES ('31', '中国', '中国', '200', '0', '2', '', '0', '2015-03-20 09:26:23', '2015-03-20 09:26:23', '0');
INSERT INTO `t_dict` VALUES ('32', '美国', '美国', '200', '0', '3', '', '0', '2015-03-20 09:26:32', '2015-03-20 09:26:32', '0');
INSERT INTO `t_dict` VALUES ('33', '报盘商', '报盘商', '109', '0', '4', '', '1', '2015-03-20 10:57:27', '2015-03-20 10:57:34', '0');
INSERT INTO `t_dict` VALUES ('34', '货代商', '货代商', '109', '0', '5', '', '1', '2015-03-20 10:57:50', '2015-03-20 10:57:50', '0');
INSERT INTO `t_dict` VALUES ('35', '贸易商', '贸易商', '109', '0', '6', '', '1', '2015-03-20 10:58:11', '2015-03-20 10:58:11', '0');
INSERT INTO `t_dict` VALUES ('36', '一等', '一等品', '201', '0', '1', '', '0', '2015-03-21 09:28:59', '2015-06-20 08:55:43', '0');
INSERT INTO `t_dict` VALUES ('37', '二等', '二等', '201', '0', '2', '', '0', '2015-03-21 09:29:13', '2015-03-21 09:29:13', '0');
INSERT INTO `t_dict` VALUES ('38', '三等', '三等', '201', '0', '3', '', '0', '2015-03-21 09:29:29', '2015-03-21 09:29:29', '0');
INSERT INTO `t_dict` VALUES ('39', '进口', '进口鱼粉', '202', '0', '1', '', '0', '2015-03-21 09:29:51', '2015-06-20 08:56:14', '0');
INSERT INTO `t_dict` VALUES ('40', '合资', '合资', '202', '0', '2', '', '0', '2015-03-21 09:30:03', '2015-03-21 09:30:03', '0');
INSERT INTO `t_dict` VALUES ('41', '原装', '原装', '203', '0', '1', '', '0', '2015-03-21 09:30:20', '2015-03-21 09:30:20', '0');
INSERT INTO `t_dict` VALUES ('42', '组装', '组装', '203', '0', '2', '', '0', '2015-03-21 09:30:41', '2015-03-21 09:30:41', '0');
INSERT INTO `t_dict` VALUES ('43', '蛋白', '蛋白', '204', '0', '1', '', '0', '2015-03-21 09:31:02', '2015-03-21 09:31:02', '0');
INSERT INTO `t_dict` VALUES ('44', 'TVN', 'TVN', '204', '0', '2', '', '0', '2015-03-21 09:31:13', '2015-03-21 09:31:13', '0');
INSERT INTO `t_dict` VALUES ('45', '灰份', '灰份', '204', '0', '3', '', '0', '2015-03-21 09:32:07', '2015-03-21 09:32:07', '0');
INSERT INTO `t_dict` VALUES ('46', '沙和盐', '沙和盐', '204', '0', '4', '', '0', '2015-03-21 09:32:32', '2015-03-21 09:32:32', '0');
INSERT INTO `t_dict` VALUES ('47', '组胺', '组胺', '204', '0', '5', '', '0', '2015-03-21 09:32:51', '2015-03-21 09:32:51', '0');
INSERT INTO `t_dict` VALUES ('48', 'FFA', 'FFA', '204', '0', '6', '', '0', '2015-03-21 09:33:03', '2015-03-21 09:33:03', '0');
INSERT INTO `t_dict` VALUES ('49', '脂肪', '脂肪', '204', '0', '7', '', '0', '2015-03-21 09:33:18', '2015-03-21 09:33:18', '0');
INSERT INTO `t_dict` VALUES ('50', '水份', '水份', '204', '0', '8', '', '0', '2015-03-21 09:33:36', '2015-03-21 09:33:47', '0');
INSERT INTO `t_dict` VALUES ('51', '沙', '沙', '204', '0', '9', '', '0', '2015-03-21 09:33:57', '2015-03-21 09:33:57', '0');
INSERT INTO `t_dict` VALUES ('52', '耐克', '耐克', '205', '0', '1', '', '0', '2015-03-21 11:55:05', '2015-03-21 11:55:05', '0');
INSERT INTO `t_dict` VALUES ('53', '阿迪达斯', '阿迪达斯', '205', '0', '1', '', '0', '2015-03-21 11:55:16', '2015-03-21 11:55:16', '0');
INSERT INTO `t_dict` VALUES ('54', '李宁', '李宁', '205', '0', '3', '', '0', '2015-03-21 11:55:33', '2015-03-21 11:55:33', '0');
INSERT INTO `t_dict` VALUES ('55', '浙江杭州', '浙江杭州', '206', '0', '1', '', '0', '2015-03-21 11:55:48', '2015-03-21 11:55:48', '0');
INSERT INTO `t_dict` VALUES ('56', '东阳', '东阳', '206', '0', '2', '', '0', '2015-03-21 11:56:05', '2015-03-21 11:56:05', '0');
INSERT INTO `t_dict` VALUES ('57', '西伯利亚', '西伯利亚', '206', '0', '3', '', '0', '2015-03-21 11:56:19', '2015-03-21 11:56:19', '0');
INSERT INTO `t_dict` VALUES ('58', '优良', '优良', '208', '0', '1', '', '0', '2015-03-21 11:56:38', '2015-03-21 11:56:38', '0');
INSERT INTO `t_dict` VALUES ('59', '次品', '次品', '208', '0', '2', '', '0', '2015-03-21 11:56:55', '2015-03-21 11:56:55', '0');
INSERT INTO `t_dict` VALUES ('60', '极品', '极品', '208', '0', '3', '', '0', '2015-03-21 11:57:07', '2015-03-21 11:57:07', '0');
INSERT INTO `t_dict` VALUES ('67', '二星', '没量', '102', '0', '4', '', '1', '2015-04-01 10:34:13', '2015-04-01 10:36:17', '0');
INSERT INTO `t_dict` VALUES ('68', '三星', '一般', '102', '0', '3', '', '1', '2015-04-01 10:34:31', '2015-04-01 10:34:31', '0');
INSERT INTO `t_dict` VALUES ('69', '四星', '量多', '102', '0', '2', '', '1', '2015-04-01 10:35:28', '2015-04-01 10:36:12', '0');
INSERT INTO `t_dict` VALUES ('70', '五星', '量大', '102', '0', '1', '', '1', '2015-04-01 10:35:59', '2015-04-01 10:35:59', '0');
INSERT INTO `t_dict` VALUES ('71', '赖氨酸', '赖氨酸', '204', '0', '10', '', '0', '2015-04-03 17:05:20', '2015-04-03 17:05:38', '0');
INSERT INTO `t_dict` VALUES ('72', '即期信用证', '即期信用证', '111', '0', '1', '', '1', '2015-04-06 17:41:50', '2015-04-06 17:41:50', '0');
INSERT INTO `t_dict` VALUES ('73', 'TT付款', 'TT付款', '111', '0', '2', '', '1', '2015-04-06 17:42:14', '2015-04-06 17:42:14', '0');
INSERT INTO `t_dict` VALUES ('74', '远期信用证3个月', '远期信用证3个月', '111', '0', '3', '', '1', '2015-04-06 17:42:33', '2015-04-06 17:42:33', '0');
INSERT INTO `t_dict` VALUES ('75', '远期信用证6个月', '远期信用证6个月', '111', '0', '4', '', '1', '2015-04-06 17:42:48', '2015-04-06 17:42:48', '0');
INSERT INTO `t_dict` VALUES ('76', '超级', '超级', '112', '0', '1', '', '1', '2015-04-06 17:43:29', '2015-04-06 17:43:29', '0');
INSERT INTO `t_dict` VALUES ('77', '日本级', '日本级', '112', '0', '2', '', '1', '2015-04-06 17:43:52', '2015-04-06 17:43:52', '0');
INSERT INTO `t_dict` VALUES ('78', '台湾级', '台湾级', '112', '0', '3', '', '1', '2015-04-06 17:44:10', '2015-04-06 17:44:10', '0');
INSERT INTO `t_dict` VALUES ('79', '泰国级', '泰国级', '112', '0', '4', '', '1', '2015-04-06 17:44:33', '2015-04-06 17:44:33', '0');
INSERT INTO `t_dict` VALUES ('80', '普通', '普通', '112', '0', '5', '', '1', '2015-04-06 17:44:50', '2015-04-06 17:44:50', '0');
INSERT INTO `t_dict` VALUES ('81', '杂牌', '杂牌', '112', '0', '6', '', '1', '2015-04-06 17:45:08', '2015-04-06 17:45:08', '0');
INSERT INTO `t_dict` VALUES ('82', '美国', '美国', '112', '0', '7', '', '1', '2015-04-06 17:45:28', '2015-04-06 17:45:28', '0');
INSERT INTO `t_dict` VALUES ('83', '泰国', '泰国', '112', '0', '8', '', '1', '2015-04-06 17:45:44', '2015-04-06 17:45:44', '0');
INSERT INTO `t_dict` VALUES ('84', '终瑞客户', '终瑞客户', '110', '0', '1', '', '1', '2015-04-06 17:46:39', '2015-04-06 17:46:39', '0');
INSERT INTO `t_dict` VALUES ('85', '地方贸易商', '地方贸易商', '110', '0', '2', '', '1', '2015-04-06 17:46:56', '2015-04-06 17:46:56', '0');
INSERT INTO `t_dict` VALUES ('86', '港口贸易商', '港口贸易商', '110', '0', '3', '', '1', '2015-04-06 17:47:03', '2015-04-06 17:47:03', '0');
INSERT INTO `t_dict` VALUES ('87', '二星', '不标准', '103', '0', '2', '', '1', '2015-04-06 17:48:32', '2015-04-06 17:48:32', '0');
INSERT INTO `t_dict` VALUES ('88', '三星', '一般', '103', '0', '3', '', '1', '2015-04-06 17:48:46', '2015-04-06 17:48:46', '0');
INSERT INTO `t_dict` VALUES ('89', '四星', '较标准', '103', '0', '4', '', '1', '2015-04-06 17:49:06', '2015-04-06 17:49:06', '0');
INSERT INTO `t_dict` VALUES ('90', '五星', '很标准', '103', '0', '5', '', '1', '2015-04-06 17:49:17', '2015-04-06 17:49:17', '0');
INSERT INTO `t_dict` VALUES ('91', '二星', '难做', '105', '0', '2', '', '1', '2015-04-06 17:51:03', '2015-04-06 17:51:03', '0');
INSERT INTO `t_dict` VALUES ('92', '三星', '一般', '105', '0', '3', '', '1', '2015-04-06 17:51:18', '2015-04-06 17:51:18', '0');
INSERT INTO `t_dict` VALUES ('93', '四星', '较忠诚', '105', '0', '4', '', '1', '2015-04-06 17:51:37', '2015-04-06 17:51:37', '0');
INSERT INTO `t_dict` VALUES ('94', '五星', '很忠诚', '105', '0', '5', '', '1', '2015-04-06 17:51:49', '2015-04-06 17:51:49', '0');
INSERT INTO `t_dict` VALUES ('95', '三星', '一般', '104', '0', '3', '', '1', '2015-04-06 17:52:51', '2015-04-06 17:52:51', '0');
INSERT INTO `t_dict` VALUES ('96', '四星', '较活跃', '104', '0', '4', '', '1', '2015-04-06 17:53:10', '2015-04-06 17:53:10', '0');
INSERT INTO `t_dict` VALUES ('97', '五星', '很活跃', '104', '0', '5', '', '1', '2015-04-06 17:54:15', '2015-04-06 17:54:15', '0');
INSERT INTO `t_dict` VALUES ('98', '鱼料', '鱼料', '106', '0', '2', '', '1', '2015-04-06 17:55:37', '2015-04-06 17:55:37', '0');
INSERT INTO `t_dict` VALUES ('99', '虾料', '虾料', '106', '0', '3', '', '1', '2015-04-06 17:55:56', '2015-04-06 17:55:56', '0');
INSERT INTO `t_dict` VALUES ('100', '禽料', '禽料', '106', '0', '4', '', '1', '2015-04-06 17:56:18', '2015-04-06 17:56:18', '0');
INSERT INTO `t_dict` VALUES ('101', '特水', '特水', '106', '0', '5', '', '1', '2015-04-06 17:56:29', '2015-04-06 17:56:29', '0');
INSERT INTO `t_dict` VALUES ('102', '特种', '特种', '106', '0', '6', '', '1', '2015-04-06 17:56:39', '2015-04-06 17:56:39', '0');
INSERT INTO `t_dict` VALUES ('103', '乳清粉', '乳清粉', '108', '0', '2', '', '1', '2015-04-06 17:57:48', '2015-04-06 17:57:48', '0');
INSERT INTO `t_dict` VALUES ('104', 'DDGS', 'DDGS', '108', '0', '3', '', '1', '2015-04-06 17:58:12', '2015-04-06 17:58:12', '0');
INSERT INTO `t_dict` VALUES ('105', '菜粨', '菜粨', '108', '0', '4', '', '1', '2015-04-06 18:00:00', '2015-04-06 18:00:00', '0');
INSERT INTO `t_dict` VALUES ('106', '豆粨', '豆粨', '108', '0', '5', '', '1', '2015-04-06 18:00:19', '2015-04-06 18:00:19', '0');
INSERT INTO `t_dict` VALUES ('107', '肉骨粉', '肉骨粉', '108', '0', '6', '', '1', '2015-04-06 18:00:40', '2015-04-06 18:00:40', '0');
INSERT INTO `t_dict` VALUES ('108', '鸡肉粉', '鸡肉粉', '108', '0', '7', '', '1', '2015-04-06 18:01:01', '2015-04-06 18:01:01', '0');
INSERT INTO `t_dict` VALUES ('109', '面粨', '面粨', '108', '0', '8', '', '1', '2015-04-06 18:01:17', '2015-04-06 18:01:17', '0');
INSERT INTO `t_dict` VALUES ('110', '杂粨', '杂粨', '108', '0', '9', '', '1', '2015-04-06 18:01:32', '2015-04-06 18:01:32', '0');
INSERT INTO `t_dict` VALUES ('111', '正式合作', '正式合作', '113', '0', '0', '', '1', '2015-05-17 22:30:05', '2015-05-17 22:30:05', '0');
INSERT INTO `t_dict` VALUES ('112', '重点关注', '重点关注', '113', '0', '1', '', '1', '2015-05-17 22:30:19', '2015-05-17 22:30:19', '0');
INSERT INTO `t_dict` VALUES ('113', '适合发展', '适合发展', '113', '0', '2', '', '1', '2015-05-17 22:30:34', '2015-05-17 22:30:34', '0');
INSERT INTO `t_dict` VALUES ('114', '普通量小', '普通量小', '113', '0', '3', '', '1', '2015-05-17 22:30:49', '2015-05-17 22:30:49', '0');
INSERT INTO `t_dict` VALUES ('115', '问题凤险', '问题凤险', '113', '0', '4', '', '1', '2015-05-17 22:31:00', '2015-05-17 22:31:00', '0');
INSERT INTO `t_dict` VALUES ('116', '骗子欺骗', '骗子欺骗', '113', '0', '5', '', '1', '2015-05-17 22:31:13', '2015-05-17 22:31:13', '0');
INSERT INTO `t_dict` VALUES ('117', '注销企业', '注销企业', '113', '0', '6', '', '1', '2015-05-17 22:31:28', '2015-05-17 22:31:28', '0');
INSERT INTO `t_dict` VALUES ('118', '浙江', '浙江', '114', '0', '0', '', '1', '2015-05-17 22:31:47', '2015-05-17 22:31:47', '0');
INSERT INTO `t_dict` VALUES ('119', '江苏', '江苏', '114', '0', '1', '', '1', '2015-05-17 22:31:59', '2015-05-17 22:31:59', '0');
INSERT INTO `t_dict` VALUES ('120', '墨绿', '墨绿', '209', '0', '0', '', '0', '2015-05-18 15:38:36', '2015-05-18 15:38:36', '0');
INSERT INTO `t_dict` VALUES ('121', '超级', '超级', '211', '0', '0', '', '0', '2015-05-18 15:39:05', '2015-06-28 15:55:31', '0');
INSERT INTO `t_dict` VALUES ('122', '杭州鱼粉加工厂', '杭州鱼粉加工厂', '210', '0', '0', '', '0', '2015-05-18 15:39:23', '2015-05-18 15:39:23', '0');
INSERT INTO `t_dict` VALUES ('123', '发型', '发型', '209', '0', '2', '', '0', '2015-05-23 21:17:05', '2015-05-23 21:17:05', '0');
INSERT INTO `t_dict` VALUES ('124', '期盘', '期盘', '115', '0', '1', '', '1', '2015-05-24 13:06:29', '2015-05-24 13:06:29', '0');
INSERT INTO `t_dict` VALUES ('125', '预售', '预售', '115', '0', '2', '', '1', '2015-05-24 13:06:54', '2015-05-24 13:06:54', '0');
INSERT INTO `t_dict` VALUES ('126', '现货', '现货', '115', '0', '3', '', '1', '2015-05-24 13:07:15', '2015-05-24 13:07:15', '0');
INSERT INTO `t_dict` VALUES ('127', '泌乳', '泌乳', '209', '0', '3', '', '0', '2015-05-25 08:54:20', '2015-05-25 08:54:20', '0');
INSERT INTO `t_dict` VALUES ('128', '古巴', '古巴', '209', '0', '4', '', '0', '2015-05-25 08:54:32', '2015-05-25 08:54:32', '0');
INSERT INTO `t_dict` VALUES ('129', '美乐', '美乐', '209', '0', '5', '', '0', '2015-05-25 08:54:50', '2015-05-25 08:54:50', '0');
INSERT INTO `t_dict` VALUES ('130', '普通', '普通', '211', '0', '2', '', '0', '2015-05-25 09:08:55', '2015-06-28 15:55:46', '0');
INSERT INTO `t_dict` VALUES ('131', '优良', '优良', '211', '0', '3', '', '0', '2015-05-25 09:09:05', '2015-06-28 15:56:00', '0');
INSERT INTO `t_dict` VALUES ('132', '赤贫', '赤贫', '211', '0', '4', '', '0', '2015-05-25 09:09:20', '2015-06-28 15:56:39', '0');
INSERT INTO `t_dict` VALUES ('133', 'E', 'E', '211', '0', '5', '', '0', '2015-05-25 09:10:48', '2015-05-25 09:10:48', '0');
INSERT INTO `t_dict` VALUES ('134', '大同', '大同', '209', '0', '6', '', '0', '2015-05-25 16:45:57', '2015-05-25 16:45:57', '0');
INSERT INTO `t_dict` VALUES ('135', '天高', '天高', '209', '0', '7', '', '0', '2015-05-25 16:46:12', '2015-05-25 16:46:12', '0');
INSERT INTO `t_dict` VALUES ('136', '我飞', '我飞', '209', '0', '8', '', '0', '2015-05-25 16:46:27', '2015-05-25 16:46:27', '0');

-- ----------------------------
-- Table structure for t_foodout
-- ----------------------------
DROP TABLE IF EXISTS `t_foodout`;
CREATE TABLE `t_foodout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL COMMENT '配料单号',
  `productdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '生产日期',
  `deliverymanid` int(11) DEFAULT NULL COMMENT '发货员id',
  `deliveryman` varchar(255) DEFAULT NULL COMMENT '发货员',
  `solutionid` int(11) DEFAULT NULL COMMENT '配料方案id',
  `salemanid` int(45) DEFAULT NULL COMMENT '业务员id',
  `saleman` varchar(255) DEFAULT NULL COMMENT '业务员',
  `indate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '标准入库时间',
  `outdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '标准出库时间',
  `productid` int(11) NOT NULL COMMENT '成品id',
  `productcode` varchar(45) NOT NULL COMMENT '成品编号',
  `productlabel` varchar(45) DEFAULT NULL,
  `weight` decimal(12,2) NOT NULL DEFAULT '0.00',
  `package` int(8) NOT NULL DEFAULT '0',
  `cost` decimal(12,2) NOT NULL COMMENT '0',
  `remark` varchar(255) DEFAULT NULL,
  `createman` varchar(45) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `modifyman` varchar(45) NOT NULL,
  `modifytime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `companyid` int(11) DEFAULT NULL COMMENT '客户id',
  `companycode` varchar(45) DEFAULT NULL COMMENT '客户编号',
  `companyname` varchar(255) DEFAULT NULL COMMENT '客户名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='配料出库';

-- ----------------------------
-- Records of t_foodout
-- ----------------------------
INSERT INTO `t_foodout` VALUES ('5', 'PL15050005', '2015-05-30 12:00:27', '5', '周辉', '1', '1', '金向东', '2015-05-09 22:25:33', '2015-05-08 22:25:33', '14', '00000015', '', '0.00', '0', '0.00', '杭州', 'admin', '2015-05-30 12:00:27', 'admin', '2015-05-30 12:00:27', '3', '', '杭州市通策会');
INSERT INTO `t_foodout` VALUES ('6', 'PL15050006', '2015-05-30 12:03:42', '0', '', '3', '0', '', '2015-05-30 12:03:42', '2015-05-30 12:03:42', '16', '00000017', '', '0.00', '0', '0.00', '', 'admin', '2015-05-30 12:04:33', 'admin', '2015-05-30 12:04:33', '0', null, '');
INSERT INTO `t_foodout` VALUES ('7', 'PL15060001', '2015-06-20 14:04:56', '0', '', '2', '0', '', '2015-06-20 14:04:08', '2015-06-20 14:04:08', '14', '00000015', '', '0.00', '0', '0.00', '而且啊', 'admin', '2015-06-20 14:04:56', 'admin', '2015-06-20 14:04:56', '0', '', '');

-- ----------------------------
-- Table structure for t_foodoutdetail
-- ----------------------------
DROP TABLE IF EXISTS `t_foodoutdetail`;
CREATE TABLE `t_foodoutdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL COMMENT '主表id',
  `productid` int(8) NOT NULL COMMENT '鱼粉主键id',
  `tons` decimal(12,3) DEFAULT '0.000' COMMENT '吨位',
  `package` int(8) DEFAULT '0' COMMENT '包数',
  `unitprice` decimal(12,2) DEFAULT '0.00',
  `cost` decimal(12,2) DEFAULT '0.00',
  `no` int(11) NOT NULL DEFAULT '1' COMMENT '序号',
  `solutionid` int(11) NOT NULL DEFAULT '1' COMMENT '方案id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_foodoutdetail
-- ----------------------------
INSERT INTO `t_foodoutdetail` VALUES ('167', '5', '13', '11.000', '0', '0.00', '0.00', '1', '1');
INSERT INTO `t_foodoutdetail` VALUES ('168', '5', '15', '12.000', '0', '0.00', '0.00', '2', '1');
INSERT INTO `t_foodoutdetail` VALUES ('169', '5', '0', '0.000', '0', '0.00', '0.00', '3', '1');
INSERT INTO `t_foodoutdetail` VALUES ('170', '5', '14', '23.000', '0', '0.00', '0.00', '4', '1');
INSERT INTO `t_foodoutdetail` VALUES ('171', '5', '13', '0.000', '0', '0.00', '0.00', '1', '2');
INSERT INTO `t_foodoutdetail` VALUES ('172', '5', '13', '0.000', '0', '0.00', '0.00', '2', '2');
INSERT INTO `t_foodoutdetail` VALUES ('173', '5', '0', '0.000', '0', '0.00', '0.00', '3', '2');
INSERT INTO `t_foodoutdetail` VALUES ('174', '5', '14', '0.000', '0', '0.00', '0.00', '4', '2');
INSERT INTO `t_foodoutdetail` VALUES ('175', '5', '0', '0.000', '0', '0.00', '0.00', '1', '3');
INSERT INTO `t_foodoutdetail` VALUES ('176', '5', '0', '0.000', '0', '0.00', '0.00', '2', '3');
INSERT INTO `t_foodoutdetail` VALUES ('177', '5', '0', '0.000', '0', '0.00', '0.00', '3', '3');
INSERT INTO `t_foodoutdetail` VALUES ('178', '5', '0', '0.000', '0', '0.00', '0.00', '4', '3');
INSERT INTO `t_foodoutdetail` VALUES ('179', '6', '0', '0.000', '0', '0.00', '0.00', '1', '1');
INSERT INTO `t_foodoutdetail` VALUES ('180', '6', '0', '0.000', '0', '0.00', '0.00', '2', '1');
INSERT INTO `t_foodoutdetail` VALUES ('181', '6', '0', '0.000', '0', '0.00', '0.00', '3', '1');
INSERT INTO `t_foodoutdetail` VALUES ('182', '6', '0', '0.000', '0', '0.00', '0.00', '4', '1');
INSERT INTO `t_foodoutdetail` VALUES ('183', '6', '0', '0.000', '0', '0.00', '0.00', '1', '2');
INSERT INTO `t_foodoutdetail` VALUES ('184', '6', '0', '0.000', '0', '0.00', '0.00', '2', '2');
INSERT INTO `t_foodoutdetail` VALUES ('185', '6', '0', '0.000', '0', '0.00', '0.00', '3', '2');
INSERT INTO `t_foodoutdetail` VALUES ('186', '6', '0', '0.000', '0', '0.00', '0.00', '4', '2');
INSERT INTO `t_foodoutdetail` VALUES ('187', '6', '15', '1.000', '0', '0.00', '0.00', '1', '3');
INSERT INTO `t_foodoutdetail` VALUES ('188', '6', '0', '0.000', '0', '0.00', '0.00', '2', '3');
INSERT INTO `t_foodoutdetail` VALUES ('189', '6', '0', '0.000', '0', '0.00', '0.00', '3', '3');
INSERT INTO `t_foodoutdetail` VALUES ('190', '6', '16', '1.000', '0', '0.00', '0.00', '4', '3');
INSERT INTO `t_foodoutdetail` VALUES ('215', '7', '0', '0.000', '0', '0.00', '0.00', '1', '1');
INSERT INTO `t_foodoutdetail` VALUES ('216', '7', '0', '0.000', '0', '0.00', '0.00', '2', '1');
INSERT INTO `t_foodoutdetail` VALUES ('217', '7', '0', '0.000', '0', '0.00', '0.00', '3', '1');
INSERT INTO `t_foodoutdetail` VALUES ('218', '7', '0', '0.000', '0', '0.00', '0.00', '4', '1');
INSERT INTO `t_foodoutdetail` VALUES ('219', '7', '0', '0.000', '0', '0.00', '0.00', '5', '1');
INSERT INTO `t_foodoutdetail` VALUES ('220', '7', '0', '0.000', '0', '0.00', '0.00', '6', '1');
INSERT INTO `t_foodoutdetail` VALUES ('221', '7', '0', '0.000', '0', '0.00', '0.00', '7', '1');
INSERT INTO `t_foodoutdetail` VALUES ('222', '7', '0', '0.000', '0', '0.00', '0.00', '8', '1');
INSERT INTO `t_foodoutdetail` VALUES ('223', '7', '0', '0.000', '0', '0.00', '0.00', '1', '2');
INSERT INTO `t_foodoutdetail` VALUES ('224', '7', '0', '0.000', '0', '0.00', '0.00', '2', '2');
INSERT INTO `t_foodoutdetail` VALUES ('225', '7', '0', '0.000', '0', '0.00', '0.00', '3', '2');
INSERT INTO `t_foodoutdetail` VALUES ('226', '7', '0', '0.000', '0', '0.00', '0.00', '4', '2');
INSERT INTO `t_foodoutdetail` VALUES ('227', '7', '0', '0.000', '0', '0.00', '0.00', '5', '2');
INSERT INTO `t_foodoutdetail` VALUES ('228', '7', '0', '0.000', '0', '0.00', '0.00', '6', '2');
INSERT INTO `t_foodoutdetail` VALUES ('229', '7', '0', '0.000', '0', '0.00', '0.00', '7', '2');
INSERT INTO `t_foodoutdetail` VALUES ('230', '7', '14', '0.000', '0', '0.00', '0.00', '8', '2');
INSERT INTO `t_foodoutdetail` VALUES ('231', '7', '0', '0.000', '0', '0.00', '0.00', '1', '3');
INSERT INTO `t_foodoutdetail` VALUES ('232', '7', '0', '0.000', '0', '0.00', '0.00', '2', '3');
INSERT INTO `t_foodoutdetail` VALUES ('233', '7', '0', '0.000', '0', '0.00', '0.00', '3', '3');
INSERT INTO `t_foodoutdetail` VALUES ('234', '7', '0', '0.000', '0', '0.00', '0.00', '4', '3');
INSERT INTO `t_foodoutdetail` VALUES ('235', '7', '0', '0.000', '0', '0.00', '0.00', '5', '3');
INSERT INTO `t_foodoutdetail` VALUES ('236', '7', '0', '0.000', '0', '0.00', '0.00', '6', '3');
INSERT INTO `t_foodoutdetail` VALUES ('237', '7', '0', '0.000', '0', '0.00', '0.00', '7', '3');
INSERT INTO `t_foodoutdetail` VALUES ('238', '7', '0', '0.000', '0', '0.00', '0.00', '8', '3');

-- ----------------------------
-- Table structure for t_funcode
-- ----------------------------
DROP TABLE IF EXISTS `t_funcode`;
CREATE TABLE `t_funcode` (
  `funid` int(11) NOT NULL AUTO_INCREMENT,
  `funcode` varchar(255) NOT NULL,
  `funname` varchar(255) DEFAULT NULL,
  `type` tinyint(4) DEFAULT '0' COMMENT '功能类型 0：菜单，1：按钮',
  `enable` tinyint(4) DEFAULT '1',
  `pid` int(11) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sortid` int(4) DEFAULT '1',
  PRIMARY KEY (`funid`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_funcode
-- ----------------------------
INSERT INTO `t_funcode` VALUES ('1', 'M002', '产品数据', '0', '1', '0', '产品数据', '2');
INSERT INTO `t_funcode` VALUES ('2', 'M001', '系统数据', '0', '1', '0', '', '1');
INSERT INTO `t_funcode` VALUES ('3', 'M003', '人员数据', '0', '1', '0', '', '3');
INSERT INTO `t_funcode` VALUES ('4', 'M00101', '新增', '1', '1', '2', '', '1');
INSERT INTO `t_funcode` VALUES ('5', 'M00201', '新增', '1', '1', '1', '', '1');
INSERT INTO `t_funcode` VALUES ('6', 'M00203', '修改', '1', '1', '1', '', '3');
INSERT INTO `t_funcode` VALUES ('7', 'M00204', '删除', '1', '1', '1', '', '4');
INSERT INTO `t_funcode` VALUES ('8', 'M00202', '查询', '1', '1', '1', '', '2');
INSERT INTO `t_funcode` VALUES ('9', 'M004', '权限管理', '0', '1', '0', '', '4');
INSERT INTO `t_funcode` VALUES ('10', 'M005', '往来单位', '0', '1', '0', '', '5');
INSERT INTO `t_funcode` VALUES ('11', 'M006', '联系人', '0', '1', '0', '', '6');
INSERT INTO `t_funcode` VALUES ('12', 'M007', '鱼粉资料', '0', '1', '0', '', '7');
INSERT INTO `t_funcode` VALUES ('13', 'M00301', '新增', '1', '1', '3', '', '1');
INSERT INTO `t_funcode` VALUES ('14', 'M00102', '查询', '1', '1', '2', '', '2');
INSERT INTO `t_funcode` VALUES ('15', 'M00103', '修改', '1', '1', '2', '', '3');
INSERT INTO `t_funcode` VALUES ('16', 'M00104', '删除', '1', '1', '2', '', '4');
INSERT INTO `t_funcode` VALUES ('17', 'M00302', '查询', '1', '1', '3', '', '2');
INSERT INTO `t_funcode` VALUES ('18', 'M00303', '修改', '1', '1', '3', '', '3');
INSERT INTO `t_funcode` VALUES ('19', 'M00304', '删除', '1', '1', '3', '', '4');
INSERT INTO `t_funcode` VALUES ('20', 'M00350', '修改密码', '1', '1', '3', '', '5');
INSERT INTO `t_funcode` VALUES ('21', 'M00351', '设置权限', '1', '1', '3', '', '6');
INSERT INTO `t_funcode` VALUES ('22', 'M00501', '新增', '1', '1', '10', '', '1');
INSERT INTO `t_funcode` VALUES ('23', 'M00502', '查询', '1', '1', '10', '', '2');
INSERT INTO `t_funcode` VALUES ('24', 'M00503', '修改', '1', '1', '10', '', '3');
INSERT INTO `t_funcode` VALUES ('25', 'M00508', '上一个', '1', '1', '10', '', '8');
INSERT INTO `t_funcode` VALUES ('26', 'M00509', '下一个', '1', '1', '10', '', '9');
INSERT INTO `t_funcode` VALUES ('27', 'M00601', '新增', '1', '1', '11', '', '1');
INSERT INTO `t_funcode` VALUES ('28', 'M00602', '查询', '1', '1', '11', '', '2');
INSERT INTO `t_funcode` VALUES ('29', 'M00603', '修改', '1', '1', '11', '', '3');
INSERT INTO `t_funcode` VALUES ('30', 'M00608', '上一个', '1', '1', '11', '', '8');
INSERT INTO `t_funcode` VALUES ('31', 'M00609', '下一个', '1', '1', '11', '', '9');
INSERT INTO `t_funcode` VALUES ('32', 'M00701', '新增', '1', '1', '12', '', '1');
INSERT INTO `t_funcode` VALUES ('33', 'M00702', '查询', '1', '1', '12', '', '2');
INSERT INTO `t_funcode` VALUES ('34', 'M00703', '修改', '1', '1', '12', '', '3');
INSERT INTO `t_funcode` VALUES ('35', 'M00704', '删除', '1', '1', '12', '', '4');
INSERT INTO `t_funcode` VALUES ('36', 'M00708', '上一个', '1', '1', '12', '', '8');
INSERT INTO `t_funcode` VALUES ('37', 'M00709', '下一个', '1', '1', '12', '', '9');
INSERT INTO `t_funcode` VALUES ('38', 'M101', '报盘', '0', '1', '0', '', '101');
INSERT INTO `t_funcode` VALUES ('39', 'M102', '确盘', '0', '1', '0', '', '102');
INSERT INTO `t_funcode` VALUES ('40', 'M103', '现货', '0', '1', '0', '', '103');
INSERT INTO `t_funcode` VALUES ('41', 'M104', '自营', '0', '1', '0', '', '104');
INSERT INTO `t_funcode` VALUES ('42', 'M105', '自制', '0', '1', '0', '', '105');
INSERT INTO `t_funcode` VALUES ('43', 'M106', '成品', '0', '1', '0', '', '106');
INSERT INTO `t_funcode` VALUES ('44', 'M107', '进仓单', '0', '1', '0', '', '107');
INSERT INTO `t_funcode` VALUES ('45', 'M108', '自制仓入库', '0', '1', '0', '', '108');
INSERT INTO `t_funcode` VALUES ('46', 'M109', '配料出库', '0', '1', '0', '', '109');
INSERT INTO `t_funcode` VALUES ('47', 'M110', '提货单', '0', '1', '0', '', '110');
INSERT INTO `t_funcode` VALUES ('48', 'M111', '通话记录', '0', '1', '0', '', '111');
INSERT INTO `t_funcode` VALUES ('49', 'M112', '国标检测', '0', '1', '0', '', '112');
INSERT INTO `t_funcode` VALUES ('50', 'M00401', '新增', '1', '1', '9', '', '1');
INSERT INTO `t_funcode` VALUES ('51', 'M00404', '修改', '1', '1', '9', '', '3');
INSERT INTO `t_funcode` VALUES ('52', 'M00403', '删除', '1', '1', '9', '', '3');
INSERT INTO `t_funcode` VALUES ('53', 'M00405', '保存', '1', '1', '9', '', '4');
INSERT INTO `t_funcode` VALUES ('54', 'M00450', '添加功能', '1', '1', '9', '', '5');
INSERT INTO `t_funcode` VALUES ('55', 'M10102', '查询', '1', '1', '38', '', '2');
INSERT INTO `t_funcode` VALUES ('56', 'M00110', '关闭', '1', '1', '2', '', '10');
INSERT INTO `t_funcode` VALUES ('57', 'M00210', '关闭', '1', '1', '1', '', '10');
INSERT INTO `t_funcode` VALUES ('58', 'M00402', '查询', '1', '1', '9', '', '2');
INSERT INTO `t_funcode` VALUES ('59', 'M00510', '关闭', '1', '1', '10', '', '10');
INSERT INTO `t_funcode` VALUES ('60', 'M00610', '关闭', '1', '1', '11', '', '10');
INSERT INTO `t_funcode` VALUES ('61', 'M00710', '关闭', '1', '1', '12', '', '10');
INSERT INTO `t_funcode` VALUES ('62', 'M201', '通话记录表', '0', '1', '0', '', '201');
INSERT INTO `t_funcode` VALUES ('63', 'M202', '需求预测表', '0', '1', '0', '', '202');
INSERT INTO `t_funcode` VALUES ('64', 'M203', '自制自营库存流水账', '0', '1', '0', '', '203');
INSERT INTO `t_funcode` VALUES ('65', 'M204', '库存汇总表', '0', '1', '0', '', '204');
INSERT INTO `t_funcode` VALUES ('66', 'M205', '客户分析表', '0', '1', '0', '', '205');
INSERT INTO `t_funcode` VALUES ('67', 'M206', '销售记录简表', '0', '1', '0', '', '206');
INSERT INTO `t_funcode` VALUES ('68', 'M301', '库存月结', '0', '1', '0', '', '301');
INSERT INTO `t_funcode` VALUES ('69', 'M302', '自动提醒', '0', '1', '0', '', '302');
INSERT INTO `t_funcode` VALUES ('70', 'M303', '期货预售合同', '0', '1', '0', '', '303');
INSERT INTO `t_funcode` VALUES ('71', 'M304', '现货销售合同1', '0', '1', '0', '', '304');
INSERT INTO `t_funcode` VALUES ('72', 'M305', '现货销售合同2', '0', '1', '0', '', '305');
INSERT INTO `t_funcode` VALUES ('73', 'M10107', '导出', '1', '1', '38', '', '7');
INSERT INTO `t_funcode` VALUES ('74', 'M10150', '报盘附件', '1', '1', '38', '', '50');
INSERT INTO `t_funcode` VALUES ('75', 'M10151', '新增鱼粉', '1', '1', '38', '', '51');
INSERT INTO `t_funcode` VALUES ('76', 'M10110', '关闭', '0', '1', '38', '', '100');
INSERT INTO `t_funcode` VALUES ('77', 'M00310', '关闭', '0', '1', '3', '', '100');
INSERT INTO `t_funcode` VALUES ('78', 'M00410', '关闭', '1', '1', '9', '', '100');
INSERT INTO `t_funcode` VALUES ('79', 'M10202', '查询', '1', '1', '39', '', '2');
INSERT INTO `t_funcode` VALUES ('80', 'M10207', '导出', '1', '1', '39', '', '7');
INSERT INTO `t_funcode` VALUES ('81', 'M10250', '报盘附件', '1', '1', '39', '', '50');
INSERT INTO `t_funcode` VALUES ('82', 'M10251', '新增鱼粉', '1', '1', '39', '', '51');
INSERT INTO `t_funcode` VALUES ('83', 'M10210', '关闭', '1', '1', '39', '', '100');
INSERT INTO `t_funcode` VALUES ('84', 'M10302', '查询', '1', '1', '40', '', '2');
INSERT INTO `t_funcode` VALUES ('85', 'M10307', '导出', '1', '1', '40', '', '7');
INSERT INTO `t_funcode` VALUES ('86', 'M10350', '报盘附件', '1', '1', '40', '', '50');
INSERT INTO `t_funcode` VALUES ('87', 'M10351', '新增鱼粉', '1', '1', '40', '', '51');
INSERT INTO `t_funcode` VALUES ('88', 'M10310', '关闭', '1', '1', '40', '', '100');
INSERT INTO `t_funcode` VALUES ('89', 'M10402', '查询', '1', '1', '41', '', '2');
INSERT INTO `t_funcode` VALUES ('90', 'M10450', '报盘附件', '1', '1', '41', '', '50');
INSERT INTO `t_funcode` VALUES ('91', 'M10451', '新增鱼粉', '1', '1', '41', '', '51');
INSERT INTO `t_funcode` VALUES ('92', 'M10410', '关闭', '1', '1', '41', '', '100');
INSERT INTO `t_funcode` VALUES ('93', 'M10502', '查询', '1', '1', '42', '', '2');
INSERT INTO `t_funcode` VALUES ('94', 'M10550', '报盘附件', '1', '1', '42', '', '50');
INSERT INTO `t_funcode` VALUES ('95', 'M10551', '新增鱼粉', '1', '1', '42', '', '51');
INSERT INTO `t_funcode` VALUES ('96', 'M10510', '关闭', '1', '1', '42', '', '100');
INSERT INTO `t_funcode` VALUES ('97', 'M10602', '查询', '1', '1', '43', '', '2');
INSERT INTO `t_funcode` VALUES ('98', 'M10610', '关闭', '1', '1', '43', '', '100');
INSERT INTO `t_funcode` VALUES ('99', 'M10701', '新增', '1', '1', '44', '', '1');
INSERT INTO `t_funcode` VALUES ('100', 'M10702', '查询', '1', '1', '44', '', '2');
INSERT INTO `t_funcode` VALUES ('101', 'M10703', '修改', '1', '1', '44', '', '3');
INSERT INTO `t_funcode` VALUES ('102', 'M10704', '删除', '1', '1', '44', '', '4');
INSERT INTO `t_funcode` VALUES ('103', 'M10708', '上一个', '1', '1', '44', '', '8');
INSERT INTO `t_funcode` VALUES ('104', 'M10709', '下一个', '1', '1', '44', '', '9');
INSERT INTO `t_funcode` VALUES ('105', 'M10710', '关闭', '1', '1', '44', '', '100');
INSERT INTO `t_funcode` VALUES ('106', 'M10801', '新增', '1', '1', '45', '', '1');
INSERT INTO `t_funcode` VALUES ('107', 'M10802', '查询', '1', '1', '45', '', '2');
INSERT INTO `t_funcode` VALUES ('108', 'M10803', '修改', '1', '1', '45', '', '3');
INSERT INTO `t_funcode` VALUES ('109', 'M10804', '删除', '1', '1', '45', '', '4');
INSERT INTO `t_funcode` VALUES ('110', 'M10808', '上一个', '1', '1', '45', '', '8');
INSERT INTO `t_funcode` VALUES ('111', 'M10809', '下一个', '1', '1', '45', '', '9');
INSERT INTO `t_funcode` VALUES ('112', 'M10810', '关闭', '1', '1', '45', '', '100');
INSERT INTO `t_funcode` VALUES ('113', 'M10901', '新增', '1', '1', '46', '', '1');
INSERT INTO `t_funcode` VALUES ('114', 'M10902', '查询', '1', '1', '46', '', '2');
INSERT INTO `t_funcode` VALUES ('115', 'M10903', '修改', '1', '1', '46', '', '3');
INSERT INTO `t_funcode` VALUES ('116', 'M10908', '上一个', '1', '1', '46', '', '8');
INSERT INTO `t_funcode` VALUES ('117', 'M10909', '下一个', '1', '1', '46', '', '9');
INSERT INTO `t_funcode` VALUES ('118', 'M10910', '关闭', '1', '1', '46', '', '100');
INSERT INTO `t_funcode` VALUES ('119', 'M11001', '新增', '1', '1', '47', '', '1');
INSERT INTO `t_funcode` VALUES ('120', 'M11002', '查询', '0', '1', '47', '', '2');
INSERT INTO `t_funcode` VALUES ('121', 'M11003', '修改', '1', '1', '47', '', '3');
INSERT INTO `t_funcode` VALUES ('122', 'M11004', '删除', '1', '1', '47', '', '4');
INSERT INTO `t_funcode` VALUES ('123', 'M11008', '上一个', '1', '1', '47', '', '8');
INSERT INTO `t_funcode` VALUES ('124', 'M11009', '下一个', '1', '1', '47', '', '9');
INSERT INTO `t_funcode` VALUES ('125', 'M11050', '打印', '1', '1', '47', '', '50');
INSERT INTO `t_funcode` VALUES ('126', 'M11010', '关闭', '1', '1', '47', '', '100');
INSERT INTO `t_funcode` VALUES ('127', 'M11101', '新增', '1', '1', '48', '', '1');
INSERT INTO `t_funcode` VALUES ('128', 'M11102', '查询', '1', '1', '48', '', '2');
INSERT INTO `t_funcode` VALUES ('129', 'M11103', '修改', '1', '1', '48', '', '3');
INSERT INTO `t_funcode` VALUES ('130', 'M11104', '删除', '1', '1', '48', '', '4');
INSERT INTO `t_funcode` VALUES ('131', 'M11108', '上一个', '1', '1', '48', '', '8');
INSERT INTO `t_funcode` VALUES ('132', 'M11109', '下一个', '1', '1', '48', '', '9');
INSERT INTO `t_funcode` VALUES ('133', 'M11110', '关闭', '1', '1', '48', '', '100');
INSERT INTO `t_funcode` VALUES ('134', 'M11205', '保存', '1', '1', '49', '', '5');
INSERT INTO `t_funcode` VALUES ('135', 'M11210', '关闭', '1', '1', '49', '', '100');
INSERT INTO `t_funcode` VALUES ('136', 'M20102', '查询', '1', '1', '62', '', '1');
INSERT INTO `t_funcode` VALUES ('137', 'M20101', '新增', '1', '1', '62', '', '2');
INSERT INTO `t_funcode` VALUES ('138', 'M20110', '关闭', '1', '1', '62', '', '100');
INSERT INTO `t_funcode` VALUES ('139', 'M20202', '查询', '1', '1', '63', '', '2');
INSERT INTO `t_funcode` VALUES ('140', 'M20207', '导出', '1', '1', '63', '', '7');
INSERT INTO `t_funcode` VALUES ('141', 'M20210', '关闭', '1', '1', '63', '', '100');
INSERT INTO `t_funcode` VALUES ('142', 'M20302', '查询', '1', '1', '64', '', '2');
INSERT INTO `t_funcode` VALUES ('143', 'M20307', '导出', '1', '1', '64', '', '7');
INSERT INTO `t_funcode` VALUES ('144', 'M20310', '关闭', '1', '1', '64', '', '10');
INSERT INTO `t_funcode` VALUES ('145', 'M20402', '查询', '1', '1', '65', '', '2');
INSERT INTO `t_funcode` VALUES ('146', 'M20407', '导出', '1', '1', '65', '', '7');
INSERT INTO `t_funcode` VALUES ('147', 'M20410', '关闭', '1', '1', '65', '', '10');
INSERT INTO `t_funcode` VALUES ('148', 'M20502', '查询', '1', '1', '66', '', '1');
INSERT INTO `t_funcode` VALUES ('149', 'M20510', '关闭', '1', '1', '66', '', '10');
INSERT INTO `t_funcode` VALUES ('150', 'M20602', '查询', '1', '1', '67', '', '2');
INSERT INTO `t_funcode` VALUES ('151', 'M20610', '关闭', '1', '1', '67', '', '10');
INSERT INTO `t_funcode` VALUES ('152', 'M30202', '查询', '1', '1', '69', '', '2');
INSERT INTO `t_funcode` VALUES ('153', 'M30210', '关闭', '1', '1', '69', '', '10');
INSERT INTO `t_funcode` VALUES ('154', 'M30301', '新增', '1', '1', '70', '', '1');
INSERT INTO `t_funcode` VALUES ('155', 'M30302', '查询', '1', '1', '70', '', '2');
INSERT INTO `t_funcode` VALUES ('156', 'M30303', '修改', '1', '1', '70', '', '3');
INSERT INTO `t_funcode` VALUES ('157', 'M30308', '上一个', '1', '1', '70', '', '8');
INSERT INTO `t_funcode` VALUES ('158', 'M30309', '下一个', '1', '1', '70', '', '9');
INSERT INTO `t_funcode` VALUES ('159', 'M30350', '预提明细录入', '1', '1', '70', '', '50');
INSERT INTO `t_funcode` VALUES ('160', 'M30351', '结束合同', '1', '1', '70', '', '51');
INSERT INTO `t_funcode` VALUES ('161', 'M30352', '打印', '1', '1', '70', '', '52');
INSERT INTO `t_funcode` VALUES ('162', 'M30310', '关闭', '1', '1', '70', '', '100');
INSERT INTO `t_funcode` VALUES ('163', 'M30401', '新增', '1', '1', '71', '', '1');
INSERT INTO `t_funcode` VALUES ('164', 'M30402', '查询', '1', '1', '71', '', '2');
INSERT INTO `t_funcode` VALUES ('165', 'M30403', '修改', '1', '1', '71', '', '3');
INSERT INTO `t_funcode` VALUES ('166', 'M30408', '上一个', '1', '1', '71', '', '8');
INSERT INTO `t_funcode` VALUES ('167', 'M30409', '下一个', '1', '1', '71', '', '9');
INSERT INTO `t_funcode` VALUES ('168', 'M30450', '预提明细录入', '1', '1', '71', '', '50');
INSERT INTO `t_funcode` VALUES ('169', 'M30451', '结束合同', '1', '1', '71', '', '51');
INSERT INTO `t_funcode` VALUES ('170', 'M30452', '打印', '1', '1', '71', '', '52');
INSERT INTO `t_funcode` VALUES ('171', 'M30410', '关闭', '1', '1', '71', '', '100');
INSERT INTO `t_funcode` VALUES ('172', 'M30501', '新增', '1', '1', '72', '', '1');
INSERT INTO `t_funcode` VALUES ('173', 'M30502', '查询', '1', '1', '72', '', '2');
INSERT INTO `t_funcode` VALUES ('174', 'M30503', '修改', '1', '1', '72', '', '3');
INSERT INTO `t_funcode` VALUES ('175', 'M30508', '上一个', '1', '1', '72', '', '8');
INSERT INTO `t_funcode` VALUES ('176', 'M30509', '下一个', '1', '1', '72', '', '9');
INSERT INTO `t_funcode` VALUES ('177', 'M30550', '预提明细录入', '1', '1', '72', '', '50');
INSERT INTO `t_funcode` VALUES ('178', 'M30551', '结束合同', '1', '1', '72', '', '51');
INSERT INTO `t_funcode` VALUES ('179', 'M30552', '打印', '1', '1', '72', '', '52');
INSERT INTO `t_funcode` VALUES ('180', 'M30510', '关闭', '1', '1', '72', '', '100');

-- ----------------------------
-- Table structure for t_homemadestorage
-- ----------------------------
DROP TABLE IF EXISTS `t_homemadestorage`;
CREATE TABLE `t_homemadestorage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL COMMENT '单号',
  `seq` varchar(45) DEFAULT NULL COMMENT '序号',
  `productid` int(11) DEFAULT NULL COMMENT '鱼粉主键ID',
  `productcode` varchar(45) NOT NULL COMMENT '鱼粉ID',
  `productname` varchar(45) DEFAULT NULL COMMENT '鱼粉名称',
  `storagetime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '入库时间',
  `intime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '进厂时间',
  `outtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '出厂时间',
  `grossweight` decimal(12,3) DEFAULT NULL COMMENT '毛重',
  `tareweight` decimal(12,3) DEFAULT NULL COMMENT '皮重',
  `netweight` decimal(12,3) DEFAULT NULL COMMENT '净重',
  `packages` int(11) DEFAULT NULL COMMENT '包数',
  `unitprice` decimal(12,3) DEFAULT NULL COMMENT '单价',
  `sgs_protein` decimal(6,2) DEFAULT NULL,
  `sgs_tvn` int(8) DEFAULT NULL,
  `sgs_graypart` decimal(6,2) DEFAULT NULL,
  `sgs_sandsalt` decimal(6,2) DEFAULT NULL,
  `sgs_amine` int(8) DEFAULT NULL,
  `sgs_ffa` decimal(6,2) DEFAULT NULL,
  `sgs_fat` decimal(6,2) DEFAULT NULL,
  `sgs_water` decimal(6,2) DEFAULT NULL,
  `sgs_sand` decimal(6,2) DEFAULT NULL,
  `label_lysine` decimal(6,2) DEFAULT NULL,
  `label_methionine` decimal(6,2) DEFAULT NULL COMMENT '标签指标:蛋安酸',
  `domestic_protein` decimal(6,2) DEFAULT NULL,
  `domestic_tvn` int(8) DEFAULT NULL,
  `domestic_graypart` decimal(6,2) DEFAULT NULL,
  `domestic_sandsalt` decimal(6,2) DEFAULT NULL,
  `domestic_sour` decimal(6,2) DEFAULT NULL,
  `domestic_lysine` decimal(6,2) DEFAULT NULL,
  `domestic_methionine` decimal(6,2) DEFAULT NULL,
  `createman` varchar(45) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `modifyman` varchar(45) DEFAULT NULL,
  `modifytime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `isdelete` tinyint(2) NOT NULL DEFAULT '0',
  `selfprice` decimal(10,2) DEFAULT '0.00' COMMENT '自制仓采购单价',
  `saleprice` decimal(6,2) DEFAULT '0.00' COMMENT '销售采购单价',
  `purchasemanid` int(11) DEFAULT NULL,
  `purchaseman` varchar(45) DEFAULT NULL COMMENT '采购员',
  `storagemanid` int(11) DEFAULT NULL,
  `storageman` varchar(45) DEFAULT NULL COMMENT '发货人员',
  `storageweight` decimal(12,3) DEFAULT '0.000' COMMENT '自制仓入库重量',
  `storagequantity` int(11) DEFAULT '0' COMMENT '自制仓入库数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='自制仓入库';

-- ----------------------------
-- Records of t_homemadestorage
-- ----------------------------

-- ----------------------------
-- Table structure for t_image
-- ----------------------------
DROP TABLE IF EXISTS `t_image`;
CREATE TABLE `t_image` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `recordid` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `extension` varchar(45) DEFAULT NULL,
  `image` mediumblob,
  `sort` smallint(2) DEFAULT '1',
  `remark` varchar(255) DEFAULT NULL,
  `createman` varchar(50) DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of t_image
-- ----------------------------
INSERT INTO `t_image` VALUES ('1', '2', '头像', '16', '', 0xFFD8FFE000104A46494600010101006000600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC000110800A000A003012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00EFAE257DEDF3541E7BAEEF9A9F71F7DAAB9AE83C82713BAFDE6A5F35F3D6AB8F9AA53F2D004BE6BB7F1535DA5746F9F6AFF17CB50C8EC89F2FDE6A73DE4496FB8B6DDBFC35E3E658A943F7503AF0F4AFEF315EEE5FB8CDF77F8AAB49AB7912AB3BFF00B3B557733564C97B35D3EC89B6AFF7BF8A9C88917CDB773FF7AB830F869A929B763AA51B9AFF00DB7BBE58A19DBFDE555A9BFB466FF9E5FF008F567C116C4DCDF79AA5AF51E22667F5781686AC17EFABA37FBB5341A9452BB2A4CBBBFBBF76B226DBBEA12DB5B77F0D6B1C54BA912C3C4E97CD7FEF51E6BB7F156241752DBB7CADB93FB8D5AF04A9749B93EF7F77F896BA615E2CE79D2921FE7CABF2EEA03CAA7EF525EA7D9D37BFDDFEF2D5613BB3ECF917E5F96B9E79861E0AF70FABCEF6B16FCD7DDF7A98657FEF5559256DACACFB5BF876D3C33322EEFEED561F190AF26A1D099D29416A58F39FFBF4C12BEEFBD4C3F32D03EF575998937FAD6A882AD4D37FAE6A89680183EF53CFDDDD4EAB7A6BA25C333AAECDBF7997EED6188ABEC69399B5087B49A890DEC56F03C4D1336E6466DACD5CB5E5C35D5D6C4FBB4BACDEBDDEB6F728EC8AABB176FF007696D62DABBDBEF3578587A4E72F693D59EA568460EC896389604F97FE04D446DBA6DCDF7689B95DAB440BF26EFEF57648C8BBBF751510655665A78A828865FBF4DDAADF2B7F153A4FBED5186F9AB58923ED435C4F15BEEDACEEA9BABA3B6D29749B8FB5DC5DA3448ACACCDF2EDAA5A7E89BD56EE5B864666DC9E52EEFFBEAB3BC4BA94B7977F66575F2626FE1FE26AF37115A5397241FA9DB87A1CDB9B336BDA5CF13DB3DCE165DBF36D6DABFF02AB6F6FA77F67CB2DA2A16589992556DD5E78576FF00155FD27507D3EF11D5BF74CDF3A3746AE4951F7743B27422CDDB2896E95A6951FF00E04BB6A74F95597F855B6AD685FDD35ED945F664799B72B36CFBAAB59E89B536EDDBF357A19445BAAD9E16361C8AC3FF0083EF509F3351B7E5A23FBD5F4679C132FEF99A99B6A59BFD6B532801A2AC4CD2C5A2CCDB1555BEEB7F7AA0FE1A66B13BFF0062C488EAE8CDF7D5BFF1DAF2F3397B8A1DD9E865F1FDE737639578B7CABFED355DE8BB56991AFEF97FD95AB01372EDFEF56718F2C6C6F29734AE41F36C666FBD56A38BF72B4EF20306DD56A387E4F9694892A85A0FCB577ECFB7E6AAF3C584A928A121DCB4D153F95F755A9E20DB5A926FF87BCD6B17DEAAB12CBF2B7DE66FFE26B92BF4DBA85C2B36E6DEDF35745A02CAAF34BE6B25BFDD65FEFB573D7E8C97B32BB6E6DEDF3578D38DAB33D5C2FC2624EEDE6B7CDF2D496B2FCFB59BFDDA86E976BB7FBD5142CDE6A6DFEF56FF0064E93D1FC317E5ED5EDD577345F37DEDBF7AACDE232DD3336EF9BE6F9AB07C24FF00F13174DDF7E26ADEBA695A665986D75F976D6D96AB625D8F27338C540AD9A7237CEB494A386AFA23C21F37FAE6A653E6FF005CD4940104EACC9B17F8AB32E5E28B4F78B72EF69772FF00BB5AA62F999FE66DD581A9BABDD6D5FE1AF071519CF13EFAD0F470F28C23A0C81B74AC6B4A04DF32D50D3577B3D6FE956EB3DD3AFF00752B7354316DFE5A9845B557E5AD2165F37DDFBB52FD899D36AFF0D2944B328A553BA46DAAB5B5F656CFCD50DC593FCDF2EEA231031C45FC58A5236A335680B565FBCB4C92D5976FCBF2355729257D196E16F96185F6C4DF33AB2EE5AA9E24B5F2AFFCD5DDB65FEF7F7AA5911D11DD372ED5DDB95AB6236B6D5F4D74BBD88DBB6AEE6F997FDAAF37174E4A7CE75E167CA79DDCDBF9BFEF547059B236E6ADFBFD16E6D5DD95565897EEBAFF0012D67F94EBFC159C6A1E8EE6AF85D3FE267BF72FC88DF7AB7E7695A66F39BE7A8B44D2E6D3AC5E66DBF6875DDB597EEAD05998FCCDB9ABBB2B8F3D5733C6CD271D100A02EE6A29CBF7ABDE3C51EEBBA56A6D121DB2B527F0FCB40C5AE52E55A7BB7DDF2B33B5755F3561DFD93C57A932AEE899F77FBB5CB888C9C4DB0F2F782CD364AABF7576EDAE93411B756887CAC5E361F3573323B429E6EDFBACB5A561A8793A85BCCC70AAFF007BFBBBBE5AE18F73D0894BC43F14E4F0DEBD3E9D36890DC88BABDADD7FE85F2FCAD5B7E16F899E1DF124EB671896C6F5FEEC172BB77FFBA7A35796EABE1599EE2E257FBCCECEEFFC4D56BC29E1ABED2FC4BA6DF23AB22CABB976FDE56F969F3AD8DBDD68F787B389BA0A89ECBE6ABF8C534FCCBF7AB4E520CB9ACA28977CD2A46BFDE66DB4496D0DD469E44914888BB7E46DD5E17F1521FB4F8BE68A16BA68A1550CCF3B3297EFB57F86B93B2B3D4ECA6596D1AF2275F9B7412B2FFE834A521F29F456A1A72456AF585341B4329FBBB6B47FB57ED5A0E9418BEF96059A5F35B7367EEFDEFF00BEAB2F53BA5587CA56F99EB1A9EF325FBA5BFB6CD05A226C5799176A3FFB3FED54BA7DEDB451449709B264F9B72A7CAF591A7EA9127C972CDB97E557DBF2EDABEED0DEAACB0CABB97EEED6AF1AAD294372E35E63E4B8BD595A5695FCA76F95377DD5A94AD448CD2B6E76DCABF77754A57757BF955294295DF53CCC54F9E41427DFA6FF00B54E4FBD5EA1CE4172ECD7AB17DDDD4EDEB07DF6F9BFBABFC54B7B6EB70CCADF2B2FDD6AA90E9DE56DDD337FF1558CB994BDD358F2BF8874D7E912FCC8FB99BEED53BFB8FB52C516FF00295DAAFBDAA3FCDB9D597FDAA961B5891B7EDDEFFDE6FE1A9946A4B465C654E3A9906CEE6E3FBAFB17F8BE5DD4CF2265468A68997FDA6ADF6A3E565DAFF77FBB4BEAEAC11C43B85AD926A9A7C570ACAB2B2EC955BFBCB5B1A568290CC934AE0F95CA22F45ACAB2B86D35DBCA55789BEF23575161A85A5D61627D8FFDC6FBD5CB2C3C94AE7742BD29C74DCBF8268C1154B537B94850DB67EF7CD85A5D3259E6B766B8CEECF195C5335B697390F13785D66D464BE58B7ACA7737CB9DAD59767A1A23CBB62F95BE6666F95517FDAAF46BB6851732CA89FEF1AE5358BD4BC89AD2D99D91BEFBFDDDCBFDDACA54A53279A10D64CC733C4CBE6A6E58B6AAA6EFEEAFDDAC5BC7695D9F76DFF66B627D2FED1B775C3A7FB2ABF2D45369016DF6A3B3B2FF007BF8AB55879C63739BEB10948C48E766F9215695DFEEAAAEEADAD2B4B74759664DBFC4AB4D81FEC6CBB62DA8BBB756AC17114FF71BE6FF006AB5A54E32F888AD397D925F95576AD37736DA1F72A36D5DCD50C770AF2F95FC7FFA1575F3463EE9C5CB27A932FF00B54E4EAB4DFE15A17EF2D508B46067BA756F9153E6666FE1A609D53EE429FEF3AEE6A9AF6ECCCAA87EF9F99DBFBDFDDAA8281FA161FCABA46D912C532AEEDABF75D6AB86FE1A7C0CC971132FF79692455595D57FBCD400A76FCB4CF9B7351BBF8568A000FDEA67F75BFBB47FE8543B6C4666F95517737FB2B40D1CA788FC6FE25F0E6BBE5585DA4B6AF02B791709BD55BFD96FBD5B9E1BF13EB9AC689F69BFBB5595E565DB0A6C0AB5C36B93AEADA93DC6DDABF2AA2B7F756B67C35AA25944B6332FEEB77CAFFDD66FEF572271E73D09C67ECB43AD7DCCFB99999BFBCD42D39D7E6DBB7E6ADDB0D1951165B90ACFFDCFE15ADAAD58D38EA704612998A914B2FDC89DFF00DD5ABB6D6ADB658AE2DB6FF75DBE56AE8826D5F97EED210ADB95ABCDC45795685A3A1D74A9C69CAF2383BF7D3D97CA9567B797F89D93E56FF80D568AC9DE257B6BB8AE17FB88DF3576D75A725C7DF4F3517F8196B9EBAD06C52E1DD666B6957E6FF76B8638AAB4BE3D4F47928CE3A68660BA9625DB12B6EFBBB1D7754B676F2F9DE74ABB1BFBB5AB6AF0BDA2B4D37DA597E5F9576BFF00F65514DF2BED546D9FC2CD5DF85C6D2A8F925B9C388A4E1F08E2BF27CB4D4FBD49B9A9EBF7ABD63CE09BFD6B5466A59BFD6B54740125AAEFBA4DDF757E66FF0080D30B6E766FE266DD5607FA3D93337DF9BE55FF00656AAFF1D030FBACD46690FCCD4DFF0069BF868195358BDFB069EEEBFEB5FE54FF00E2AAA596FB5F02DDDC4B2B33DDBEC5666F9B6FF9DD58DACDE7DB6EDD91B7449F227FB5FED5755AD69372FE1DB0B1B2859DA1DACCAADFECD734A576EC76C211825CDD4E00C5F337CD4F8D7673FDDAB93E8DAB23ED6D3EE3E5FEEAD34697AA3A6D5D3EE3E6FF0062B9F96475F344F52B6B54BDD42D7532CDB52DD576FF000B3B7CD9FF0080D6D8AC8D01654D06C96656597CA5DEADFC35A81AB92BCEF239E31B0F34DDD49BBE6A37563CC5F2816F96B1752B7962779911A557F99B6FF0D6B6EA477DABB957732FF76A27053566072D1AC4D0FCDC37FE83511F9A2DDBB77FB3BABAC2AADF7D1777FB4B55750893EC2FB5146DF9BE55ACA9E13F796B8A52B1809F326EA727DEA29C3EF2D7D4C4F2C7DC7FAD6A6C312B2B4AFC449F7BFDAFF66AE4F64F14AEF70CA912FF0012B7DEFF00656A9492F9ACAAABB117EEAAD31F2D82695A77676FF7557FBAB5177A7537BD0057BCBFB7B08B7DC4BB777DD5FE26AE4F55D726BFFDD45FBAB7FEEFF137FBD4BE27B3B8B7D41AEDB73DBCBF75BFB9FECD6209559AB92ACE5B1E850A50B5CD0D3626B8D4AD6DFF00BF2AAFFE3D5EC0FF007EBCD3C196BF68D79266FB96EBBFFE05FC35E97B9597753A31F749C4CBDEB0D0FF00354572BF26E1FF0002A70F96ABDE5D340AAAA8ADBBFBD5AC9D8CE942539D91A9036EB789BFD95A9BB565E9B7E9709E4FDC74FE1FEF2D688F9ABC5A91F78EA9465095A43F6B7DEFE1A69AE4EC7C23A8D97C42BCF1149ADCB2D8DC230164CC7E5E3EEFF776AD75277F9BF77E5A89479423A8EDACCBBA9814B6E89BE566FBBFEF5732DE13BD6F886BE25FEDA9C5AAC5B3EC5CEDFBB8C7F776FF001574F2960B9D9E62AFCCC9FDEAB8F2A638E8C9447F6B81B036CD1363E6FEF554BC75FB14BBBFBBB6B8AD5BC6FAB4D72F15B7FA146ADB76EDDCFF0089A8741D6EE6E9E6B1B999E5676F355DDB736EFEED75C6973C90ABFC1736A9C17E6A5A4EAD5EA1E516DEFE5799FED1B6643F791BFF0065FEED44F6EAE8CF6CDBD57EF27F1AD4322B2CAD422BA32BA6E56FEF2D03E6FE61BDA92ADF9A93FF00C7C26D7FF9EA9FFB32D36E6C26B74597E5789BEEBAD016EC5492249E268A545747F9595BF8ABCBAF3CA8AFA64B7666855D953FDDAF42D72F1AC34995D7EFBFEE93FDE6AF398EDDA5B84853EF3B2AAFFC0AB9AB3FB277612368B67A3782ED7C9D17ED2EBF3DC3EEFF0080AD745E6B2AFDEA64165F63B486DC2FCB122AD26D6FEED6918DA3639AA4AF2B9379FB57E6F9A9926CBA4DBBB6BFF0B533637F769AAAC1F34E51BE85539CA12E643ACEC374BBDDF6EC6F97637CD59BAC78D65F0E6B5F64BDB1FB45AB22BA4B136D7FFBE6B6ED7E467DB16CDCDBBEF7DEAE5FE21D96EB5B0BDDBF32B344DFFA12D734E94790EB75A55AA6A757A4F8874ED5EC96E6DA56546F97F7ABB595AB484B0BFCCB2A37FC0ABCBBC1D2B2C3776AA3E556575AE9CA37F76A23838CE37B984EAF24AC74ED2C4BD6641FF02A867D5AC6CE16966B84545F999AB93BFBD8B4DB7F366566DDF7557F8AB8EBFD46E7519774CDB517EEC4BF756A2585843765D294EA7A177C4FAD45AD6AAB2D959F9688BB5A56FBD2FF00B54ED02C2E25BD8AED7E48626FBCDFC5FECAD4DA3787DA744B9BBFF54DF32A2B7DEFF7ABA944D89B5515557EEAAD7452A3F682BE222A3C880FDEF9684F95E82ADBB6EDA02B6EFBB5D6701FFFD9, '1', '', 'admin', '2015-05-17 19:58:26');
INSERT INTO `t_image` VALUES ('2', '1', '头像', '16', '', 0x47494638396164006400F700000000000000330000660000990000CC0000FF002B00002B33002B66002B99002BCC002BFF0055000055330055660055990055CC0055FF0080000080330080660080990080CC0080FF00AA0000AA3300AA6600AA9900AACC00AAFF00D50000D53300D56600D59900D5CC00D5FF00FF0000FF3300FF6600FF9900FFCC00FFFF3300003300333300663300993300CC3300FF332B00332B33332B66332B99332BCC332BFF3355003355333355663355993355CC3355FF3380003380333380663380993380CC3380FF33AA0033AA3333AA6633AA9933AACC33AAFF33D50033D53333D56633D59933D5CC33D5FF33FF0033FF3333FF6633FF9933FFCC33FFFF6600006600336600666600996600CC6600FF662B00662B33662B66662B99662BCC662BFF6655006655336655666655996655CC6655FF6680006680336680666680996680CC6680FF66AA0066AA3366AA6666AA9966AACC66AAFF66D50066D53366D56666D59966D5CC66D5FF66FF0066FF3366FF6666FF9966FFCC66FFFF9900009900339900669900999900CC9900FF992B00992B33992B66992B99992BCC992BFF9955009955339955669955999955CC9955FF9980009980339980669980999980CC9980FF99AA0099AA3399AA6699AA9999AACC99AAFF99D50099D53399D56699D59999D5CC99D5FF99FF0099FF3399FF6699FF9999FFCC99FFFFCC0000CC0033CC0066CC0099CC00CCCC00FFCC2B00CC2B33CC2B66CC2B99CC2BCCCC2BFFCC5500CC5533CC5566CC5599CC55CCCC55FFCC8000CC8033CC8066CC8099CC80CCCC80FFCCAA00CCAA33CCAA66CCAA99CCAACCCCAAFFCCD500CCD533CCD566CCD599CCD5CCCCD5FFCCFF00CCFF33CCFF66CCFF99CCFFCCCCFFFFFF0000FF0033FF0066FF0099FF00CCFF00FFFF2B00FF2B33FF2B66FF2B99FF2BCCFF2BFFFF5500FF5533FF5566FF5599FF55CCFF55FFFF8000FF8033FF8066FF8099FF80CCFF80FFFFAA00FFAA33FFAA66FFAA99FFAACCFFAAFFFFD500FFD533FFD566FFD599FFD5CCFFD5FFFFFF00FFFF33FFFF66FFFF99FFFFCCFFFFFF00000000000000000000000021F904010000FC002C00000000640064000008FF00F7091C48B0A0C18308132A5CC8B0A1C38710234A9C48B1A2C58B18336ADCC8B1A3C78F20438A1C49B2A4C9932853AA4CA94C59A64C93D0C49CF49298B2952A95C9CC448C18B47A3FA1D9848946CC4D9C225D8AE119749F32A0F50ABA9C6414A947654B89095C464FD932655D5B8A6D39506926AB19B1667A3A166CCBAFF55AC68DFB14DA40624BD15684C9762CBDAF5FC38695DBB2EB327D023355D5FB10EFB06862FFFA7DEBD56B576894B97A15A88C26E386C4DCF8FDFAD6F0E4CC5D07934D7CF67342BE9A49AB2EDCD6ADD8AFD1528B1588F7A86B822FDD06BE2D3C3269D2B607C35D8DD5F76FD8B42BDB1E8B5C39E5BE6DA362FD2D50D324C1D7ADDBFFB6A98CFCE9DB5DE9DA55FC9B189AEBC36B9B973F9D70FDB8AC3FEB332A36EE6CE46391379F806D1D3796409268A557707411C7964DF490574C4BE69907E0648685B5CF3268E845CC24D4CD561B8530BD34094D3611589E78D7ED03135A6280025E6561A948CC4BF44875234FD4D506DE3202BD87D48D998D58DB5A0ADD98627914C2776067384123067983D5D824933732040D4D3E9E96DE3E42E604E288178EC593432012A8A2743765A91297923DD8E492E5B9C9904B4CB615E781FB88A1523DEF1939A279AD35C4639E8842C8A48B859624D45A9689B5668053F9565E2632A181A453905ED9E36E374675129792463727A297CE5493A4DF0934099D018AFF08A67323E9341F80F3519A6BA94369925885A8DA14974DFB807852672DBD13DD8457C2CA2BAA2DB58667AEBB92A5C930B486E45E5BD5728B257D2966320C6F9DDE0A6D3DC9343A5270F4350BADAE016EEA129D6B0A08CD326200391250AFBE9B28BCCE32195C599DFA5B659F8891540FBB6115A31AB546865B62413C39ABE232E4CDAAAF485B02EBE9A9A792F7D2C0061DFAEDC714F679D294369519F0AE3B663BD03290424C295946251CD24D68802228BCA7D6B4D030E5063B2298F54453D224D83219A1BB378B35895D0BF10873AC29BF27EACEC516CC669E365EAAA042EC7EEB714BCCAAACB3487C950A96CD6D654275424406FCEF81466D0CD24D6DC7FF3920C0C82A34EF589A9C3C684B7E9614D798DD827DA4CC4EA1787232DED69B496E240985C6AECC5E1DEED89CEEE4B9E193B9384CD2FBEE13CD9463B913F1BB930CB46AD8DD9E0DA8576B7FA44F6EEC1283DCA4209F596CB536F96C76D4E42DA6B03EC4A4D1F8B3DCBA41EEF14D626B3CCAA4DD78D8D6214503147F925A6934A15AE13916284D3F7B36599B23A6F448BBD3C3D7D35F47FD2DA6159FBCE4F3041AE5BD4940710FDCE0E6B676712B19FB8BCC53C4853994D0CC6B9EB218D8C455386220507DAF130B7F507293F2F0C761A6F29699B8A48955F9CC269F00DA801E98B41C9D443B6DCB53F6222836A9AC454D4C325EB78CF29394C40F2B042CA0F0FF0A42A4DA5CF066104A03B6EAB1BB94309166811214B03A8490495C3081A4F34A70E8F1BE94780F2C92C35857602532D051AC708743E206B9779284B584543F138BF41092890B628B18A020201AB0B50CA0E0E4305F710CB8E63444820C6E9001E2D26118D31550B0CC2B7F339326D6D6191C124F2720A2470FADE2BD7BB9445352CCD33068F2124DCDE78450730FA4F48616268E312B50739B267A02AC1451CE539A90048F80E442BD28AD321F92C4E11A77494965421268DC478EBAA897A8E8235A69E897DDE825960ADE8D6F4BC10F7776171798DCB272060CA26FB8C49DB22C4584103B1BB6D0A8BFA3A8A59C6D0BE4304568B49FB94A5D68E91B22A157FF4FC7A12A31CAB30A1CD707B20252535074995E3E5759C0828A257D16BC1EE5C2C62DBB0011270BCB246D7E07AE3CD2908CD931CF5C3805B9758DA97E488CE329FB19428B8A818D24695B832024C1E381349257420E5DA2F2120E824F812E8BE3F56AD95007EDA66B2BF3495F82AABE2B4E6E80C9290C72F6B19F92722438D5A1A7BF22A6C3ADCAF334FBB0D3CEF8131679D2AF9E09AC17E010159BCA2C7212BE629B26AA549B0B014F52DF24CF11EDD725B240030DBDBC8A30DDDA1FB75D128D67B30962D1AA40F4B828AE1FA14956F94A3D1AA2CC80D3615683A212D08DE82435C861163FB5EAB1B4FEEBAE071A86193542A40B0D2692582CCF2D117BBD96FF7C93A5E7519D18E69691DC802F431FC3A941DBE2543C1ED4B0C30250B1AC3A11646116A76A1D2D5451EBBA366502A615A1C71BD6D239FB41D7B2FC04691A8FB65B8EB04EAA6914AF3228E751878262AFC9686F650FEAA2D552241AC4C0C43C6B27DDF562D070C534EA3E88B611D8886F9004BD29661D37CD52AD8EB90D61E279F32419D41295AF74F2A82DE5EBD03C45050DD8950887CCF533F5A6145AFC7BD7AEEACBDB893C338AB4B164382FEBCFA69976AD8E5B183E27F221CA3CCF9FDE45D98FB3781E6560E6A517894670885156FB9418BCA4A5DEDF7008B6B8A0A18915A907D13248E51FC7969841FE993EC6F0148B6CA970331A4B83DA855A363FF72FC4E6015360251215A64907639112721C551CCAA25234656980B042ECC29FF91C58CF408E258333D8E79B30C2AA0101003B, '1', '', 'admin', '2015-06-14 12:01:36');

-- ----------------------------
-- Table structure for t_inventory
-- ----------------------------
DROP TABLE IF EXISTS `t_inventory`;
CREATE TABLE `t_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountdate` date NOT NULL COMMENT '月结日期',
  `isaccount` tinyint(2) NOT NULL COMMENT '结算标记',
  `createman` varchar(45) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `modifyman` varchar(45) NOT NULL,
  `modifytime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_inventory
-- ----------------------------

-- ----------------------------
-- Table structure for t_inventoryaccount
-- ----------------------------
DROP TABLE IF EXISTS `t_inventoryaccount`;
CREATE TABLE `t_inventoryaccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `accountdate` date NOT NULL,
  `productid` int(11) NOT NULL,
  `remainweight` decimal(12,3) DEFAULT NULL,
  `remainquantity` int(8) DEFAULT NULL,
  `homemadeweight` decimal(12,3) DEFAULT NULL,
  `homemadepackages` int(8) DEFAULT NULL,
  `createman` varchar(45) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `modifyman` varchar(45) NOT NULL,
  `modifytime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_inventoryaccount
-- ----------------------------

-- ----------------------------
-- Table structure for t_loadingbills
-- ----------------------------
DROP TABLE IF EXISTS `t_loadingbills`;
CREATE TABLE `t_loadingbills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL COMMENT '提货单号',
  `signdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '签发时间',
  `billmanid` int(11) DEFAULT NULL,
  `billman` varchar(45) DEFAULT NULL COMMENT '开单人',
  `companyid` int(11) DEFAULT NULL COMMENT '提货单位ID',
  `companycode` varchar(45) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL COMMENT '提货单位',
  `warehouse` varchar(100) DEFAULT NULL COMMENT '仓库',
  `storagefee` decimal(12,3) DEFAULT '0.000' COMMENT '仓储费',
  `createman` varchar(45) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `modifyman` varchar(45) NOT NULL,
  `modifytime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_loadingbill_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='提货单';

-- ----------------------------
-- Records of t_loadingbills
-- ----------------------------
INSERT INTO `t_loadingbills` VALUES ('8', '00000008', '2015-06-28 11:33:19', '6', 'admin', '4', '000004', '杭州火图科技', '', '0.000', 'admin', '2015-06-28 11:33:19', 'admin', '2015-06-28 11:33:19');
INSERT INTO `t_loadingbills` VALUES ('9', '00000009', '2015-06-28 11:34:18', '6', 'admin', '4', '000004', '杭州火图科技', '', '0.000', 'admin', '2015-06-28 11:34:18', 'admin', '2015-06-28 11:34:18');
INSERT INTO `t_loadingbills` VALUES ('10', '00000010', '2015-06-28 11:53:49', '6', 'admin', '4', '000004', '杭州火图科技', '', '0.000', 'admin', '2015-06-28 11:53:49', 'admin', '2015-06-28 11:53:49');
INSERT INTO `t_loadingbills` VALUES ('11', '00000011', '2015-06-28 13:26:11', '6', 'admin', '3', '000003', '杭州市通策会', '', '0.000', 'admin', '2015-06-28 13:26:11', 'admin', '2015-06-28 13:26:11');
INSERT INTO `t_loadingbills` VALUES ('12', '00000012', '2015-06-28 14:29:09', '6', 'admin', '6', '000006', '杭州万事利', '', '0.000', 'admin', '2015-06-28 14:29:09', 'admin', '2015-06-28 14:29:09');

-- ----------------------------
-- Table structure for t_loadingdetail
-- ----------------------------
DROP TABLE IF EXISTS `t_loadingdetail`;
CREATE TABLE `t_loadingdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `productcode` varchar(45) DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `specification` varchar(45) DEFAULT NULL,
  `shipname` varchar(50) DEFAULT NULL,
  `billofgoods` varchar(45) DEFAULT NULL,
  `tons` decimal(12,3) NOT NULL DEFAULT '0.000',
  `packages` int(11) NOT NULL DEFAULT '0',
  `unitprice` decimal(12,3) DEFAULT '0.000',
  `remark` varchar(255) DEFAULT NULL,
  `contractid` int(11) DEFAULT '0' COMMENT '合同主键id',
  `contractno` varchar(45) DEFAULT NULL COMMENT '合同编号',
  `contractseq` int(11) DEFAULT NULL COMMENT '合同明细中的序号',
  `contractdetailid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='提货单明细';

-- ----------------------------
-- Records of t_loadingdetail
-- ----------------------------
INSERT INTO `t_loadingdetail` VALUES ('9', '8', '2', '00000003', '墨绿', 'A', '发非', '大多少', '8.000', '8', '0.000', '234324', '7', '15050006', '1', '15');
INSERT INTO `t_loadingdetail` VALUES ('10', '10', '2', '00000003', '墨绿', 'A', '发非', '大多少', '92.000', '0', '0.000', '', '7', '15050006', '1', '15');
INSERT INTO `t_loadingdetail` VALUES ('11', '11', '12', '00000013', '大同', '', '', '', '5.000', '5', '0.000', '', '11', 'ZD15050010', '1', '19');
INSERT INTO `t_loadingdetail` VALUES ('12', '11', '11', '00000012', '古巴', '', '', '', '5.000', '5', '0.000', '', '11', 'ZD15050010', '1', '19');
INSERT INTO `t_loadingdetail` VALUES ('13', '12', '15', '00000016', '天高', '', '', '', '2.000', '0', '0.000', '', '8', '15050007', '1', '14');

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL COMMENT '鱼粉ID:',
  `name` varchar(45) NOT NULL COMMENT '品名:',
  `brand` varchar(45) DEFAULT NULL COMMENT '品牌：',
  `state` varchar(45) DEFAULT NULL COMMENT '状态：',
  `nature` varchar(45) DEFAULT NULL COMMENT '国别:',
  `origin` varchar(45) DEFAULT NULL COMMENT '产地:',
  `type` varchar(45) DEFAULT NULL COMMENT '鱼种分类：',
  `getinfotime` timestamp NULL DEFAULT NULL COMMENT '获取信息时间：',
  `endinfotime` timestamp NULL DEFAULT NULL COMMENT '结束时间：',
  `techtype` varchar(45) DEFAULT NULL COMMENT '工艺分类:',
  `specification` varchar(45) DEFAULT NULL COMMENT '品质规格:',
  `productdate` varchar(100) DEFAULT NULL COMMENT '生产日期：',
  `shelflife` decimal(2,0) DEFAULT '0' COMMENT '保质期：',
  `quality` varchar(45) DEFAULT NULL COMMENT '货品评判：',
  `manufacturers` varchar(100) DEFAULT NULL COMMENT '生产厂家',
  `factoryaddress` varchar(100) DEFAULT NULL COMMENT '生产厂家地址',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `weight` decimal(12,3) DEFAULT '0.000' COMMENT '重量（吨）：',
  `quantity` int(11) DEFAULT '0' COMMENT '数量（包）：',
  `remainweight` decimal(12,3) DEFAULT '0.000' COMMENT '剩余重量（吨）：',
  `remainquantity` int(11) DEFAULT '0' COMMENT '剩余数量（包）',
  `homemadeweight` decimal(12,3) DEFAULT '0.000' COMMENT '自制仓重量：',
  `homemadepackages` int(11) DEFAULT '0' COMMENT '自制仓包数：',
  `homemadecost` decimal(12,3) DEFAULT '0.000' COMMENT '自制仓成本：',
  `homemadeunitprice` decimal(12,3) DEFAULT '0.000' COMMENT '自制仓单价：',
  `price` decimal(12,3) DEFAULT '0.000' COMMENT '购买价格（RMB）：',
  `arriveportdate` varchar(45) DEFAULT NULL COMMENT '到港时间：',
  `sailingschedule` varchar(45) DEFAULT NULL COMMENT '装货时间：',
  `billofgoods` varchar(45) DEFAULT NULL COMMENT '提单号：',
  `agentifcompany` varchar(45) DEFAULT NULL COMMENT '代理开证公司：',
  `customsofcompany` varchar(45) DEFAULT NULL COMMENT '货代报关公司：',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createman` varchar(45) DEFAULT NULL,
  `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifyman` varchar(50) DEFAULT NULL,
  `isdelete` tinyint(4) DEFAULT '0',
  `quote_protein` decimal(6,2) DEFAULT NULL COMMENT '报盘_蛋白',
  `quote_tvn` decimal(8,2) DEFAULT NULL COMMENT '报盘_tvn',
  `quote_graypart` decimal(6,2) DEFAULT NULL COMMENT '报盘_灰份',
  `quote_sandsalt` decimal(6,2) DEFAULT NULL COMMENT '报盘_沙和盐',
  `quote_amine` decimal(6,2) DEFAULT '0.00' COMMENT '报盘_组胺',
  `quote_ffa` decimal(6,2) DEFAULT NULL COMMENT '报盘_ffa',
  `quote_fat` decimal(6,2) DEFAULT NULL COMMENT '报盘_脂肪',
  `quote_water` decimal(6,2) DEFAULT NULL COMMENT '报盘_水分',
  `quote_sand` decimal(6,2) DEFAULT NULL COMMENT '报盘_沙',
  `supplierid` int(8) DEFAULT NULL COMMENT '供应商ID',
  `suppliercode` varchar(45) DEFAULT NULL COMMENT '供应商编号',
  `supplier` varchar(100) DEFAULT NULL COMMENT '供应商名称',
  `linkmanid` int(8) DEFAULT NULL COMMENT '联系人ID',
  `linkmancode` varchar(45) DEFAULT NULL COMMENT '联系人编号',
  `linkman` varchar(45) DEFAULT NULL COMMENT '联系人名称',
  `latestquote` decimal(12,3) DEFAULT '0.000' COMMENT '最近报价',
  `sgs_protein` decimal(6,2) DEFAULT NULL,
  `sgs_tvn` decimal(8,2) DEFAULT NULL,
  `sgs_graypart` decimal(6,2) DEFAULT NULL,
  `sgs_sandsalt` decimal(6,2) DEFAULT NULL,
  `sgs_amine` decimal(6,2) DEFAULT '0.00' COMMENT 'SGS_组胺',
  `sgs_ffa` decimal(6,2) DEFAULT NULL,
  `sgs_fat` decimal(6,2) DEFAULT NULL,
  `sgs_water` decimal(6,2) DEFAULT NULL,
  `sgs_sand` decimal(6,2) DEFAULT NULL,
  `label_protein` decimal(6,2) DEFAULT NULL,
  `label_tvn` decimal(8,2) DEFAULT NULL,
  `label_graypart` decimal(6,2) DEFAULT NULL,
  `label_sandsalt` decimal(6,2) DEFAULT NULL,
  `label_amine` decimal(6,2) DEFAULT '0.00' COMMENT '标签_组胺',
  `label_ffa` decimal(6,2) DEFAULT NULL,
  `label_fat` decimal(6,2) DEFAULT NULL,
  `labe_water` decimal(6,2) DEFAULT NULL,
  `label_sand` decimal(6,2) DEFAULT NULL COMMENT '标签指标:赖安酸',
  `label_lysine` decimal(6,2) DEFAULT NULL,
  `label_methionine` decimal(6,2) DEFAULT NULL COMMENT '标签指标:蛋安酸',
  `domestic_protein` decimal(6,2) DEFAULT NULL COMMENT '国内实测指标：蛋白',
  `domestic_tvn` decimal(8,2) DEFAULT NULL COMMENT '国内实测指标：TVN',
  `domestic_graypart` decimal(6,2) DEFAULT NULL COMMENT '国内实测指标：灰份',
  `domestic_sandsalt` decimal(6,2) DEFAULT NULL COMMENT '国内实测指标：盐和砂',
  `domestic_sour` decimal(6,2) DEFAULT NULL COMMENT ' 国检酸价',
  `domestic_lysine` decimal(6,2) DEFAULT NULL COMMENT '国内实测指标：赖氨酸',
  `domestic_amine` decimal(6,2) DEFAULT NULL COMMENT '国检组胺',
  `domestic_aminototal` decimal(6,2) DEFAULT NULL COMMENT '国检氨基酸总和',
  `domestic_methionine` decimal(6,2) DEFAULT NULL COMMENT '国内实测指标：蛋安酸',
  `domestic_fat` decimal(6,2) DEFAULT NULL COMMENT '国检脂肪',
  `ownercode` varchar(45) DEFAULT NULL COMMENT '货主编号',
  `ownershortname` varchar(45) DEFAULT NULL COMMENT '货主简称',
  `ownername` varchar(100) DEFAULT NULL COMMENT '货主名称',
  `goodsinfo` varchar(45) DEFAULT NULL COMMENT '货物情况',
  `shipno` varchar(45) DEFAULT NULL COMMENT '船名',
  `cornerno` varchar(45) DEFAULT NULL COMMENT '桩角号',
  `tariffrate` decimal(8,4) DEFAULT NULL COMMENT '关税税率',
  `samplingtime` varchar(45) DEFAULT NULL COMMENT '取样时间',
  `warehouse` varchar(256) DEFAULT NULL COMMENT '仓库',
  `sgsweight` decimal(6,2) DEFAULT NULL COMMENT 'SGS重量',
  `sgsquantity` int(11) DEFAULT NULL COMMENT 'SGS数量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_product_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='鱼粉资料';

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('2', '00000003', '墨绿', '耐克', '2', '英国', '浙江杭州', '原装', '2015-05-21 20:01:53', '2015-05-21 20:01:53', '进口', '普通', '阿斯顿飞', '3', '次品', '杭州鱼粉加工厂', '阿萨德发', '的萨芬啊', '0.000', '0', '0.000', '0', '0.000', '0', '0.000', '0.000', '0.000', '', '', '大多少', '', '', '2015-05-21 20:02:00', 'admin', '2015-05-21 20:02:00', 'admin', '1', '1.00', '0.00', '3.00', '4.00', '0.00', '6.00', '7.00', '8.00', '9.00', '1', '000001', '杭州市景芳', '1', '00000001', '金向东', '0.000', '0.00', '0.00', '0.00', '0.00', '9999.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '期盘', '发非', '奥丹斯发', '4.0000', '', '阿斯顿飞', '0.00', '0');
INSERT INTO `t_product` VALUES ('3', '00000004', '发型', '', '2', '', '', '', '2015-05-23 21:17:24', '2015-05-23 21:17:24', '', '普通', '', '0', '', '', '', '', '0.000', '0', '0.000', '0', '0.000', '0', '0.000', '0.000', '0.000', '', '', '', '', '', '2015-05-23 21:17:31', 'admin', '2015-05-23 21:17:31', 'admin', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '', '', '0', '', '', '0.000', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '11.00', '12.00', '14.00', '16.00', '15.00', '22.00', '13.00', '23.00', '17.00', '18.00', '', '', '', '', '', '', '0.0000', '2015.02.02', '', '0.00', '0');
INSERT INTO `t_product` VALUES ('4', '00000005', '发型', '', '1', '', '', '', '2015-05-24 13:01:45', '2015-05-24 13:01:45', '', '赤贫', '', '0', '', '', '', '', '0.000', '0', '0.000', '0', '0.000', '0', '0.000', '0.000', '0.000', '', '', '', '', '', '2015-05-24 13:01:50', 'admin', '2015-05-24 13:01:50', 'admin', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '', '', '0', '', '', '0.000', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '', '', '', '0.0000', '', '', null, null);
INSERT INTO `t_product` VALUES ('5', '00000006', '泌乳', '', '1', '美国', '', '', '2015-05-25 08:54:58', '2015-05-25 08:54:58', '', '优良', '', '0', '', '', '', '发送 ', '0.000', '0', '0.000', '0', '0.000', '0', '0.000', '0.000', '0.000', '', '', '', '', '', '2015-05-25 08:55:12', 'admin', '2015-05-25 08:55:12', 'admin', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '', '', '0', '', '', '0.000', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '预售', '', '', '0.0000', '', '', '0.00', '0');
INSERT INTO `t_product` VALUES ('6', '00000007', '古巴', '', '1', '', '', '', '2015-05-25 08:55:16', '2015-05-25 08:55:16', '', '普通', '', '0', '', '', '', '', '0.000', '0', '0.000', '0', '0.000', '0', '0.000', '0.000', '0.000', '', '', '', '', '', '2015-05-25 08:55:22', 'admin', '2015-05-25 08:55:22', 'admin', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '', '', '0', '', '', '0.000', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '', '', '', '0.0000', '', '', null, null);
INSERT INTO `t_product` VALUES ('7', '00000008', '美乐', '', '1', '', '', '', '2015-05-25 08:55:25', '2015-05-25 08:55:25', '', '超级', '', '0', '', '', '', '', '0.000', '0', '0.000', '0', '0.000', '0', '0.000', '0.000', '0.000', '', '', '', '', '', '2015-05-25 08:55:30', 'admin', '2015-05-25 08:55:30', 'admin', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '', '', '0', '', '', '0.000', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '', '', '', '0.0000', '', '', null, null);
INSERT INTO `t_product` VALUES ('8', '00000009', '天高', '', '3', '', '', '', '2015-05-25 16:46:41', '2015-05-25 16:46:41', '', '', '', '0', '', '', '', '', '0.000', '0', '0.000', '0', '0.000', '0', '0.000', '0.000', '0.000', '', '', '', '', '', '2015-05-25 16:46:48', 'admin', '2015-05-25 16:46:48', 'admin', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '', '', '0', '', '', '0.000', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '', '', '', '0.0000', null, '', null, null);
INSERT INTO `t_product` VALUES ('9', '00000010', '大同', '阿迪达斯', '3', '中国', '东阳', '原装', '2015-05-25 16:46:51', '2015-05-25 16:46:51', '进口', 'C', '12313', '0', '次品', '杭州鱼粉加工厂', '123132', '1321', '0.000', '0', '0.000', '0', '0.000', '0', '0.000', '0.000', '0.000', '', '', '22222', '', '', '2015-05-25 16:46:56', 'admin', '2015-05-25 16:46:56', 'admin', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '', '', '0', '', '', '0.000', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '预售', '1231231', '1321', '0.0100', '', '231', null, null);
INSERT INTO `t_product` VALUES ('10', '00000011', '我飞', '', '3', '', '', '', '2015-05-25 16:47:01', '2015-05-25 16:47:01', '', 'B', '', '0', '', '', '', '', '0.000', '0', '0.000', '0', '0.000', '0', '0.000', '0.000', '0.000', '', '', '', '', '', '2015-05-25 16:47:09', 'admin', '2015-05-25 16:47:09', 'admin', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '', '', '0', '', '', '0.000', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '', '', '', '0.0000', '', '', null, null);
INSERT INTO `t_product` VALUES ('11', '00000012', '古巴', '', '4', '', '', '', '2015-05-26 15:57:54', '2015-05-26 15:57:54', '', '', '', '0', '', '', '', '', '0.000', '0', '0.000', '0', '0.000', '0', '0.000', '0.000', '0.000', '', '', '', '', '', '2015-05-26 15:57:58', 'admin', '2015-05-26 15:57:58', 'admin', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '', '', '0', '', '', '0.000', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '', '', '', '0.0000', null, '', null, null);
INSERT INTO `t_product` VALUES ('12', '00000013', '大同', '', '4', '', '', '', '2015-05-26 15:58:00', '2015-05-26 15:58:00', '', '', '', '0', '', '', '', '', '0.000', '0', '0.000', '0', '0.000', '0', '0.000', '0.000', '0.000', '', '', '', '', '', '2015-05-26 15:58:04', 'admin', '2015-05-26 15:58:04', 'admin', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '', '', '0', '', '', '0.000', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '', '', '', '0.0000', null, '', null, null);
INSERT INTO `t_product` VALUES ('13', '00000014', '泌乳', '阿迪达斯', '5', '中国', '', '', '2015-05-27 16:23:01', '2015-05-27 16:23:01', '', '', '', '0', '', '', '', '杭州', '0.000', '0', '0.000', '0', '0.000', '0', '0.000', '0.000', '0.000', '', '', 'B001', '', '', '2015-05-27 16:23:09', 'admin', '2015-05-27 16:23:09', 'admin', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '', '', '0', '', '', '0.000', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '10.00', '20.01', '40.00', '50.00', '60.00', '80.00', '30.00', '100.00', '90.00', '70.00', '', '', '', '', 'S001', '', '0.0000', '', '', null, null);
INSERT INTO `t_product` VALUES ('14', '00000015', '古巴', '李宁', '7', '英国', '', '', '2015-05-27 20:46:44', '2015-05-27 20:46:44', '', '', '', '0', '', '', '', '', '0.000', '0', '0.000', '0', '0.000', '0', '0.000', '0.000', '0.000', '', '', '', '', '', '2015-05-27 20:46:51', 'admin', '2015-05-27 20:46:51', 'admin', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '', '', '0', '', '', '0.000', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '', '', '', '0.0000', '', '', null, null);
INSERT INTO `t_product` VALUES ('15', '00000016', '天高', '耐克', '5', '美国', '', '', '2015-05-28 21:37:36', '2015-05-28 21:37:36', '', '', '', '0', '', '', '', '', '0.000', '0', '0.000', '0', '0.000', '0', '0.000', '0.000', '0.000', '', '', '', '', '', '2015-05-28 21:38:18', 'admin', '2015-05-28 21:38:18', 'admin', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '', '', '0', '', '', '0.000', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '21.00', '22.00', '24.00', '25.00', '26.00', '28.00', '23.00', '30.00', '29.00', '27.00', '', '', '', '', '', '', '0.0000', '', '', null, null);
INSERT INTO `t_product` VALUES ('16', '00000017', '泌乳', '', '7', '英国', '', '', '2015-05-30 12:04:06', '2015-05-30 12:04:06', '', '', '', '0', '', '', '', '', '0.000', '0', '0.000', '0', '0.000', '0', '0.000', '0.000', '0.000', '', '', '', '', '', '2015-05-30 12:04:14', 'admin', '2015-05-30 12:04:14', 'admin', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '', '', '0', '', '', '0.000', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '21.00', '22.00', '24.00', '25.00', '26.00', '28.00', '23.00', '30.00', '29.00', '27.00', '', '', '', '', '', '', '0.0000', null, '', null, null);
INSERT INTO `t_product` VALUES ('17', '00000018', '古巴', '', '3', '', '', '', '2015-05-31 21:24:01', '2015-05-31 21:24:01', '', '', '', '0', '', '', '', '', '0.000', '0', '0.000', '0', '0.000', '0', '0.000', '0.000', '0.000', '', '', '', '', '', '2015-05-31 21:24:11', 'admin', '2015-05-31 21:24:11', 'admin', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '', '', '0', '', '', '0.000', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '', '', '', '0.0000', null, '', null, null);
INSERT INTO `t_product` VALUES ('18', '00000019', '墨绿', '', '', '', '', '', '2015-06-20 21:08:02', '2015-06-20 21:08:02', '', '', '', '0', '', '', '', '', '0.000', '0', '0.000', '0', '0.000', '0', '0.000', '0.000', '0.000', '', '', '', '', '', '2015-06-20 21:08:13', 'admin', '2015-06-20 21:08:13', 'admin', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '', '', '0', '', '', '0.000', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '', '', '', '0.0000', null, '', null, null);
INSERT INTO `t_product` VALUES ('19', '00000020', '泌乳', '', '', '', '', '', '2015-07-16 20:40:15', '2015-07-16 20:40:15', '', '', '', '0', '', '', '', '', '0.000', '0', '0.000', '0', '0.000', '0', '0.000', '0.000', '0.000', '', '', '', '', '', '2015-07-16 20:40:21', 'admin', '2015-07-16 20:40:21', 'admin', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '', '', '0', '', '', '0.000', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '', '', '', '0.0000', '', '', '0.00', '0');

-- ----------------------------
-- Table structure for t_productex
-- ----------------------------
DROP TABLE IF EXISTS `t_productex`;
CREATE TABLE `t_productex` (
  `id` int(11) NOT NULL,
  `quotedate` varchar(45) DEFAULT NULL,
  `quoteweight` decimal(8,3) DEFAULT NULL,
  `quotequantity` int(11) DEFAULT NULL,
  `quotedollars` decimal(10,2) DEFAULT NULL,
  `quotermb` decimal(10,2) DEFAULT NULL,
  `quotesuppliercode` varchar(45) DEFAULT NULL,
  `quotesupplier` varchar(255) DEFAULT NULL,
  `quotelinkmancode` varchar(45) DEFAULT NULL,
  `quotelinkman` varchar(255) DEFAULT NULL,
  `quoteproductyear` varchar(45) DEFAULT NULL,
  `quoteproductdate` varchar(45) DEFAULT NULL,
  `quotelife` varchar(45) DEFAULT NULL,
  `quotesaildatefast` varchar(45) DEFAULT NULL,
  `quotesaildatelate` varchar(45) DEFAULT NULL,
  `confirmdate` varchar(45) DEFAULT NULL,
  `confirmsgsweight` decimal(8,3) DEFAULT NULL,
  `confirmsgsquantity` int(11) DEFAULT NULL,
  `confirmdollars` decimal(10,2) DEFAULT NULL,
  `confirmrmb` decimal(10,2) DEFAULT NULL,
  `confirmagentcode` varchar(45) DEFAULT NULL,
  `confirmagent` varchar(255) DEFAULT NULL,
  `confirmlinkmancode` varchar(45) DEFAULT NULL,
  `confirmlinkman` varchar(255) DEFAULT NULL,
  `confirmproductyear` varchar(45) DEFAULT NULL,
  `confirmproductdate` varchar(45) DEFAULT NULL,
  `confirmlife` varchar(45) DEFAULT NULL,
  `confirmsaildate` varchar(45) DEFAULT NULL COMMENT ' 确定船期',
  `spotdate` varchar(45) DEFAULT NULL,
  `spotweight` decimal(8,3) DEFAULT NULL,
  `spotquantity` int(255) DEFAULT NULL,
  `spotdollars` decimal(8,2) DEFAULT NULL,
  `spotrmb` decimal(10,2) DEFAULT NULL,
  `spotagentcode` varchar(45) DEFAULT NULL,
  `spotagent` varchar(255) DEFAULT NULL,
  `spotlinkmancode` varchar(45) DEFAULT NULL,
  `spotlinkman` varchar(255) DEFAULT NULL,
  `spotproductdate` varchar(45) DEFAULT NULL,
  `spotproductyear` varchar(45) DEFAULT NULL,
  `spotlife` varchar(45) DEFAULT NULL,
  `spotstoragedate` varchar(45) DEFAULT NULL,
  `saledate` varchar(45) DEFAULT NULL,
  `saleremainweight` decimal(8,3) DEFAULT NULL,
  `saleremainquantity` int(255) DEFAULT NULL,
  `saledollars` decimal(10,2) DEFAULT NULL,
  `salermb` decimal(10,2) DEFAULT NULL,
  `saletradercode` varchar(45) DEFAULT NULL,
  `saletrader` varchar(255) DEFAULT NULL,
  `salelinkmancode` varchar(45) DEFAULT NULL,
  `salelinkman` varchar(255) DEFAULT NULL,
  `saleoutdate` varchar(45) DEFAULT NULL,
  `selfdate` varchar(45) DEFAULT NULL,
  `selfstorageweight` decimal(8,3) DEFAULT NULL,
  `selfstoragequantity` int(255) DEFAULT NULL,
  `selfdollars` decimal(10,2) DEFAULT NULL,
  `selfrmb` decimal(10,2) DEFAULT NULL,
  `selftradercode` varchar(45) DEFAULT NULL,
  `selftrader` varchar(255) DEFAULT NULL,
  `selflinkmancode` varchar(45) DEFAULT NULL,
  `selflinkman` varchar(255) DEFAULT NULL,
  `selffinishproduct` varchar(45) DEFAULT NULL,
  `selfstoragedate` varchar(45) DEFAULT NULL COMMENT '自制仓人库时间',
  `confirmarrivedate` varchar(45) DEFAULT NULL COMMENT '预计到港日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_productex
-- ----------------------------
INSERT INTO `t_productex` VALUES ('2', '2015/05/24 14:59:00', '33.000', '22', '768.00', '3436.66', '000001', '杭州市景芳', '00000001', '金向东', '', '', '', '2015.06.20', '2015.06.20', '', '0.000', '0', '0.00', '0.00', '000004', '杭州火图科技', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '000003', '杭州市通策会', '', '', '', '', '', '', '', '40.000', '132', '0.00', '0.00', '000007', '杭州青春宝公司', '', '', '', '', '140.000', '20', '0.00', '0.00', '000002', '上海正东饲料有限公司', '', '', '0', '', '2015.07.16');
INSERT INTO `t_productex` VALUES ('3', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '0.000', '0', '800.00', '200.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '0', '', '2015.07.07');
INSERT INTO `t_productex` VALUES ('4', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '1', '', '');
INSERT INTO `t_productex` VALUES ('5', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '1', '', '2015.07.02');
INSERT INTO `t_productex` VALUES ('6', '2015.05.25', '1.000', '1', '1.00', '7.00', '000003', '杭州市通策会', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '1', '', '');
INSERT INTO `t_productex` VALUES ('7', '2015.05.25', '21.000', '23', '45.00', '455.00', '000003', '杭州市通策会', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '1', '', '');
INSERT INTO `t_productex` VALUES ('8', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '2015/05/25 00:00:00', '1.000', '0', '2.00', '4.00', '000003', '杭州市通策会', '00000004', '吕建明', '', '', '', '2015/05/25 00:00:00', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '1', '', null);
INSERT INTO `t_productex` VALUES ('9', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '2.000', '0', '0.00', '0.00', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '1', '', '');
INSERT INTO `t_productex` VALUES ('10', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '2015.05.14', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '2015.05.27', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '1', '', '');
INSERT INTO `t_productex` VALUES ('11', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '-5.000', '-5', '0.00', '0.00', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '1', '', null);
INSERT INTO `t_productex` VALUES ('12', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '-5.000', '-5', '0.00', '0.00', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '1', '', null);
INSERT INTO `t_productex` VALUES ('13', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '1589.00', '8975.00', '', '', '', '', '', '', '-22.000', '0', '1000.00', '6800.00', '', '', '', '', '1', '', null);
INSERT INTO `t_productex` VALUES ('14', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '4292.39', '', '', '', '', '', '', '1.000', '0', '0.00', '3252.17', '', '', '', '', '1', '', null);
INSERT INTO `t_productex` VALUES ('15', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '-2.000', '0', '0.00', '0.00', '', '', '', '', '', '', '-24.000', '0', '0.00', '0.00', '', '', '', '', '1', '', null);
INSERT INTO `t_productex` VALUES ('16', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '1.000', '0', '0.00', '0.00', '', '', '', '', '1', '', null);
INSERT INTO `t_productex` VALUES ('17', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '1', '', null);
INSERT INTO `t_productex` VALUES ('18', ' ', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '1', '', null);
INSERT INTO `t_productex` VALUES ('19', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '', '', '0.000', '0', '0.00', '0.00', '', '', '', '', '1', '', '');

-- ----------------------------
-- Table structure for t_quote
-- ----------------------------
DROP TABLE IF EXISTS `t_quote`;
CREATE TABLE `t_quote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` int(11) DEFAULT '1' COMMENT '序号',
  `companyid` int(11) NOT NULL,
  `companycode` varchar(45) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `customerid` int(11) DEFAULT NULL,
  `customercode` varchar(45) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `productid` int(11) NOT NULL,
  `quotedollars` decimal(12,3) DEFAULT '0.000' COMMENT '美金价',
  `rate` decimal(10,3) DEFAULT '0.000' COMMENT '汇率',
  `quotermb` decimal(10,3) DEFAULT '0.000' COMMENT '人民币价',
  `weight` decimal(10,3) DEFAULT NULL COMMENT '重量',
  `quantity` int(11) DEFAULT NULL COMMENT '数量',
  `quotedate` date DEFAULT NULL COMMENT '报盘日期',
  `quotetime` time DEFAULT NULL COMMENT '报盘时间',
  `quoteman` varchar(45) DEFAULT NULL,
  `createman` varchar(45) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifyman` varchar(45) DEFAULT NULL,
  `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isdelete` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='供应商报盘表';

-- ----------------------------
-- Records of t_quote
-- ----------------------------
INSERT INTO `t_quote` VALUES ('1', null, '1', '000001', '杭州市景芳', '1', '00000001', '金向东', '2', '768.004', '3.660', '3436.660', '33.000', '22', '2015-05-24', '14:59:00', 'admin', 'admin', '2015-05-25 10:02:49', 'admin', '2015-05-24 14:59:51', '0');
INSERT INTO `t_quote` VALUES ('4', '2', '2', '000002', '上海正东饲料有限公司', '3', '00000003', '朱番禹', '2', '2.000', '0.050', '15.005', '46.660', '54', '2015-05-25', '08:50:00', 'admin', 'admin', '2015-05-25 10:09:35', 'admin', '2015-05-25 08:52:21', '0');
INSERT INTO `t_quote` VALUES ('7', '1', '3', '000003', '杭州市通策会', '0', '', '', '6', '1.000', '0.000', '7.000', '1.000', '1', '2015-05-25', '09:01:00', 'admin', 'admin', '2015-05-25 09:01:52', 'admin', '2015-05-25 09:01:52', '0');
INSERT INTO `t_quote` VALUES ('8', '1', '3', '000003', '杭州市通策会', '0', '', '', '7', '45.000', '0.000', '455.000', '21.000', '23', '2015-05-25', '09:45:00', 'admin', 'admin', '2015-05-25 09:45:48', 'admin', '2015-05-25 09:45:48', '0');

-- ----------------------------
-- Table structure for t_quoteproduct
-- ----------------------------
DROP TABLE IF EXISTS `t_quoteproduct`;
CREATE TABLE `t_quoteproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` int(11) DEFAULT '1' COMMENT '序号',
  `name` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `nature` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `companyid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_quoteproduct
-- ----------------------------
INSERT INTO `t_quoteproduct` VALUES ('17', '1', '', '-1', '-1', '', '5');
INSERT INTO `t_quoteproduct` VALUES ('18', '2', '', '-1', '-1', '', '5');
INSERT INTO `t_quoteproduct` VALUES ('19', '3', '', '-1', '-1', '', '5');
INSERT INTO `t_quoteproduct` VALUES ('20', '4', '', '-1', '-1', '', '5');
INSERT INTO `t_quoteproduct` VALUES ('21', '5', '', '-1', '-1', '', '5');
INSERT INTO `t_quoteproduct` VALUES ('22', '6', '', '-1', '-1', '', '5');
INSERT INTO `t_quoteproduct` VALUES ('23', '7', '', '-1', '-1', '', '5');
INSERT INTO `t_quoteproduct` VALUES ('24', '8', '', '-1', '-1', '', '5');

-- ----------------------------
-- Table structure for t_remindmessage
-- ----------------------------
DROP TABLE IF EXISTS `t_remindmessage`;
CREATE TABLE `t_remindmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salemanid` int(11) NOT NULL,
  `companyid` int(11) NOT NULL,
  `nextlinkdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_remindmessage
-- ----------------------------

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------

-- ----------------------------
-- Table structure for t_rolefun
-- ----------------------------
DROP TABLE IF EXISTS `t_rolefun`;
CREATE TABLE `t_rolefun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) NOT NULL,
  `funid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_rolefun
-- ----------------------------
INSERT INTO `t_rolefun` VALUES ('1', '1', '1');
INSERT INTO `t_rolefun` VALUES ('2', '1', '2');
INSERT INTO `t_rolefun` VALUES ('3', '1', '3');
INSERT INTO `t_rolefun` VALUES ('4', '1', '4');
INSERT INTO `t_rolefun` VALUES ('5', '1', '5');
INSERT INTO `t_rolefun` VALUES ('6', '1', '6');
INSERT INTO `t_rolefun` VALUES ('7', '1', '7');
INSERT INTO `t_rolefun` VALUES ('8', '1', '8');
INSERT INTO `t_rolefun` VALUES ('9', '1', '9');
INSERT INTO `t_rolefun` VALUES ('10', '1', '10');
INSERT INTO `t_rolefun` VALUES ('11', '1', '11');
INSERT INTO `t_rolefun` VALUES ('12', '1', '12');
INSERT INTO `t_rolefun` VALUES ('13', '1', '13');
INSERT INTO `t_rolefun` VALUES ('14', '1', '14');
INSERT INTO `t_rolefun` VALUES ('15', '1', '15');
INSERT INTO `t_rolefun` VALUES ('16', '1', '16');
INSERT INTO `t_rolefun` VALUES ('17', '1', '17');
INSERT INTO `t_rolefun` VALUES ('18', '1', '18');
INSERT INTO `t_rolefun` VALUES ('19', '1', '19');
INSERT INTO `t_rolefun` VALUES ('20', '1', '20');
INSERT INTO `t_rolefun` VALUES ('21', '1', '21');
INSERT INTO `t_rolefun` VALUES ('22', '1', '22');
INSERT INTO `t_rolefun` VALUES ('23', '1', '23');
INSERT INTO `t_rolefun` VALUES ('24', '1', '24');
INSERT INTO `t_rolefun` VALUES ('25', '1', '25');
INSERT INTO `t_rolefun` VALUES ('26', '1', '26');
INSERT INTO `t_rolefun` VALUES ('27', '1', '27');
INSERT INTO `t_rolefun` VALUES ('28', '1', '28');
INSERT INTO `t_rolefun` VALUES ('29', '1', '29');
INSERT INTO `t_rolefun` VALUES ('30', '1', '30');
INSERT INTO `t_rolefun` VALUES ('31', '1', '31');
INSERT INTO `t_rolefun` VALUES ('32', '1', '32');
INSERT INTO `t_rolefun` VALUES ('33', '1', '33');
INSERT INTO `t_rolefun` VALUES ('34', '1', '34');
INSERT INTO `t_rolefun` VALUES ('35', '1', '35');
INSERT INTO `t_rolefun` VALUES ('36', '1', '36');
INSERT INTO `t_rolefun` VALUES ('37', '1', '37');
INSERT INTO `t_rolefun` VALUES ('38', '1', '38');
INSERT INTO `t_rolefun` VALUES ('39', '1', '39');
INSERT INTO `t_rolefun` VALUES ('40', '1', '40');
INSERT INTO `t_rolefun` VALUES ('41', '1', '41');
INSERT INTO `t_rolefun` VALUES ('42', '1', '42');
INSERT INTO `t_rolefun` VALUES ('43', '1', '43');
INSERT INTO `t_rolefun` VALUES ('44', '1', '44');
INSERT INTO `t_rolefun` VALUES ('45', '1', '45');
INSERT INTO `t_rolefun` VALUES ('46', '1', '46');
INSERT INTO `t_rolefun` VALUES ('47', '1', '47');
INSERT INTO `t_rolefun` VALUES ('48', '1', '48');
INSERT INTO `t_rolefun` VALUES ('49', '1', '49');
INSERT INTO `t_rolefun` VALUES ('50', '1', '50');
INSERT INTO `t_rolefun` VALUES ('51', '1', '51');
INSERT INTO `t_rolefun` VALUES ('52', '1', '52');
INSERT INTO `t_rolefun` VALUES ('53', '1', '53');
INSERT INTO `t_rolefun` VALUES ('54', '1', '54');
INSERT INTO `t_rolefun` VALUES ('55', '1', '55');
INSERT INTO `t_rolefun` VALUES ('56', '1', '56');
INSERT INTO `t_rolefun` VALUES ('57', '1', '57');
INSERT INTO `t_rolefun` VALUES ('58', '1', '58');
INSERT INTO `t_rolefun` VALUES ('59', '1', '59');
INSERT INTO `t_rolefun` VALUES ('60', '1', '60');
INSERT INTO `t_rolefun` VALUES ('61', '1', '61');
INSERT INTO `t_rolefun` VALUES ('62', '1', '62');
INSERT INTO `t_rolefun` VALUES ('63', '1', '63');
INSERT INTO `t_rolefun` VALUES ('64', '1', '64');
INSERT INTO `t_rolefun` VALUES ('65', '1', '65');
INSERT INTO `t_rolefun` VALUES ('66', '1', '66');
INSERT INTO `t_rolefun` VALUES ('67', '1', '67');
INSERT INTO `t_rolefun` VALUES ('68', '1', '68');
INSERT INTO `t_rolefun` VALUES ('69', '1', '69');
INSERT INTO `t_rolefun` VALUES ('70', '1', '70');
INSERT INTO `t_rolefun` VALUES ('71', '1', '71');
INSERT INTO `t_rolefun` VALUES ('72', '1', '72');
INSERT INTO `t_rolefun` VALUES ('73', '1', '73');
INSERT INTO `t_rolefun` VALUES ('74', '1', '74');
INSERT INTO `t_rolefun` VALUES ('75', '1', '75');
INSERT INTO `t_rolefun` VALUES ('76', '1', '76');
INSERT INTO `t_rolefun` VALUES ('77', '1', '77');
INSERT INTO `t_rolefun` VALUES ('78', '1', '78');
INSERT INTO `t_rolefun` VALUES ('79', '1', '79');
INSERT INTO `t_rolefun` VALUES ('80', '1', '80');
INSERT INTO `t_rolefun` VALUES ('81', '1', '81');
INSERT INTO `t_rolefun` VALUES ('82', '1', '82');
INSERT INTO `t_rolefun` VALUES ('83', '1', '83');
INSERT INTO `t_rolefun` VALUES ('84', '1', '84');
INSERT INTO `t_rolefun` VALUES ('85', '1', '85');
INSERT INTO `t_rolefun` VALUES ('86', '1', '86');
INSERT INTO `t_rolefun` VALUES ('87', '1', '87');
INSERT INTO `t_rolefun` VALUES ('88', '1', '88');
INSERT INTO `t_rolefun` VALUES ('89', '1', '89');
INSERT INTO `t_rolefun` VALUES ('90', '1', '90');
INSERT INTO `t_rolefun` VALUES ('91', '1', '91');
INSERT INTO `t_rolefun` VALUES ('92', '1', '92');
INSERT INTO `t_rolefun` VALUES ('93', '1', '93');
INSERT INTO `t_rolefun` VALUES ('94', '1', '94');
INSERT INTO `t_rolefun` VALUES ('95', '1', '95');
INSERT INTO `t_rolefun` VALUES ('96', '1', '96');
INSERT INTO `t_rolefun` VALUES ('97', '1', '97');
INSERT INTO `t_rolefun` VALUES ('98', '1', '98');
INSERT INTO `t_rolefun` VALUES ('99', '1', '99');
INSERT INTO `t_rolefun` VALUES ('100', '1', '100');
INSERT INTO `t_rolefun` VALUES ('101', '1', '101');
INSERT INTO `t_rolefun` VALUES ('102', '1', '102');
INSERT INTO `t_rolefun` VALUES ('103', '1', '103');
INSERT INTO `t_rolefun` VALUES ('104', '1', '104');
INSERT INTO `t_rolefun` VALUES ('105', '1', '105');
INSERT INTO `t_rolefun` VALUES ('106', '1', '106');
INSERT INTO `t_rolefun` VALUES ('107', '1', '107');
INSERT INTO `t_rolefun` VALUES ('108', '1', '108');
INSERT INTO `t_rolefun` VALUES ('109', '1', '109');
INSERT INTO `t_rolefun` VALUES ('110', '1', '110');
INSERT INTO `t_rolefun` VALUES ('111', '1', '111');
INSERT INTO `t_rolefun` VALUES ('112', '1', '112');
INSERT INTO `t_rolefun` VALUES ('113', '1', '113');
INSERT INTO `t_rolefun` VALUES ('114', '1', '114');
INSERT INTO `t_rolefun` VALUES ('115', '1', '115');
INSERT INTO `t_rolefun` VALUES ('116', '1', '116');
INSERT INTO `t_rolefun` VALUES ('117', '1', '117');
INSERT INTO `t_rolefun` VALUES ('118', '1', '118');
INSERT INTO `t_rolefun` VALUES ('119', '1', '119');
INSERT INTO `t_rolefun` VALUES ('120', '1', '120');
INSERT INTO `t_rolefun` VALUES ('121', '1', '121');
INSERT INTO `t_rolefun` VALUES ('122', '1', '122');
INSERT INTO `t_rolefun` VALUES ('123', '1', '123');
INSERT INTO `t_rolefun` VALUES ('124', '1', '124');
INSERT INTO `t_rolefun` VALUES ('125', '1', '125');
INSERT INTO `t_rolefun` VALUES ('126', '1', '126');
INSERT INTO `t_rolefun` VALUES ('127', '1', '127');
INSERT INTO `t_rolefun` VALUES ('128', '1', '128');
INSERT INTO `t_rolefun` VALUES ('129', '1', '129');
INSERT INTO `t_rolefun` VALUES ('130', '1', '130');
INSERT INTO `t_rolefun` VALUES ('131', '1', '131');
INSERT INTO `t_rolefun` VALUES ('132', '1', '132');
INSERT INTO `t_rolefun` VALUES ('133', '1', '133');
INSERT INTO `t_rolefun` VALUES ('134', '1', '134');
INSERT INTO `t_rolefun` VALUES ('135', '1', '135');
INSERT INTO `t_rolefun` VALUES ('136', '1', '136');
INSERT INTO `t_rolefun` VALUES ('137', '1', '137');
INSERT INTO `t_rolefun` VALUES ('138', '1', '138');
INSERT INTO `t_rolefun` VALUES ('139', '1', '139');
INSERT INTO `t_rolefun` VALUES ('140', '1', '140');
INSERT INTO `t_rolefun` VALUES ('141', '1', '141');
INSERT INTO `t_rolefun` VALUES ('142', '1', '142');
INSERT INTO `t_rolefun` VALUES ('143', '1', '143');
INSERT INTO `t_rolefun` VALUES ('144', '1', '144');
INSERT INTO `t_rolefun` VALUES ('145', '1', '145');
INSERT INTO `t_rolefun` VALUES ('146', '1', '146');
INSERT INTO `t_rolefun` VALUES ('147', '1', '147');
INSERT INTO `t_rolefun` VALUES ('148', '1', '148');
INSERT INTO `t_rolefun` VALUES ('149', '1', '149');
INSERT INTO `t_rolefun` VALUES ('150', '1', '150');
INSERT INTO `t_rolefun` VALUES ('151', '1', '151');
INSERT INTO `t_rolefun` VALUES ('152', '1', '152');
INSERT INTO `t_rolefun` VALUES ('153', '1', '153');
INSERT INTO `t_rolefun` VALUES ('154', '1', '154');
INSERT INTO `t_rolefun` VALUES ('155', '1', '155');
INSERT INTO `t_rolefun` VALUES ('156', '1', '156');
INSERT INTO `t_rolefun` VALUES ('157', '1', '157');
INSERT INTO `t_rolefun` VALUES ('158', '1', '158');
INSERT INTO `t_rolefun` VALUES ('159', '1', '159');
INSERT INTO `t_rolefun` VALUES ('160', '1', '160');
INSERT INTO `t_rolefun` VALUES ('161', '1', '161');
INSERT INTO `t_rolefun` VALUES ('162', '1', '162');
INSERT INTO `t_rolefun` VALUES ('163', '1', '163');
INSERT INTO `t_rolefun` VALUES ('164', '1', '164');
INSERT INTO `t_rolefun` VALUES ('165', '1', '165');
INSERT INTO `t_rolefun` VALUES ('166', '1', '166');
INSERT INTO `t_rolefun` VALUES ('167', '1', '167');
INSERT INTO `t_rolefun` VALUES ('168', '1', '168');
INSERT INTO `t_rolefun` VALUES ('169', '1', '169');
INSERT INTO `t_rolefun` VALUES ('170', '1', '170');
INSERT INTO `t_rolefun` VALUES ('171', '1', '171');
INSERT INTO `t_rolefun` VALUES ('172', '1', '172');
INSERT INTO `t_rolefun` VALUES ('173', '1', '173');
INSERT INTO `t_rolefun` VALUES ('174', '1', '174');
INSERT INTO `t_rolefun` VALUES ('175', '1', '175');
INSERT INTO `t_rolefun` VALUES ('176', '1', '176');
INSERT INTO `t_rolefun` VALUES ('177', '1', '177');
INSERT INTO `t_rolefun` VALUES ('178', '1', '178');
INSERT INTO `t_rolefun` VALUES ('179', '1', '179');
INSERT INTO `t_rolefun` VALUES ('180', '1', '180');

-- ----------------------------
-- Table structure for t_sequence
-- ----------------------------
DROP TABLE IF EXISTS `t_sequence`;
CREATE TABLE `t_sequence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyname` varchar(45) NOT NULL COMMENT '序号key',
  `prefix` varchar(45) DEFAULT NULL COMMENT '前缀\n',
  `separators` varchar(45) DEFAULT NULL COMMENT '分隔符',
  `step` int(11) NOT NULL DEFAULT '1' COMMENT '步长\n',
  `maxseq` bigint(11) NOT NULL DEFAULT '0' COMMENT '最大值',
  `description` varchar(100) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createman` varchar(45) DEFAULT NULL,
  `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifyman` varchar(45) DEFAULT NULL,
  `isdelete` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`keyname`),
  UNIQUE KEY `idx_sequence` (`keyname`,`createtime`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='序列表';

-- ----------------------------
-- Records of t_sequence
-- ----------------------------
INSERT INTO `t_sequence` VALUES ('33', '鱼粉ID', '', '', '1', '21', null, '2015-03-29 19:17:16', null, '2015-03-29 19:17:16', null, '0');
INSERT INTO `t_sequence` VALUES ('34', '单位ID', '', '', '1', '8', null, '2015-03-29 19:18:05', null, '2015-03-29 19:18:05', null, '0');
INSERT INTO `t_sequence` VALUES ('35', '联系人编号', '', '', '1', '8', null, '2015-03-29 19:21:32', null, '2015-03-29 19:21:32', null, '0');
INSERT INTO `t_sequence` VALUES ('36', '配料单号', '', '', '1', '1', null, '2015-03-29 22:11:05', null, '2015-03-29 22:11:05', null, '0');
INSERT INTO `t_sequence` VALUES ('37', '进仓单号', '', '', '1', '2', null, '2015-03-30 17:05:16', null, '2015-03-30 17:05:16', null, '0');
INSERT INTO `t_sequence` VALUES ('38', '自制仓入库单号', '', '', '1', '1', null, '2015-03-30 18:50:10', null, '2015-03-30 18:50:10', null, '0');
INSERT INTO `t_sequence` VALUES ('39', '自制仓入库单号', '', '', '1', '1', null, '2015-03-31 13:54:57', null, '2015-03-31 13:54:57', null, '0');
INSERT INTO `t_sequence` VALUES ('40', '通话记录ID', '', '', '1', '1', null, '2015-03-31 20:38:26', null, '2015-03-31 20:38:26', null, '0');
INSERT INTO `t_sequence` VALUES ('41', '提货单号', '', '', '1', '13', null, '2015-03-31 20:39:15', null, '2015-03-31 20:39:15', null, '0');
INSERT INTO `t_sequence` VALUES ('42', '通话记录ID', '', '', '1', '1', null, '2015-04-01 14:29:59', null, '2015-04-01 14:29:59', null, '0');
INSERT INTO `t_sequence` VALUES ('43', '检测单号', '', '', '1', '1', null, '2015-04-03 15:58:11', null, '2015-04-03 15:58:11', null, '0');
INSERT INTO `t_sequence` VALUES ('44', '自制仓入库单号', '', '', '1', '1', null, '2015-04-07 16:07:56', null, '2015-04-07 16:07:56', null, '0');
INSERT INTO `t_sequence` VALUES ('45', '通话记录ID', '', '', '1', '1', null, '2015-04-08 11:43:29', null, '2015-04-08 11:43:29', null, '0');
INSERT INTO `t_sequence` VALUES ('46', '自制仓入库单号', '', '', '1', '1', null, '2015-04-08 21:29:48', null, '2015-04-08 21:29:48', null, '0');
INSERT INTO `t_sequence` VALUES ('47', '通话记录ID', '', '', '1', '1', null, '2015-04-10 20:46:27', null, '2015-04-10 20:46:27', null, '0');
INSERT INTO `t_sequence` VALUES ('48', '合同编号', 'ZD', '', '1', '14', null, '2015-05-23 11:32:13', null, '2015-05-23 11:32:13', null, '0');
INSERT INTO `t_sequence` VALUES ('49', '自制仓入库单号', '', '', '1', '2', null, '2015-05-24 10:20:53', null, '2015-05-24 10:20:53', null, '0');
INSERT INTO `t_sequence` VALUES ('50', '配料单号', 'PL', '', '1', '7', null, '2015-05-28 21:52:06', null, '2015-05-28 21:52:06', null, '0');
INSERT INTO `t_sequence` VALUES ('51', '通话记录ID', '', '', '1', '8', null, '2015-06-07 12:01:52', null, '2015-06-07 12:01:52', null, '0');
INSERT INTO `t_sequence` VALUES ('52', '通话记录ID', '', '', '1', '8', null, '2015-06-13 22:00:15', null, '2015-06-13 22:00:15', null, '0');
INSERT INTO `t_sequence` VALUES ('53', '配料单号', 'PL', '', '1', '1', null, '2015-06-20 14:04:35', null, '2015-06-20 14:04:35', null, '0');
INSERT INTO `t_sequence` VALUES ('54', '通话记录ID', '', '', '1', '1', null, '2016-09-19 18:57:17', null, '2016-09-19 18:57:17', null, '0');

-- ----------------------------
-- Table structure for t_spot
-- ----------------------------
DROP TABLE IF EXISTS `t_spot`;
CREATE TABLE `t_spot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` int(11) DEFAULT '1' COMMENT '序号',
  `companyid` int(11) NOT NULL,
  `companycode` varchar(45) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `customerid` int(11) DEFAULT NULL,
  `customercode` varchar(45) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `productid` int(11) NOT NULL,
  `dollars` decimal(12,3) DEFAULT '0.000' COMMENT '美金价',
  `rate` decimal(10,3) DEFAULT '0.000' COMMENT '汇率',
  `rmb` decimal(10,3) DEFAULT '0.000' COMMENT '人民币价',
  `weight` decimal(10,3) DEFAULT NULL COMMENT '重量',
  `quantity` int(11) DEFAULT NULL COMMENT '数量',
  `spotdate` date DEFAULT NULL COMMENT '报盘日期',
  `spottime` time DEFAULT NULL COMMENT '报盘时间',
  `spotman` varchar(45) DEFAULT NULL,
  `createman` varchar(45) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifyman` varchar(45) DEFAULT NULL,
  `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isdelete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '有效性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='供应商报盘表';

-- ----------------------------
-- Records of t_spot
-- ----------------------------
INSERT INTO `t_spot` VALUES ('1', null, '1', '000001', '杭州市景芳', '1', '00000001', '金向东', '2', '768.004', '3.660', '3436.660', '33.000', '22', '2015-05-24', '14:59:00', 'admin', 'admin', '2015-05-25 10:02:49', 'admin', '2015-05-24 14:59:51', '0');
INSERT INTO `t_spot` VALUES ('4', '2', '2', '000002', '上海正东饲料有限公司', '3', '00000003', '朱番禹', '2', '2.000', '0.050', '15.005', '46.660', '54', '2015-05-25', '08:50:00', 'admin', 'admin', '2015-05-25 10:09:35', 'admin', '2015-05-25 08:52:21', '0');
INSERT INTO `t_spot` VALUES ('7', '1', '3', '000003', '杭州市通策会', '0', '', '', '6', '1.000', '0.000', '7.000', '1.000', '1', '2015-05-25', '09:01:00', 'admin', 'admin', '2015-05-25 09:01:52', 'admin', '2015-05-25 09:01:52', '0');
INSERT INTO `t_spot` VALUES ('8', '1', '3', '000003', '杭州市通策会', '0', '', '', '7', '45.000', '0.000', '455.000', '21.000', '23', '2015-05-25', '09:45:00', 'admin', 'admin', '2015-05-25 09:45:48', 'admin', '2015-05-25 09:45:48', '0');
INSERT INTO `t_spot` VALUES ('9', '1', '3', '000003', '杭州市通策会', '4', '00000004', '吕建明', '8', '2.000', '3.000', '4.000', '1.000', '0', '2015-05-25', '00:00:00', 'admin', 'admin', '2015-05-25 20:57:38', 'admin', '2015-05-25 20:38:41', '1');
INSERT INTO `t_spot` VALUES ('10', '2', '2', '000002', '上海正东饲料有限公司', '0', '', '', '8', '43.000', '3.000', '43.000', '0.000', '0', '2015-05-25', '00:00:00', 'admin', 'admin', '2015-05-25 20:52:12', 'admin', '2015-05-25 20:52:12', '0');

-- ----------------------------
-- Table structure for t_storagebills
-- ----------------------------
DROP TABLE IF EXISTS `t_storagebills`;
CREATE TABLE `t_storagebills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL COMMENT '进仓单号',
  `operatecode` varchar(45) DEFAULT NULL COMMENT '操作编号',
  `delegateunitid` int(8) DEFAULT NULL,
  `delegateunitcode` varchar(45) DEFAULT NULL COMMENT '委托单位编号',
  `shipno` varchar(45) DEFAULT NULL COMMENT '船号',
  `delegateunit` varchar(100) DEFAULT NULL COMMENT '委托单位',
  `deliverybills` varchar(45) DEFAULT NULL COMMENT '提货单',
  `productid` int(11) DEFAULT NULL COMMENT '鱼粉主键id',
  `productcode` varchar(45) DEFAULT NULL COMMENT '鱼粉id',
  `productname` varchar(50) DEFAULT NULL COMMENT '鱼粉名称',
  `unboxdate` timestamp NULL DEFAULT NULL COMMENT '拆箱日期',
  `place` varchar(100) DEFAULT NULL COMMENT '存放地点',
  `tons` decimal(12,3) DEFAULT '0.000' COMMENT '吨位',
  `number` int(11) DEFAULT '0' COMMENT '件数',
  `actualnumber` int(11) DEFAULT '0' COMMENT '实际件数',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `location` varchar(200) DEFAULT NULL COMMENT '堆库存场位置',
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createman` varchar(45) DEFAULT NULL,
  `modifyman` varchar(45) DEFAULT NULL,
  `modifytime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isdelete` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_storagebill_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='进仓单';

-- ----------------------------
-- Records of t_storagebills
-- ----------------------------
INSERT INTO `t_storagebills` VALUES ('1', '00000001', '333', '1', '000001', '4444', '杭州市景芳', '44', '3', '00000004', '发型', '2015-05-23 21:25:40', '让我热土', '45.000', '44', '44', '而他', '而个我', '2015-05-23 21:26:31', 'admin', 'admin', '2015-05-23 21:26:31', '0');

-- ----------------------------
-- Table structure for t_storagerecord
-- ----------------------------
DROP TABLE IF EXISTS `t_storagerecord`;
CREATE TABLE `t_storagerecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL COMMENT '记录类型',
  `fid` int(11) DEFAULT NULL COMMENT '关联表主键id',
  `productid` int(11) DEFAULT NULL COMMENT '鱼粉主键id',
  `price` decimal(12,3) DEFAULT NULL COMMENT '单价',
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='自制仓入库流水表';

-- ----------------------------
-- Records of t_storagerecord
-- ----------------------------

-- ----------------------------
-- Table structure for t_test
-- ----------------------------
DROP TABLE IF EXISTS `t_test`;
CREATE TABLE `t_test` (
  `id` int(11) NOT NULL,
  `status` int(2) DEFAULT '0' COMMENT '合同状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_test
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `realname` varchar(45) DEFAULT NULL,
  `ename` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT '男',
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT '30',
  `department` varchar(45) DEFAULT NULL,
  `entrytime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `roletype` varchar(45) DEFAULT NULL,
  `roledate` varchar(500) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createman` varchar(45) NOT NULL,
  `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifyman` varchar(45) NOT NULL,
  `isdelete` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'jxd', 'cebfd1559b68d67688884d7a3d3e8c', '金向东', 'jamesdong', '男', 'jin@ee.com', '', '', '30', '', '2015-03-16 13:45:00', '业务主管,管理员', '', '2015-04-01 11:14:48', 'jxd', '2015-04-01 11:14:48', 'jxd', '0');
INSERT INTO `t_user` VALUES ('2', 'jane', 'cebfd1559b68d67688884d7a3d3e8c', '朱辉', 'jane', '女', '', '', '', '33', '', '2015-03-20 09:26:43', '业务员,业务主管,管理员', '', '2015-04-01 13:49:09', 'jxd', '2015-04-01 13:49:09', 'jxd', '0');
INSERT INTO `t_user` VALUES ('3', 'jane1', 'cebfd1559b68d67688884d7a3d3e8c', 'sadf', '简', '女', 'jane@11.com', '收费', '啊是打发是', '23', '阿三费', '2015-04-01 10:50:44', '管理员', '', '2015-04-01 11:15:34', 'jxd', '2015-04-01 11:15:34', 'jxd', '0');
INSERT INTO `t_user` VALUES ('4', 'jxd2', 'cebfd1559b68d67688884d7a3d3e8c', '', '', '女', '', '', '', '0', '', '2015-04-01 11:15:52', '管理员', '', '2015-04-01 11:16:09', 'jxd', '2015-04-01 11:16:09', 'jxd', '0');
INSERT INTO `t_user` VALUES ('5', 'zh', 'cebfd1559b68d67688884d7a3d3e8c', '周辉', '', '女', '', '', '', '0', '', '2015-04-07 10:18:17', '业务员', '', '2015-04-07 10:18:34', 'jxd', '2015-04-07 10:18:34', 'jxd', '0');
INSERT INTO `t_user` VALUES ('6', 'admin', 'cebfd1559b68d67688884d7a3d3e8c', '管理员', 'admin', '男', '', '', '', '0', '', '2015-04-10 22:02:51', '管理员', '', '2015-04-10 22:03:13', 'zh', '2015-04-10 22:03:13', 'zh', '0');

-- ----------------------------
-- Table structure for t_userrole
-- ----------------------------
DROP TABLE IF EXISTS `t_userrole`;
CREATE TABLE `t_userrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_userrole
-- ----------------------------
INSERT INTO `t_userrole` VALUES ('1', '6', '1');

-- ----------------------------
-- View structure for v_callrecorddetail
-- ----------------------------
DROP VIEW IF EXISTS `v_callrecorddetail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_callrecorddetail` AS select  a.*,
  b.id as detailid,
  b.no ,
  b.nature,
  b.brand ,
  b.specification,
  b.orderstate,
  b.quoteprice,
  b.weight,
  b.saleprice,
  b.paymethod,
  b.payperiod,
  b.domestic_tvn,
  b.domestic_graypart,
  b.domestic_sandsalt,
  b.domestic_sour,
  b.domestic_lysine,
  b.domestic_amine,
  b.domestic_aminototal,
  b.domestic_methionine,
  b.domestic_fat,
  b.domestic_protein

from t_callrecords a inner join t_callrecordsdetail b on a.id = b.callrecordid
order by a.currentdate desc ;

-- ----------------------------
-- View structure for v_confirm
-- ----------------------------
DROP VIEW IF EXISTS `v_confirm`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_confirm` AS select a.* , b.quotedate,b.quoteweight,b.quotequantity,b.quotedollars,b.quotermb,
b.quotesuppliercode,b.quotesupplier,b.quotelinkmancode,b.quotelinkman,
b.quoteproductyear,b.quoteproductdate,b.quotelife,b.quotesaildatefast,b.quotesaildatelate,
b.confirmdate,b.confirmsgsweight,b.confirmsgsquantity,b.confirmdollars,b.confirmrmb,
b.confirmagentcode,b.confirmagent,b.confirmlinkmancode,
b.confirmlinkman,b.confirmproductyear,b.confirmproductdate,b.confirmlife,b.confirmsaildate
from t_product a inner join t_productex b on a.id = b.id
where a.state= 2 
order by specification ;

-- ----------------------------
-- View structure for v_contract
-- ----------------------------
DROP VIEW IF EXISTS `v_contract`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_contract` AS select a.* , 
b.id,b.no,b.productid,b.productno,b.productname,
b.specification,b.weight,b.quantity,b.unitprice,b.money as productmoney ,b.getweight,b.getquantity,b.isfinished 
from t_contract a INNER JOIN t_contractdetail b on a.contractid= b.contractid ;

-- ----------------------------
-- View structure for v_customeranalysis
-- ----------------------------
DROP VIEW IF EXISTS `v_customeranalysis`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_customeranalysis` AS select 
	id,customercode as '客户编号',customer as '客户名称' ,nextdate as '下次联系时间',linkmancode as '联系人编号',linkman as '联系人',communicatecontent as '联系内容' , code as '记录单号',
  GROUP_CONCAT( DISTINCT CONCAT( DATE_FORMAT(currentdate ,'%m.%d') , ' ', specification ,' ', quoteprice , '' ,brand) SEPARATOR ' | '  ) as '报价情况',
  GROUP_CONCAT( DISTINCT CONCAT( DATE_FORMAT(currentdate ,'%m.%d') , ' ', orderstate, weight,specification,saleprice ) SEPARATOR ' | ' ) as '采购意向',
  GROUP_CONCAT( DISTINCT orderstate ) as '订单状态'
 
 
from v_callrecorddetail 
	
GROUP BY currentdate desc ,id,customercode,customer,nextdate,linkmancode,linkman,communicatecontent ,code ;

-- ----------------------------
-- View structure for v_finish
-- ----------------------------
DROP VIEW IF EXISTS `v_finish`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_finish` AS select a.* , b.spotproductdate,
d.companyname , d.deliveryman,d.saleman , d.indate,d.outdate
from t_product a inner join t_productex b on a.id=b.id left join t_foodoutdetail c on a.id = c.productid
INNER JOIN t_foodout d on c.mid=d.id
where a.state= 7 ;

-- ----------------------------
-- View structure for v_foodoutdetail
-- ----------------------------
DROP VIEW IF EXISTS `v_foodoutdetail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_foodoutdetail` AS select a.code as productcode, a.name as productname,a.state,a.nature,a.brand,a.remark,a.shipno,a.billofgoods,
a.domestic_protein,a.domestic_tvn,a.domestic_graypart,
a.domestic_sandsalt,a.domestic_sour,a.domestic_lysine,a.domestic_methionine,
a.domestic_amine,a.domestic_aminototal,a.domestic_fat,
b.salermb,b.selfrmb,
c.package,c.tons,c.no,c.id,c.mid,c.solutionid,c.productid

from t_product  a INNER JOIN t_productex b on a.id= b.id
right join t_foodoutdetail c on a.id= c.productid 
order by solutionid asc,no asc ;

-- ----------------------------
-- View structure for v_inventory
-- ----------------------------
DROP VIEW IF EXISTS `v_inventory`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER  VIEW `v_inventory` AS select a.productid ,  '' as billtype , '' as billcode , a.accountdate as date, '期初' as storagetype,
a.homemadeweight as weight, a.homemadepackages as package ,
b.code as productcode , b.name as productname , b.state, b.nature , b.techtype , b.specification ,b.brand,b.ownername, b.arriveportdate,
b.agentifcompany,b.customsofcompany,b.sgs_protein , b.sgs_tvn,b.sgs_amine
from t_inventoryaccount a LEFT JOIN t_product b on a.productid = b.id
group by b.code , a.accountdate ;

-- ----------------------------
-- View structure for v_loadingdetail
-- ----------------------------
DROP VIEW IF EXISTS `v_loadingdetail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_loadingdetail` AS SELECT a.*,
b.weight as contractweight,b.quantity as contractquantity ,b.getquantity,b.getweight from 
t_loadingdetail a inner join t_contractdetail b on a.contractid = b.contractid and a.contractdetailid = b.id ;

-- ----------------------------
-- View structure for v_notsend
-- ----------------------------
DROP VIEW IF EXISTS `v_notsend`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_notsend` AS select a.contractid,a.contractno,a.yifangcode,a.yifang,a.type as contracttype,
a.signdate,
b.id as contractdetailid,b.no,
b.weight as contractweight,b.quantity as contractquantity,
b.getweight,b.getquantity,
d.*
from t_contract a inner join t_contractdetail b on a.contractid = b.contractid
inner join t_contractproduct c on b.id = c.contractdetailid and b.contractid=c.contractid
inner join t_product d on c.productid=d.id
where b.weight>b.getweight and a.status <> 4 ;

-- ----------------------------
-- View structure for v_product
-- ----------------------------
DROP VIEW IF EXISTS `v_product`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_product` AS select a.*,
quotedate,quoteweight,quotequantity,quotedollars,
quotermb,quotesuppliercode,quotesupplier,quotelinkmancode,
quotelinkman,quoteproductyear,quoteproductdate,quotelife,quotesaildatefast,
quotesaildatelate,confirmdate,confirmsgsweight,confirmsgsquantity,confirmdollars,
confirmrmb,confirmagentcode,confirmagent,confirmlinkmancode,confirmlinkman,confirmproductyear,
confirmproductdate,confirmlife,confirmsaildate,spotdate,spotweight,spotquantity,
spotdollars,spotrmb,spotagentcode,spotagent,spotlinkmancode,spotlinkman,spotproductdate,
spotproductyear,spotlife,spotstoragedate,saledate,saleremainweight,saleremainquantity,
saledollars,salermb,saletradercode,saletrader,salelinkmancode,salelinkman,saleoutdate,
selfdate,selfstorageweight,selfstoragequantity,selfdollars,selfrmb,selftradercode,
selftrader,selflinkmancode,selflinkman,selffinishproduct,selfstoragedate

from t_product a left join t_productex b on a.id=b.id ;

-- ----------------------------
-- View structure for v_quote
-- ----------------------------
DROP VIEW IF EXISTS `v_quote`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_quote` AS select a.* , b.quotedate,b.quoteweight,b.quotequantity,b.quotedollars,b.quotermb,
b.quotesuppliercode,b.quotesupplier,b.quotelinkmancode,b.quotelinkman,
b.quoteproductyear,b.quoteproductdate,b.quotelife,b.quotesaildatefast,b.quotesaildatelate
from t_product a inner join t_productex b on a.id = b.id
where a.quote_protein>0
order by specification ;

-- ----------------------------
-- View structure for v_remind
-- ----------------------------
DROP VIEW IF EXISTS `v_remind`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER  VIEW `v_remind` AS select b.id as companyid , b.code as companycode , b.fullname as companyname ,b.salesmancode , b.salesman,
 b.nextlinkdate , a.id as linkmanid, a.code as linkmancode , a.name as linkman, a.telephone,a.phone1,a.phone2,a.phone3,a.qq,a.weixin
 from t_customer a inner join t_company b on a.company = b.code ;

-- ----------------------------
-- View structure for v_selfmake
-- ----------------------------
DROP VIEW IF EXISTS `v_selfmake`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_selfmake` AS select a.* ,
b.saledate,b.saleremainweight,b.saleremainquantity,b.saledollars,
b.salermb,b.saletradercode,b.saletrader,b.salelinkmancode,b.salelinkman,
b.saleoutdate,b.selfdate,b.selfstorageweight,b.selfstoragequantity,b.selfdollars,b.selfrmb,
b.selftradercode,b.selftrader,b.selflinkmancode,b.selflinkman,b.selffinishproduct,b.selfstoragedate

from t_product a inner join t_productex b on a.id = b.id
where a.state= 5 
order by specification ;

-- ----------------------------
-- View structure for v_selfsale
-- ----------------------------
DROP VIEW IF EXISTS `v_selfsale`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_selfsale` AS select a.* ,
b.confirmagent,b.confirmlinkman,b.confirmdate,b.confirmrmb,
 b.confirmsgsweight,b.confirmsaildate, b.saleremainweight,
b.spotdate,b.spotweight,b.spotquantity,b.spotdollars,b.spotrmb,b.spotagentcode,b.spotagent,b.spotlinkmancode,
b.spotlinkman,b.spotproductdate,b.spotproductyear,b.spotlife,b.spotstoragedate

from t_product a inner join t_productex b on a.id = b.id
where a.state= 4 
order by specification ;

-- ----------------------------
-- View structure for v_selfsaledetail
-- ----------------------------
DROP VIEW IF EXISTS `v_selfsaledetail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_selfsaledetail` AS select 
b.productid,
a.code as loadingcode , a.signdate as loadingdate , b.tons,b.packages,
d.unitprice, (case when d.weight = d.getweight then '是' else '否' end) as state ,
d.getweight,d.weight ,d.quantity , e.contractno,e.signdate as contractdate, b.tons as getw,b.packages as getq,
e.yifang,e.saleman,e.yifangcode

from  t_loadingbills a INNER JOIN t_loadingdetail b on a.id= b.mid
inner join t_contractproduct c on b.productid = c.productid and b.contractid= c.contractid and b.contractdetailid= c.contractdetailid
inner join t_contractdetail d on c.contractid = d.contractid and c.contractdetailid= d.id
INNER JOIN t_contract e on d.contractid= e.contractid ;

-- ----------------------------
-- View structure for v_selfstorageflowing
-- ----------------------------
DROP VIEW IF EXISTS `v_selfstorageflowing`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER  VIEW `v_selfstorageflowing` AS #select a.productid ,  '' as billtype , '' as billcode , a.accountdate as date, '期初数' as storagetype,
#a.homemadeweight as weight, a.homemadepackages as package 
#,b.code as productcode , b.name as productname , b.nature , b.techtype , b.specification ,b.brand,b.ownername, b.arriveportdate,b.agentifcompany,b.customsofcompany,b.sgs_protein , b.sgs_tvn,b.sgs_amine
#from t_inventoryaccount a 
#INNER JOIN t_product b on a.productid=b.id

#union all

select a.productid , '自制仓入库' as billtype , a.code as  billcode , a.createtime as date , '入库' as storagetype ,
a.netweight as weight , a.packages as package 
#,b.code as productcode , b.name as productname , b.nature , b.techtype , b.specification ,b.brand,b.ownername, b.arriveportdate,b.agentifcompany,b.customsofcompany,b.sgs_protein , b.sgs_tvn,b.sgs_amine
from t_homemadestorage a 
#INNER JOIN t_product b on a.productid =b.id

union all

select a.productid ,  '配料出库' as billtype , b.code as billcode , b.createtime as date ,'出库' as storagetype,
a.tons as weight , a.package  
#,c.code as productcode , c.name as productname , c.nature , c.techtype , c.specification , c.brand, c.ownername, c.arriveportdate, c.agentifcompany,c.customsofcompany,c.sgs_protein , c.sgs_tvn, c.sgs_amine
from t_foodoutdetail a INNER JOIN t_foodout b on a.mid=b.id ;

-- ----------------------------
-- View structure for v_selfstorageflowingreport
-- ----------------------------
DROP VIEW IF EXISTS `v_selfstorageflowingreport`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER  VIEW `v_selfstorageflowingreport` AS select 
a.productid , a.billtype , a.billcode , a.date , a.storagetype ,a.weight,a.package
,b.code as productcode , b.name as productname , b.state, b.nature , b.techtype , b.specification ,b.brand,b.ownername, b.arriveportdate,
b.agentifcompany,b.customsofcompany,b.sgs_protein , b.sgs_tvn,b.sgs_amine
from v_selfstorageflowing a LEFT JOIN t_product b on a.productid = b.id
group by b.code , a.date ;

-- ----------------------------
-- View structure for v_spot
-- ----------------------------
DROP VIEW IF EXISTS `v_spot`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_spot` AS select a.* , b.confirmsgsweight,b.confirmsaildate, b.saleremainweight,
b.spotdate,b.spotweight,b.spotquantity,b.spotdollars,b.spotrmb,b.spotagentcode,b.spotagent,b.spotlinkmancode,
b.spotlinkman,b.spotproductdate,b.spotproductyear,b.spotlife,b.spotstoragedate,
b.saletradercode,b.saletrader,b.salelinkmancode,b.salelinkman

from t_product a inner join t_productex b on a.id = b.id
where a.state= 3 
order by specification ;

-- ----------------------------
-- View structure for v_userrole
-- ----------------------------
DROP VIEW IF EXISTS `v_userrole`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_userrole` AS select DISTINCT a.userid,
c.funid,
c.enable,
c.funcode,
c.funname,
c.pid,
c.remark,
c.sortid,
c.type
from t_userrole  a  INNER join t_rolefun  b on a.roleid = b.roleid
INNER JOIN t_funcode c on b.funid = c.funid  where c.enable=1 ;

-- ----------------------------
-- Procedure structure for p_getcallrecordsequence
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_getcallrecordsequence`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_getcallrecordsequence`(IN v_keyname varchar(45),OUT v_sequence varchar(45))
BEGIN

    DECLARE v_seq INTEGER;
    declare v_prefix VARCHAR(45);
    DEClare v_separators VARCHAR(45);
    declare v_createtime TIMESTAMP;
    declare v_currentDate VARCHAR(8);
    DECLARE v_id INT;
    DECLARE t_error INTEGER DEFAULT 0;  
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;  
  

start TRANSACTION;

  #UPDATE t_sequence set prefix = '' where isdelete = 0 and keyname = v_keyname and TO_DAYS(createtime) = TO_DAYS(now());

  select id , prefix , separators , maxseq ,createtime into v_id , v_prefix , v_separators , v_seq , v_createtime 
  from t_sequence  where isdelete = 0 and keyname = v_keyname and TO_DAYS(createtime) = TO_DAYS(now()) limit 1 for UPDATE ;
  
  #call debug_msg(TRUE, seq );
  
   set v_currentDate = DATE_FORMAT(now(),'%Y%m%d');
   
   IF v_seq is null  THEN
      set v_seq=1;
      set v_prefix = '';
      set v_separators='';
      insert into t_sequence( keyname , prefix, separators,step,maxseq)values( v_keyname , v_prefix ,v_separators ,1,1);
   
   ELSE   
     #set sequence = 'b' +seq;

	   update t_sequence set maxseq= v_seq+1 where id=v_id; #where isdelete=0 and keyname = v_keyname and TO_DAYS(createtime) = TO_DAYS(now());
   end if; 

 
   

   set v_sequence = CONCAT( v_prefix  , v_separators , v_currentDate ,  LPAD( v_seq+'' , 4, 0));
 

   

   IF t_error = 1 THEN  
           set v_sequence ='';
            ROLLBACK;  
       ELSE  
            COMMIT;  
        END IF; 

   
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_getchecksequence
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_getchecksequence`;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `p_getchecksequence`(IN v_keyname varchar(45),OUT v_sequence varchar(45))
BEGIN
	 DECLARE v_seq INTEGER;
    declare v_prefix VARCHAR(45);
    DEClare v_separators VARCHAR(45);
    declare v_createtime TIMESTAMP;
    DECLARE v_id INT;
    DECLARE t_error INTEGER DEFAULT 0;  
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;  
  

start TRANSACTION;

  select id , prefix , separators , maxseq ,createtime into v_id , v_prefix , v_separators , v_seq , v_createtime 
  from t_sequence  where isdelete = 0 and keyname = v_keyname limit 1 for UPDATE ;
     
   IF v_seq is null  THEN
      set v_seq=1;
      set v_prefix = '';
      set v_separators='';
      insert into t_sequence( keyname , prefix, separators,step,maxseq)values( v_keyname , v_prefix ,v_separators ,1,1);
   
   ELSE   
	   update t_sequence set maxseq= v_seq+1 where id=v_id;
   end if; 

   

   set v_sequence = CONCAT( v_prefix  , v_separators ,  LPAD( v_seq+'' , 8, 0));
 

   

   IF t_error = 1 THEN  
           set v_sequence ='';
            ROLLBACK;  
       ELSE  
            COMMIT;  
        END IF; 

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_getcompanysequence
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_getcompanysequence`;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `p_getcompanysequence`(IN v_keyname varchar(45),OUT v_sequence varchar(45))
BEGIN
	 DECLARE v_seq INTEGER;
    declare v_prefix VARCHAR(45);
    DEClare v_separators VARCHAR(45);
    declare v_createtime TIMESTAMP;
    #declare v_currentDate VARCHAR(8);
    DECLARE v_id INT;
    DECLARE t_error INTEGER DEFAULT 0;  
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;  
  

start TRANSACTION;

  #UPDATE t_sequence set prefix = '' where isdelete = 0 and keyname = v_keyname and TO_DAYS(createtime) = TO_DAYS(now());

  select id , prefix , separators , maxseq ,createtime into v_id , v_prefix , v_separators , v_seq , v_createtime 
  from t_sequence  where isdelete = 0 and keyname = v_keyname limit 1 for UPDATE ;
  
  #call debug_msg(TRUE, seq );
  
   #set v_currentDate = DATE_FORMAT(now(),'%Y%m%d');
   
   IF v_seq is null  THEN
      set v_seq=1;
      set v_prefix = '';
      set v_separators='';
      insert into t_sequence( keyname , prefix, separators,step,maxseq)values( v_keyname , v_prefix ,v_separators ,1,1);
   
   ELSE   
     #set sequence = 'b' +seq;

	   update t_sequence set maxseq= v_seq+1 where id=v_id; #where isdelete=0 and keyname = v_keyname and TO_DAYS(createtime) = TO_DAYS(now());
   end if; 

 
   

   set v_sequence = CONCAT( v_prefix  , v_separators ,  LPAD( v_seq+'' , 6, 0));
 

   

   IF t_error = 1 THEN  
           set v_sequence ='';
            ROLLBACK;  
       ELSE  
            COMMIT;  
        END IF; 

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_getcontractsequence
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_getcontractsequence`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_getcontractsequence`(IN v_keyname varchar(45),OUT v_sequence varchar(45))
BEGIN

    DECLARE v_seq INTEGER;
    declare v_prefix VARCHAR(45);
    DEClare v_separators VARCHAR(45);
    declare v_createtime TIMESTAMP;
    declare v_currentDate VARCHAR(8);
    DECLARE v_id INT;
    DECLARE t_error INTEGER DEFAULT 0;  
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;  
  

start TRANSACTION;
  set v_prefix='ZD';

  #UPDATE t_sequence set prefix = '' where isdelete = 0 and keyname = v_keyname and TO_DAYS(createtime) = TO_DAYS(now());

  select id , prefix , separators , maxseq ,createtime into v_id , v_prefix , 
				v_separators , v_seq , v_createtime 
  from t_sequence  where isdelete = 0 and keyname = v_keyname and year(createtime) = year(now()) and month(createtime) = MONTH(now()) limit 1 for UPDATE ;
  
  #call debug_msg(TRUE, seq );
  
   set v_currentDate = DATE_FORMAT(now(),'%y%m');
   
   IF v_seq is null  THEN
      set v_seq=1;
      set v_prefix = 'ZD';
      set v_separators='';
      insert into t_sequence( keyname , prefix, separators,step,maxseq)
			values( v_keyname , v_prefix ,v_separators ,1,1);
   
   ELSE   
     #set sequence = 'b' +seq;

	   update t_sequence set maxseq= v_seq+1 where id=v_id; #where isdelete=0 and keyname = v_keyname and TO_DAYS(createtime) = TO_DAYS(now());
   end if; 

 
   

   set v_sequence = CONCAT( v_prefix  , v_separators , v_currentDate ,  LPAD( v_seq+'' , 4, 0));
 

   

   IF t_error = 1 THEN  
           set v_sequence ='';
            ROLLBACK;  
       ELSE  
            COMMIT;  
        END IF; 

   
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_getcustomersequence
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_getcustomersequence`;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `p_getcustomersequence`(IN v_keyname varchar(45),OUT v_sequence varchar(45))
BEGIN
	
    DECLARE v_seq INTEGER;
    declare v_prefix VARCHAR(45);
    DEClare v_separators VARCHAR(45);
    declare v_createtime TIMESTAMP;
    declare v_currentDate VARCHAR(8);
    DECLARE v_id INT;
    DECLARE t_error INTEGER DEFAULT 0;  
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;  
  

start TRANSACTION;

  #UPDATE t_sequence set prefix = '' where isdelete = 0 and keyname = v_keyname and TO_DAYS(createtime) = TO_DAYS(now());

  select id , prefix , separators , maxseq ,createtime into v_id , v_prefix , v_separators , v_seq , v_createtime 
  from t_sequence  where isdelete = 0 and keyname = v_keyname limit 1 for UPDATE ;
  
  #call debug_msg(TRUE, seq );
  
   set v_currentDate = DATE_FORMAT(now(),'%Y%m%d');
   
   IF v_seq is null  THEN
      set v_seq=1;
      set v_prefix = '';
      set v_separators='';
      insert into t_sequence( keyname , prefix, separators,step,maxseq)values( v_keyname , v_prefix ,v_separators ,1,1);
   
   ELSE   
     #set sequence = 'b' +seq;

	   update t_sequence set maxseq= v_seq+1 where id=v_id; #where isdelete=0 and keyname = v_keyname and TO_DAYS(createtime) = TO_DAYS(now());
   end if; 

 
   

   set v_sequence = CONCAT( v_prefix  , v_separators ,  LPAD( v_seq+'' , 8, 0));
 

   

   IF t_error = 1 THEN  
           set v_sequence ='';
            ROLLBACK;  
       ELSE  
            COMMIT;  
        END IF; 


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_getfishsequence
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_getfishsequence`;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `p_getfishsequence`(IN v_keyname varchar(45),OUT v_sequence varchar(45))
BEGIN

	
    DECLARE v_seq INTEGER;
    declare v_prefix VARCHAR(45);
    DEClare v_separators VARCHAR(45);
    declare v_createtime TIMESTAMP;
    declare v_currentDate VARCHAR(8);
    DECLARE v_id INT;
    DECLARE t_error INTEGER DEFAULT 0;  
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;  
  

start TRANSACTION;

  #UPDATE t_sequence set prefix = '' where isdelete = 0 and keyname = v_keyname and TO_DAYS(createtime) = TO_DAYS(now());

  select id , prefix , separators , maxseq ,createtime into v_id , v_prefix , v_separators , v_seq , v_createtime 
  from t_sequence  where isdelete = 0 and keyname = v_keyname limit 1 for UPDATE ;
  
  #call debug_msg(TRUE, seq );
  
   #set v_currentDate = DATE_FORMAT(now(),'%Y%m%d');
   
   IF v_seq is null  THEN
      set v_seq=1;
      set v_prefix = '';
      set v_separators='';
      insert into t_sequence( keyname , prefix, separators,step,maxseq)values( v_keyname , v_prefix ,v_separators ,1,1);
   
   ELSE   
     #set sequence = 'b' +seq;

	   update t_sequence set maxseq= v_seq+1 where id=v_id; #where isdelete=0 and keyname = v_keyname and TO_DAYS(createtime) = TO_DAYS(now());
   end if; 

 
   

   set v_sequence = CONCAT( v_prefix  , v_separators ,  LPAD( v_seq+'' , 8, 0));
 

   

   IF t_error = 1 THEN  
           set v_sequence ='';
            ROLLBACK;  
       ELSE  
            COMMIT;  
        END IF; 


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_getfoodoutsequence
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_getfoodoutsequence`;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `p_getfoodoutsequence`(IN v_keyname varchar(45),OUT v_sequence varchar(45))
BEGIN
	 DECLARE v_seq INTEGER;
    declare v_prefix VARCHAR(45);
    DEClare v_separators VARCHAR(45);
    declare v_createtime TIMESTAMP;
    declare v_currentDate VARCHAR(8);
    DECLARE v_id INT;
    DECLARE t_error INTEGER DEFAULT 0;  
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;  
  

start TRANSACTION;
  set v_prefix='PL';

  select id , prefix , separators , maxseq ,createtime into v_id , v_prefix , v_separators , v_seq , v_createtime 
  from t_sequence  where isdelete = 0 and keyname = v_keyname and year(createtime) = year(now()) and month(createtime) = MONTH(now()) limit 1 for UPDATE ;

   set v_currentDate = DATE_FORMAT(now(),'%y%m');     

   IF v_seq is null  THEN
      set v_seq=1;
      set v_prefix = 'PL';
      set v_separators='';
      insert into t_sequence( keyname , prefix, separators,step,maxseq)values( v_keyname , v_prefix ,v_separators ,1,1);
   
   ELSE      
	   update t_sequence set maxseq= v_seq+1 where id=v_id;
   end if;    

   set v_sequence = CONCAT( v_prefix  , v_separators , v_currentDate, LPAD( v_seq+'' , 4, 0));
  
   IF t_error = 1 THEN  
           set v_sequence ='';
            ROLLBACK;  
   ELSE  
            COMMIT;  
   END IF; 

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_gethomemadestoragesequence
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_gethomemadestoragesequence`;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `p_gethomemadestoragesequence`(IN v_keyname varchar(45),OUT v_sequence varchar(45))
BEGIN

    DECLARE v_seq INTEGER;
    declare v_prefix VARCHAR(45);
    DEClare v_separators VARCHAR(45);
    declare v_createtime TIMESTAMP;
    declare v_currentDate VARCHAR(8);
    DECLARE v_id INT;
    DECLARE t_error INTEGER DEFAULT 0;  
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;  
  

start TRANSACTION;

  #UPDATE t_sequence set prefix = '' where isdelete = 0 and keyname = v_keyname and TO_DAYS(createtime) = TO_DAYS(now());

  select id , prefix , separators , maxseq ,createtime into v_id , v_prefix , v_separators , v_seq , v_createtime 
  from t_sequence  where isdelete = 0 and keyname = v_keyname and TO_DAYS(createtime) = TO_DAYS(now()) limit 1 for UPDATE ;
  
  #call debug_msg(TRUE, seq );
  
   set v_currentDate = DATE_FORMAT(now(),'%Y%m%d');
   
   IF v_seq is null  THEN
      set v_seq=1;
      set v_prefix = '';
      set v_separators='';
      insert into t_sequence( keyname , prefix, separators,step,maxseq)values( v_keyname , v_prefix ,v_separators ,1,1);
   
   ELSE   
     #set sequence = 'b' +seq;

	   update t_sequence set maxseq= v_seq+1 where id=v_id; #where isdelete=0 and keyname = v_keyname and TO_DAYS(createtime) = TO_DAYS(now());
   end if; 

 
   

   set v_sequence = CONCAT( v_prefix  , v_separators , v_currentDate ,  LPAD( v_seq+'' , 3, 0));
 

   

   IF t_error = 1 THEN  
           set v_sequence ='';
            ROLLBACK;  
       ELSE  
            COMMIT;  
        END IF; 

   
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_getloadingbillsequence
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_getloadingbillsequence`;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `p_getloadingbillsequence`(IN v_keyname varchar(45),OUT v_sequence varchar(45))
BEGIN
	 DECLARE v_seq INTEGER;
    declare v_prefix VARCHAR(45);
    DEClare v_separators VARCHAR(45);
    declare v_createtime TIMESTAMP;
    DECLARE v_id INT;
    DECLARE t_error INTEGER DEFAULT 0;  
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;  
  

start TRANSACTION;

  #UPDATE t_sequence set prefix = '' where isdelete = 0 and keyname = v_keyname and TO_DAYS(createtime) = TO_DAYS(now());

  select id , prefix , separators , maxseq ,createtime into v_id , v_prefix , v_separators , v_seq , v_createtime 
  from t_sequence  where isdelete = 0 and keyname = v_keyname limit 1 for UPDATE ;
  
  #call debug_msg(TRUE, seq );
  
   #set v_currentDate = DATE_FORMAT(now(),'%Y%m%d');
   
   IF v_seq is null  THEN
      set v_seq=1;
      set v_prefix = '';
      set v_separators='';
      insert into t_sequence( keyname , prefix, separators,step,maxseq)values( v_keyname , v_prefix ,v_separators ,1,1);
   
   ELSE   
     #set sequence = 'b' +seq;

	   update t_sequence set maxseq= v_seq+1 where id=v_id; #where isdelete=0 and keyname = v_keyname and TO_DAYS(createtime) = TO_DAYS(now());
   end if; 

 
   

   set v_sequence = CONCAT( v_prefix  , v_separators ,  LPAD( v_seq+'' , 8, 0));
 

   

   IF t_error = 1 THEN  
           set v_sequence ='';
            ROLLBACK;  
       ELSE  
            COMMIT;  
        END IF; 

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_getsequence
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_getsequence`;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `p_getsequence`(v_keyname varchar(45) , out v_sequence varchar(45))
BEGIN

    DECLARE v_seq INTEGER;
    declare v_prefix VARCHAR(45);
    DEClare v_separators VARCHAR(45);
    declare v_createtime TIMESTAMP;
    declare v_currentDate VARCHAR(8);
    DECLARE v_id INT;
    DECLARE t_error INTEGER DEFAULT 0;  
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;  
  

start TRANSACTION;

  #UPDATE t_sequence set prefix = '' where isdelete = 0 and keyname = v_keyname and TO_DAYS(createtime) = TO_DAYS(now());

  select id , prefix , separators , maxseq ,createtime into v_id , v_prefix , v_separators , v_seq , v_createtime 
  from t_sequence  where isdelete = 0 and keyname = v_keyname and TO_DAYS(createtime) = TO_DAYS(now()) limit 1 for UPDATE ;
  
  #call debug_msg(TRUE, seq );
  
   set v_currentDate = DATE_FORMAT(now(),'%Y%m%d');
   
   IF v_seq is null  THEN
      set v_seq=1;
      set v_prefix = '';
      set v_separators='';
      insert into t_sequence( keyname , prefix, separators,step,maxseq)values( v_keyname , v_prefix ,v_separators ,1,1);
   
   ELSE   
     #set sequence = 'b' +seq;

	   update t_sequence set maxseq= v_seq+1 where id=v_id; #where isdelete=0 and keyname = v_keyname and TO_DAYS(createtime) = TO_DAYS(now());
   end if; 

 
   

   set v_sequence = CONCAT( v_prefix  , v_separators , v_currentDate ,  LPAD( v_seq+'' , 4, 0));
 

   

   IF t_error = 1 THEN  
           set v_sequence ='';
            ROLLBACK;  
       ELSE  
            COMMIT;  
        END IF; 

   
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_getstoragebillsequence
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_getstoragebillsequence`;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `p_getstoragebillsequence`(IN v_keyname varchar(45),OUT v_sequence varchar(45))
BEGIN
	 DECLARE v_seq INTEGER;
    declare v_prefix VARCHAR(45);
    DEClare v_separators VARCHAR(45);
    declare v_createtime TIMESTAMP;
    DECLARE v_id INT;
    DECLARE t_error INTEGER DEFAULT 0;  
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;  
  

start TRANSACTION;

  #UPDATE t_sequence set prefix = '' where isdelete = 0 and keyname = v_keyname and TO_DAYS(createtime) = TO_DAYS(now());

  select id , prefix , separators , maxseq ,createtime into v_id , v_prefix , v_separators , v_seq , v_createtime 
  from t_sequence  where isdelete = 0 and keyname = v_keyname limit 1 for UPDATE ;
  
  #call debug_msg(TRUE, seq );
  
   #set v_currentDate = DATE_FORMAT(now(),'%Y%m%d');
   
   IF v_seq is null  THEN
      set v_seq=1;
      set v_prefix = '';
      set v_separators='';
      insert into t_sequence( keyname , prefix, separators,step,maxseq)values( v_keyname , v_prefix ,v_separators ,1,1);
   
   ELSE   
     #set sequence = 'b' +seq;

	   update t_sequence set maxseq= v_seq+1 where id=v_id; #where isdelete=0 and keyname = v_keyname and TO_DAYS(createtime) = TO_DAYS(now());
   end if; 

 
   

   set v_sequence = CONCAT( v_prefix  , v_separators ,  LPAD( v_seq+'' , 8, 0));
 

   

   IF t_error = 1 THEN  
           set v_sequence ='';
            ROLLBACK;  
       ELSE  
            COMMIT;  
        END IF; 

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_inventory
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_inventory`;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `p_inventory`(IN v_date date , IN v_man varchar(45),out v_result int)
BEGIN
		declare v_mid INTEGER;
    declare v_exist INTEGER;
    DECLARE v_accountdate DATE;
    declare v_currentdate TIMESTAMP;
    DECLARE t_error INTEGER DEFAULT 0;  
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;  
  

start TRANSACTION;
    set v_result = 0;
    #set v_date = DATE_ADD(v_date,INTERVAL 1 MONTH);

    select count(1) into v_exist from t_inventory where accountdate = v_date;
    
   
		if  v_exist is null || v_exist = 0 THEN	   
       
			select NOW() into v_currentdate;

			insert INTO t_inventory(accountdate,isaccount,createman,createtime,modifyman,modifytime)values( v_date , 1 , v_man , v_currentdate ,v_man,v_currentdate );

			select LAST_INSERT_ID() into v_mid;
    
      set v_accountdate = DATE_ADD(v_date,INTERVAL 1 MONTH);
    
			insert into t_inventoryaccount(mid ,accountdate,productid,remainweight,remainquantity,homemadeweight,homemadepackages,createman,createtime,modifyman,modifytime)
			select v_mid , v_accountdate , id , remainweight , remainquantity , homemadeweight,homemadepackages, v_man, v_currentdate,v_man,v_currentdate from t_product;

			IF t_error = 1 THEN              
            set v_result=0;
            ROLLBACK;  
            
      ELSE  
            set v_result = 1;
            COMMIT;  
      END IF; 
    
	  end if;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_inventoryback
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_inventoryback`;
DELIMITER ;;
CREATE DEFINER=`root`@`127.0.0.1` PROCEDURE `p_inventoryback`(IN v_date date,IN v_man varchar(45),OUT v_result int)
BEGIN
	declare v_mid INTEGER;
  DECLARE t_error INTEGER DEFAULT 0;  
  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;  
  

start TRANSACTION;

      set v_result = 0;

      select id into v_mid from t_inventory where accountdate = v_date and isaccount=1 limit 1;
      
      if v_mid is not null THEN
					DELETE from t_inventoryaccount where mid=v_mid;
          DELETE from t_inventory where id =v_mid;
      end if;  
       

      IF t_error = 1 THEN              
            set v_result=0;
            ROLLBACK;              
      ELSE  
            set v_result = 1;
            COMMIT;  
      END IF; 
    

END
;;
DELIMITER ;

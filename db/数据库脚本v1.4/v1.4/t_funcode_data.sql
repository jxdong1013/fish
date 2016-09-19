/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50624
Source Host           : 127.0.0.1:3306
Source Database       : fish

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2015-08-16 10:35:44
*/

SET FOREIGN_KEY_CHECKS=0;

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

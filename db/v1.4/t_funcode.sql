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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;


CREATE TABLE `t_quoteproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` int(11) DEFAULT '1' COMMENT '序号',
  `name` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `nature` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `companyid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;


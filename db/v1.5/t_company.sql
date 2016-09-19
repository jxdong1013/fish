alter table t_company ADD (
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
  `requiregoods` varchar(255) DEFAULT NULL COMMENT '需求商品');
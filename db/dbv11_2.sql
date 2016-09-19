ALTER table t_contract add status int(2) default 0 COMMent '合同状态';

CREATE TABLE t_contractproduct(
  id int(11) NOT NULL AUTO_INCREMENT,
  productid int(11) DEFAULT NULL,
  contractid int(11) DEFAULT NULL,
  contractdetailid int(11) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

ALTER table t_loadingdetail add contractid int(11) DEFAULT '0' COMMENT '合同主键id';
ALTER table t_loadingdetail add contractno varchar(45) DEFAULT NULL COMMENT '合同编号';
ALTER table t_loadingdetail add contractseq int(11) DEFAULT NULL COMMENT '合同明细中的序号';
ALTER table t_loadingdetail add contractdetailid int(11) default 0 COMMent '合同明细id';

alter table t_product MODIFY quote_amine DECIMAL(6,2) default 0.00 COMMENT '报盘_组胺';
alter table t_product MODIFY sgs_amine DECIMAL(6,2) default 0.00 COMMENT 'SGS_组胺';
alter table t_product MODIFY label_amine DECIMAL(6,2) default 0.00 COMMENT '标签_组胺';

alter table t_productex add confirmarrivedate varchar(45) COMMENT '预计到港日期';


CREATE  VIEW `v_finish` AS select a.* , b.spotproductdate,
d.companyname , d.deliveryman,d.saleman , d.indate,d.outdate
from t_product a inner join t_productex b on a.id=b.id left join t_foodoutdetail c on a.id = c.productid
INNER JOIN t_foodout d on c.mid=d.id
where a.state= 7;

CREATE VIEW `v_loadingdetail` AS SELECT a.*,
b.weight  as contractweight ,b.quantity as contractquantity  ,b.getquantity,b.getweight from 
t_loadingdetail a inner join t_contractdetail b on a.contractid = b.contractid and a.contractdetailid = b.id;

CREATE  VIEW `v_notsend` AS select a.contractid,a.contractno,a.yifangcode,a.yifang,a.type as contracttype,
a.signdate,
b.id as contractdetailid,b.no,
b.weight as contractweight,b.quantity as contractquantity,
b.getweight,b.getquantity,
d.*
from t_contract a inner join t_contractdetail b on a.contractid = b.contractid
inner join t_contractproduct c on b.id = c.contractdetailid and b.contractid=c.contractid
inner join t_product d on c.productid=d.id
where b.weight>b.getweight and a.status <> 4;


CREATE VIEW `v_selfsaledetail` AS select 
b.productid,
a.code as loadingcode , a.signdate as loadingdate , b.tons,b.packages,
d.unitprice, (case when d.weight = d.getweight then '是' else '否' end) as state ,
d.getweight,d.weight , e.contractno,e.signdate as contractdate, b.tons as getw,b.packages as getq,
e.yifang,e.saleman,e.yifangcode
from  t_loadingbills a INNER JOIN t_loadingdetail b on a.id= b.mid
inner join t_contractproduct c on b.productid = c.productid and b.contractid= c.contractid and b.contractdetailid= c.contractdetailid
inner join t_contractdetail d on c.contractid = d.contractid and c.contractdetailid= d.id
INNER JOIN t_contract e on d.contractid= e.contractid;
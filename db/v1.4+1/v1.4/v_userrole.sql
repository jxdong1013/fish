CREATE  VIEW `v_userrole` AS select DISTINCT a.userid,
c.funid,
c.enable,
c.funcode,
c.funname,
c.pid,
c.remark,
c.sortid,
c.type
from t_userrole  a  INNER join t_rolefun  b on a.roleid = b.roleid
INNER JOIN t_funcode c on b.funid = c.funid
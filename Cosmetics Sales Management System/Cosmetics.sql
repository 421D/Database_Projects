
USE Master
GO

---创建数据库
CREATE DATABASE Cosmetics ON
(NAME=Cosmeticsdata, 
		 FILENAME='D:\Q数据库期末\Cosmeticsdata.mdf',
		 SIZE=5MB,
		 MAXSIZE=20MB,
		 FILEGROWTH=1MB)
LOG ON
(NAME=Cosmeticstlog,
		FILENAME='D:\Q数据库期末\Cosmeticslog.ldf',
		SIZE=7MB,
	    MAXSIZE=20MB,
		FILEGROWTH=10%)
GO



USE Cosmetics
GO



---创建goods(商品信息)表
CREATE TABLE goods(
	gd_id char(10) NOT NULL ,
	gd_name char(40) NOT NULL,
	gd_num char(30) NOT NULL,
	gd_rkjg varchar(9) NOT NULL,
	gd_lsjg varchar(9) NOT NULL,
	CONSTRAINT PK_goods PRIMARY KEY CLUSTERED(gd_id)
)
GO


---创建gy_info (供应商信息)表
CREATE TABLE gy_info(
	gy_id char(8) NOT NULL,
	gy_name char(40) NOT NULL,
	gy_adress char(40)  NULL,
	gy_yb char(6) NOT NULL,
	gy_tel char(40) NOT NULL,
	gy_lxr char(40) NOT NULL,
	CONSTRAINT PK_gy_info PRIMARY KEY CLUSTERED(gy_id)
)
GO


---创建 kh_info(客户信息)表
CREATE TABLE kh_info(
	kh_id char(8) NOT NULL,
	kh_name char(40) NOT NULL,
	kh_adress nchar(40)  NULL,
	kh_yb char(8) NOT NULL,
	kh_tel char(40) NOT NULL,
	kh_sex char(4) NOT NULL,
	CONSTRAINT PK_kh_info PRIMARY KEY CLUSTERED(kh_id)
)
GO



---创建 ywy_info (业务员信息)表
CREATE TABLE ywy_info(
	ywy_id char(6) NOT NULL,
	ywy_name char(10) NOT NULL,
	ywy_sex char(4) NOT NULL,
	ywy_tel char(40) NOT NULL,
	ywy_adress char(40) NOT NULL,
	ywy_cards char(18) NOT NULL,
	CONSTRAINT PK_ywy_info PRIMARY KEY CLUSTERED(ywy_id)
)
GO

---创建 ck_info(仓库信息)表
CREATE TABLE ck_info(
	ck_jhrq date NOT NULL,
	ywy_id char(20) NULL,
	gy_id char(8)  NULL,
	ck_id char(6) NOT NULL,
	gd_id char(10) NOT NULL,
	gd_num char(30)  NOT NULL,
	CONSTRAINT PK_ck_info PRIMARY KEY CLUSTERED(ck_id),
	CONSTRAINT FK_goods_ck_info FOREIGN KEY(gd_id) REFERENCES goods (gd_id),
)
GO


---创建outs (出库信息)表
CREATE TABLE outs(
	outs_thrq Datetime NOT NULL,
	ywy_id char(20) NOT NULL,
	outs_thdh char(8) NOT NULL,
	kh_id char(8) NOT NULL,
	ck_id char(6) NOT NULL,
	gd_id char(9) NOT NULL,
	gd_num char(9) NOT NULL,
	gd_lsjg varchar(9) NOT NULL,
	outs_zk varchar(5) NOT NULL,
	outs_zje varchar(9) NOT NULL,
)
GO




---插入goods(商品信息)表记录
INSERT INTO goods VALUES('gd01','粉底液','150','100','200')
INSERT INTO goods VALUES('gd02','遮瑕膏','50','30','100')
INSERT INTO goods VALUES('gd03','气垫BB','100','50','200')
INSERT INTO goods VALUES('gd04','散粉','200','50','120')
INSERT INTO goods VALUES('gd05','眼影盘','100','80','120')
INSERT INTO goods VALUES('gd06','眉笔','300','30','60')
INSERT INTO goods VALUES('gd07','眼线笔','150','50','150')
INSERT INTO goods VALUES('gd08','睫毛膏','300','20','60')
INSERT INTO goods VALUES('gd09','口红','500','100','250')
INSERT INTO goods VALUES('gd10','腮红','120','40','150')
INSERT INTO goods VALUES('gd11','化妆水 ','200','100','200')
INSERT INTO goods VALUES('gd12','乳液','200','100','200')
INSERT INTO goods VALUES('gd13','保湿面霜','150','120','300')
INSERT INTO goods VALUES('gd14','面膜','500','80','200')
INSERT INTO goods VALUES('gd15','瘦脸精华','350','100','250')
INSERT INTO goods VALUES('gd16','美妆蛋','200','50','150')
INSERT INTO goods VALUES('gd17','化妆刷','200','30','80')
INSERT INTO goods VALUES('gd18','睫毛夹','200','10','50')


---插入gy_info (供应商信息)表记录
INSERT INTO gy_info VALUES('gy01','Mac魅可有限公司','上海', '200000','13869016879', '小张')
INSERT INTO gy_info VALUES('gy02','Mac魅可有限公司','上海', '200000','13869034679','小张')
INSERT INTO gy_info VALUES('gy03','YSL圣罗兰有限公司','深圳', '518000','13569686834', '小李')
INSERT INTO gy_info VALUES('gy04','YSL圣罗兰有限公司','深圳', '518000','13568716879', '小李')
INSERT INTO gy_info VALUES('gy05','Diro迪奥有限公司','北京', '100000','13469010179', '小王')
INSERT INTO gy_info VALUES('gy06','Diro迪奥有限公司','北京', '100000','13865868750', '小王')


---插入kh_info(客户信息)表
INSERT INTO kh_info VALUES('kh01','小朱','长沙', '24334','12345321456','男')
INSERT INTO kh_info VALUES('kh02','小何','河南', '25445','15354337677','男')
INSERT INTO kh_info VALUES('kh03','小杰','青岛', '34540','12323343478','男')
INSERT INTO kh_info VALUES('kh04','小宇','杭州', '85664','17868678667','男')
INSERT INTO kh_info VALUES('kh05','小珍','海南', '23454','16756768789','女')
INSERT INTO kh_info VALUES('kh06','小文','长春', '98766','15675757567','女')
INSERT INTO kh_info VALUES('kh07','小婷','拉萨', '97857','14564564564','女')
INSERT INTO kh_info VALUES('kh08','小玲','云南', '34536','11899678667','女')


---插入ywy_info (业务员信息)表
INSERT INTO ywy_info VALUES('ywy01','轩轩','男','13336542897','天津','330421199302111234')
INSERT INTO ywy_info VALUES('ywy02','杰杰','男','13336542897','重庆','645645345657908909')
INSERT INTO ywy_info VALUES('ywy03','瑞瑞','男','13336542897','宝鸡','234534536540079879')
INSERT INTO ywy_info VALUES('ywy04','何何','男','13336542897','唐山','132434546879456456')
INSERT INTO ywy_info VALUES('ywy05','灵灵','女','13336542897','河北','234324657789786787')
INSERT INTO ywy_info VALUES('ywy06','菲菲','女','13336542897','山西','132436556343423422')
INSERT INTO ywy_info VALUES('ywy07','栋栋','男','13336542897','吉林','345645436867858215')
INSERT INTO ywy_info VALUES('ywy08','白白','女','13336542897','兰州','234565475687980909')
INSERT INTO ywy_info VALUES('ywy09','星星','女','13336542897','武汉','988786466678544657')


---插入ck_info(仓库信息)表
INSERT INTO ck_info VALUES('2018-11-30','ywy01','gy01','ck01','gd01','40')
INSERT INTO ck_info VALUES('2018-10-23','ywy02','gy01','ck02','gd02','100')
INSERT INTO ck_info VALUES('2018-6-26','ywy03','gy01','ck03','gd03','45')
INSERT INTO ck_info VALUES('2018-12-14','ywy04','gy01','ck04','gd04','30')
INSERT INTO ck_info VALUES('2018-11-18','ywy05','gy02','ck05','gd05','67')
INSERT INTO ck_info VALUES('2018-12-13','ywy06','gy02','ck06','gd06','16')
INSERT INTO ck_info VALUES('2018-11-30','ywy07','gy02','ck027','gd07','88')
INSERT INTO ck_info VALUES('2018-9-20','ywy08','gy03','ck08','gd08','56')
INSERT INTO ck_info VALUES('2017-12-31','ywy09','gy03','ck09','gd09','35')


---插入outs (出库信息)表
INSERT INTO outs VALUES('2018-11-11','ywy01','thdh01','kh01','ck01','gd18','100','200','是','1600')
INSERT INTO outs VALUES('2018-11-12','ywy02','thdh02','kh02','ck01','gd17','120','100','是','600')
INSERT INTO outs VALUES('2018-11-13','ywy02','thdh03','kh03','ck01','gd16','50','150','否','1500')
INSERT INTO outs VALUES('2018-12-21','ywy03','thdh04','kh04','ck01','gd15','20','200','是','1600')
INSERT INTO outs VALUES('2018-11-21','ywy04','thdh05','kh05','ck01','gd14','500','300','是','2600')
INSERT INTO outs VALUES('2018-05-23','ywy05','thdh06','kh06','ck02','gd13','170','200','否','2000')
INSERT INTO outs VALUES('2018-08-14','ywy06','thdh07','kh07','ck02','gd12','100','240','否','2400')
INSERT INTO outs VALUES('2018-11-05','ywy07','thdh08','kh08','ck02','gd11','300','160','否','1600')
INSERT INTO outs VALUES('2018-10-30','ywy07','thdh09','kh09','ck02','gd10','250','330','否','3300')
INSERT INTO outs VALUES('2018-06-26','ywy08','thdh010','kh10','ck02','gd09','120','280','否','2800')
INSERT INTO outs VALUES('2018-09-13','ywy09','thdh011','kh11','ck03','gd08','90','190','是','1600')
INSERT INTO outs VALUES('2018-03-09','ywy09','thdh012','kh12','ck03','gd07','230','200','否','2000')
INSERT INTO outs VALUES('2018-11-17','ywy01','thdh013','kh13','ck03','gd06','370','670','是','5600')
INSERT INTO outs VALUES('2018-12-28','ywy01','thdh014','kh14','ck03','gd05','150','800','是','8000')
INSERT INTO outs VALUES('2018-01-16','ywy01','thdh015','kh15','ck03','gd04','340','500','否','5000')


GO





---创建goods表中gd_lsjg字段的CHECK约束
ALTER TABLE goods WITH CHECK ADD CONSTRAINT gd_lsjg CHECK (gd_lsjg>=30 and gd_lsjg<=800)


---在ywy_info表的ywy_sex字段中创建DEFAULT定义
ALTER TABLE ywy_info ADD CONSTRAINT DF_ywy_sex DEFAULT ('女') FOR ywy_sex


---创建视图Viewkhinfo
CREATE VIEW Viewkhinfo
AS SELECT kh_id,kh_name,kh_sex FROM kh_info WITH CHECK OPTION



---创建多表视图
CREATE VIEW Viewgoods_ck
AS
SELECT   goods.gd_id, ck_info.ck_id, ck_info.gy_id
FROM     goods INNER JOIN
         ck_info ON goods.gd_id = ck_info.gd_id


---删除视图
DROP  VIEW Viewkhinfo
DROP VIEW Viewgoods_ck




---查询1
SELECT kh_name AS '姓名',kh_yb AS '邮编',kh_tel AS'电话' FROM kh_info WHERE kh_sex ='男'

---查询2
SELECT gd_id AS '商品编号',gd_name AS '商品名称',gd_num AS '数量',gd_lsjg AS '零售价格' FROM goods WHERE gd_lsjg='200'

---查询3
SELECT goods.gd_id AS'商品编号', goods.gd_name AS'商品名称',outs.gd_lsjg AS'零售价格' ,outs_zk AS '是否打折'FROM goods
INNER JOIN outs ON outs.gd_id=goods.gd_id  WHERE outs_zk='是'






---创建存储过程CC
CREATE PROCEDURE CC
AS
BEGIN
	SELECT goods.gd_id,goods.gd_name,ck_info.ck_jhrq
	FROM goods INNER JOIN ck_info ON ck_info.gd_id=goods.gd_id
	WHERE gd_name='散粉'
END
EXEC CC


---创建存储器CCgoods
CREATE PROCEDURE CCgoods
AS
BEGIN
	SELECT gd_id,gd_name from goods
	WHERE gd_id='02'
END
EXEC CCgoods 


---修改CC存储过程
ALTER PROCEDURE CC
AS
BEGIN
	SELECT goods.gd_id '商品编号',goods.gd_name '商品名称',ck_info.ck_jhrq '进货日期'
	FROM goods INNER JOIN ck_info ON ck_info.gd_id=goods.gd_id
	WHERE gd_name='散粉'
END
EXEC CC


---删除存储过程CC
DROP PROCEDURE CC








---创建触发器TR_Viewgoods_ck
CREATE TRIGGER TR_Viewgoods_ck ON Viewgoods_ck
INSTEAD OF UPDATE 
AS
PRINT '不能修改视图'
UPDATE kh_info set kh_id='03' WHERE kh_adress='云南'




---创建触发器goods_delete
CREATE TRIGGER goods_delete
ON goods
AFTER DELETE
AS
BEGIN
	 DELETE FROM goods
	 WHERE goods.gd_id=(SELECT gd_id='01' FROM deleted)
	 PRINT '以被删除'
END
DELETE goods WHERE gd_id='01'




DROP TRIGGER kh_info_insert
---创建触发器kh_info_insert
CREATE TRIGGER kh_info_insert
ON kh_info
FOR INSERT
AS	
BEGIN
    DECLARE @new char(100)
	DECLARE @客户编号 char(8)
	DECLARE @客户名称 char(40)
	SELECT @客户编号=kh_id from inserted
	SELECT @客户名称=kh_name from inserted
	set @new='您好,'+ @客户编号+@客户名称+'感谢您的购买!'
	PRINT @new
END
INSERT kh_info VALUES('kh10','小玲','云南', '34536','11899678667','女')




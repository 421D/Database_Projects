
USE Master
GO

---�������ݿ�
CREATE DATABASE Cosmetics ON
(NAME=Cosmeticsdata, 
		 FILENAME='D:\Q���ݿ���ĩ\Cosmeticsdata.mdf',
		 SIZE=5MB,
		 MAXSIZE=20MB,
		 FILEGROWTH=1MB)
LOG ON
(NAME=Cosmeticstlog,
		FILENAME='D:\Q���ݿ���ĩ\Cosmeticslog.ldf',
		SIZE=7MB,
	    MAXSIZE=20MB,
		FILEGROWTH=10%)
GO



USE Cosmetics
GO



---����goods(��Ʒ��Ϣ)��
CREATE TABLE goods(
	gd_id char(10) NOT NULL ,
	gd_name char(40) NOT NULL,
	gd_num char(30) NOT NULL,
	gd_rkjg varchar(9) NOT NULL,
	gd_lsjg varchar(9) NOT NULL,
	CONSTRAINT PK_goods PRIMARY KEY CLUSTERED(gd_id)
)
GO


---����gy_info (��Ӧ����Ϣ)��
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


---���� kh_info(�ͻ���Ϣ)��
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



---���� ywy_info (ҵ��Ա��Ϣ)��
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

---���� ck_info(�ֿ���Ϣ)��
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


---����outs (������Ϣ)��
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




---����goods(��Ʒ��Ϣ)���¼
INSERT INTO goods VALUES('gd01','�۵�Һ','150','100','200')
INSERT INTO goods VALUES('gd02','��覸�','50','30','100')
INSERT INTO goods VALUES('gd03','����BB','100','50','200')
INSERT INTO goods VALUES('gd04','ɢ��','200','50','120')
INSERT INTO goods VALUES('gd05','��Ӱ��','100','80','120')
INSERT INTO goods VALUES('gd06','ü��','300','30','60')
INSERT INTO goods VALUES('gd07','���߱�','150','50','150')
INSERT INTO goods VALUES('gd08','��ë��','300','20','60')
INSERT INTO goods VALUES('gd09','�ں�','500','100','250')
INSERT INTO goods VALUES('gd10','����','120','40','150')
INSERT INTO goods VALUES('gd11','��ױˮ ','200','100','200')
INSERT INTO goods VALUES('gd12','��Һ','200','100','200')
INSERT INTO goods VALUES('gd13','��ʪ��˪','150','120','300')
INSERT INTO goods VALUES('gd14','��Ĥ','500','80','200')
INSERT INTO goods VALUES('gd15','��������','350','100','250')
INSERT INTO goods VALUES('gd16','��ױ��','200','50','150')
INSERT INTO goods VALUES('gd17','��ױˢ','200','30','80')
INSERT INTO goods VALUES('gd18','��ë��','200','10','50')


---����gy_info (��Ӧ����Ϣ)���¼
INSERT INTO gy_info VALUES('gy01','Mac�ȿ����޹�˾','�Ϻ�', '200000','13869016879', 'С��')
INSERT INTO gy_info VALUES('gy02','Mac�ȿ����޹�˾','�Ϻ�', '200000','13869034679','С��')
INSERT INTO gy_info VALUES('gy03','YSLʥ�������޹�˾','����', '518000','13569686834', 'С��')
INSERT INTO gy_info VALUES('gy04','YSLʥ�������޹�˾','����', '518000','13568716879', 'С��')
INSERT INTO gy_info VALUES('gy05','Diro�ϰ����޹�˾','����', '100000','13469010179', 'С��')
INSERT INTO gy_info VALUES('gy06','Diro�ϰ����޹�˾','����', '100000','13865868750', 'С��')


---����kh_info(�ͻ���Ϣ)��
INSERT INTO kh_info VALUES('kh01','С��','��ɳ', '24334','12345321456','��')
INSERT INTO kh_info VALUES('kh02','С��','����', '25445','15354337677','��')
INSERT INTO kh_info VALUES('kh03','С��','�ൺ', '34540','12323343478','��')
INSERT INTO kh_info VALUES('kh04','С��','����', '85664','17868678667','��')
INSERT INTO kh_info VALUES('kh05','С��','����', '23454','16756768789','Ů')
INSERT INTO kh_info VALUES('kh06','С��','����', '98766','15675757567','Ů')
INSERT INTO kh_info VALUES('kh07','С��','����', '97857','14564564564','Ů')
INSERT INTO kh_info VALUES('kh08','С��','����', '34536','11899678667','Ů')


---����ywy_info (ҵ��Ա��Ϣ)��
INSERT INTO ywy_info VALUES('ywy01','����','��','13336542897','���','330421199302111234')
INSERT INTO ywy_info VALUES('ywy02','�ܽ�','��','13336542897','����','645645345657908909')
INSERT INTO ywy_info VALUES('ywy03','����','��','13336542897','����','234534536540079879')
INSERT INTO ywy_info VALUES('ywy04','�κ�','��','13336542897','��ɽ','132434546879456456')
INSERT INTO ywy_info VALUES('ywy05','����','Ů','13336542897','�ӱ�','234324657789786787')
INSERT INTO ywy_info VALUES('ywy06','�Ʒ�','Ů','13336542897','ɽ��','132436556343423422')
INSERT INTO ywy_info VALUES('ywy07','����','��','13336542897','����','345645436867858215')
INSERT INTO ywy_info VALUES('ywy08','�װ�','Ů','13336542897','����','234565475687980909')
INSERT INTO ywy_info VALUES('ywy09','����','Ů','13336542897','�人','988786466678544657')


---����ck_info(�ֿ���Ϣ)��
INSERT INTO ck_info VALUES('2018-11-30','ywy01','gy01','ck01','gd01','40')
INSERT INTO ck_info VALUES('2018-10-23','ywy02','gy01','ck02','gd02','100')
INSERT INTO ck_info VALUES('2018-6-26','ywy03','gy01','ck03','gd03','45')
INSERT INTO ck_info VALUES('2018-12-14','ywy04','gy01','ck04','gd04','30')
INSERT INTO ck_info VALUES('2018-11-18','ywy05','gy02','ck05','gd05','67')
INSERT INTO ck_info VALUES('2018-12-13','ywy06','gy02','ck06','gd06','16')
INSERT INTO ck_info VALUES('2018-11-30','ywy07','gy02','ck027','gd07','88')
INSERT INTO ck_info VALUES('2018-9-20','ywy08','gy03','ck08','gd08','56')
INSERT INTO ck_info VALUES('2017-12-31','ywy09','gy03','ck09','gd09','35')


---����outs (������Ϣ)��
INSERT INTO outs VALUES('2018-11-11','ywy01','thdh01','kh01','ck01','gd18','100','200','��','1600')
INSERT INTO outs VALUES('2018-11-12','ywy02','thdh02','kh02','ck01','gd17','120','100','��','600')
INSERT INTO outs VALUES('2018-11-13','ywy02','thdh03','kh03','ck01','gd16','50','150','��','1500')
INSERT INTO outs VALUES('2018-12-21','ywy03','thdh04','kh04','ck01','gd15','20','200','��','1600')
INSERT INTO outs VALUES('2018-11-21','ywy04','thdh05','kh05','ck01','gd14','500','300','��','2600')
INSERT INTO outs VALUES('2018-05-23','ywy05','thdh06','kh06','ck02','gd13','170','200','��','2000')
INSERT INTO outs VALUES('2018-08-14','ywy06','thdh07','kh07','ck02','gd12','100','240','��','2400')
INSERT INTO outs VALUES('2018-11-05','ywy07','thdh08','kh08','ck02','gd11','300','160','��','1600')
INSERT INTO outs VALUES('2018-10-30','ywy07','thdh09','kh09','ck02','gd10','250','330','��','3300')
INSERT INTO outs VALUES('2018-06-26','ywy08','thdh010','kh10','ck02','gd09','120','280','��','2800')
INSERT INTO outs VALUES('2018-09-13','ywy09','thdh011','kh11','ck03','gd08','90','190','��','1600')
INSERT INTO outs VALUES('2018-03-09','ywy09','thdh012','kh12','ck03','gd07','230','200','��','2000')
INSERT INTO outs VALUES('2018-11-17','ywy01','thdh013','kh13','ck03','gd06','370','670','��','5600')
INSERT INTO outs VALUES('2018-12-28','ywy01','thdh014','kh14','ck03','gd05','150','800','��','8000')
INSERT INTO outs VALUES('2018-01-16','ywy01','thdh015','kh15','ck03','gd04','340','500','��','5000')


GO





---����goods����gd_lsjg�ֶε�CHECKԼ��
ALTER TABLE goods WITH CHECK ADD CONSTRAINT gd_lsjg CHECK (gd_lsjg>=30 and gd_lsjg<=800)


---��ywy_info���ywy_sex�ֶ��д���DEFAULT����
ALTER TABLE ywy_info ADD CONSTRAINT DF_ywy_sex DEFAULT ('Ů') FOR ywy_sex


---������ͼViewkhinfo
CREATE VIEW Viewkhinfo
AS SELECT kh_id,kh_name,kh_sex FROM kh_info WITH CHECK OPTION



---���������ͼ
CREATE VIEW Viewgoods_ck
AS
SELECT   goods.gd_id, ck_info.ck_id, ck_info.gy_id
FROM     goods INNER JOIN
         ck_info ON goods.gd_id = ck_info.gd_id


---ɾ����ͼ
DROP  VIEW Viewkhinfo
DROP VIEW Viewgoods_ck




---��ѯ1
SELECT kh_name AS '����',kh_yb AS '�ʱ�',kh_tel AS'�绰' FROM kh_info WHERE kh_sex ='��'

---��ѯ2
SELECT gd_id AS '��Ʒ���',gd_name AS '��Ʒ����',gd_num AS '����',gd_lsjg AS '���ۼ۸�' FROM goods WHERE gd_lsjg='200'

---��ѯ3
SELECT goods.gd_id AS'��Ʒ���', goods.gd_name AS'��Ʒ����',outs.gd_lsjg AS'���ۼ۸�' ,outs_zk AS '�Ƿ����'FROM goods
INNER JOIN outs ON outs.gd_id=goods.gd_id  WHERE outs_zk='��'






---�����洢����CC
CREATE PROCEDURE CC
AS
BEGIN
	SELECT goods.gd_id,goods.gd_name,ck_info.ck_jhrq
	FROM goods INNER JOIN ck_info ON ck_info.gd_id=goods.gd_id
	WHERE gd_name='ɢ��'
END
EXEC CC


---�����洢��CCgoods
CREATE PROCEDURE CCgoods
AS
BEGIN
	SELECT gd_id,gd_name from goods
	WHERE gd_id='02'
END
EXEC CCgoods 


---�޸�CC�洢����
ALTER PROCEDURE CC
AS
BEGIN
	SELECT goods.gd_id '��Ʒ���',goods.gd_name '��Ʒ����',ck_info.ck_jhrq '��������'
	FROM goods INNER JOIN ck_info ON ck_info.gd_id=goods.gd_id
	WHERE gd_name='ɢ��'
END
EXEC CC


---ɾ���洢����CC
DROP PROCEDURE CC








---����������TR_Viewgoods_ck
CREATE TRIGGER TR_Viewgoods_ck ON Viewgoods_ck
INSTEAD OF UPDATE 
AS
PRINT '�����޸���ͼ'
UPDATE kh_info set kh_id='03' WHERE kh_adress='����'




---����������goods_delete
CREATE TRIGGER goods_delete
ON goods
AFTER DELETE
AS
BEGIN
	 DELETE FROM goods
	 WHERE goods.gd_id=(SELECT gd_id='01' FROM deleted)
	 PRINT '�Ա�ɾ��'
END
DELETE goods WHERE gd_id='01'




DROP TRIGGER kh_info_insert
---����������kh_info_insert
CREATE TRIGGER kh_info_insert
ON kh_info
FOR INSERT
AS	
BEGIN
    DECLARE @new char(100)
	DECLARE @�ͻ���� char(8)
	DECLARE @�ͻ����� char(40)
	SELECT @�ͻ����=kh_id from inserted
	SELECT @�ͻ�����=kh_name from inserted
	set @new='����,'+ @�ͻ����+@�ͻ�����+'��л���Ĺ���!'
	PRINT @new
END
INSERT kh_info VALUES('kh10','С��','����', '34536','11899678667','Ů')




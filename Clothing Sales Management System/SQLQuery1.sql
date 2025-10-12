Create database dress
GO

USE [dress]
GO

CREATE TABLE ck_info(
	[�ֿ���] [char](6) NOT NULL,
	[�ֿ�����] [char](40) NOT NULL,
	[����] [char](255) NULL,
 CONSTRAINT PK_ck_info PRIMARY KEY CLUSTERED ([�ֿ���])
 )

USE [dress]
GO

insert  [ck_info] Values('0001','һ�Ųֿ�','')
insert  [ck_info] Values('0002','���Ųֿ�','')
insert  [ck_info] Values('0003','���Ųֿ�','')
insert  [ck_info] Values('0004','�ĺŲֿ�','')
insert  [ck_info] Values('0005','��Ųֿ�','')

GO
CREATE TABLE g_info(
	[��Ӧ�̱��] [char](8) NOT NULL,
	[��Ӧ������] [char](40) NOT NULL,
	[��ַ] [char](40) NOT NULL,
	[�ʱ�] [char](6) NULL,
	[�绰] [char](40) NULL,
	[��������] [char](50) NULL,
	[�˺�] [char](20) NOT NULL,
	[��������] [char](30) NOT NULL,
	[��ϵ��] [char](8) NOT NULL,
	[��ע] [char](255) NULL,
 CONSTRAINT [PK_g_info] PRIMARY KEY CLUSTERED ([��Ӧ�̱��])
 )
 GO
 
insert  [g_info] Values('00001','��','�㽭ʡ�����м���','314101','84958441','123456@qq.com','123456',' ���� ����','С��','')
insert  [g_info] Values('00002','��','�㽭ʡ�����к���','314102','84958442','456789@qq.com','456789',' ��������','С��','')
insert  [g_info] Values('00003','��','�㽭ʡ�����м���','314100','84958443','123789@qq.com ','123789',' �й���������','С��','')
insert  [g_info] Values('00004','��','�㽭ʡ����������','314104','84958444','789123qq.com','789123',' ��������','С��','')  

CREATE TABLE goods(
	[��Ʒ���] [numeric](9, 0) NOT NULL,
	[��Ʒ����] [char](40) NOT NULL,
	[��ɫ] [char](10) NULL,
	[���] [char](30) NOT NULL,
	[���۸�] [numeric](9, 0) NOT NULL,
	[�����۸�] [numeric](9, 0) NOT NULL,
	[���ۼ۸�] [numeric](9, 0) NOT NULL,
	[��������] [char](20) NOT NULL,
	[��ע] [char](255) NULL,
 CONSTRAINT [PK_goods1] PRIMARY KEY CLUSTERED ([��Ʒ���])
 )
 GO

 insert  [goods] Values('1001','����','��ɫ','S','20','50','80','̫ƽ��˾','����1999��')
 insert  [goods] Values('1002','����','��ɫ','L','30','50','90','̫�Ӻ����޹�˾','������2000��')
 insert  [goods] Values('1003','�˶���','��ɫ','M','20','40','60','���º����޹�˾','������1888��')
 insert  [goods] Values('1004','������','��ɫ','L','50','80','120','������ʱ���޹�˾','������2001��')
 insert  [goods] Values('1005','���޷�','��ɫ','L','90','150','200','�����������޹�˾','������1999��')

 USE [dress]
GO


CREATE TABLE jh_info(
	[��������] [datetime] NOT NULL,
	[ҵ��Ա] [char](20) NOT NULL,
	[��������] [char](8) NOT NULL,
	[��Ӧ�̱��] [char](8) NOT NULL,
	[�ֿ���] [char](6) NOT NULL,
	[��Ʒ���] [numeric](9, 0) NOT NULL,
	[��ɫ] [char](10) NULL,
	[����] [numeric](9, 0) NOT NULL,
	[����] [numeric](9, 0) NOT NULL,
	[�ۿ�] [numeric](5, 0) NOT NULL,
	[�ܽ��] [numeric](9, 0) NOT NULL,
	[��ʱ����] [char](2) NULL,
	[�Ƿ񸶿�] [char](2) NULL,
	[��ע] [char](100) NULL,
 CONSTRAINT [PK_jh_info] PRIMARY KEY CLUSTERED ([��������]))
GO


insert  [jh_info] Values('2012-01-01 00:00:00.000','1','111','00001','0001','1001','��ɫ','100','20','5','2000','��','��','')
insert  [jh_info] Values('2012-01-02 00:00:00.000','2','112','00002','0002','1002','��ɫ','100','30','5','3000','��','��','')
insert  [jh_info] Values('2012-01-12 00:00:00.000','3','113','00003','0003','1003','��ɫ','100','20','5','2000','��','��','')



USE [dress]
GO



CREATE TABLE kc_info(
	[��������] [datetime] NOT NULL,
	[ҵ��Ա] [char](20) NOT NULL,
	[��ⵥ��] [char](8) NOT NULL,
	[��Ӧ�̱��] [char](8) NOT NULL,
	[�ֿ���] [char](6) NOT NULL,
	[��Ʒ���] [numeric](9, 0) NOT NULL,
	[��ɫ] [char](10) NULL,
	[����] [numeric](9, 0) NOT NULL,
	[����] [numeric](9, 0) NOT NULL,
	[�ۿ�] [numeric](5, 0) NOT NULL,
	[�ܽ��] [numeric](9, 0) NOT NULL,
	[����] [char](100) NULL,
 CONSTRAINT [PK_kc_info] PRIMARY KEY CLUSTERED 
(
	[��ⵥ��] ASC))

insert  [kc_info] Values('2012-01-01 00:00:00.000','10','1110','00001','0001','1001','��ɫ','100','20','5','2000','���')
insert  [kc_info] Values('2010-01-02 00:00:00.000','11','1111','00002','0002','1002','��ɫ','100','30','5','3000','')
insert  [kc_info] Values('2012-01-03 00:00:00.000','12','1112','00003','0003','1003','��ɫ','100','20','5','2000','')
insert  [kc_info] Values('2012-01-04 00:00:00.000','13','1113','00004','0004','1004','��ɫ','100','50','5','5000','')



USE [dress]
GO



CREATE TABLE kh_info(
	[�ͻ����] [char](8) NOT NULL,
	[�ͻ�����] [char](40) NOT NULL,
	[��ַ] [char](40) NULL,
	[�ʱ�] [char](6) NULL,
	[�绰] [char](40) NULL,
	[��ϵ��] [char](40) NOT NULL,
	[��������] [char](50) NULL,
	[�˺�] [char](30) NOT NULL,
	[����] [char](30) NOT NULL,
	[��ע] [char](255) NULL,
 CONSTRAINT [PK_k_info] PRIMARY KEY CLUSTERED 
(
	[�ͻ����] ASC))


GO

insert  [kh_info] Values('10001','С��','�㽭ʡ������','314100','84958443','С��','159753@qq.com','159753','����','')
insert  [kh_info] Values('10002','С��','�㽭ʡ��','314101','84958445','С��','951753@qq.com','951753','����','')
insert  [kh_info] Values('10003','С��','�㽭ʡƽ��','314102','84958446','С��','456852@qq.com','456852','����','')
insert  [kh_info] Values('10004','С��','�㽭ʡ����','314103','84958447','С��','123987@qq.com','123987','����','')
insert  [kh_info] Values('10005','С��','�㽭ʡ����','314104','84958448','С��','147258@qq.com','147258','�й�����','')




USE [dress]
GO



CREATE TABLE outs(
	[�������] [datetime] NOT NULL,
	[ҵ��Ա] [char](20) NOT NULL,
	[�������] [char](8) NOT NULL,
	[�ͻ����] [char](8) NOT NULL,
	[�ֿ���] [char](6) NOT NULL,
	[��Ʒ���] [numeric](9, 0) NOT NULL,
	[��ɫ] [char](10) NULL,
	[����] [numeric](9, 0) NOT NULL,
	[����] [numeric](9, 0) NOT NULL,
	[�ۿ�] [numeric](5, 0) NOT NULL,
	[�ܽ��] [numeric](9, 0) NOT NULL,
	[��ע] [char](100) NULL,
 CONSTRAINT [PK_outs] PRIMARY KEY CLUSTERED 
(
	[�������] ASC))

insert  [outs] Values('2012-02-01 00:00:00.000','01','5000','10001','0001','1001','��ɫ','90','80','5','8000','')
insert  [outs] Values('2012-02-02 00:00:00.000','02','5001','10002','0002','1002','��ɫ','80','90','5','9000','')
insert  [outs] Values('2012-02-03 00:00:00.000','03','5002','10003','0003','1003','��ɫ','90','60','5','6000','')
insert  [outs] Values('2012-02-04 00:00:00.000','04','5003','10004','0004','1004','��ɫ','70','120','5','84000','')
insert  [outs] Values('2012-02-05 00:00:00.000','05','5004','10005','0005','1005','��ɫ','90','200','5','18000','')


USE [dress]
GO


CREATE TABLE sell(
	[��������] [datetime] NOT NULL,
	[ҵ��Ա] [char](20) NOT NULL,
	[���۵���] [char](8) NOT NULL,
	[�ͻ����] [char](8) NOT NULL,
	[�ֿ���] [char](6) NOT NULL,
	[��Ʒ���] [numeric](9, 0) NOT NULL,
	[��ɫ] [char](10) NULL,
	[����] [numeric](9, 0) NOT NULL,
	[����] [numeric](9, 0) NOT NULL,
	[�ۿ�] [numeric](5, 0) NOT NULL,
	[�ܽ��] [numeric](9, 0) NOT NULL,
	[��ʱ����] [char](2) NULL,
	[�Ƿ����] [char](2) NULL,
	[��ע] [char](100) NULL,
 CONSTRAINT [PK_sell] PRIMARY KEY CLUSTERED 
(
	[���۵���] ASC))


insert  [sell] Values('2012-02-01 00:00:00.000','01','0101','10001','0001','1001','��ɫ','90','80','5','7200','��','��','')
insert  [sell] Values('2012-02-02 00:00:00.000','02','0102','10002','0002','1002','��ɫ','80','90','5','7200','��','��','')
insert  [sell] Values('2012-02-03 00:00:00.000','03','0103','10003','0003','1003','��ɫ','90','60','5','5400','��','��','')
insert  [sell] Values('2012-02-04 00:00:00.000','04','0104','10004','0004','1004','��ɫ','70','120','5','8400','��','��','')
insert  [sell] Values('2012-02-05 00:00:00.000','05','0105','10005','0005','1005','��ɫ','90','200','5','18000','��','��','')






USE [dress]
GO


CREATE TABLE [user](
	[�û���] [char](10) NOT NULL,
	[����] [char](10) NOT NULL,
	[Ȩ��] [tinyint] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[�û���] ASC))



insert  [user] Values('0001','0001','1')
insert  [user] Values('0002','0002','2')
insert  [user] Values('0003','0003','3')
insert  [user] Values('0004','0004','4')
insert  [user] Values('0005','0005','5')
insert  [user] Values('0006','0006','6')



USE [dress]
GO



CREATE TABLE ywy_info(
	[ҵ��Ա���] [char](8) NOT NULL,
	[����] [char](20) NOT NULL,
	[�Ա�] [char](4) NOT NULL,
	[�绰] [char](40) NULL,
	[��ַ] [char](40) NULL,
	[���֤����] [char](18) NOT NULL,
	[����] [char](255) NULL,
 CONSTRAINT [PK_y_info] PRIMARY KEY CLUSTERED 
(
	[ҵ��Ա���] ASC))


insert  [ywy_info] Values('10','����','��','4171291','�㽭ʡ������','330421199302111234','')
insert  [ywy_info] Values('11','����','��','4171292','�㽭ʡ������','330421199302112345','')
insert  [ywy_info] Values('12','����','Ů','4171293','�㽭ʡ������','330421199302113456','')
insert  [ywy_info] Values('13','����','Ů','4171294','�㽭ʡ������','330421199302115678','')
insert  [ywy_info] Values('14','���','Ů','4171295','�㽭ʡ������','330421199302116789','')



--��ͼ4
Create view view_g_info
As 
Select g_info.��Ӧ�̱��,g_info.��Ӧ������,kc_info.��Ʒ���,kc_info.���� From g_info 
JOIN kc_info
On g_info.�ֿ���=kc_info.�ֿ���

--ִ��
Select* From  view_g_info

--��ͼ1
Create view view_kc_info
As 
Select kc_info.��Ӧ�̱��,kc_info.�ֿ���,kc_info.��ɫ from kc_info
where kc_info.���� is not null
--ִ��
use dress
select * from view_kc_info 



Create view view_out
As 
Select ck_info.�ֿ���,outs.[��Ʒ���],outs.�������,outs.�ܽ�� From ck_info 
JOIN outs
On ck_info.�ֿ���=outs.�ֿ���
JOIN kc_info
On ck_info.�ֿ���=kc_info.�ֿ���

--��ͼ2
Create view view_ck_info
As 
Select kc_info.��Ʒ���,kc_info.����,kc_info.����,kc_info.��ⵥ��,ck_info.�ֿ�����
From ck_info 
JOIN kc_info
On kc_info.�ֿ���=ck_info.�ֿ���
Where kc_info.����>30
--ִ��
select * from view_ck_info


--��ͼ3
Create view view_kh_info
As 
Select kh_info.�ͻ����,kh_info.�ͻ�����,sell.��Ʒ���,sell.���۵���,sell.����,sell.��ɫ,kh_info.��������,kh_info.�绰,kh_info.��ַ,kh_info.�˺� From kh_info 
JOIN sell
On kh_info.�ͻ����=sell.�ͻ����
Where sell.����>30
--ִ��
select * from view_kh_info


--checkԼ��
Alter table sell with nocheck
Add constraint ck_sell
Check(����>=30 and ����<=200)

--CheckԼ��:goods�������۸����0
Alter table goods with nocheck
Add constraint good_info
Check(���۸�>0)

--����ѯ
--��ѯ1
Select goods.��Ʒ���,goods.��Ʒ����,sell.��������
 from goods,sell
where goods.��Ʒ���=sell.��Ʒ���

use dress
Go



--��ѯ2
Select kh_info.�ͻ����,kh_info.�ͻ�����,sell.��Ʒ���,sell.���۵���,sell.����,sell.��ɫ,kh_info.�绰,kh_info.��ַ,kh_info.�˺� From kh_info 
JOIN sell
On kh_info.�ͻ����=sell.�ͻ����
Where sell.����=90

GO

--��ѯ3
Select ywy_info.ҵ��Ա���,ywy_info.����,ywy_info.�Ա� from ywy_info where ���� like '��%'
GO

--�洢����
use dress
Go
--�洢��1
create procedure up_g_info
(@no char(10))
AS
select g_info.��Ӧ�̱��,g_info.��Ӧ������,g_info.��ַ,g_info.�ʱ�,g_info.�������� 
from g_info
where ��Ӧ�̱��=@no
--ִ��
exec up_g_info '00003'
GO

--�洢��2
create procedure up_goods
@no char(10)
as
select ��Ʒ���,��Ʒ���� from goods
where ��Ʒ���=@no
--ִ��
exec up_goods @no='1002'
GO

--�洢��3
create procedure up_goods1
@TypeID  CHAR(15)
AS
IF EXISTS (SELECT * FROM goods WHERE ��Ʒ���=@TypeID)
Select * from goods where ��Ʒ���=@TypeID order by ���ۼ۸�
else
PRINT '�޸���Ʒ��Ϣ'
--ִ��
exec up_goods1 @TypeID='10000'
GO



GO

--������1
Create Trigger jh_info_delete
on jh_info
After Delete
AS
Begin
 Delete from jh_info
 Where jh_info.��������=(select �������� from deleted)
 PRINT '�Ա�ɾ��'
End
--ִ��
delete from jh_info where ��������='111'


GO



USE [dress]
GO


--������2
create TRIGGER g_info_insert
ON g_info
for insert
as	
begin
    declare @xx char(100)
	declare @��Ӧ�̱�� char(8)
	declare @��Ӧ������ char(40)
	select @��Ӧ�̱��=��Ӧ�̱�� from inserted
	select @��Ӧ������=��Ӧ������ from inserted
	set @xx='����,'+ @��Ӧ�̱��+@��Ӧ������+'��л��Ϊ���ǹ���!'
	print @xx
end

GO
--ִ��
insert [g_info] values('00005','��','�㽭ʡ��������ɳ','314105','84958445','777123qq.com','789123','��������','С��','')


GO

--������3
Create Trigger goods_update
On goods
For Update
As
Begin
Declare @Old varchar(20)
Declare @New varchar(20)
Select @New=���۸� From inserted
Select @Old=���۸� From deleted
Print 'ԭ���۸�Ϊ��'+@Old
Print '�����۸�Ϊ��'+@New
End


--ִ��
Update goods Set ���۸�='80' Where ���۸�='30'

GO



--������4
use dress
go
Create Trigger ck_info_instead
On ck_info
Instead of UPDATE,DELETE
AS
BEGIN
	PRINT '�������޸Ļ�ɾ���ֿ⣡'
END
GO

--ִ��
UPDATE ck_info SET �ֿ�����='һ�Ųֿ�' WHERE �ֿ�����='���Ųֿ�'
GO
/*������ȡ���Ʒ���*/
/*����������¼��*/
create login mxm with password='123456'
create login onething with password='123456'
GO
/*�������ݿ��û�ӳ�䵽��¼����*/
use database_english
create user mxm_des for login mxm 
create user onething_des for login onething
GO
/*����ѧ������ʦ������Ա�������ݿ��ɫ*/
create role postgraduate1
create role teacher1
create role administrator1
/*�����ɫ����Ȩ��*/
grant select
on table postgraduate
to postgraduate1
grant select
on table postgraduate
to teacher1
grant select,insert,update,delete
on table postgraduate
to administrator1
GO
/*������ԱȨ������g1*/
grant administrator1
to g1
/*�ջ�����g1�Ĺ���ԱȨ��*/
revoke administrator1
to g1
GO
/*����ѧ��������Ϣ��ͼ*/
create view personal1
as
select *
from postgraduate
where postgraduate_id = 'y000000001'
GO
/*���鿴������Ϣ��ͼ��Ȩ������ѧ��*/
grant select
on personal1
to yjs1;
/*����DDL������������ݿ��仯*/
USE database_english
	GO
	CREATE TABLE AuditLog
	(	ID INT PRIMARY KEY IDENTITY(1,1),
		Command NVARCHAR(1000),
����	  PostTime NVARCHAR(24),
����	  HostName NVARCHAR(100),
����	  LoginName NVARCHAR(100))
	GO
CREATE TRIGGER Audit ON DATABASE
����FOR DDL_DATABASE_LEVEL_EVENTS
����AS
����DECLARE @data XML
����DECLARE @cmd NVARCHAR(1000)
����DECLARE @posttime NVARCHAR(24)
����DECLARE @spid NVARCHAR(6)
����DECLARE @loginname NVARCHAR(100)
����DECLARE @hostname NVARCHAR(100)
����SET @data = EVENTDATA()
����SET @cmd = @data.value('(/EVENT_INSTANCE/TSQLCommand/CommandText)', 'NVARCHAR(1000)')
����SET @cmd = LTRIM(RTRIM(REPLACE(@cmd,'','')))
����SET @posttime = @data.value('(/EVENT_INSTANCE/PostTime)', 'NVARCHAR(24)')
����SET @spid = @data.value('(/EVENT_INSTANCE/SPID)', 'nvarchar(6)')
����SET @loginname = @data.value('(/EVENT_INSTANCE/LoginName)',
����'NVARCHAR(100)')
����SET @hostname = HOST_NAME()
����INSERT INTO dbo.AuditLog(Command, PostTime,HostName,LoginName)
����VALUES(@cmd, @posttime, @hostname, @loginname)
����GO
-- View log table
SELECT *
FROM dbo.AuditLog
GO
--��������,ÿ��һ��
USE database_english
GO
declare @str varchar(100)
set @str='D:\DBtext\jgj\DBABak\FullBak'+replace(replace(replace(convert(varchar,getdate(),20),'-',''),' ',''),':','')+'.bak'
BACKUP DATABASE [database_english] TO DISK=@str
WITH RETAINDAYS=15,NOFORMAT,NOINIT,
NAME=N'database_english��������',SKIP,NOREWIND,
NOUNLOAD,STATS=10
GO
 
/*******************���챸����ҵ*******************/
--�ض���־
USE database_english
GO
BACKUP LOG Demo  WITH NO_LOG
GO
--������־�ļ�
USE database_english
GO
DBCC SHRINKFILE (N'database_english_log',0,TRUNCATEONLY)
GO
--���챸��,ÿ��һ��
USE database_english
GO
declare @str varchar(100)
set @str='D:\DBtext\jgj\DBABak\DiffBak'+replace(replace(replace(convert(varchar,getdate(),20),'-',''),' ',''),':','')+'.diff'
BACKUP DATABASE [database_english] TO DISK=@str
WITH DIFFERENTIAL,RETAINDAYS=8,NOFORMAT,NOINIT,
NAME=N'database_english���챸��',SKIP,NOREWIND,
NOUNLOAD,STATS=10
GO
 
 
/******************��־������ҵ*******************/
--��־����,ÿСʱһ��
USE database_english
GO
declare @str varchar(100)
set @str='D:\DBtext\jgj\DBABak\logbak'+replace(replace(replace(convert(varchar,getdate(),20),'-',''),' ',''),':','')+'.trn'
BACKUP LOG [database_english] TO DISK=@str
WITH RETAINDAYS=3,NOFORMAT,NOINIT,
NAME=N'database_english��־����',SKIP,NOREWIND,
NOUNLOAD,STATS=10
GO
 
--ɾ�����ڵı����ļ�,ÿ������
declare @str varchar(100),@dir varchar(100),@fileName varchar(30)
set @dir='del D:\DBtext\jgj\DBABak\'
set @filename=left(replace(replace(replace(convert(varchar,getdate()-15,20),'-',''),' ',''),':',''),8)
set @str=@dir+'fullbak'+@filename+'*.bak'
exec xp_cmdshell @str
set @filename=left(replace(replace(replace(convert(varchar,getdate()-8,20),'-',''),' ',''),':',''),8)
set @str=@dir+'diffbak'+@filename+'*.diff'
exec xp_cmdshell @str
set @filename=left(replace(replace(replace(convert(varchar,getdate()-8,20),'-',''),' ',''),':',''),8)
set @str=@dir+'logbak'+@filename+'*.trn'
exec xp_cmdshell @str
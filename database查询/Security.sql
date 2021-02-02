/*自主存取控制方法*/
/*创建两个登录名*/
create login mxm with password='123456'
create login onething with password='123456'
GO
/*创建数据库用户映射到登录名下*/
use database_english
create user mxm_des for login mxm 
create user onething_des for login onething
GO
/*创建学生、教师、管理员三种数据库角色*/
create role postgraduate1
create role teacher1
create role administrator1
/*授予角色操作权限*/
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
/*将管理员权限授予g1*/
grant administrator1
to g1
/*收回授予g1的管理员权限*/
revoke administrator1
to g1
GO
/*创建学生个人信息视图*/
create view personal1
as
select *
from postgraduate
where postgraduate_id = 'y000000001'
GO
/*将查看个人信息视图的权限授予学生*/
grant select
on personal1
to yjs1;
/*创建DDL触发器监控数据库表变化*/
USE database_english
	GO
	CREATE TABLE AuditLog
	(	ID INT PRIMARY KEY IDENTITY(1,1),
		Command NVARCHAR(1000),
　　	  PostTime NVARCHAR(24),
　　	  HostName NVARCHAR(100),
　　	  LoginName NVARCHAR(100))
	GO
CREATE TRIGGER Audit ON DATABASE
　　FOR DDL_DATABASE_LEVEL_EVENTS
　　AS
　　DECLARE @data XML
　　DECLARE @cmd NVARCHAR(1000)
　　DECLARE @posttime NVARCHAR(24)
　　DECLARE @spid NVARCHAR(6)
　　DECLARE @loginname NVARCHAR(100)
　　DECLARE @hostname NVARCHAR(100)
　　SET @data = EVENTDATA()
　　SET @cmd = @data.value('(/EVENT_INSTANCE/TSQLCommand/CommandText)', 'NVARCHAR(1000)')
　　SET @cmd = LTRIM(RTRIM(REPLACE(@cmd,'','')))
　　SET @posttime = @data.value('(/EVENT_INSTANCE/PostTime)', 'NVARCHAR(24)')
　　SET @spid = @data.value('(/EVENT_INSTANCE/SPID)', 'nvarchar(6)')
　　SET @loginname = @data.value('(/EVENT_INSTANCE/LoginName)',
　　'NVARCHAR(100)')
　　SET @hostname = HOST_NAME()
　　INSERT INTO dbo.AuditLog(Command, PostTime,HostName,LoginName)
　　VALUES(@cmd, @posttime, @hostname, @loginname)
　　GO
-- View log table
SELECT *
FROM dbo.AuditLog
GO
--完整备份,每周一次
USE database_english
GO
declare @str varchar(100)
set @str='D:\DBtext\jgj\DBABak\FullBak'+replace(replace(replace(convert(varchar,getdate(),20),'-',''),' ',''),':','')+'.bak'
BACKUP DATABASE [database_english] TO DISK=@str
WITH RETAINDAYS=15,NOFORMAT,NOINIT,
NAME=N'database_english完整备份',SKIP,NOREWIND,
NOUNLOAD,STATS=10
GO
 
/*******************差异备份作业*******************/
--截断日志
USE database_english
GO
BACKUP LOG Demo  WITH NO_LOG
GO
--收缩日志文件
USE database_english
GO
DBCC SHRINKFILE (N'database_english_log',0,TRUNCATEONLY)
GO
--差异备份,每天一次
USE database_english
GO
declare @str varchar(100)
set @str='D:\DBtext\jgj\DBABak\DiffBak'+replace(replace(replace(convert(varchar,getdate(),20),'-',''),' ',''),':','')+'.diff'
BACKUP DATABASE [database_english] TO DISK=@str
WITH DIFFERENTIAL,RETAINDAYS=8,NOFORMAT,NOINIT,
NAME=N'database_english差异备份',SKIP,NOREWIND,
NOUNLOAD,STATS=10
GO
 
 
/******************日志备份作业*******************/
--日志备份,每小时一次
USE database_english
GO
declare @str varchar(100)
set @str='D:\DBtext\jgj\DBABak\logbak'+replace(replace(replace(convert(varchar,getdate(),20),'-',''),' ',''),':','')+'.trn'
BACKUP LOG [database_english] TO DISK=@str
WITH RETAINDAYS=3,NOFORMAT,NOINIT,
NAME=N'database_english日志备份',SKIP,NOREWIND,
NOUNLOAD,STATS=10
GO
 
--删除过期的备份文件,每天两次
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
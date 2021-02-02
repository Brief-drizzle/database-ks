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
/*数据库备份*/
backup database database_english
to disk='D:\database\database_english.bak';
/*数据库恢复*/
restore database database_english
from disk='D:\database\database_english.bak';



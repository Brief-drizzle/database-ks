/*触发器：在参与项目认定表(participate_project)中插入新数据时，项目id(project_id)必须已经存在于项目表(Project)中*/
USE ks_english
GO
create trigger insert_participate_project on participate_project
after insert
as
if exists (select * from inserted where project_id in (select project_id from Project))
	print '添加成功'
else
begin
	print '项目表(Project)中没有该项目的基本信息，插入失败！'
	rollback transaction
end
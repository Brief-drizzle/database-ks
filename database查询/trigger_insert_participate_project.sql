/*���������ڲ�����Ŀ�϶���(participate_project)�в���������ʱ����Ŀid(project_id)�����Ѿ���������Ŀ��(Project)��*/
USE ks_english
GO
create trigger insert_participate_project on participate_project
after insert
as
if exists (select * from inserted where project_id in (select project_id from Project))
	print '��ӳɹ�'
else
begin
	print '��Ŀ��(Project)��û�и���Ŀ�Ļ�����Ϣ������ʧ�ܣ�'
	rollback transaction
end
/*����������ɾ���о���ͬʱɾ����Ӧ��ѧ����������Ϣ*/
if(OBJECT_ID('trigger_postgraduate_delete') is not null)
drop trigger trigger_postgraduate_delete        -- ɾ��������
go
create trigger trigger_postgraduate_delete
on postgraduate        -- ָ�������������ı�
instead of delete
As
declare @Pid varchar(10)
Select @Pid=postgraduate_id from Deleted
Delete From academic_exchange where postgraduate_id = @Pid
Delete From postgraduate where postgraduate_id = @Pid
go

delete 
from postgraduate
where postgraduate_id = 'y000000005'

select * 
from postgraduate
select * 
from academic_exchange
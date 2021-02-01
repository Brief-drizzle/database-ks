/*触发器控制删除研究生同时删除对应的学术交流表信息*/
if(OBJECT_ID('trigger_postgraduate_delete') is not null)
drop trigger trigger_postgraduate_delete        -- 删除触发器
go
create trigger trigger_postgraduate_delete
on postgraduate        -- 指定创建触发器的表
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
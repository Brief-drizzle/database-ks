/*每名教师已经确认的参与学术交流学生数量（教师名称，参与学术交流学生数量)*/
create view academic_count(teacher,academic_count) as
select teacher.teacher_name,COUNT(postgraduate.postgraduate_id)
from academic_exchange,postgraduate,teacher
where academic_exchange.audit_status = 1 and academic_exchange.postgraduate_id = postgraduate.postgraduate_id and postgraduate.teacher_id = teacher.teacher_id
group by teacher.teacher_id,teacher.teacher_name;
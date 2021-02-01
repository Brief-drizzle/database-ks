/*指定时间范围内各学科参与国外学术交流的学生信息*/
select postgraduate_name,postgraduate_sex,postgraduate_birth,postgraduate_phone,postgraduate_email 
from postgraduate
where postgraduate_id in (select academic_exchange.postgraduate_id
						  from academic_exchange,teacher_subject,tutor
						  where academic_time > '2020-01-01' and academic_time < '2020-02-04' and country != '中国' and academic_exchange.tutor_id = tutor.tutor_id and tutor.teacher_id = teacher_subject.teacher_id
						  group by academic_exchange.postgraduate_id,subject_id);
/*指定时间范围内某个学科参与国外学术交流的学生人数*/
select subject_id,COUNT(postgraduate.postgraduate_id) as ad_count
from postgraduate,academic_exchange,teacher_subject,tutor
where academic_time > '2020-01-01' and academic_time < '2020-02-04' and subject_id = 's000000001' and country != '中国' and postgraduate.postgraduate_id = academic_exchange.postgraduate_id and academic_exchange.tutor_id = tutor.tutor_id and tutor.teacher_id = teacher_subject.teacher_id
group by subject_id;
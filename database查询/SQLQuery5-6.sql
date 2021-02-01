/*ָ��ʱ�䷶Χ�ڸ�ѧ�Ʋ������ѧ��������ѧ����Ϣ*/
select postgraduate_name,postgraduate_sex,postgraduate_birth,postgraduate_phone,postgraduate_email 
from postgraduate
where postgraduate_id in (select academic_exchange.postgraduate_id
						  from academic_exchange,teacher_subject,tutor
						  where academic_time > '2020-01-01' and academic_time < '2020-02-04' and country != '�й�' and academic_exchange.tutor_id = tutor.tutor_id and tutor.teacher_id = teacher_subject.teacher_id
						  group by academic_exchange.postgraduate_id,subject_id);
/*ָ��ʱ�䷶Χ��ĳ��ѧ�Ʋ������ѧ��������ѧ������*/
select subject_id,COUNT(postgraduate.postgraduate_id) as ad_count
from postgraduate,academic_exchange,teacher_subject,tutor
where academic_time > '2020-01-01' and academic_time < '2020-02-04' and subject_id = 's000000001' and country != '�й�' and postgraduate.postgraduate_id = academic_exchange.postgraduate_id and academic_exchange.tutor_id = tutor.tutor_id and tutor.teacher_id = teacher_subject.teacher_id
group by subject_id;
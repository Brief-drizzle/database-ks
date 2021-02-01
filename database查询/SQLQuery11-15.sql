/*查询每个导师指导的学生申请课程助教情况*/
select tutor_id,COUNT(postgraduate.postgraduate_id) as num,selection.postgraduate_id,selection_id,course_id
from selection,teacher,tutor,postgraduate
where selection.postgraduate_id = postgraduate.postgraduate_id and teacher.teacher_id = postgraduate.teacher_id and teacher.teacher_id = tutor.teacher_id
group by tutor_id,selection.postgraduate_id,selection_id,course_id;
/*查询每个导师指导的学生参与项目情况*/
select tutor.tutor_id,COUNT(postgraduate.postgraduate_id) as num,postgraduate.postgraduate_id,cast(mainwork as varchar(4000)) as mainwork,participate_starttime,participate_endtime
from participate_project,postgraduate_participate_project,teacher,tutor,postgraduate
where postgraduate_participate_project.postgraduate_id = postgraduate.postgraduate_id and postgraduate_participate_project.participate_project_id = participate_project.participate_project_id and teacher.teacher_id = postgraduate.teacher_id and teacher.teacher_id = tutor.teacher_id
group by tutor.tutor_id,postgraduate.postgraduate_id,cast(mainwork as varchar(4000)),participate_starttime,participate_endtime;
/*查询每个学科学生参与国内学术交流情况*/
select teacher_subject.subject_id,COUNT(postgraduate.postgraduate_id) as num,postgraduate.postgraduate_id,academic_exchange_name,academic_time,report_chinesename,quality
from subject,teacher,postgraduate,academic_exchange,teacher_subject
where academic_exchange.postgraduate_id = postgraduate.postgraduate_id and postgraduate.teacher_id = teacher.teacher_id and teacher.teacher_id = teacher_subject.teacher_id
group by teacher_subject.subject_id,postgraduate.postgraduate_id,academic_exchange_name,academic_time,report_chinesename,quality;
/*查询每门课程的所有助教评价*/
select course.course_id,postgraduate.postgraduate_id,cast(self_account as varchar(4000)) as self_account,cast(instructor_evaluate as varchar(4000)) as instructor_evaluate
from course,assistant_assessment,assistant_chose,postgraduate
where postgraduate.postgraduate_id = assistant_assessment.postgraduate_id and assistant_assessment.assessment_id = assistant_chose.assessment_id and assistant_chose.course_id = course.course_id
group by course.course_id,postgraduate.postgraduate_id,cast(self_account as varchar(4000)),cast(instructor_evaluate as varchar(4000));
/*查询参与每个项目的全部研究生信息*/
select project_id,COUNT(postgraduate.postgraduate_id) as num,postgraduate.postgraduate_id,postgraduate_name,postgraduate_sex,postgraduate_email
from participate_project,postgraduate_participate_project,postgraduate
where postgraduate_participate_project.postgraduate_id = postgraduate.postgraduate_id and postgraduate_participate_project.participate_project_id = participate_project.participate_project_id
group by project_id,postgraduate.postgraduate_id,postgraduate_name,postgraduate_sex,postgraduate_email;
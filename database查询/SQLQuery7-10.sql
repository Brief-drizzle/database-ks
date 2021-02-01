/*某个项目已经分配的折合费用*/
select costequivalent
from participate_project,Project
where participate_project.project_id=Project.project_id and Project.project_name='项目2'

/*指定时间范围内某个学科参与经费的总数量*/
select allfunds
from Project
where starttime>='2019.9.13' and endtime<='2020.9.13' and 
tutor_id in(select tutor_id from tutor
where teacher_id in(select teacher_id from teacher_subject where subject_id='s000000001'))

/*每名导师项目经费总剩余情况*/
select tutor.tutor_id,Project.allfunds-sum(costequivalent) as rel
from postgraduate,participate_project,postgraduate_participate_project,Project,tutor
where postgraduate.postgraduate_id=postgraduate_participate_project.postgraduate_id 
and postgraduate_participate_project.participate_project_id=participate_project.participate_project_id
and participate_project.project_id=Project.project_id and tutor.tutor_id=Project.tutor_id 
group by tutor.tutor_id,Project.project_id,postgraduate.postgraduate_id,Project.allfunds

/*指定学生参与项目的基本信息和确认情况*//*我们的ER图里没有确认情况的说明*/
select distinct Project.project_name,Project.project_id,Project.allfunds,Project.starttime,Project.endtime
from Project,participate_project,postgraduate_participate_project,tutor,postgraduate
where postgraduate.postgraduate_id=postgraduate_participate_project.postgraduate_id and participate_project.project_id=Project.project_id
and postgraduate_participate_project.participate_project_id=participate_project.participate_project_id and postgraduate_name='yjs2'
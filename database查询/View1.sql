/*每名导师项目经费总剩余情况*/
create view rel(tname,rel) AS
select tutor.tutor_id,Project.allfunds-sum(costequivalent) as rel
from postgraduate,participate_project,postgraduate_participate_project,Project,tutor
where postgraduate.postgraduate_id=postgraduate_participate_project.postgraduate_id 
and postgraduate_participate_project.participate_project_id=participate_project.participate_project_id
and participate_project.project_id=Project.project_id and tutor.tutor_id=Project.tutor_id 
group by tutor.tutor_id,Project.project_id,postgraduate.postgraduate_id,Project.allfunds
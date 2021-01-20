/*每名教师学生参加助教课程情况（教师名称，助教学生数量，助教课程）。*/
SELECT  dbo.course.course_name, COUNT(dbo.assistant_chose.assessment_id) AS num, dbo.teacher.teacher_name
FROM     dbo.teacher INNER JOIN
               dbo.instructor ON dbo.teacher.teacher_id = dbo.instructor.teacher_id INNER JOIN
               dbo.teach ON dbo.instructor.instructor_id = dbo.teach.instructor_id INNER JOIN
               dbo.course ON dbo.teach.course_id = dbo.course.course_id INNER JOIN
               dbo.assistant_chose ON dbo.course.course_id = dbo.assistant_chose.course_id
GROUP BY dbo.teacher.teacher_name, dbo.course.course_name


/*登录*/
SELECT * FROM [user] WHERE userid='t000000001' and password=123456;
/*指定学科和日期范围内助教结果为合格的学生信息相关课程信息*/
SELECT * FROM dbo.course 
        where course_starttime>='2020-02-01' and '2020-07-01'>=course_endtime and
            course_id in(select course_id from dbo.assistant_chose
            where assessment_id in(
                select assessment_id from dbo.assistant_assessment
                where postgraduate_id in(
                    select postgraduate_id from dbo.postgraduate
                    where teacher_id in(
                        select teacher_id from dbo.teacher_subject
                        where subject_id='s000000001'
                                        )
                                        )
                                    )
                        )
/*每名授课教师已经确定的助教总人数*/
SELECT count (*) as assistantnum
        FROM dbo.assistant_chose t
        WHERE course_id in (
        select course_id from dbo.teach where instructor_id in(
            select instructor_id from dbo.instructor where teacher_id='t000000001'
            )
        )
/*指定日期范围内和学科下研究生助教数量*/
SELECT
        count (*)as post_assistantnum
        FROM dbo.assistant_chose t
        WHERE course_id in (
        select course_id from dbo.course
        where course_starttime>='2020-02-01' and '2020-07-01'>=course_endtime and course_id in(
            select course_id from dbo.teach where instructor_id in(
            select instructor_id from dbo.instructor where teacher_id in(
            select teacher_id from dbo.teacher_subject
                        where subject_id='s000000001'
            )
            )
        )
        )

package database.test;

import database.dao.CourseDao;
import database.entity.Course;
import database.service.CategoryDaoImpl;
import database.service.CourseDaoImpl;
import org.junit.Assert;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import static org.junit.jupiter.api.Assertions.*;
@RunWith(SpringJUnit4ClassRunner.class)
class CourseDaoTest {

    private CourseDaoImpl courseDao=new CourseDaoImpl();
    @Test
    void queryById() throws ParseException {
        String id="c000000001";
        String name="课程1";
        String nature="必修";
        String s="2020-02-01";
        String end="2020-06-05";
        String audience="本科";
        int stunum=60;
        int time=48;
        Course course=new Course();
        course.setCourseId(id);
        course.setCourseName(name);
        course.setCourseNature(nature);
        course.setCourseStarttime(s);
        course.setCourseEndtime(end);
        course.setCourseAudience(audience);
        course.setCourseStudentnum(stunum);
        course.setCourseTeachtime(time);
        Course course1=courseDao.queryById(id);
        /*数据库中存储该字段使用的时date类型，当使用jdbc读取的时候就会发生少两天的情况。*/
        Assert.assertEquals(courseDao.queryById(id).getCourseName(),name);
        Assert.assertEquals(courseDao.queryById(id).getCourseNature(),nature);
        Assert.assertEquals(courseDao.queryById(id).getCourseEndtime().toString(),end);
        Assert.assertEquals(courseDao.queryById(id).getCourseStarttime().toString(),s);
        Assert.assertEquals(String.valueOf(courseDao.queryById(id).getCourseTeachtime()),String.valueOf(time));
    }

    @Test
    void queryAll() {
        String name="课程1";
        Assert.assertEquals(courseDao.queryAll().get(0).getCourseName(), name);
    }

    @Test
    void insert() {
        String id="c000000004";
        String name="课程4";
        String nature="选修";
        String s="2020-02-04";
        String end="2020-06-06";
        String audience="本科";
        int stunum=50;
        int time=36;
        Course course=new Course();
        course.setCourseId(id);
        course.setCourseName(name);
        course.setCourseNature(nature);
        course.setCourseStarttime(s);
        course.setCourseEndtime(end);
        course.setCourseAudience(audience);
        course.setCourseStudentnum(stunum);
        course.setCourseTeachtime(time);
        Assert.assertEquals(courseDao.insert(course),1);
    }

    @Test
    void update() {
        String id="c000000001";
        String name="课程1";
        String nature="必修";
        String s="2020-02-01";
        String end="2020-06-08";
        String audience="本科";
        int stunum=60;
        int time=48;
        Course course=new Course();
        course.setCourseId(id);
        course.setCourseName(name);
        course.setCourseNature(nature);
        course.setCourseStarttime(s);
        course.setCourseEndtime(end);
        course.setCourseAudience(audience);
        course.setCourseStudentnum(stunum);
        course.setCourseTeachtime(time);
        Assert.assertEquals(courseDao.update(course), 1);

    }

    @Test
    void deleteById() {
        String id="c000000001";
        Assert.assertEquals(courseDao.deleteById(id), 1);
    }
}
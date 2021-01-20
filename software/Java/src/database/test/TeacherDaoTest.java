package database.test;

import database.entity.Teacher;
import database.service.TeacherDaoImpl;
import org.junit.Assert;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.SimpleDateFormat;

import static org.junit.jupiter.api.Assertions.*;
@RunWith(SpringJUnit4ClassRunner.class)
class TeacherDaoTest {

    private TeacherDaoImpl teacherDao=new TeacherDaoImpl();
    @Test
    void queryById() {
        String id="t000000001";
        String name="李一";
        String status="教授";
        String phone="15900001111";
        String birth="1972-01-16";
        String email="aaa@163.com";
        String sex="1";
        Teacher teacher = teacherDao.queryById(id);
        Assert.assertEquals(teacher.getTeacherName(), name);
        Assert.assertEquals(teacher.getTeacherBirth().toString(), birth);
    }

    @Test
    void queryAll() {
        String name="李一";
        Assert.assertEquals(teacherDao.queryAll().get(0).getTeacherName(), name);
    }

    @Test
    void insert() {
        String id="t000000008";
        String name="李八";
        String status="教授";
        String phone="15900008888";
        String birth="1972-01-18";
        String email="hhh@163.com";
        String sex="1";
        Teacher teacher=new Teacher();
        teacher.setTeacherBirth(birth);
        teacher.setTeacherEmail(email);
        teacher.setTeacherId(id);
        teacher.setTeacherName(name);
        teacher.setTeacherPhone(phone);
        teacher.setTeacherSex(sex);
        teacher.setTeacherStatus(status);
        Assert.assertEquals(teacherDao.insert(teacher), 1);
    }

    @Test
    void update() {
        String id="t000000001";
        String name="李一";
        String status="教授";
        String phone="15900001111";
        String birth="1972-01-18";
        String email="aaa@163.com";
        String sex="0";
        Teacher teacher=new Teacher();
        teacher.setTeacherBirth(birth);
        teacher.setTeacherEmail(email);
        teacher.setTeacherId(id);
        teacher.setTeacherName(name);
        teacher.setTeacherPhone(phone);
        teacher.setTeacherSex(sex);
        teacher.setTeacherStatus(status);
        Assert.assertEquals(teacherDao.update(teacher), 1);
    }

    @Test
    void deleteById() {
        String id="t000000001";
        Assert.assertEquals(teacherDao.deleteById(id), 1);
    }
}
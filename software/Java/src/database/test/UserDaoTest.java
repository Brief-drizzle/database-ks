package database.test;

import database.entity.User;
import database.service.UserDaoImpl;
import org.junit.Assert;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import static org.junit.jupiter.api.Assertions.*;
@RunWith(SpringJUnit4ClassRunner.class)
class UserDaoTest {

    private UserDaoImpl userDao=new UserDaoImpl();
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    @Test
    void queryById() throws ParseException {
        String id="t000000001";
        String cateid="u000000002";
        String pwd="123456";
        String time="2021-01-17 21:31:21.000";
        String loca="北京";
        Assert.assertEquals(userDao.queryById(id).getUsercategoryId(), cateid);
        Assert.assertEquals(userDao.queryById(id).getLastlogintime(), sdf.parse(time));
    }

    @Test
    void queryAll() {
        String cateid="u000000002";
        Assert.assertEquals(userDao.queryAll().get(0).getUsercategoryId(),cateid );
    }

    @Test
    void insert() throws ParseException {
        String id="t000000008";
        String cateid="u000000002";
        String pwd="123456";
        String time="2021-01-17 21:31:21.000";
        String loca="北京";
        User user=new User();
        user.setLastloginip(loca);
        user.setLastlogintime(sdf.parse(time));
        user.setPassword(pwd);
        user.setUsercategoryId(cateid);
        user.setUserid(id);
        Assert.assertEquals(userDao.insert(user), 1);
    }

    @Test
    void update() throws ParseException {
        String id="t000000001";
        String cateid="u000000002";
        String pwd="12345";
        String time="2021-01-17 21:31:21.000";
        String loca="北京";
        User user=new User();
        user.setLastloginip(loca);
        user.setLastlogintime(sdf.parse(time));
        user.setPassword(pwd);
        user.setUsercategoryId(cateid);
        user.setUserid(id);
        Assert.assertEquals(userDao.update(user), 1);
    }

    @Test
    void deleteById() {
        String id="t000000001";
        Assert.assertEquals(userDao.deleteById(id), 1);
    }
}
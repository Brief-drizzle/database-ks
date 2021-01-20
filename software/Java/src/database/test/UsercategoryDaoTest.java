package database.test;

import database.entity.User;
import database.entity.Usercategory;
import database.service.UsercategoryDaoImpl;
import org.junit.Assert;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.jupiter.api.Assertions.*;
@RunWith(SpringJUnit4ClassRunner.class)
class UsercategoryDaoTest {

    private UsercategoryDaoImpl usercategoryDao=new UsercategoryDaoImpl();
    @Test
    void queryById() {
        String id="u000000001";
        String name="研究生";
        int now=0;
        Assert.assertEquals(usercategoryDao.queryById(id).getUsercategoryName(), name);
        Assert.assertEquals(String.valueOf(now), String.valueOf(usercategoryDao.queryById(id).getNowId()));
    }

    @Test
    void queryAll() {
        String name="研究生";
        Assert.assertEquals(usercategoryDao.queryAll().get(0).getUsercategoryName(), name);
    }

    @Test
    void insert() {
        String id="u000000001";
        String name="其他";
        int now=0;
        Usercategory usercategory=new Usercategory();
        usercategory.setNowId(now);
        usercategory.setUsercategoryId(id);
        usercategory.setUsercategoryName(name);
        Assert.assertEquals(usercategoryDao.insert(usercategory), 1);
    }

    @Test
    void update() {
        String id="u000000001";
        String name="其他";
        int now=0;
        Usercategory usercategory=new Usercategory();
        usercategory.setNowId(now);
        usercategory.setUsercategoryId(id);
        usercategory.setUsercategoryName(name);
        Assert.assertEquals(usercategoryDao.update(usercategory), 1);
    }

    @Test
    void deleteById() {
        String id="u000000001";
        Assert.assertEquals(usercategoryDao.deleteById(id), 1);
    }
}
package database.test;

import database.entity.Postgraduate;
import database.service.PostgraduateDaoImpl;
import org.junit.Assert;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import static org.junit.jupiter.api.Assertions.*;
@RunWith(SpringJUnit4ClassRunner.class)
class PostgraduateDaoTest {

    private PostgraduateDaoImpl postgraduateDao=new PostgraduateDaoImpl();
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    @Test
    void queryById() throws ParseException {
        String id="y000000001";
        String teaid="t000000001";
        String adid="g000000001";
        String name="yjs1";
        String phone="18899990000";
        String email="yjs1@163.com";
        String birth="1997-03-05 21:05:35.000";
        String sex="1";
        Postgraduate postgraduate1=postgraduateDao.queryById(id);
        Assert.assertEquals(postgraduate1.getPostgraduateName(),name);
        Assert.assertEquals(postgraduate1.getPostgraduatePhone(), phone);
        Assert.assertEquals(postgraduate1.getPostgraduateBirth(), sdf.parse(birth));
    }

    @Test
    void listAll() {
        String name="yjs1";
        Assert.assertEquals(postgraduateDao.listAll().get(0).getPostgraduateName(), name);
    }

    @Test
    void insert() throws ParseException {
        String id="y000000005";
        String teaid="t000000005";
        String adid="g000000005";
        String name="yjs5";
        String phone="18899990055";
        String email="yjs5@163.com";
        String birth="1997-03-05 21:05:35.000";
        String sex="1";
        Postgraduate postgraduate=new Postgraduate();
        postgraduate.setAdministratorId(adid);
        postgraduate.setPostgraduateBirth(sdf.parse(birth));
        postgraduate.setPostgraduateEmail(email);
        postgraduate.setPostgraduateId(id);
        postgraduate.setPostgraduateName(name);
        postgraduate.setPostgraduatePhone(phone);
        postgraduate.setPostgraduateSex(sex);
        postgraduate.setTeacherId(teaid);
        Assert.assertEquals(postgraduateDao.insert(postgraduate), 1);
    }

    @Test
    void update() throws ParseException {
        String id="y000000001";
        String teaid="t000000001";
        String adid="g000000001";
        String name="yjs1";
        String phone="18899990000";
        String email="yjs1@163.com";
        String birth="1997-03-05 21:05:35.000";
        String sex="0";
        Postgraduate postgraduate=new Postgraduate();
        postgraduate.setAdministratorId(adid);
        postgraduate.setPostgraduateBirth(sdf.parse(birth));
        postgraduate.setPostgraduateEmail(email);
        postgraduate.setPostgraduateId(id);
        postgraduate.setPostgraduateName(name);
        postgraduate.setPostgraduatePhone(phone);
        postgraduate.setPostgraduateSex(sex);
        postgraduate.setTeacherId(teaid);
        Assert.assertEquals(postgraduateDao.update(postgraduate), 1);
    }

    @Test
    void deleteById() {
        String id="y000000001";
        Assert.assertEquals(postgraduateDao.deleteById(id), 1);
    }
}
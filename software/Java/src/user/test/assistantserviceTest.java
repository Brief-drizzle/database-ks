package user.test;

import org.junit.Assert;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import user.dao.UserMapper;
import user.entity.User;
import user.service.Assistantservice;

import java.util.Date;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class assistantserviceTest {
    @Autowired
    private Assistantservice assistantservice;

    @Test
    void log() {
        String userid="t000000001";
        String password="123456";
        User user=assistantservice.log(userid,password);
        User user1=new User();
        user1.setUserid("t000000001");
        user1.setUsercategoryId("u000000002");
        user1.setPassword("123456");
        user1.setLastlogintime(null);
        user1.setLastloginip("北京");
        Assert.assertEquals(userid, user1.getUserid());
    }

    @Test
    void findmessage() {
    }

    @Test
    void assistantnum() {
    }

    @Test
    void post_assistantnum() {
    }
}
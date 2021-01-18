package user.test;

import org.springframework.stereotype.Controller;
import user.entity.User;
import user.service.Assistantservice;
/**
 * @author ad
 */
@Controller
public class mxmtest {
    public static void main(String[] args){
        String userid="t000000001";
        String password="123456";
        Assistantservice assistantservice=new Assistantservice();
        User user=assistantservice.log(userid, password);
        System.out.println(user);
    }
}

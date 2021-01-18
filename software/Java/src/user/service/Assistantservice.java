package user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import user.dao.AssistantChoseMapper;
import user.dao.CourseMapper;
import user.dao.UserMapper;
import user.entity.Course;
import user.entity.User;

import java.util.Date;
import java.util.List;

@Service("assistantservice")
public class Assistantservice {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private CourseMapper courseMapper;
    @Autowired
    private AssistantChoseMapper assistantChoseMapper;

    /**登录*/
    public User log(String userid,String password){
        User user=userMapper.log(userid, password);
        if (user==null){
            return null;
        }
        else{
            return user;
        }
    }

    /**指定学科和日期范围内助教结果为合格的学生信息相关课程信息*/
    public List<Course> findmessage(String subjectid, Date starttime, Date endtime){
        List<Course> courses=courseMapper.listAllBySubjectTime(subjectid, starttime, endtime);
        return courses;
    }

    /**每名授课教师已经确定的助教总人数*/
    public int assistantnum(String teacherid){
        return assistantChoseMapper.assistantnum(teacherid);
    }

    /**指定年度和学科下本科生助教数量与研究生助教数量的差异*/
    /**由于没有本科生助教，故而替换为指定日期范围内和学科下研究生助教数量*/
    public int post_assistantnum(String subjectid, Date starttime, Date endtime){
        return assistantChoseMapper.post_assistantnum(subjectid, starttime, endtime);
    }
}

package database.service;

import database.dao.CourseDao;
import database.entity.Course;
import database.test.SqlSessionBase;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class CourseDaoImpl extends SqlSessionBase implements CourseDao {
    private SqlSession session;
    CourseDao courseDao;
    @Override
    public Course queryById(String courseId) {
        session = SqlSessionBase.getSqlSession();
        courseDao=session.getMapper(CourseDao.class);
        return courseDao.queryById(courseId);
    }

    @Override
    public List<Course> queryAll() {
        session = SqlSessionBase.getSqlSession();
        courseDao=session.getMapper(CourseDao.class);
        return courseDao.queryAll();
    }

    @Override
    public int insert(Course course) {
        session = SqlSessionBase.getSqlSession();
        courseDao=session.getMapper(CourseDao.class);
        return courseDao.insert(course);
    }

    @Override
    public int update(Course course) {
        session = SqlSessionBase.getSqlSession();
        courseDao=session.getMapper(CourseDao.class);
        return courseDao.update(course);
    }

    @Override
    public int deleteById(String courseId) {
        session = SqlSessionBase.getSqlSession();
        courseDao=session.getMapper(CourseDao.class);
        return courseDao.deleteById(courseId);
    }
}

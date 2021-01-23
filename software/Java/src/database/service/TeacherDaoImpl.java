package database.service;

import database.dao.TeacherDao;
import database.entity.Teacher;
import database.test.SqlSessionBase;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class TeacherDaoImpl extends SqlSessionBase implements TeacherDao {
    private SqlSession session;
    TeacherDao teacherDao;
    @Override
    public Teacher queryById(String teacherId) {
        session = SqlSessionBase.getSqlSession();
        teacherDao=session.getMapper(TeacherDao.class);
        return teacherDao.queryById(teacherId);
    }

    @Override
    public List<Teacher> queryAll() {
        session = SqlSessionBase.getSqlSession();
        teacherDao=session.getMapper(TeacherDao.class);
        return teacherDao.queryAll();
    }

    @Override
    public int insert(Teacher teacher) {
        session = SqlSessionBase.getSqlSession();
        teacherDao=session.getMapper(TeacherDao.class);
        return teacherDao.insert(teacher);
    }

    @Override
    public int update(Teacher teacher) {
        session = SqlSessionBase.getSqlSession();
        teacherDao=session.getMapper(TeacherDao.class);
        return teacherDao.update(teacher);
    }

    @Override
    public int deleteById(String teacherId) {
        session = SqlSessionBase.getSqlSession();
        teacherDao=session.getMapper(TeacherDao.class);
        return teacherDao.deleteById(teacherId);
    }
}

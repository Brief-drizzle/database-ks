package database.service;

import database.dao.UserDao;
import database.entity.User;
import database.test.SqlSessionBase;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class UserDaoImpl extends SqlSessionBase implements UserDao {
    private SqlSession session;
    UserDao userDao;
    @Override
    public User queryById(String userid) {
        session = SqlSessionBase.getSqlSession();
        userDao=session.getMapper(UserDao.class);
        return userDao.queryById(userid);
    }

    @Override
    public List<User> queryAll() {
        session = SqlSessionBase.getSqlSession();
        userDao=session.getMapper(UserDao.class);
        return userDao.queryAll();
    }

    @Override
    public int insert(User user) {
        session = SqlSessionBase.getSqlSession();
        userDao=session.getMapper(UserDao.class);
        return userDao.insert(user);
    }

    @Override
    public int update(User user) {
        session = SqlSessionBase.getSqlSession();
        userDao=session.getMapper(UserDao.class);
        return userDao.update(user);
    }

    @Override
    public int deleteById(String userid) {
        session = SqlSessionBase.getSqlSession();
        userDao=session.getMapper(UserDao.class);
        return userDao.deleteById(userid);
    }
}

package database.service;

import database.dao.UsercategoryDao;
import database.entity.Usercategory;
import database.test.SqlSessionBase;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class UsercategoryDaoImpl extends SqlSessionBase implements UsercategoryDao {
    private SqlSession session;
    UsercategoryDao usercategoryDao;
    @Override
    public Usercategory queryById(String usercategoryId) {
        session = SqlSessionBase.getSqlSession();
        usercategoryDao=session.getMapper(UsercategoryDao.class);
        return usercategoryDao.queryById(usercategoryId);
    }

    @Override
    public List<Usercategory> queryAll() {
        session = SqlSessionBase.getSqlSession();
        usercategoryDao=session.getMapper(UsercategoryDao.class);
        return usercategoryDao.queryAll();
    }

    @Override
    public int insert(Usercategory usercategory) {
        session = SqlSessionBase.getSqlSession();
        usercategoryDao=session.getMapper(UsercategoryDao.class);
        return usercategoryDao.insert(usercategory);
    }

    @Override
    public int update(Usercategory usercategory) {
        session = SqlSessionBase.getSqlSession();
        usercategoryDao=session.getMapper(UsercategoryDao.class);
        return usercategoryDao.update(usercategory);
    }

    @Override
    public int deleteById(String usercategoryId) {
        session = SqlSessionBase.getSqlSession();
        usercategoryDao=session.getMapper(UsercategoryDao.class);
        return usercategoryDao.deleteById(usercategoryId);
    }
}

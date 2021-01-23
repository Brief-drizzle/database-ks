package database.service;

import database.dao.PostgraduateDao;
import database.entity.Postgraduate;
import database.test.SqlSessionBase;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class PostgraduateDaoImpl extends SqlSessionBase implements PostgraduateDao {
    private SqlSession session;
    PostgraduateDao postgraduateDao;
    @Override
    public Postgraduate queryById(String postgraduateId) {
        session = SqlSessionBase.getSqlSession();
        postgraduateDao=session.getMapper(PostgraduateDao.class);
        return postgraduateDao.queryById(postgraduateId);
    }

    @Override
    public List<Postgraduate> listAll() {
        session = SqlSessionBase.getSqlSession();
        postgraduateDao=session.getMapper(PostgraduateDao.class);
        return postgraduateDao.listAll();
    }

    @Override
    public int insert(Postgraduate postgraduate) {
        session = SqlSessionBase.getSqlSession();
        postgraduateDao=session.getMapper(PostgraduateDao.class);
        return postgraduateDao.insert(postgraduate);
    }

    @Override
    public int update(Postgraduate postgraduate) {
        session = SqlSessionBase.getSqlSession();
        postgraduateDao=session.getMapper(PostgraduateDao.class);
        return postgraduateDao.update(postgraduate);
    }

    @Override
    public int deleteById(String postgraduateId) {
        session = SqlSessionBase.getSqlSession();
        postgraduateDao=session.getMapper(PostgraduateDao.class);
        return postgraduateDao.deleteById(postgraduateId);
    }
}

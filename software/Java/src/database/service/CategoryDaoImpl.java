package database.service;

import database.dao.CategoryDao;
import database.entity.Category;
import database.test.SqlSessionBase;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

/**
 * @author ad
 */
public class CategoryDaoImpl extends SqlSessionBase implements CategoryDao {
    private SqlSession session;
    CategoryDao categoryDao;
    @Override
    public Category queryById(String categoryId) {
        session = SqlSessionBase.getSqlSession();
        categoryDao= session.getMapper(CategoryDao.class);
        return categoryDao.queryById(categoryId);
    }

    @Override
    public List<Category> queryAll() {
        session = SqlSessionBase.getSqlSession();
        categoryDao= session.getMapper(CategoryDao.class);
        return categoryDao.queryAll();
    }

    @Override
    public int insert(Category category) {
        session = SqlSessionBase.getSqlSession();
        categoryDao= session.getMapper(CategoryDao.class);
        return categoryDao.insert(category);
    }

    @Override
    public int update(Category category) {
        session = SqlSessionBase.getSqlSession();
        categoryDao= session.getMapper(CategoryDao.class);
        return categoryDao.update(category);
    }

    @Override
    public int deleteById(String categoryId) {
        session = SqlSessionBase.getSqlSession();
        categoryDao= session.getMapper(CategoryDao.class);
        return categoryDao.deleteById(categoryId);
    }
}

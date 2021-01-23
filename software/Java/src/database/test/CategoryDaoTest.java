package database.test;

import database.dao.CategoryDao;
import database.dao.UserDao;
import database.entity.Category;
import database.entity.User;
import database.service.CategoryDaoImpl;
import org.junit.Assert;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
@RunWith(SpringJUnit4ClassRunner.class)
class CategoryDaoTest {

    private CategoryDaoImpl categoryDao = new CategoryDaoImpl();
    @Test
        void queryById() {
        String userid="x000000001";
        String name="项目1";
        Assert.assertEquals(userid,categoryDao.queryById(userid).getCategoryId());
        Assert.assertEquals(name,categoryDao.queryById(userid).getCategoryName());
    }

    @Test
    void queryAll() {
        String name="项目1";
        List<Category> categories=categoryDao.queryAll();
        Assert.assertEquals(categoryDao.queryAll().get(0).getCategoryName(), name);
    }

    @Test
    void insert() {
        Category category = new Category();
        category.setCategoryId("x000000004");
        category.setCategoryName("项目4");
        Assert.assertEquals(categoryDao.insert(category), 1);
    }

    @Test
    void update() {
        Category category = new Category();
        category.setCategoryId("x000000003");
        category.setCategoryName("项目4");
        Assert.assertEquals(categoryDao.update(category), 1);
    }

    @Test
    void deleteById() {
        Category category = new Category();
        category.setCategoryId("x000000003");
        category.setCategoryName("项目3");
        Assert.assertEquals(categoryDao.deleteById(category.getCategoryId()), 1);
    }
}
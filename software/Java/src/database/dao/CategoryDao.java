package database.dao;

import database.entity.Category;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;



/**
 * (Category)表数据库访问层
 *
 * @author makejava
 * @since 2021-01-19 13:30:20
 */
@Mapper
public interface CategoryDao {

    /**
     * 通过ID查询单条数据
     *
     * @param categoryId 主键
     * @return 实例对象
     */
    Category queryById(String categoryId);

    /**
     * 通过实体作为筛选条件查询
     *
     * @return 对象列表
     */
    List<Category> queryAll();

    /**
     * 新增数据
     *
     * @param category 实例对象
     * @return 影响行数
     */
    int insert(Category category);
    /**
     * 修改数据
     *
     * @param category 实例对象
     * @return 影响行数
     */
    int update(Category category);

    /**
     * 通过主键删除数据
     *
     * @param categoryId 主键
     * @return 影响行数
     */
    int deleteById(String categoryId);

}
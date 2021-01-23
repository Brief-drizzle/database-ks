package database.dao;

import database.entity.Usercategory;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;



/**
 * (Usercategory)表数据库访问层
 *
 * @author makejava
 * @since 2021-01-19 13:30:16
 */
@Mapper
public interface UsercategoryDao {

    /**
     * 通过ID查询单条数据
     *
     * @param usercategoryId 主键
     * @return 实例对象
     */
    Usercategory queryById(String usercategoryId);

    /**
     * 通过实体作为筛选条件查询
     *
     * @return 对象列表
     */
    List<Usercategory> queryAll();

    /**
     * 新增数据
     *
     * @param usercategory 实例对象
     * @return 影响行数
     */
    int insert(Usercategory usercategory);

    /**
     * 修改数据
     *
     * @param usercategory 实例对象
     * @return 影响行数
     */
    int update(Usercategory usercategory);

    /**
     * 通过主键删除数据
     *
     * @param usercategoryId 主键
     * @return 影响行数
     */
    int deleteById(String usercategoryId);

}
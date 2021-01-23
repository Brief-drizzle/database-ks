package database.dao;

import database.entity.Course;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;


/**
 * (Course)表数据库访问层
 *
 * @author makejava
 * @since 2021-01-19 13:30:19
 */
@Mapper
public interface CourseDao {

    /**
     * 通过ID查询单条数据
     *
     * @param courseId 主键
     * @return 实例对象
     */
    Course queryById(String courseId);

    /**
     * 通过实体作为筛选条件查询
     *
     * @param course 实例对象
     * @return 对象列表
     */
    List<Course> queryAll();

    /**
     * 新增数据
     *
     * @param course 实例对象
     * @return 影响行数
     */
    int insert(Course course);

    /**
     * 修改数据
     *
     * @param course 实例对象
     * @return 影响行数
     */
    int update(Course course);

    /**
     * 通过主键删除数据
     *
     * @param courseId 主键
     * @return 影响行数
     */
    int deleteById(String courseId);

}
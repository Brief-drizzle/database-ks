package database.dao;

import database.entity.Teacher;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;



/**
 * (Teacher)表数据库访问层
 *
 * @author makejava
 * @since 2021-01-19 13:30:17
 */
@Mapper
public interface TeacherDao {

    /**
     * 通过ID查询单条数据
     *
     * @param teacherId 主键
     * @return 实例对象
     */
    Teacher queryById(String teacherId);

    /**
     * 通过实体作为筛选条件查询
     *
     * @return 对象列表
     */
    List<Teacher> queryAll();

    /**
     * 新增数据
     *
     * @param teacher 实例对象
     * @return 影响行数
     */
    int insert(Teacher teacher);

    /**
     * 修改数据
     *
     * @param teacher 实例对象
     * @return 影响行数
     */
    int update(Teacher teacher);

    /**
     * 通过主键删除数据
     *
     * @param teacherId 主键
     * @return 影响行数
     */
    int deleteById(String teacherId);

}
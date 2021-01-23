package database.dao;

import database.entity.Postgraduate;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;


/**
 * (Postgraduate)表数据库访问层
 *
 * @author makejava
 * @since 2021-01-19 13:30:17
 */
@Mapper
public interface PostgraduateDao {

    /**
     * 通过ID查询单条数据
     *
     * @param postgraduateId 主键
     * @return 实例对象
     */
    Postgraduate queryById(String postgraduateId);

    List<Postgraduate> listAll();
    /**
     * 新增数据
     *
     * @param postgraduate 实例对象
     * @return 影响行数
     */
    int insert(Postgraduate postgraduate);

    /**
     * 修改数据
     *
     * @param postgraduate 实例对象
     * @return 影响行数
     */
    int update(Postgraduate postgraduate);

    /**
     * 通过主键删除数据
     *
     * @param postgraduateId 主键
     * @return 影响行数
     */
    int deleteById(String postgraduateId);

}
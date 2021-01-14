package user.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import user.entity.Teach;

@Mapper
public interface TeachMapper {

	/**
     * 查询所有记录
     *
     * @return 返回集合，没有返回空List
     */
	List<Teach> listAll();


	/**
     * 根据主键查询
     *
     * @param id 主键
     * @return 返回记录，没有返回null
     */
	Teach getById(String instructorId);
	
	/**
     * 新增，插入所有字段
     *
     * @param teach 新增的记录
     * @return 返回影响行数
     */
	int insert(Teach teach);
	
	/**
     * 新增，忽略null字段
     *
     * @param teach 新增的记录
     * @return 返回影响行数
     */
	int insertIgnoreNull(Teach teach);
	
	/**
     * 修改，修改所有字段
     *
     * @param teach 修改的记录
     * @return 返回影响行数
     */
	int update(Teach teach);
	
	/**
     * 修改，忽略null字段
     *
     * @param teach 修改的记录
     * @return 返回影响行数
     */
	int updateIgnoreNull(Teach teach);
	
	/**
     * 删除记录
     *
     * @param teach 待删除的记录
     * @return 返回影响行数
     */
	int delete(Teach teach);
	
}
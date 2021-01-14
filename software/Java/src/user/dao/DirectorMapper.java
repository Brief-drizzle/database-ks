package user.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import user.entity.Director;

@Mapper
public interface DirectorMapper {

	/**
     * 查询所有记录
     *
     * @return 返回集合，没有返回空List
     */
	List<Director> listAll();


	/**
     * 根据主键查询
     *
     * @param id 主键
     * @return 返回记录，没有返回null
     */
	Director getById(String directorId);
	
	/**
     * 新增，插入所有字段
     *
     * @param director 新增的记录
     * @return 返回影响行数
     */
	int insert(Director director);
	
	/**
     * 新增，忽略null字段
     *
     * @param director 新增的记录
     * @return 返回影响行数
     */
	int insertIgnoreNull(Director director);
	
	/**
     * 修改，修改所有字段
     *
     * @param director 修改的记录
     * @return 返回影响行数
     */
	int update(Director director);
	
	/**
     * 修改，忽略null字段
     *
     * @param director 修改的记录
     * @return 返回影响行数
     */
	int updateIgnoreNull(Director director);
	
	/**
     * 删除记录
     *
     * @param director 待删除的记录
     * @return 返回影响行数
     */
	int delete(Director director);
	
}
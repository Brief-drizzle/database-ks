package user.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import user.entity.Category;

@Mapper
public interface CategoryMapper {

	/**
     * 查询所有记录
     *
     * @return 返回集合，没有返回空List
     */
	List<Category> listAll();


	/**
     * 根据主键查询
     *
     * @param id 主键
     * @return 返回记录，没有返回null
     */
	Category getById(String categoryId);
	
	/**
     * 新增，插入所有字段
     *
     * @param category 新增的记录
     * @return 返回影响行数
     */
	int insert(Category category);
	
	/**
     * 新增，忽略null字段
     *
     * @param category 新增的记录
     * @return 返回影响行数
     */
	int insertIgnoreNull(Category category);
	
	/**
     * 修改，修改所有字段
     *
     * @param category 修改的记录
     * @return 返回影响行数
     */
	int update(Category category);
	
	/**
     * 修改，忽略null字段
     *
     * @param category 修改的记录
     * @return 返回影响行数
     */
	int updateIgnoreNull(Category category);
	
	/**
     * 删除记录
     *
     * @param category 待删除的记录
     * @return 返回影响行数
     */
	int delete(Category category);
	
}
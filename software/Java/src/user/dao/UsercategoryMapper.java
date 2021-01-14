package user.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import user.entity.Usercategory;

@Mapper
public interface UsercategoryMapper {

	/**
     * 查询所有记录
     *
     * @return 返回集合，没有返回空List
     */
	List<Usercategory> listAll();


	/**
     * 根据主键查询
     *
     * @param id 主键
     * @return 返回记录，没有返回null
     */
	Usercategory getById(String usercategoryId);
	
	/**
     * 新增，插入所有字段
     *
     * @param usercategory 新增的记录
     * @return 返回影响行数
     */
	int insert(Usercategory usercategory);
	
	/**
     * 新增，忽略null字段
     *
     * @param usercategory 新增的记录
     * @return 返回影响行数
     */
	int insertIgnoreNull(Usercategory usercategory);
	
	/**
     * 修改，修改所有字段
     *
     * @param usercategory 修改的记录
     * @return 返回影响行数
     */
	int update(Usercategory usercategory);
	
	/**
     * 修改，忽略null字段
     *
     * @param usercategory 修改的记录
     * @return 返回影响行数
     */
	int updateIgnoreNull(Usercategory usercategory);
	
	/**
     * 删除记录
     *
     * @param usercategory 待删除的记录
     * @return 返回影响行数
     */
	int delete(Usercategory usercategory);
	
}
package user.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import user.entity.Selection;

@Mapper
public interface SelectionMapper {

	/**
     * 查询所有记录
     *
     * @return 返回集合，没有返回空List
     */
	List<Selection> listAll();


	/**
     * 根据主键查询
     *
     * @param id 主键
     * @return 返回记录，没有返回null
     */
	Selection getById(String selectionId);
	
	/**
     * 新增，插入所有字段
     *
     * @param selection 新增的记录
     * @return 返回影响行数
     */
	int insert(Selection selection);
	
	/**
     * 新增，忽略null字段
     *
     * @param selection 新增的记录
     * @return 返回影响行数
     */
	int insertIgnoreNull(Selection selection);
	
	/**
     * 修改，修改所有字段
     *
     * @param selection 修改的记录
     * @return 返回影响行数
     */
	int update(Selection selection);
	
	/**
     * 修改，忽略null字段
     *
     * @param selection 修改的记录
     * @return 返回影响行数
     */
	int updateIgnoreNull(Selection selection);
	
	/**
     * 删除记录
     *
     * @param selection 待删除的记录
     * @return 返回影响行数
     */
	int delete(Selection selection);
	
}
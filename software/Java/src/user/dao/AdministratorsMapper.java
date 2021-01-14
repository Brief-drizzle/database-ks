package user.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import user.entity.Administrators;

@Mapper
public interface AdministratorsMapper {

	/**
     * 查询所有记录
     *
     * @return 返回集合，没有返回空List
     */
	List<Administrators> listAll();


	/**
     * 根据主键查询
     *
     * @param administratorId 主键
     * @return 返回记录，没有返回null
     */
	Administrators getById(String administratorId);
	
	/**
     * 新增，插入所有字段
     *
     * @param administrators 新增的记录
     * @return 返回影响行数
     */
	int insert(Administrators administrators);
	
	/**
     * 新增，忽略null字段
     *
     * @param administrators 新增的记录
     * @return 返回影响行数
     */
	int insertIgnoreNull(Administrators administrators);
	
	/**
     * 修改，修改所有字段
     *
     * @param administrators 修改的记录
     * @return 返回影响行数
     */
	int update(Administrators administrators);
	
	/**
     * 修改，忽略null字段
     *
     * @param administrators 修改的记录
     * @return 返回影响行数
     */
	int updateIgnoreNull(Administrators administrators);
	
	/**
     * 删除记录
     *
     * @param administrators 待删除的记录
     * @return 返回影响行数
     */
	int delete(Administrators administrators);
	
}
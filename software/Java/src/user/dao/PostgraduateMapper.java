package user.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import user.entity.Postgraduate;

@Mapper
public interface PostgraduateMapper {

	/**
     * 查询所有记录
     *
     * @return 返回集合，没有返回空List
     */
	List<Postgraduate> listAll();


	/**
     * 根据主键查询
     *
     * @param id 主键
     * @return 返回记录，没有返回null
     */
	Postgraduate getById(String postgraduateId);
	
	/**
     * 新增，插入所有字段
     *
     * @param postgraduate 新增的记录
     * @return 返回影响行数
     */
	int insert(Postgraduate postgraduate);
	
	/**
     * 新增，忽略null字段
     *
     * @param postgraduate 新增的记录
     * @return 返回影响行数
     */
	int insertIgnoreNull(Postgraduate postgraduate);
	
	/**
     * 修改，修改所有字段
     *
     * @param postgraduate 修改的记录
     * @return 返回影响行数
     */
	int update(Postgraduate postgraduate);
	
	/**
     * 修改，忽略null字段
     *
     * @param postgraduate 修改的记录
     * @return 返回影响行数
     */
	int updateIgnoreNull(Postgraduate postgraduate);
	
	/**
     * 删除记录
     *
     * @param postgraduate 待删除的记录
     * @return 返回影响行数
     */
	int delete(Postgraduate postgraduate);
	
}
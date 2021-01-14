package user.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import user.entity.Subject;

@Mapper
public interface SubjectMapper {

	/**
     * 查询所有记录
     *
     * @return 返回集合，没有返回空List
     */
	List<Subject> listAll();


	/**
     * 根据主键查询
     *
     * @param id 主键
     * @return 返回记录，没有返回null
     */
	Subject getById(String subjectId);
	
	/**
     * 新增，插入所有字段
     *
     * @param subject 新增的记录
     * @return 返回影响行数
     */
	int insert(Subject subject);
	
	/**
     * 新增，忽略null字段
     *
     * @param subject 新增的记录
     * @return 返回影响行数
     */
	int insertIgnoreNull(Subject subject);
	
	/**
     * 修改，修改所有字段
     *
     * @param subject 修改的记录
     * @return 返回影响行数
     */
	int update(Subject subject);
	
	/**
     * 修改，忽略null字段
     *
     * @param subject 修改的记录
     * @return 返回影响行数
     */
	int updateIgnoreNull(Subject subject);
	
	/**
     * 删除记录
     *
     * @param subject 待删除的记录
     * @return 返回影响行数
     */
	int delete(Subject subject);
	
}
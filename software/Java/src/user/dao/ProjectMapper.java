package user.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import user.entity.Project;

@Mapper
public interface ProjectMapper {

	/**
     * 查询所有记录
     *
     * @return 返回集合，没有返回空List
     */
	List<Project> listAll();


	/**
     * 根据主键查询
     *
     * @param id 主键
     * @return 返回记录，没有返回null
     */
	Project getById(String projectId);
	
	/**
     * 新增，插入所有字段
     *
     * @param project 新增的记录
     * @return 返回影响行数
     */
	int insert(Project project);
	
	/**
     * 新增，忽略null字段
     *
     * @param project 新增的记录
     * @return 返回影响行数
     */
	int insertIgnoreNull(Project project);
	
	/**
     * 修改，修改所有字段
     *
     * @param project 修改的记录
     * @return 返回影响行数
     */
	int update(Project project);
	
	/**
     * 修改，忽略null字段
     *
     * @param project 修改的记录
     * @return 返回影响行数
     */
	int updateIgnoreNull(Project project);
	
	/**
     * 删除记录
     *
     * @param project 待删除的记录
     * @return 返回影响行数
     */
	int delete(Project project);
	
}
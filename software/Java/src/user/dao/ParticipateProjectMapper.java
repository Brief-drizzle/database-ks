package user.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import user.entity.ParticipateProject;

@Mapper
public interface ParticipateProjectMapper {

	/**
     * 查询所有记录
     *
     * @return 返回集合，没有返回空List
     */
	List<ParticipateProject> listAll();


	/**
     * 根据主键查询
     *
     * @param id 主键
     * @return 返回记录，没有返回null
     */
	ParticipateProject getById(String participateProjectId);
	
	/**
     * 新增，插入所有字段
     *
     * @param participateProject 新增的记录
     * @return 返回影响行数
     */
	int insert(ParticipateProject participateProject);
	
	/**
     * 新增，忽略null字段
     *
     * @param participateProject 新增的记录
     * @return 返回影响行数
     */
	int insertIgnoreNull(ParticipateProject participateProject);
	
	/**
     * 修改，修改所有字段
     *
     * @param participateProject 修改的记录
     * @return 返回影响行数
     */
	int update(ParticipateProject participateProject);
	
	/**
     * 修改，忽略null字段
     *
     * @param participateProject 修改的记录
     * @return 返回影响行数
     */
	int updateIgnoreNull(ParticipateProject participateProject);
	
	/**
     * 删除记录
     *
     * @param participateProject 待删除的记录
     * @return 返回影响行数
     */
	int delete(ParticipateProject participateProject);
	
}
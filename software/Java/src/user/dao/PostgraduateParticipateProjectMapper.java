package user.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import user.entity.PostgraduateParticipateProject;

@Mapper
public interface PostgraduateParticipateProjectMapper {

	/**
     * 查询所有记录
     *
     * @return 返回集合，没有返回空List
     */
	List<PostgraduateParticipateProject> listAll();


	/**
     * 根据主键查询
     *
     * @param id 主键
     * @return 返回记录，没有返回null
     */
	PostgraduateParticipateProject getById(String postgraduateId);
	
	/**
     * 新增，插入所有字段
     *
     * @param postgraduateParticipateProject 新增的记录
     * @return 返回影响行数
     */
	int insert(PostgraduateParticipateProject postgraduateParticipateProject);
	
	/**
     * 新增，忽略null字段
     *
     * @param postgraduateParticipateProject 新增的记录
     * @return 返回影响行数
     */
	int insertIgnoreNull(PostgraduateParticipateProject postgraduateParticipateProject);
	
	/**
     * 修改，修改所有字段
     *
     * @param postgraduateParticipateProject 修改的记录
     * @return 返回影响行数
     */
	int update(PostgraduateParticipateProject postgraduateParticipateProject);
	
	/**
     * 修改，忽略null字段
     *
     * @param postgraduateParticipateProject 修改的记录
     * @return 返回影响行数
     */
	int updateIgnoreNull(PostgraduateParticipateProject postgraduateParticipateProject);
	
	/**
     * 删除记录
     *
     * @param postgraduateParticipateProject 待删除的记录
     * @return 返回影响行数
     */
	int delete(PostgraduateParticipateProject postgraduateParticipateProject);
	
}
package user.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import user.entity.AssistantAssessment;

@Mapper
public interface AssistantAssessmentMapper {

	/**
     * 查询所有记录
     *
     * @return 返回集合，没有返回空List
     */
	List<AssistantAssessment> listAll();


	/**
     * 根据主键查询
     *
     * @param id 主键
     * @return 返回记录，没有返回null
     */
	AssistantAssessment getById(String assessmentId);
	
	/**
     * 新增，插入所有字段
     *
     * @param assistantAssessment 新增的记录
     * @return 返回影响行数
     */
	int insert(AssistantAssessment assistantAssessment);
	
	/**
     * 新增，忽略null字段
     *
     * @param assistantAssessment 新增的记录
     * @return 返回影响行数
     */
	int insertIgnoreNull(AssistantAssessment assistantAssessment);
	
	/**
     * 修改，修改所有字段
     *
     * @param assistantAssessment 修改的记录
     * @return 返回影响行数
     */
	int update(AssistantAssessment assistantAssessment);
	
	/**
     * 修改，忽略null字段
     *
     * @param assistantAssessment 修改的记录
     * @return 返回影响行数
     */
	int updateIgnoreNull(AssistantAssessment assistantAssessment);
	
	/**
     * 删除记录
     *
     * @param assistantAssessment 待删除的记录
     * @return 返回影响行数
     */
	int delete(AssistantAssessment assistantAssessment);
	
}
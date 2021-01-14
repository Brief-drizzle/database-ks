package user.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import user.entity.AssistantChose;

@Mapper
public interface AssistantChoseMapper {

	/**
     * 查询所有记录
     *
     * @return 返回集合，没有返回空List
     */
	List<AssistantChose> listAll();


	/**
     * 根据主键查询
     *
     * @param id 主键
     * @return 返回记录，没有返回null
     */
	AssistantChose getById(String courseId);
	
	/**
     * 新增，插入所有字段
     *
     * @param assistantChose 新增的记录
     * @return 返回影响行数
     */
	int insert(AssistantChose assistantChose);
	
	/**
     * 新增，忽略null字段
     *
     * @param assistantChose 新增的记录
     * @return 返回影响行数
     */
	int insertIgnoreNull(AssistantChose assistantChose);
	
	/**
     * 修改，修改所有字段
     *
     * @param assistantChose 修改的记录
     * @return 返回影响行数
     */
	int update(AssistantChose assistantChose);
	
	/**
     * 修改，忽略null字段
     *
     * @param assistantChose 修改的记录
     * @return 返回影响行数
     */
	int updateIgnoreNull(AssistantChose assistantChose);
	
	/**
     * 删除记录
     *
     * @param assistantChose 待删除的记录
     * @return 返回影响行数
     */
	int delete(AssistantChose assistantChose);
	
}
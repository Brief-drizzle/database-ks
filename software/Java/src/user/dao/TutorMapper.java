package user.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import user.entity.Tutor;

@Mapper
public interface TutorMapper {

	/**
     * 查询所有记录
     *
     * @return 返回集合，没有返回空List
     */
	List<Tutor> listAll();


	/**
     * 根据主键查询
     *
     * @param id 主键
     * @return 返回记录，没有返回null
     */
	Tutor getById(String tutorId);
	
	/**
     * 新增，插入所有字段
     *
     * @param tutor 新增的记录
     * @return 返回影响行数
     */
	int insert(Tutor tutor);
	
	/**
     * 新增，忽略null字段
     *
     * @param tutor 新增的记录
     * @return 返回影响行数
     */
	int insertIgnoreNull(Tutor tutor);
	
	/**
     * 修改，修改所有字段
     *
     * @param tutor 修改的记录
     * @return 返回影响行数
     */
	int update(Tutor tutor);
	
	/**
     * 修改，忽略null字段
     *
     * @param tutor 修改的记录
     * @return 返回影响行数
     */
	int updateIgnoreNull(Tutor tutor);
	
	/**
     * 删除记录
     *
     * @param tutor 待删除的记录
     * @return 返回影响行数
     */
	int delete(Tutor tutor);
	
}
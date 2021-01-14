package user.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import user.entity.Instructor;

@Mapper
public interface InstructorMapper {

	/**
     * 查询所有记录
     *
     * @return 返回集合，没有返回空List
     */
	List<Instructor> listAll();


	/**
     * 根据主键查询
     *
     * @param id 主键
     * @return 返回记录，没有返回null
     */
	Instructor getById(String instructorId);
	
	/**
     * 新增，插入所有字段
     *
     * @param instructor 新增的记录
     * @return 返回影响行数
     */
	int insert(Instructor instructor);
	
	/**
     * 新增，忽略null字段
     *
     * @param instructor 新增的记录
     * @return 返回影响行数
     */
	int insertIgnoreNull(Instructor instructor);
	
	/**
     * 修改，修改所有字段
     *
     * @param instructor 修改的记录
     * @return 返回影响行数
     */
	int update(Instructor instructor);
	
	/**
     * 修改，忽略null字段
     *
     * @param instructor 修改的记录
     * @return 返回影响行数
     */
	int updateIgnoreNull(Instructor instructor);
	
	/**
     * 删除记录
     *
     * @param instructor 待删除的记录
     * @return 返回影响行数
     */
	int delete(Instructor instructor);
	
}
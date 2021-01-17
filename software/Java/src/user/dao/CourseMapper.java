package user.dao;

import java.util.Date;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import user.entity.Course;

@Mapper
public interface CourseMapper {

	/**
     * 查询所有记录
     *
     * @return 返回集合，没有返回空List
     */
	List<Course> listAll();
	List<Course> listAllBySubjectTime(@Param("subjectid") String subjectid, @Param("start") Date starttime, @Param("end") Date endtime);

	/**
     * 根据主键查询
     *
     * @param courseId 主键
     * @return 返回记录，没有返回null
     */
	Course getById(String courseId);
	/**
     * 新增，插入所有字段
     *
     * @param course 新增的记录
     * @return 返回影响行数
     */
	int insert(Course course);
	
	/**
     * 新增，忽略null字段
     *
     * @param course 新增的记录
     * @return 返回影响行数
     */
	int insertIgnoreNull(Course course);
	
	/**
     * 修改，修改所有字段
     *
     * @param course 修改的记录
     * @return 返回影响行数
     */
	int update(Course course);
	
	/**
     * 修改，忽略null字段
     *
     * @param course 修改的记录
     * @return 返回影响行数
     */
	int updateIgnoreNull(Course course);
	
	/**
     * 删除记录
     *
     * @param course 待删除的记录
     * @return 返回影响行数
     */
	int delete(Course course);
	
}
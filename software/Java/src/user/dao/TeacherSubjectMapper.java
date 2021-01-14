package user.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import user.entity.TeacherSubject;

@Mapper
public interface TeacherSubjectMapper {

	/**
     * 查询所有记录
     *
     * @return 返回集合，没有返回空List
     */
	List<TeacherSubject> listAll();


	/**
     * 根据主键查询
     *
     * @param id 主键
     * @return 返回记录，没有返回null
     */
	TeacherSubject getById(String subjectId);
	
	/**
     * 新增，插入所有字段
     *
     * @param teacherSubject 新增的记录
     * @return 返回影响行数
     */
	int insert(TeacherSubject teacherSubject);
	
	/**
     * 新增，忽略null字段
     *
     * @param teacherSubject 新增的记录
     * @return 返回影响行数
     */
	int insertIgnoreNull(TeacherSubject teacherSubject);
	
	/**
     * 修改，修改所有字段
     *
     * @param teacherSubject 修改的记录
     * @return 返回影响行数
     */
	int update(TeacherSubject teacherSubject);
	
	/**
     * 修改，忽略null字段
     *
     * @param teacherSubject 修改的记录
     * @return 返回影响行数
     */
	int updateIgnoreNull(TeacherSubject teacherSubject);
	
	/**
     * 删除记录
     *
     * @param teacherSubject 待删除的记录
     * @return 返回影响行数
     */
	int delete(TeacherSubject teacherSubject);
	
}
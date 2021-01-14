package user.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import user.entity.AcademicExchange;

/**
 * @author ad
 */
@Mapper
public interface AcademicExchangeMapper {

	/**
     * 查询所有记录
     *
     * @return 返回集合，没有返回空List
     */
	List<AcademicExchange> listAll();


	/**
     * 根据主键查询
     *
     * @param academicExchangeId 主键
     * @return 返回记录，没有返回null
     */
	AcademicExchange getById(String academicExchangeId);
	
	/**
     * 新增，插入所有字段
     *
     * @param academicExchange 新增的记录
     * @return 返回影响行数
     */
	int insert(AcademicExchange academicExchange);
	
	/**
     * 新增，忽略null字段
     *
     * @param academicExchange 新增的记录
     * @return 返回影响行数
     */
	int insertIgnoreNull(AcademicExchange academicExchange);
	
	/**
     * 修改，修改所有字段
     *
     * @param academicExchange 修改的记录
     * @return 返回影响行数
     */
	int update(AcademicExchange academicExchange);
	
	/**
     * 修改，忽略null字段
     *
     * @param academicExchange 修改的记录
     * @return 返回影响行数
     */
	int updateIgnoreNull(AcademicExchange academicExchange);
	
	/**
     * 删除记录
     *
     * @param academicExchange 待删除的记录
     * @return 返回影响行数
     */
	int delete(AcademicExchange academicExchange);
	
}
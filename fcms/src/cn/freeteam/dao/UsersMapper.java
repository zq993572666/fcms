package cn.freeteam.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import cn.freeteam.model.Users;
import cn.freeteam.model.UsersExample;


public interface UsersMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbggenerated Tue Mar 01 20:39:43 CST 2011
     */
    int countByExample(UsersExample example);
    int countByExampleUnits(UsersExample example);
    List<Users> selectPageByExample(UsersExample example);
    List<Users> selectPageByExampleUnits(UsersExample example);
    int updateById(@Param("id") String id,@Param("state") String state);
    int resetPwdByIds(@Param("ids") String ids,@Param("pwd") String pwd);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbggenerated Tue Mar 01 20:39:43 CST 2011
     */
    int deleteByExample(UsersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbggenerated Tue Mar 01 20:39:43 CST 2011
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbggenerated Tue Mar 01 20:39:43 CST 2011
     */
    int insert(Users record);
    /**
     * 大于0则表示存在 
     * @param record
     * @return
     */
    int have(Users record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbggenerated Tue Mar 01 20:39:43 CST 2011
     */
    int insertSelective(Users record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbggenerated Tue Mar 01 20:39:43 CST 2011
     */
    List<Users> selectByExample(UsersExample example);
    List<Users> selectByExample(UsersExample example, RowBounds rowBounds);
    List<Users> selectByExampleCache(UsersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbggenerated Tue Mar 01 20:39:43 CST 2011
     */
    Users selectByPrimaryKey(String id);
    Users selectByCompanynameUsername(Users user);
    Users selectQuestionByLoginname(Users user);
    Users selectAnswerByLoginname(String loginname);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbggenerated Tue Mar 01 20:39:43 CST 2011
     */
    int updateByExampleSelective(@Param("record") Users record, @Param("example") UsersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbggenerated Tue Mar 01 20:39:43 CST 2011
     */
    int updateByExample(@Param("record") Users record, @Param("example") UsersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbggenerated Tue Mar 01 20:39:43 CST 2011
     */
    int updateByPrimaryKeySelective(Users record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbggenerated Tue Mar 01 20:39:43 CST 2011
     */
    int updateByPrimaryKey(Users record);
    int updateLastLoginTime(Users record);
    int updatePwd(Users record);
    List<Map<String,String>> testPage();
   List<Map<String,String>> testPage(RowBounds rb);
}
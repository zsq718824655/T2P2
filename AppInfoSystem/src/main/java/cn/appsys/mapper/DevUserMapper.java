package cn.appsys.mapper;

import org.apache.ibatis.annotations.Param;

import cn.appsys.pojo.DevUser;

public interface DevUserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(DevUser record);

    int insertSelective(DevUser record);

    DevUser selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(DevUser record);

    int updateByPrimaryKey(DevUser record);
    
    
    
    //+++++++++++++++++++++++++++++++
    DevUser getDevUserByUserCode(String devCode);
    
    //添加用户  
    public int addUser(DevUser devUser);  
      
    //根据用户名和密码查询用户  
 
    public DevUser findUserByNameAndPwd(@Param("devcode") String devcode, @Param("devpassword")String devpassword);  
    //根据用户名查询
    public DevUser findByUserName(String devcode);
 
}  
    
    
    
    
    
   
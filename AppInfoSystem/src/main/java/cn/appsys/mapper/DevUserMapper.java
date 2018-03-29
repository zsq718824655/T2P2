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
    
    //����û�  
    public int addUser(DevUser devUser);  
      
    //�����û����������ѯ�û�  
 
    public DevUser findUserByNameAndPwd(@Param("devcode") String devcode, @Param("devpassword")String devpassword);  
    //�����û�����ѯ
    public DevUser findByUserName(String devcode);
 
}  
    
    
    
    
    
   
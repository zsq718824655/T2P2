package cn.appsys.mapper;

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
    
    
    
    
    
    
    
}
package cn.appsys.mapper;

import org.apache.ibatis.annotations.Param;

import cn.appsys.pojo.BackUser;

public interface BackUserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(BackUser record);

    int insertSelective(BackUser record);

    BackUser selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(BackUser record);

    int updateByPrimaryKey(BackUser record);


    //================
	BackUser getLoginUser(@Param("username")String username,@Param("password")String password);
	
}
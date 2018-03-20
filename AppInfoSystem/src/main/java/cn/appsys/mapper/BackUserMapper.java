package cn.appsys.mapper;

import cn.appsys.pojo.BackUser;

public interface BackUserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(BackUser record);

    int insertSelective(BackUser record);

    BackUser selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(BackUser record);

    int updateByPrimaryKey(BackUser record);
}
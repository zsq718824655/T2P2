package cn.appsys.mapper;

import cn.appsys.pojo.AppCategroy;

public interface AppCategroyMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AppCategroy record);

    int insertSelective(AppCategroy record);

    AppCategroy selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AppCategroy record);

    int updateByPrimaryKey(AppCategroy record);
}
package cn.appsys.mapper;

import cn.appsys.pojo.Adpromotion;

public interface AdpromotionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Adpromotion record);

    int insertSelective(Adpromotion record);

    Adpromotion selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Adpromotion record);

    int updateByPrimaryKey(Adpromotion record);
}
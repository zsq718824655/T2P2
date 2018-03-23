package cn.appsys.mapper;

import java.util.List;

import cn.appsys.pojo.AppCategroy;

public interface AppCategroyMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AppCategroy record);

    int insertSelective(AppCategroy record);

    AppCategroy selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AppCategroy record);

    int updateByPrimaryKey(AppCategroy record);
    //++++++++++++++
	String getByCatagroyIdName(Long categorylevel);

	List<AppCategroy> getAllCatagroy(Integer parentId);

	List<AppCategroy> getTwoCatagroy(Integer parentId);
}
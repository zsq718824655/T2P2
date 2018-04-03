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
    //根据分级的id号获取分类名字
	String getByCatagroyIdName(Long categorylevel);
	//根据父id获取分级对象集合
	List<AppCategroy> getAllCatagroy(Integer parentId);
	//根据父id获取二级三级分类
	List<AppCategroy> getTwoCatagroy(Integer parentId);
	
	
}
package cn.appsys.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.appsys.pojo.AppInfo;
import cn.appsys.utils.DevQueryBean;

public interface AppInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AppInfo record);

    int insertSelective(AppInfo record);

    AppInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AppInfo record);

    int updateByPrimaryKey(AppInfo record);
    //++++++++++++++++++++++++++
    //根据条件查询
	int getAppInfoCount(DevQueryBean queryBean);
	//分页查询
	List<AppInfo> queryPageList(@Param("queryBean") DevQueryBean queryBean, @Param("currentStartPage")int currentStartPage,  @Param("pageSize")int pageSize);
	
	
	
}
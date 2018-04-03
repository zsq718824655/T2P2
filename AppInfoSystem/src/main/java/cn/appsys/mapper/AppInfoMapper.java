package cn.appsys.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.appsys.pojo.AppInfo;
import cn.appsys.utils.DevQueryBean;

public interface AppInfoMapper {
    int deleteByPrimaryKey(Long id);

    
    int insertSelective(AppInfo record);

    AppInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AppInfo record);

    int updateByPrimaryKey(AppInfo record);
    //++++++++++++++++++++++++++
    //根据条件查询
	int getAppInfoCount(DevQueryBean queryBean);
	//分页查询
	List<AppInfo> queryPageList(@Param("queryBean") DevQueryBean queryBean, @Param("currentStartPage")int currentStartPage,  @Param("pageSize")int pageSize);
	//id获取app
	AppInfo getByIdAPP(Long appId);
	//保存app
	int saveAPPInfo(AppInfo appinfo);
	//修改app图片路径
	int updatePicPath(Long appId);
	//增加一个app
	int insertAppInfo(AppInfo appinfo);

	//根据apkName的判断是否有该名字
	int findapkName(String apkName);

	//修改状态
	int updateStatu(@Param("statu")Long statu, @Param("appid")Long appid);

	//根据Id 删除APP
	int deleteAppInfor(int id );
	//获得分级的名字
	String getCatagoryLevel(long id);

	//根据appid修改状态
	void modifyStatus(long appid);

	//修改状态
	void modifyStatusNO(long appid);
}
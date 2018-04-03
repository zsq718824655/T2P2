package cn.appsys.mapper;

import java.util.List;

import cn.appsys.pojo.AppVersion;
import cn.appsys.service.AppVersionService;

public interface AppVersionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AppVersion record);

    int insertSelective(AppVersion record);

    AppVersion selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AppVersion record);

    int updateByPrimaryKey(AppVersion record);
    //获取版本
	AppVersion getNewVersion(Long id);
	//获取所有的版本
	List<AppVersion> getAllVersionByappId(Long appId);
	//增加一个版本
	void saveAppVersion(AppVersion appVersiona);
	//保存一个appk的文件名字
	int updateApkFileName(Long versionId);
	//修改保存版本
	void editsaveAppVersion(AppVersion appVersiona);
	//删除版本
	void deleteAppVersionId(int appId);


}
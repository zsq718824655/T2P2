package cn.appsys.service;

import java.util.List;

import cn.appsys.pojo.AppVersion;

public interface AppVersionService {

	AppVersion getNewVersion(Long id);
	//获得该app的所有版本
	List<AppVersion> getAllVersionByappId(Long appId);
	void saveAppVersion(AppVersion appVersiona);
	boolean updateApkFileName(Long versionId);
	void editsaveAppVersion(AppVersion appVersiona);
	
	
	//根据appId删除版本号
	void deleteAppVersionId(int appId);
	

}

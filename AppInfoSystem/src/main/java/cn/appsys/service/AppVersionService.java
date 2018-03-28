package cn.appsys.service;

import java.util.List;

import cn.appsys.pojo.AppVersion;

public interface AppVersionService {

	AppVersion getNewVersion(Long id);
	//获得该app的所有版本
	List<AppVersion> getAllVersionByappId(Long appId);
	void saveAppVersion(AppVersion appVersiona);
	

}

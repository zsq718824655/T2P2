package cn.appsys.service;

import java.util.List;

import cn.appsys.pojo.AppVersion;

public interface AppVersionService {

	AppVersion getNewVersion(Long id);
	//��ø�app�����а汾
	List<AppVersion> getAllVersionByappId(Long appId);
	void saveAppVersion(AppVersion appVersiona);
	

}

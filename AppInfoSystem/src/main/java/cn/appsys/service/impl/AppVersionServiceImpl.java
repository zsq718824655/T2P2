package cn.appsys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.appsys.mapper.AppVersionMapper;
import cn.appsys.pojo.AppVersion;
import cn.appsys.service.AppVersionService;
@Service
@Transactional(isolation=Isolation.REPEATABLE_READ,propagation=Propagation.REQUIRED,readOnly=false)
public class AppVersionServiceImpl implements AppVersionService{

	@Autowired
	private AppVersionMapper appVersionMapper;
	@Override
	public AppVersion getNewVersion(Long id) {
		AppVersion appVersion=null;
		appVersion=appVersionMapper.getNewVersion(id);
		return appVersion;
	}
	@Override
	public List<AppVersion> getAllVersionByappId(Long appId) {
		List<AppVersion> list=null;
		list=appVersionMapper.getAllVersionByappId(appId);
		return list;
	}
	/*@Override
	public boolean saveAppVersion(AppVersionService appVersion) {
	int i=	appVersionMapper.saveAppVersion(appVersion);
	if(i>0) {
		return true;
	}else {
		return false;
	}
		
	}*/
	@Override
	public void saveAppVersion(AppVersion appVersiona) {
		// TODO Auto-generated method stub
		appVersionMapper.saveAppVersion(appVersiona);
	}
	@Override
	
	//idÉ¾³ý  °æ±¾ºÅ
	public void deleteAppVersionId(int appId) {
		appVersionMapper.deleteAppVersionId(appId);
		
	}

}

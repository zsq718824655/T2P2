package cn.appsys.service.impl;

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

}

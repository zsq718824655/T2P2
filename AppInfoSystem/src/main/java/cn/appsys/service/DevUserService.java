package cn.appsys.service;

import cn.appsys.pojo.DevUser;


public interface DevUserService {

	//��¼��֤
	public DevUser login(String userCode,String userPassword);
	
}

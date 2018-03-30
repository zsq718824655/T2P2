package cn.appsys.service;

import cn.appsys.pojo.DevUser;


public interface DevUserService {

	//登录验证
	public DevUser login(String userCode,String userPassword);
	//用户注册  
    public void regist(DevUser devUser); 
    //根据用户名查询
    public DevUser findByUserName(String devUser);
	
    //添加用户
    public int addUser(DevUser du);

	
}

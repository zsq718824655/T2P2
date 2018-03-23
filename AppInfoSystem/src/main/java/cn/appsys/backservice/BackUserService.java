package cn.appsys.backservice;

import cn.appsys.pojo.BackUser;

public interface BackUserService {

	public BackUser login(String userCode,String userpassword) ;
}

package cn.appsys.backservice.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.appsys.backservice.BackUserService;
import cn.appsys.mapper.BackUserMapper;
import cn.appsys.pojo.BackUser;

@Service("backservice")
public class BackUserServiceImpl implements BackUserService {
	
	@Autowired
	private BackUserMapper backuserMapper;
	
	
	
	public void setBackuserMapper(BackUserMapper backuserMapper) {
		this.backuserMapper = backuserMapper;
	}


	@Override
	public BackUser login(String usercode, String userpassword) {
		BackUser bu =null;
		bu= backuserMapper.getLoginUser(usercode, userpassword);
		
		/*if(null!=usercode) {//有用账户
			if(!userpassword.equals(bu.getUsercode()))//密码不正确
				bu =null;
		}*/
		return bu;
	}

}

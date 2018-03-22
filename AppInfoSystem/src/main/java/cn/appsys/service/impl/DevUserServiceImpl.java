package cn.appsys.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.appsys.mapper.DevUserMapper;
import cn.appsys.pojo.DevUser;
import cn.appsys.service.DevUserService;
@Service
@Transactional(isolation=Isolation.REPEATABLE_READ,propagation=Propagation.REQUIRED,readOnly=false)
public class DevUserServiceImpl implements DevUserService {

	@Autowired
	private DevUserMapper userMappper;
	
	@Override
	public DevUser login(String userCode, String userPassword) {
		DevUser du=null;
		 du = userMappper.getDevUserByUserCode(userCode);
		
		if(du!=null) {//���û��˺�
			if(!userPassword.equals(du.getDevpassword())) {//���벻��ȷ
				du=null;
			}
		}
		
		return du;
	}

}

package cn.appsys.service;

import cn.appsys.pojo.DevUser;


public interface DevUserService {

	//��¼��֤
	public DevUser login(String userCode,String userPassword);
	//�û�ע��  
    public void regist(DevUser devUser); 
    //�����û�����ѯ
    public DevUser findByUserName(String devUser);
	
    //����û�
    public int addUser(DevUser du);

	
}

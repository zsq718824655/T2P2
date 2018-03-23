package cn.appsys.controller.backuser;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.appsys.backservice.BackUserService;
import cn.appsys.pojo.BackUser;
import cn.appsys.utils.Constants;
@Controller
public class BackLoginController {
	
	Logger log =LoggerFactory.getLogger(BackLoginController.class) ;
	@Autowired
	private BackUserService backuserservice;

	public void setBackuserservice(BackUserService backuserservice) {
		this.backuserservice = backuserservice;
	}
	
	//��¼ҳ��
	@RequestMapping(value="/backlogin",method=RequestMethod.GET)
		public String backlogin1() {
			System.out.println("backlogin===============");
		return "back/backlogin";
 }
	
	//��¼
	@RequestMapping(value="backloginGo",method=RequestMethod.POST)
	public String backlogin(BackUser  backuser,HttpSession session, Model model) {
		
		
		BackUser backUser=backuserservice.login(backuser.getUsercode(),backuser.getUserpassword());
		
		if(null != backUser){//��¼�ɹ�
			//����session
			session.setAttribute(Constants.USER_SESSION, backUser);
			
			return "BackUserMain";
		}else{
			//
			model.addAttribute("backerror", "�û��������벻��ȷ");
			return "back/backlogin";
		}
		
	}
}

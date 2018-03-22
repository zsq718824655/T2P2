package cn.appsys.controller.user;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.appsys.pojo.DevUser;
import cn.appsys.service.DevUserService;
import cn.appsys.utils.Constants;

/**
 *��½
 *
 */
@Controller
public class UserLoginController {

	Logger log=LoggerFactory.getLogger(UserLoginController.class);
	
	@Autowired
	private DevUserService userService;
	//��¼
	@RequestMapping(value="/loginGo",method=RequestMethod.POST)
	public String login(DevUser user,HttpSession session,Model model) {
		log.info("user�����֣�{}",user.getDevcode());
		System.out.println("==========="+user==null);
		DevUser devUser = userService.login(user.getDevcode(), user.getDevpassword());
		
		if(devUser!=null) {//��¼�ɹ�
			//���浽session
			session.setAttribute(Constants.USER_SESSION, devUser);
			//��תҳ��
			return "UserMain";
		}else {//��¼ʧ��
			model.addAttribute("loginErro", "�û��������������");
			return "forward:/login";
		}
		
	}
	
	//ȥ��¼ҳ��
	@RequestMapping(value="/login")
	public String login() {
		
		return "login";
		
	}
	
}

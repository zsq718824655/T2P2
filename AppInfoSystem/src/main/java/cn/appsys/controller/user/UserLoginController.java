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
 *登陆
 *
 */
@Controller
public class UserLoginController {

	Logger log=LoggerFactory.getLogger(UserLoginController.class);
	
	@Autowired
	private DevUserService userService;
	//登录
	@RequestMapping(value="/loginGo",method=RequestMethod.POST)
	public String login(DevUser user,HttpSession session,Model model) {
		log.info("user的名字：{}",user.getDevcode());
		System.out.println("==========="+user==null);
		DevUser devUser = userService.login(user.getDevcode(), user.getDevpassword());
		
		if(devUser!=null) {//登录成功
			//保存到session
			session.setAttribute(Constants.USER_SESSION, devUser);
			//跳转页面
			return "UserMain";
		}else {//登录失败
			model.addAttribute("loginErro", "用户名或者密码错误");
			return "forward:/login";
		}
		
	}
	
	//去登录页面
	@RequestMapping(value="/login")
	public String login() {
		
		return "login";
		
	}
	
}

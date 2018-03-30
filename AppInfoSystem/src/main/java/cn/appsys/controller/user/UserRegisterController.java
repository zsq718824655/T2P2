package cn.appsys.controller.user;

import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.appsys.pojo.DevUser;
import cn.appsys.service.DevUserService;

@Controller
@RequestMapping("/user")
public class UserRegisterController {
	Logger log = LoggerFactory.getLogger(UserLoginController.class);

	@Autowired
	private DevUserService userService;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String regist(DevUser devUser, Model model) {
		return "register3";
	}

	@RequestMapping(value = "/todevRegistView", method = RequestMethod.POST)
	public String register(String userCode, String userName, String userPassword, String email, String info) {
		DevUser du = new DevUser();
		du.setDevcode(userCode);
		du.setDevname(userName);
		du.setDevpassword(userPassword);
		du.setDevemail(email);
		du.setDevinfo(info);
		int result = userService.addUser(du);
		if (result > 0) {
			return "login";

		} else {
			return "error";
		}

	}
	
	
	     
	@RequestMapping(value="/queryByUser", method=RequestMethod.POST)  
	  @ResponseBody  
	public  String queryByName(String userCodeinput,HttpServletRequest request){
		DevUser u = userService.findByUserName(userCodeinput);
		if(u == null) {
			return "true";
        }else{
            return "false";	
		}
	    }

}

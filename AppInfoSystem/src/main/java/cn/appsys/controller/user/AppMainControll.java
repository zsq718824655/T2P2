package cn.appsys.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * app的维护主要操作
 *
 */
@Controller
public class AppMainControll {

	
	//去维护页面
	@RequestMapping("/appMaintenanceView")
	public String goMaintence() {
		return "appMaintenance";
	}
	
	
	
}

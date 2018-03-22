package cn.appsys.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.appsys.utils.DevQueryBean;


/**
 * app的维护主要操作
 *
 */
@Controller
public class AppMainControll {

	
	//去维护页面,查询
	@RequestMapping("/appMaintenanceView")
	public String goMaintence(DevQueryBean queryBean,Model model) {
		System.out.println("=========");
		
		if(queryBean.getAppFlatform()==null) {
			queryBean.setAppFlatform(0);
		}
		if(queryBean.getAppStatus()==null) {
			
		}
		
		return "appMaintenance";
	}
	
	
	
	
}

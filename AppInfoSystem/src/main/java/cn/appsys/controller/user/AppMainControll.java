package cn.appsys.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.appsys.utils.DevQueryBean;


/**
 * app��ά����Ҫ����
 *
 */
@Controller
public class AppMainControll {

	
	//ȥά��ҳ��,��ѯ
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

package cn.appsys.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * app��ά����Ҫ����
 *
 */
@Controller
public class AppMainControll {

	
	//ȥά��ҳ��
	@RequestMapping("/appMaintenanceView")
	public String goMaintence() {
		return "appMaintenance";
	}
	
	
	
}

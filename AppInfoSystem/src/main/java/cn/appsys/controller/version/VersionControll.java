package cn.appsys.controller.version;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VersionControll {

	@RequestMapping("/toVersionView")
	public String toVersionView() {
		return "/addappVersion";
	}
	
	
}

package cn.appsys.controller.user;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.appsys.pojo.AppCategroy;
import cn.appsys.pojo.AppInfo;
import cn.appsys.pojo.DataDictionary;
import cn.appsys.service.AppCategroyService;
import cn.appsys.service.AppInfoService;
import cn.appsys.service.DataDictionaryService;
import cn.appsys.service.DevUserService;
import cn.appsys.utils.Constants;
import cn.appsys.utils.DevQueryBean;
import cn.appsys.utils.PageSupport;


/**
 * app的维护主要操作
 *
 */
@Controller
public class AppMainControll {

	@Autowired
	private AppInfoService appInfoService;
	@Autowired
	private DataDictionaryService dataDictionaryService;
	@Autowired
	private AppCategroyService appCatagroyService;
	
	//去维护页面,查询
	@RequestMapping("/appMaintenanceView")
	public String goMaintence(DevQueryBean queryBean,Model model) {
		System.out.println("=========");
		
		if(queryBean.getAppFlatform()==null) {
			queryBean.setAppFlatform(0);
		}
		if(queryBean.getAppStatus()==null) {
			queryBean.setAppStatus(0l);
		}
		
		if(queryBean.getOneType()==null) {
			queryBean.setOneType(0);
		}
		
		if(queryBean.getPageIndex()==null) {
			queryBean.setPageIndex(1);
		}
		
		if(queryBean.getSoftwareName()==null) {
			queryBean.setSoftwareName("");
		}
		if(queryBean.getThreeType()==null) {
			queryBean.setThreeType(0);
		}
		
		if(queryBean.getTwoType()==null) {
			queryBean.setTwoType(0);
		}
		
		//总数量
		int totalCount=	appInfoService.getAppInfoCount(queryBean);
		//设置每页页数
		int pageSize=Constants.pageSize;
		PageSupport ps=new PageSupport();
		ps.setCurrentPageNo(queryBean.getPageIndex());
		ps.setPageSize(pageSize);
		ps.setTotalCount(totalCount);
		
		int totalPageCount = ps.getTotalPageCount();
		//控制首页和尾页
    	if(queryBean.getPageIndex() < 1){
    		queryBean.setPageIndex(1);
    	}else if(queryBean.getPageIndex() > totalPageCount){
    		
    		queryBean.setPageIndex(totalPageCount);
    	}
		
    	//根据条件查询结果
    	List<AppInfo> list=	appInfoService.appInfoList(queryBean,pageSize);
		//所属平台
    	List<String> platNames=new ArrayList<>();
    	String platName;
    	//所属分类
    	List<String> categoryNames=new ArrayList<>();
    	//所属状态
    	List<String> status=new ArrayList<>();
    	for(AppInfo appinfo:list) {
    		//所属平台
    		platName=dataDictionaryService.getByDataId(appinfo.getFlatformid());
    		platNames.add(platName);
    		//所属分类
    		String name1=appCatagroyService.getByCatagroyIdName(appinfo.getCategorylevel1());
    		String name2=appCatagroyService.getByCatagroyIdName(appinfo.getCategorylevel2());
    		String name3=appCatagroyService.getByCatagroyIdName(appinfo.getCategorylevel3());
    		categoryNames.add(name1+"->"+name2+"->"+name3);
    		//所属状态
    		String statusName= dataDictionaryService.getByStatusId(appinfo.getStatus());
    		status.add(statusName);
    		
    	}
    	
    	
    	//条件的app所有状态集合
    	List<DataDictionary> allStatus=	dataDictionaryService.getAllStatus();
    	//条件的所有所属平台
    	List<DataDictionary> allplat=	dataDictionaryService.getAllplatNames();
    	//所有的一级分类
    	List<AppCategroy> oneAllCategroy=	appCatagroyService.getAllCatagroy(0);
    	
    	model.addAttribute("list", list);
    	model.addAttribute("platNames",platNames );
    	model.addAttribute("categoryNames",categoryNames );
    	model.addAttribute("status", status);
    	model.addAttribute("queryBean",queryBean );
    	model.addAttribute("totalCount", totalCount);
    	model.addAttribute("totalPageCount", ps.getTotalPageCount());
    	
    	model.addAttribute("allStatus", allStatus);
    	model.addAttribute("allplat", allplat);
    	model.addAttribute("oneAllCategroy",oneAllCategroy);
    	
		return "appMaintenance";
	}
	
	//二级
	@RequestMapping("/getAllTwo")
	public @ResponseBody List<AppCategroy> getTwoCata(Integer parentId){
		List<AppCategroy> oneAllCategroy=	appCatagroyService.getTwoCatagroy(parentId);
    	
		return oneAllCategroy;
		
	}
	
	
}

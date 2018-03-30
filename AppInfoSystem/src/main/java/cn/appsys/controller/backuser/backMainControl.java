package cn.appsys.controller.backuser;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.appsys.pojo.AppCategroy;
import cn.appsys.pojo.AppInfo;
import cn.appsys.pojo.AppVersion;
import cn.appsys.pojo.DataDictionary;
import cn.appsys.service.AppCategroyService;
import cn.appsys.service.AppInfoService;
import cn.appsys.service.AppVersionService;
import cn.appsys.service.DataDictionaryService;
import cn.appsys.utils.Constants;
import cn.appsys.utils.DevQueryBean;
import cn.appsys.utils.PageSupport;
@Controller
public class backMainControl {

	@Autowired
	private AppInfoService appInfoService;
	@Autowired
	private DataDictionaryService dataDictionaryService;
	@Autowired
	private AppCategroyService appCatagroyService;
	@Autowired
	private AppVersionService appVersionService;
	//去维护页面,查询
		@RequestMapping(value="/backappMaintenanceView",method= {RequestMethod.GET,RequestMethod.POST})
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
	    	
	    	//所属的最新版本
	    	List<AppVersion> appVersions=new ArrayList<AppVersion>();
	    	
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
	    		//获得最新版本
	    		AppVersion appVersion=appVersionService.getNewVersion(appinfo.getId());
	    		appVersions.add(appVersion);
	    	}
	    	
	    	
	    	//条件的app所有状态集合
	    	List<DataDictionary> allStatus=	dataDictionaryService.getAllStatus();
	    	//条件的所有所属平台
	    	List<DataDictionary> allplat=	dataDictionaryService.getAllplatNames();
	    	//所有的一级分类
	    	List<AppCategroy> oneAllCategroy=	appCatagroyService.getAllCatagroy(0);
	    	
	    	//二
	    	List<AppCategroy> twoAllCategroy=null;
	    	if(queryBean.getTwoType()!=null&&queryBean.getTwoType()!=0) {
	    		 twoAllCategroy=	appCatagroyService.getTwoCatagroy(queryBean.getOneType());
	    	}
	    	List<AppCategroy> threeAllCategroy=null;
	    	if(queryBean.getThreeType()!=null&&queryBean.getThreeType()!=0) {
	    		//三
	        	 threeAllCategroy=	appCatagroyService.getTwoCatagroy(queryBean.getTwoType());
	    	}
	    	
	    	
	    	
	    	model.addAttribute("threeAllCategroy", threeAllCategroy);
	    	model.addAttribute("twoAllCategroy", twoAllCategroy);
	    	
	    	
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
	    	model.addAttribute("appVersions",appVersions);
			return "back/backappMananger";
		}
	
}

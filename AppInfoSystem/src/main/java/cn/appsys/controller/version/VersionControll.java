package cn.appsys.controller.version;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.swing.text.html.HTMLDocument.HTMLReader.ParagraphAction;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cn.appsys.pojo.AppInfo;
import cn.appsys.pojo.AppVersion;
import cn.appsys.service.AppInfoService;
import cn.appsys.service.AppVersionService;
import cn.appsys.service.DataDictionaryService;

@Controller
public class VersionControll {

	@Autowired
	private AppVersionService appVersion;
	@Autowired
	private AppInfoService appInfoService;
	@Autowired
	private DataDictionaryService dataDictionaryService;
	@RequestMapping("/toVersionView")
	public String toVersionView(Long appId,Model model) {
		
		//查看该软件所有的版本
		List<AppVersion> appVersions=appVersion.getAllVersionByappId(appId);
		//获得该软件
		AppInfo appInfo = appInfoService.getByIdAPP(appId);
		//获得该app的状态的名字
		String statusName = dataDictionaryService.getByStatusId(appInfo.getStatus());
		//发布状态名字
		List<String> publishNames=new ArrayList<String>();
		for(AppVersion appversion:appVersions) {
		String name=	dataDictionaryService.getpublishStatu(appversion.getPublishstatus());
		publishNames.add(name);
		}
		
		
		System.out.println("============");
		model.addAttribute("publishNames",publishNames);
		model.addAttribute("appVersions", appVersions);
		model.addAttribute("appInfo",appInfo);
		model.addAttribute("statusName",statusName);
		return "/addappVersion";
	}
	
	/*//添加一个版本
		@RequestMapping("/addVesion")
		public String addVesion(AppVersion appvesion,RequestParam("apkFileUp") ) {
				
			
		}*/
		@RequestMapping("/addVesion")
		public String editSaveAPP(Model model,HttpSession session, AppVersion appVersiona,@RequestParam(value="apkFileUp",required=false) MultipartFile attach) {
			
			AppInfo myapp = appInfoService.getByIdAPP(appVersiona.getAppid());			
			
			String idPicPath = null;
			String path="D:\\appLoad";
			//判断文件是否为空
			if(attach!=null) {
				
			
			if(!attach.isEmpty()){
				 
				String oldFileName = attach.getOriginalFilename();//原文件名
				String prefix=FilenameUtils.getExtension(oldFileName);//原文件后缀     
				int filesize = 500000*1024;
		        if(attach.getSize() >  filesize){//上传大小不得超过 500k
		        	model.addAttribute("uploadFileError", " * 上传大小不得超过 500mb");
		        	return "forward:/picError";
	            }else if(prefix.equalsIgnoreCase("apk") 
	            		){//上传图片格式不正确
	            	String fileName = myapp.getApkname()+"-"+appVersiona.getVersionno()+".apk";
	                File targetFile = new File(path, fileName);  
	                if(!targetFile.exists()){  
	                    targetFile.mkdirs();  
	                }  
	                //保存  
	                try {  
	                	appVersiona.setApkfilename(fileName);
	                	
	                	attach.transferTo(targetFile);  
	                } catch (Exception e) {  
	                    e.printStackTrace();  
	                   model.addAttribute("uploadFileError", " * 上传失败！");
	                    return "forward:/picError";
	                }  
	                idPicPath = path+File.separator+fileName;
	            }else{
	            	model.addAttribute("uploadFileError", " * 上传app格式不正确");
	            	return "forward:/picError";
	            }
			}
			}
			
			//保存版本
			
			appVersion.saveAppVersion(appVersiona);
			System.out.println("============");
			return "redirect:/appMaintenanceView";	
			
		
	
}
		
		
		
		//去修改版本页面
		@RequestMapping("/toupdateVersionView")
		public String toupdateVersionView(Long appid,Model model) {
			//查看该软件所有的版本
			List<AppVersion> appVersions=appVersion.getAllVersionByappId(appid);
			//获得该软件
			AppInfo appInfo = appInfoService.getByIdAPP(appid);
			//获得该app的状态的名字
			String statusName = dataDictionaryService.getByStatusId(appInfo.getStatus());
			//发布状态名字
			List<String> publishNames=new ArrayList<String>();
			for(AppVersion appversion:appVersions) {
			String name=	dataDictionaryService.getpublishStatu(appversion.getPublishstatus());
			publishNames.add(name);
			}
			
			//获得最新版本
		AppVersion lastapp=	appVersion.getNewVersion(appid);
			
			
			System.out.println("============");
			model.addAttribute("publishNames",publishNames);
			model.addAttribute("appVersions", appVersions);
			model.addAttribute("appInfo",appInfo);
			model.addAttribute("statusName",statusName);
			model.addAttribute("lastapp",lastapp);
			return "updateappVersion";
			
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
}
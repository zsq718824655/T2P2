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
		
		//�鿴��������еİ汾
		List<AppVersion> appVersions=appVersion.getAllVersionByappId(appId);
		//��ø����
		AppInfo appInfo = appInfoService.getByIdAPP(appId);
		//��ø�app��״̬������
		String statusName = dataDictionaryService.getByStatusId(appInfo.getStatus());
		//����״̬����
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
	
	/*//���һ���汾
		@RequestMapping("/addVesion")
		public String addVesion(AppVersion appvesion,RequestParam("apkFileUp") ) {
				
			
		}*/
		@RequestMapping("/addVesion")
		public String editSaveAPP(Model model,HttpSession session, AppVersion appVersiona,@RequestParam(value="apkFileUp",required=false) MultipartFile attach) {
			
			AppInfo myapp = appInfoService.getByIdAPP(appVersiona.getAppid());			
			
			String idPicPath = null;
			String path="D:\\appLoad";
			//�ж��ļ��Ƿ�Ϊ��
			if(attach!=null) {
				
			
			if(!attach.isEmpty()){
				 
				String oldFileName = attach.getOriginalFilename();//ԭ�ļ���
				String prefix=FilenameUtils.getExtension(oldFileName);//ԭ�ļ���׺     
				int filesize = 500000*1024;
		        if(attach.getSize() >  filesize){//�ϴ���С���ó��� 500k
		        	model.addAttribute("uploadFileError", " * �ϴ���С���ó��� 500mb");
		        	return "forward:/picError";
	            }else if(prefix.equalsIgnoreCase("apk") 
	            		){//�ϴ�ͼƬ��ʽ����ȷ
	            	String fileName = myapp.getApkname()+"-"+appVersiona.getVersionno()+".apk";
	                File targetFile = new File(path, fileName);  
	                if(!targetFile.exists()){  
	                    targetFile.mkdirs();  
	                }  
	                //����  
	                try {  
	                	appVersiona.setApkfilename(fileName);
	                	
	                	attach.transferTo(targetFile);  
	                } catch (Exception e) {  
	                    e.printStackTrace();  
	                   model.addAttribute("uploadFileError", " * �ϴ�ʧ�ܣ�");
	                    return "forward:/picError";
	                }  
	                idPicPath = path+File.separator+fileName;
	            }else{
	            	model.addAttribute("uploadFileError", " * �ϴ�app��ʽ����ȷ");
	            	return "forward:/picError";
	            }
			}
			}
			
			//����汾
			
			appVersion.saveAppVersion(appVersiona);
			System.out.println("============");
			return "redirect:/appMaintenanceView";	
			
		
	
}
		
		
		
		//ȥ�޸İ汾ҳ��
		@RequestMapping("/toupdateVersionView")
		public String toupdateVersionView(Long appid,Model model) {
			//�鿴��������еİ汾
			List<AppVersion> appVersions=appVersion.getAllVersionByappId(appid);
			//��ø����
			AppInfo appInfo = appInfoService.getByIdAPP(appid);
			//��ø�app��״̬������
			String statusName = dataDictionaryService.getByStatusId(appInfo.getStatus());
			//����״̬����
			List<String> publishNames=new ArrayList<String>();
			for(AppVersion appversion:appVersions) {
			String name=	dataDictionaryService.getpublishStatu(appversion.getPublishstatus());
			publishNames.add(name);
			}
			
			//������°汾
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
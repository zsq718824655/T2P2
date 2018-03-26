package cn.appsys.controller.user;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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
 * app��ά����Ҫ����
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
	
	//ȥά��ҳ��,��ѯ
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
		
		//������
		int totalCount=	appInfoService.getAppInfoCount(queryBean);
		//����ÿҳҳ��
		int pageSize=Constants.pageSize;
		PageSupport ps=new PageSupport();
		ps.setCurrentPageNo(queryBean.getPageIndex());
		ps.setPageSize(pageSize);
		ps.setTotalCount(totalCount);
		
		int totalPageCount = ps.getTotalPageCount();
		//������ҳ��βҳ
    	if(queryBean.getPageIndex() < 1){
    		queryBean.setPageIndex(1);
    	}else if(queryBean.getPageIndex() > totalPageCount){
    		
    		queryBean.setPageIndex(totalPageCount);
    	}
		
    	//����������ѯ���
    	List<AppInfo> list=	appInfoService.appInfoList(queryBean,pageSize);
		//����ƽ̨
    	List<String> platNames=new ArrayList<>();
    	String platName;
    	//��������
    	List<String> categoryNames=new ArrayList<>();
    	//����״̬
    	List<String> status=new ArrayList<>();
    	for(AppInfo appinfo:list) {
    		//����ƽ̨
    		platName=dataDictionaryService.getByDataId(appinfo.getFlatformid());
    		platNames.add(platName);
    		//��������
    		String name1=appCatagroyService.getByCatagroyIdName(appinfo.getCategorylevel1());
    		String name2=appCatagroyService.getByCatagroyIdName(appinfo.getCategorylevel2());
    		String name3=appCatagroyService.getByCatagroyIdName(appinfo.getCategorylevel3());
    		categoryNames.add(name1+"->"+name2+"->"+name3);
    		//����״̬
    		String statusName= dataDictionaryService.getByStatusId(appinfo.getStatus());
    		status.add(statusName);
    		
    	}
    	
    	
    	//������app����״̬����
    	List<DataDictionary> allStatus=	dataDictionaryService.getAllStatus();
    	//��������������ƽ̨
    	List<DataDictionary> allplat=	dataDictionaryService.getAllplatNames();
    	//���е�һ������
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
	
	//����
	@RequestMapping("/getAllTwo")
	public @ResponseBody List<AppCategroy> getTwoCata(Integer parentId){
		List<AppCategroy> oneAllCategroy=	appCatagroyService.getTwoCatagroy(parentId);
    	
		return oneAllCategroy;
		
	}
	
	@RequestMapping("/toUpdateApp")
	public String toupdateView(Long appId,Model model){
		//��ȡ��app�Ķ���
		AppInfo appinfo=appInfoService.getByIdAPP(appId);
		//���е�һ������
    	List<AppCategroy> oneAllCategroy=	appCatagroyService.getTwoCatagroy(0);
		//��
    	List<AppCategroy> twoAllCategroy=	appCatagroyService.getTwoCatagroy(appinfo.getCategorylevel1().intValue());
    	//��
    	List<AppCategroy> threeAllCategroy=	appCatagroyService.getTwoCatagroy(appinfo.getCategorylevel2().intValue());
    	//����״̬
		String statusName= dataDictionaryService.getByStatusId(appinfo.getStatus());
		/*//����ƽ̨
		String	platName=dataDictionaryService.getByDataId(appinfo.getFlatformid());*/
		//��������������ƽ̨
    	List<DataDictionary> allplat=	dataDictionaryService.getAllplatNames();
		
		
		
		model.addAttribute("appinfo",appinfo);
		model.addAttribute("oneAllCategroy",oneAllCategroy);
		model.addAttribute("twoAllCategroy",twoAllCategroy);
		model.addAttribute("threeAllCategroy",threeAllCategroy);
		model.addAttribute("statusName",statusName);
		
		model.addAttribute("allplat",allplat);
		
		
    	System.out.println("================");
		return "updateApp";
		
	}
	
	
	//�����޸�
	@RequestMapping("/editSaveApp")
	public String editSaveAPP(Model model,HttpSession session, AppInfo appinfo,@RequestParam("logolocpathPic") MultipartFile attach) {
		appinfo.setModifydate(new Date());
		
		String idPicPath = null;
		String path="d:\\appPic";
		//�ж��ļ��Ƿ�Ϊ��
		if(!attach.isEmpty()){
			 
			String oldFileName = attach.getOriginalFilename();//ԭ�ļ���
			String prefix=FilenameUtils.getExtension(oldFileName);//ԭ�ļ���׺     
			int filesize = 500000;
	        if(attach.getSize() >  filesize){//�ϴ���С���ó��� 500k
	        	model.addAttribute("uploadFileError", " * �ϴ���С���ó��� 500k");
	        	//return "useradd";
            }else if(prefix.equalsIgnoreCase("jpg") || prefix.equalsIgnoreCase("png") 
            		|| prefix.equalsIgnoreCase("jpeg") || prefix.equalsIgnoreCase("pneg")){//�ϴ�ͼƬ��ʽ����ȷ
            	String fileName = System.currentTimeMillis()+"."+FilenameUtils.getExtension(oldFileName);  
                File targetFile = new File(path, fileName);  
                if(!targetFile.exists()){  
                    targetFile.mkdirs();  
                }  
                //����  
                try {  
                	appinfo.setLogolocpath(fileName);
                	attach.transferTo(targetFile);  
                } catch (Exception e) {  
                    e.printStackTrace();  
                   model.addAttribute("uploadFileError", " * �ϴ�ʧ�ܣ�");
                    return "useradd";
                }  
                idPicPath = path+File.separator+fileName;
            }else{
            	model.addAttribute("uploadFileError", " * �ϴ�ͼƬ��ʽ����ȷ");
            	return "useradd";
            }
		}
		
		
		
		
	boolean flag=	appInfoService.saveAppInfo(appinfo);
	System.out.println("========"+flag);
		return "redirect:/appMaintenanceView";
	}
	//ɾ��ͼƬ
	@RequestMapping("/deletePicPath")
	public 	void delAppInfoLoaPic(Long appId) {
		
	boolean flag=	appInfoService.updatePicPath(appId);
	}
	
	
}

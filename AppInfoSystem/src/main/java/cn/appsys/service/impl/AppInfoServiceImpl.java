package cn.appsys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.appsys.mapper.AppInfoMapper;
import cn.appsys.pojo.AppInfo;
import cn.appsys.service.AppInfoService;
import cn.appsys.utils.DevQueryBean;
@Service
@Transactional(isolation=Isolation.REPEATABLE_READ,propagation=Propagation.REQUIRED,readOnly=false)
public class AppInfoServiceImpl implements AppInfoService {

	@Autowired
	private AppInfoMapper appInfoMapper;
	@Override
	public int getAppInfoCount(DevQueryBean queryBean) {
		
		int counts=appInfoMapper.getAppInfoCount(queryBean);
		return counts;
	}
	@Override
	public List<AppInfo> appInfoList(DevQueryBean queryBean, int pageSize) {
		List<AppInfo> apps=null;
		//�����ʼҳ��
		int currentStartPage=(queryBean.getPageIndex()-1)*pageSize;
		apps=appInfoMapper.queryPageList(queryBean,currentStartPage,pageSize);
		return apps;
	}

}
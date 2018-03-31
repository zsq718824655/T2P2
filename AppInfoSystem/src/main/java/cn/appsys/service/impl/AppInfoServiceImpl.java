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
@Transactional(isolation = Isolation.REPEATABLE_READ, propagation = Propagation.REQUIRED, readOnly = false)
public class AppInfoServiceImpl implements AppInfoService {

	@Autowired
	private AppInfoMapper appInfoMapper;

	@Override
	public int getAppInfoCount(DevQueryBean queryBean) {

		int counts = appInfoMapper.getAppInfoCount(queryBean);
		return counts;
	}

	@Override
	public List<AppInfo> appInfoList(DevQueryBean queryBean, int pageSize) {
		List<AppInfo> apps = null;
		// 获得起始页数
		int currentStartPage = (queryBean.getPageIndex() - 1) * pageSize;
		apps = appInfoMapper.queryPageList(queryBean, currentStartPage, pageSize);
		return apps;
	}

	@Override
	public AppInfo getByIdAPP(Long appId) {
		AppInfo appinfo = null;
		appinfo = appInfoMapper.getByIdAPP(appId);
		return appinfo;
	}

	@Override
	public boolean saveAppInfo(AppInfo appinfo) {
		int i = appInfoMapper.saveAPPInfo(appinfo);
		if (i > 0) {
			return true;
		} else {
			return false;
		}

	}
	@Override
	public boolean updateStatu(Long statu,Long appid) {
		int i=	appInfoMapper.updateStatu(statu,appid);
		if(i>0) {
			return true;
		}else {
			return false;	
		}
	}

	@Override
	public boolean updatePicPath(Long appId) {
		int i = appInfoMapper.updatePicPath(appId);
		if (i > 0) {
			return true;
		} else {
			return false;
		}

	}
	@Override
	public String getCatagoryLevel(long id) {
		String level=appInfoMapper.getCatagoryLevel(id);
		return level;
	}

	@Override
	public boolean insertAppInfo(AppInfo appinfo) {
		int i = appInfoMapper.insertAppInfo(appinfo);
		if (i > 0) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public boolean findapkName(String apkName) {
		int i = appInfoMapper.findapkName(apkName);
		if (i > 0) {
			return true;
		} else {
			return false;
		}

	}
	//根据Id删除App
	@Override
	public boolean deleteAppInfor(int id) {
		int i = appInfoMapper.deleteAppInfor(id);
		if (i > 0) {
			return true;
		} else {
			return false;
		}

	}

	@Override
	public void modifyStatus(long appid) {
     appInfoMapper.modifyStatus(appid);
		
	}

	@Override
	public void modifyStatusNO(long appid) {
		// TODO Auto-generated method stub
		appInfoMapper.modifyStatusNO(appid);
	}
}

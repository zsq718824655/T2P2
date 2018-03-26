package cn.appsys.service;

import java.util.List;

import cn.appsys.pojo.AppInfo;
import cn.appsys.utils.DevQueryBean;

public interface AppInfoService {

	int getAppInfoCount(DevQueryBean queryBean);

	List<AppInfo> appInfoList(DevQueryBean queryBean, int pageSize);

	AppInfo getByIdAPP(Long appId);

	boolean saveAppInfo(AppInfo appinfo);

}

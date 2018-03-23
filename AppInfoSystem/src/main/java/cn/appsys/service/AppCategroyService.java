package cn.appsys.service;

import java.util.List;

import cn.appsys.pojo.AppCategroy;

public interface AppCategroyService {

	String getByCatagroyIdName(Long categorylevel);

	List<AppCategroy> getAllCatagroy(Integer parentId);

	List<AppCategroy> getTwoCatagroy(Integer parentId);

	

}

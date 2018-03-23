package cn.appsys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.appsys.mapper.AppCategroyMapper;
import cn.appsys.pojo.AppCategroy;
import cn.appsys.service.AppCategroyService;
@Service
@Transactional(isolation=Isolation.REPEATABLE_READ,propagation=Propagation.REQUIRED,readOnly=false)
public class AppCategroyServiceImpl  implements AppCategroyService{

	@Autowired
	private AppCategroyMapper appCategroyMapper;
	@Override
	public String getByCatagroyIdName(Long categorylevel) {
		String names=appCategroyMapper.getByCatagroyIdName(categorylevel);
		return names;
	}
	@Override
	public List<AppCategroy> getAllCatagroy(Integer parentId) {
		List<AppCategroy> list=null;
		list=appCategroyMapper.getAllCatagroy(parentId);
		return list;
	}
	@Override
	public List<AppCategroy> getTwoCatagroy(Integer parentId) {
		List<AppCategroy> list=null;
		list=appCategroyMapper.getTwoCatagroy(parentId);
		return list;
	}

}

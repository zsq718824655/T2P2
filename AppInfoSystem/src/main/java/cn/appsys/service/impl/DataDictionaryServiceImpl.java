package cn.appsys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.appsys.mapper.DataDictionaryMapper;
import cn.appsys.pojo.DataDictionary;
import cn.appsys.service.DataDictionaryService;
@Service
@Transactional(isolation=Isolation.REPEATABLE_READ,propagation=Propagation.REQUIRED,readOnly=false)
public class DataDictionaryServiceImpl implements DataDictionaryService{

	@Autowired
	private DataDictionaryMapper dictionaryMapper;
	//»ñµÃÃû×Ö
	@Override
	public String getByDataId(Long flatformid) {
		String platName;
		platName=dictionaryMapper.getByIdName(flatformid);
		return platName;
	}
	@Override
	public String getByStatusId(Long status) {
		String statu=dictionaryMapper.getByStatusId(status);
		return statu;
	}
	@Override
	public List<DataDictionary> getAllStatus() {
		List<DataDictionary> list=null;
		list=	dictionaryMapper.getAllStatus();
		return list;
	}
	@Override
	public List<DataDictionary> getAllplatNames() {
		List<DataDictionary> list=null;
		list=	dictionaryMapper.getAllplatNames();
		return list;
		
	}
	@Override
	public String getpublishStatu(Long publishstatus) {
		String name=null;
		name=dictionaryMapper.getpublishStatu(publishstatus);
		return name;
	}
	@Override
	public String getpublishStatus(Long publishstatus) {
		String names=null;
		names=dictionaryMapper.getpublishStatus(publishstatus);
		return null;
	}

}

package cn.appsys.service;

import java.util.List;

import cn.appsys.pojo.DataDictionary;

/**
 * ����ƽ̨
 *
 */
public interface DataDictionaryService {

	String getByDataId(Long flatformid);
	//״̬
	String getByStatusId(Long status);
	List<DataDictionary> getAllStatus();
	List<DataDictionary> getAllplatNames();

	
}

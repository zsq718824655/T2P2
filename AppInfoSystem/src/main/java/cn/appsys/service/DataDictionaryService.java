package cn.appsys.service;

import java.util.List;

import cn.appsys.pojo.DataDictionary;

/**
 * ËùÊôÆ½Ì¨
 *
 */
public interface DataDictionaryService {

	String getByDataId(Long flatformid);
	//×´Ì¬
	String getByStatusId(Long status);
	List<DataDictionary> getAllStatus();
	List<DataDictionary> getAllplatNames();

	
}

package cn.appsys.mapper;

import java.util.List;

import cn.appsys.pojo.DataDictionary;

public interface DataDictionaryMapper {
    int deleteByPrimaryKey(Long id);

    int insert(DataDictionary record);

    int insertSelective(DataDictionary record);

    DataDictionary selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(DataDictionary record);

    int updateByPrimaryKey(DataDictionary record);
    //+++++++++++++++++++
    //获得名字
	String getByIdName(Long flatformid);

	String getByStatusId(Long status);

	List<DataDictionary> getAllStatus();

	List<DataDictionary> getAllplatNames();

	String getpublishStatu(Long publishstatus);
	
	//获取APP状态
	String getpublishStatus(Long publishstatus);
	
	
}
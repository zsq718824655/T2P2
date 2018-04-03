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
	//获得状态
	String getByStatusId(Long status);
	//获取多有数字字典
	List<DataDictionary> getAllStatus();
	//获取平台名字
	List<DataDictionary> getAllplatNames();
	//获取版本的状态
	String getpublishStatu(Long publishstatus);
	
	//获取APP状态
	String getpublishStatus(Long publishstatus);
	
	
}
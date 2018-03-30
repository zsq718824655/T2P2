package cn.appsys.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.appsys.pojo.AppInfo;
import cn.appsys.utils.DevQueryBean;

public interface AppInfoMapper {
    int deleteByPrimaryKey(Long id);

    
    int insertSelective(AppInfo record);

    AppInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AppInfo record);

    int updateByPrimaryKey(AppInfo record);
    //++++++++++++++++++++++++++
    //����������ѯ
	int getAppInfoCount(DevQueryBean queryBean);
	//��ҳ��ѯ
	List<AppInfo> queryPageList(@Param("queryBean") DevQueryBean queryBean, @Param("currentStartPage")int currentStartPage,  @Param("pageSize")int pageSize);

	AppInfo getByIdAPP(Long appId);

	int saveAPPInfo(AppInfo appinfo);

	int updatePicPath(Long appId);

	int insertAppInfo(AppInfo appinfo);


	int findapkName(String apkName);

	//����Id ɾ��APP
	int deleteAppInfor(int id );
	
	
	
}
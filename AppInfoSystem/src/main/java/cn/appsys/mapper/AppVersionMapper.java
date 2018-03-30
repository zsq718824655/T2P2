package cn.appsys.mapper;

import java.util.List;

import cn.appsys.pojo.AppVersion;
import cn.appsys.service.AppVersionService;

public interface AppVersionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(AppVersion record);

    int insertSelective(AppVersion record);

    AppVersion selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AppVersion record);

    int updateByPrimaryKey(AppVersion record);

	AppVersion getNewVersion(Long id);

	List<AppVersion> getAllVersionByappId(Long appId);

	void saveAppVersion(AppVersion appVersiona);

	void deleteAppVersionId(int appId);


}
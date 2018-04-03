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
    //��ȡ�汾
	AppVersion getNewVersion(Long id);
	//��ȡ���еİ汾
	List<AppVersion> getAllVersionByappId(Long appId);
	//����һ���汾
	void saveAppVersion(AppVersion appVersiona);
	//����һ��appk���ļ�����
	int updateApkFileName(Long versionId);
	//�޸ı���汾
	void editsaveAppVersion(AppVersion appVersiona);
	//ɾ���汾
	void deleteAppVersionId(int appId);


}
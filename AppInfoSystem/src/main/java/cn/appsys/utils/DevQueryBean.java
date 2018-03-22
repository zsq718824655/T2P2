package cn.appsys.utils;

/**
 * 查询条件
 *
 */
public class DevQueryBean {

	
	private String softwareName;//软件名字
	private Integer appStatus;//app状态
	private Integer appFlatform;//所属平台
	private Integer oneType;//一级
	private Integer twoType;//二级
	private Integer threeType;//三级
	
	private Integer pageIndex;
	
	
	
	
	
	public Integer getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(Integer pageIndex) {
		this.pageIndex = pageIndex;
	}
	public String getSoftwareName() {
		return softwareName;
	}
	public void setSoftwareName(String softwareName) {
		this.softwareName = softwareName;
	}
	public Integer getAppStatus() {
		return appStatus;
	}
	public void setAppStatus(Integer appStatus) {
		this.appStatus = appStatus;
	}
	public Integer getAppFlatform() {
		return appFlatform;
	}
	public void setAppFlatform(Integer appFlatform) {
		this.appFlatform = appFlatform;
	}
	public Integer getOneType() {
		return oneType;
	}
	public void setOneType(Integer oneType) {
		this.oneType = oneType;
	}
	public Integer getTwoType() {
		return twoType;
	}
	public void setTwoType(Integer twoType) {
		this.twoType = twoType;
	}
	public Integer getThreeType() {
		return threeType;
	}
	public void setThreeType(Integer threeType) {
		this.threeType = threeType;
	}
	
	
	
}

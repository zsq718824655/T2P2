<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--app维护主页面  -->
<%@include file="/WEB-INF/jsp/backcommon/right.jsp"%>





<div class="right_col" role="main" style="min-height: 1021.99px;">
<!---顶部下开始++++++++++++++++++++++->
        <!-- page content -->
        <div class="right_col" role="main" style="margin-left: 5px">
          <!-- top tiles -->
          <div class="row tile_count" style="margin-left: 15px">
            <div class="row">
            <font SIZE="5PX">APP审核列表</font>${userSession.username }
            <hr/>
            </div>
            
                  <form class="form-horizontal form-label-left" novalidate enctype="multipart/form-data">

                      </p>
                      <span class="section">APP基础信息</span>

                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Sname">软件名称<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Sname"  readonly="readonly"      class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="Sname" value="${showAppInfo.softwarename} " placeholder="请在这里输入软件名称" required="required" type="text">
                        </div>
                      </div>
                      
                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Aname">APK名称 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="Aname" name="Aname"  readonly="readonly"         placeholder="请在这里输入APK名称" value="${showAppInfo.apkname}"  required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="rom">支持ROM <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="rom" name="rom" placeholder="请在这里输入软件支持的ROM" readonly="readonly" value="${showAppInfo.supportrom}" data-validate-linked="email" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="gui">界面语言 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="gui" name="gui" placeholder="请在这里输入界面所用语言"   readonly="readonly"     value="${showAppInfo.interfacelanguage} "required="required" data-validate-minmax="10,100" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="size">软件大小 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="size" name="size"  readonly="readonly"        required="required" value="${showAppInfo.softwaresize}" placeholder="请在这里输入软件大小" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="count">下载次数<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="count" type="text" name="count" placeholder="请在这里输入软件已被下载次数"  readonly="readonly"       value="${showAppInfo.updatedate}"data-validate-length-range="5,20" class="optional form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      <div class="item form-group">
                        <label for="platform" class="control-label col-md-3">所属平台</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                                           <input id="count" type="text" name="count"  readonly="readonly"       value="${AllPlat}" data-validate-length-range="5,20" class="optional form-control col-md-7 col-xs-12">
                        	
                        </div>
                      </div>
                      
                      
                      <div class="item form-group">
                        <label for="sort1" class="control-label col-md-3 col-sm-3 col-xs-12">所有分类</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                    <input id="count" type="text" name="count"  readonly="readonly"       value="${Level1}-->${Level2}-->${Level3}" data-validate-length-range="5,20" class="optional form-control col-md-7 col-xs-12">
                        		
                        </div>
                      </div>
                      
                      
                       <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="state">APP状态 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="state" name="state" placeholder="待审核" readonly  value="${AppStatus} "data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="desc">应用简介 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea id="desc" required="required" readonly="readonly" name="desc" class="form-control col-md-7 col-xs-12">${showAppInfo.appinfo}</textarea>
                        </div>
                      </div>
                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="logo">Logo图片<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                         <img height="80px" width="80px" style="vertical-align: middle;" class="control-label" alt="login的图片" src="/mypic/${showAppInfo.logolocpath}"/>
                        </div>
                      </div>
                      
                       
                  
                      <div class="item form-group">
                        
                        <div class="text-center ">
                          <a href="${pageContext.request.contextPath }/pass?appid=${showAppInfo.id}" class="btn btn-primary ">审核通过</a>
		      	 		<a href="${pageContext.request.contextPath }/nopass?appid=${showAppInfo.id}" class="btn btn-primary ">审核不通过</a>
		          		<a href="javascript:history.back(-1)" class="btn btn-primary ">返回</a>
                        </div>
                      </div>
                      
                 </form>     
                      <label class="control-label apkNameLable">历史版本列表</label>
        	<table class="table table-bordered">
 				
 				<tr class="row">
 				
 				<th class="col-md-2 ">软件名称</th>
 				<th class="col-md-2">版本号</th>
 				<th class="col-md-2">版本大小(单位M)</th>
 				<th class="col-md-2">发布状态</th>
 				<th class="col-md-2">apk文件下载</th>
 				<th class="col-md-2">更新最新时间 </th>
 				<!-- appVersions -->
 				</tr>
 		<c:forEach items="${appVersions}" varStatus="varstu" var="appVersion"> 
 				<tr class="row">
 				<td class="col-md-2">${showAppInfo.softwarename }</td>
 				<td class="col-md-2">${appVersion.versionno }</td><%-- ${appVersion.versionno } --%>
 				<td class="col-md-2">${showAppInfo.softwaresize }</td>
 				<td class="col-md-2">${publishNames[varstu.index] }</td>
 				<td class="col-md-2">${appVersion.apkfilename }</td>
 				<td class="col-md-2">
 				<fmt:formatDate value="${appVersion.modifydate }" pattern="yyyy-mm-dd"/>	</td>
 			
 				
 					
 				<tr/>
 				</c:forEach> 
 				
 				
 				 
			</table>
                    
		                 
		                     <div class="form-group">
		    <div class="text-center">
		  
		      
	
		    </div>
		  </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
          
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/appMaintenance.js"></script>
</body>
</html>
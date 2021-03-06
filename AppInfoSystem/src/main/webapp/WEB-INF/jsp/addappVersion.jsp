<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/WEB-INF/jsp/common/left.jsp"%>
    <div  class="right_col" role="main" style="min-height: 1021.99px;">
    <!---顶部下开始++++++++++++++++++++++->
        <!-- page content -->
      
          <!-- top tiles -->
        
            
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
 				<td class="col-md-2">${appInfo.softwarename }</td>
 				<td class="col-md-2">${appVersion.versionno }</td>
 				<td class="col-md-2">${appInfo.softwaresize }</td>
 				<td class="col-md-2">${publishNames[varstu.index] }</td>
 				<td class="col-md-2">${appVersion.apkfilename }</td>
 				<td class="col-md-2">
 				<fmt:formatDate value="${appVersion.modifydate }" pattern="yyyy-mm-dd"/>	</td>
 			
 				
 					
 				<tr/>
 				</c:forEach> 
 				
 				
 				 
			</table>
        	  
          
          <!-- /top tiles -->

          <div class="row" >
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="dashboard_graph" style="height: 800px">
		<label class="control-label apkNameLable">新增版本号信息</label>
		
		<form  id="saveAPPforms" class="form-horizontal " action="${pageContext.request.contextPath }/addVesion" method="post" enctype="multipart/form-data">
		<input type="hidden" name="appid" value="${appInfo.id }"/>
		
		 <div class="form-group">
		    <label  class="col-sm-2 control-label">版本号</label>
		    <div class="col-sm-4 col-md-4" >
		      <input type="text" placeholder="请输入版本号" required="required" name="versionno"  class="form-control" >
		    </div>
		    <label class="control-label apkNameLable"></label>
		   
		  </div>
		
		<div class="form-group">
		    <label  class="col-sm-2 control-label">版本大小</label>
		    <div class="col-sm-4 col-md-4" >
		      <input type="number" placeholder="请输入版本的大小单位(mb)" required="required" name="versionsize"  class="form-control" >
		    </div>
		    <label class="control-label apkNameLable"></label>
		   
		  </div>
	
			<div class="form-group">
		    <label  class="col-sm-2 control-label">发布状态</label>
		    <div class="col-sm-4 col-md-4" >
		     <label class="control-label apkNameLable">预发布</label>
		      <input type="hidden" required="required" name="publishstatus" value="3" class="form-control"  readonly="readonly">
		    </div>
		    <label class="control-label apkNameLable"></label>
		   
		  </div>
		  <div class="form-group">
		    <label  class="col-sm-2 control-label">版本简介</label>
		   <div class="col-sm-4 col-md-4">
     	<textarea name="versioninfo"  class="form-control" placeholder="简介"  rows="3"></textarea>
    		</div>
		    <label class="control-label apkNameLable"></label>
		   
		  </div>
		
		<div class="form-group">
		    <label  class="col-sm-2 control-label">apk文件</label>
		    <div class="col-sm-4 col-md-4" >
		      <input  type="file" required="required" name="apkFileUp"  class="apkAscViladate" >
		    </div>
		    <label class="control-label apkNameLable"></label>
		   
		  </div>
		
		
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
  
      <button type="buttom" class="btn btn-success" onclick="saveApps()">保存</button>
      
      <a href="javascript:history.back(-1)" class="btn btn-primary ">返回</a>
    </div>
  </div>
		
		</form>
               
              </div>
            </div>

          </div>
         
             
</div>
        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      
    
    </body>
</html>

    
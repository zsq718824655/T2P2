<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--app维护主页面  -->
<%@include file="/WEB-INF/jsp/common/left.jsp"%>


<div  class="right_col" role="main" style="min-height: 1021.99px;">

<form  id="saveAPPforms" class="form-horizontal " action="${pageContext.request.contextPath }/addAPPInfo" method="post" enctype="multipart/form-data">
  <input type="hidden" name="id" value="${appinfo.id }">
  <div class="form-group">
    <label for="appName" class="col-sm-2 control-label">软件名称</label>
    <div class="col-sm-4 col-md-4">
      <input type="text" name="softwarename" placeholder="请输入软件的名称"  class="form-control" id="appName" required="required">
    </div>
     <!--  <label class="control-label" >提示信息</label> --> 
  </div>
  <div class="form-group">
    <label  class="col-sm-2 control-label">APK名称</label>
    <div class="col-sm-4 col-md-4" >
      <input type="text" required="required" placeholder="请输入APK名称" name="apkname"  class="form-control apkAscViladate" >
    </div>
    <label class="control-label apkNameLable"></label>
   
  </div>
  <div class="form-group">
    <label for="romlab" class="col-sm-2 control-label">支持ROM</label>
    <div class="col-sm-4 col-md-4">
      <input type="text" name="supportrom" placeholder="请输入支持ROM" class="form-control" id="romlab" required="required">
    </div>
      <label class="control-label" ></label>
  </div><div class="form-group">
    <label for="langLab" class="col-sm-2 control-label">界面语言</label>
    <div class="col-sm-4 col-md-4">
      <input type="text" name="interfacelanguage" placeholder="请输入界面语言"  class="form-control" id="langLab" required="required">
    </div>
      <label class="control-label" ></label>
  </div><div class="form-group">
    <label for="appSize" class="col-sm-2 control-label">软件大小</label>
    <div class="col-sm-4 col-md-4">
      <input name="softwaresize" type="number"  class="form-control softSizeNum" id="appSize" required="required" >
    </div>
     <!--  <label class="control-label" >提示信息</label> --> 
  </div><div class="form-group">
    <label for="downNum" class="col-sm-2 control-label">下载次数</label>
    <div class="col-sm-4 col-md-4">
      <input required="required" name="downloads" type="number" placeholder="请输入下载次数"  class="form-control loadSizes" id="downNum" >
    </div>
     <!--  <label class="control-label" >提示信息</label> -->
  </div><div class="form-group">
    <label  class="col-sm-2 control-label">所属平台</label>
    <div class="col-sm-4 col-md-4">
      <select required="required" name="flatformid" class="form-control">
      <option value="0">---请选择---</option>
      <c:forEach items="${allplat }" var="oneplat">
      <option  value="${oneplat.valueid }"  >${oneplat.valuename }</option>
      </c:forEach>
      </select>
    </div>
      <label class="control-label ofPlatInfolab" ></label>
  </div><div class="form-group">
  		<label  class="col-sm-2 control-label">一级分类</label>
       			
       			<div class="col-sm-4 col-md-4">
       			
       			 <select required="required" name="categorylevel1" class="form-control oneType">
       			 <option value="0">--请选择--</option>
       			<c:if test="${oneAllCategroy != null }">
						  
						   <c:forEach var="oneALLcat" items="${oneAllCategroy}">
						   		<option <c:if test="${oneALLcat.id == queryBean.oneType }">selected="selected"</c:if>
						   		value="${oneALLcat.id}">${oneALLcat.categoryname}</option>
						   </c:forEach>
				</c:if>
       			</select>
       			 </div>
       		
       		
       		
       		
  </div><div class="form-group">
   <label  class="col-sm-2 control-label">二级分类</label>
  			       
       			<div class="col-sm-4 col-md-4">
       			
       			<select required="required" name="categorylevel2" class="form-control twoType">
       			</select>
       			 </div>
       		
  </div>
  <div class="form-group">
    <label  class="col-sm-2  control-label">三级分类</label>
        	   
       			<div required="required" class="col-sm-4 col-md-4">
       			
       			 <select name="categorylevel3" class="form-control threeType">
       			
       			</select>
       			 </div>
       		
  </div>
  
  <div class="form-group">
    <label class="col-sm-2 control-label">APP状态</label>
    <div class="col-sm-4 col-md-4">
      <input  name="status" type="hidden" value="1"  class="form-control" >
      <label class="control-label">待审核</label>
    </div>
     
  </div>
  
  <div class="form-group">
    <label for="appInfo" class="col-sm-2 control-label">应用简介</label>
    <div class="col-sm-4 col-md-4">
     <textarea placeholder="请输入本软件的相关信息，本信息作为软件的详细信息" name="appinfo"  class="form-control" rows="5"></textarea>
    </div>
     <!--  <label class="control-label" >提示信息</label> -->
  </div>
  
 
  
  
  <div class="form-group" >
 <label  class="col-sm-2 control-label">LOGO图片</label>
    <div  class="col-sm-4 col-md-4" >
      
     
    <!--  <label class="col-sm-2 control-label"> 你还没有logo,请选择</label> -->
  <input type="file"  name="logolocpathPic"   required="required">
    
    </div>
     <!--  <label class="control-label" >提示信息</label> --> 
  </div>
  
  
  
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
  
      <button type="buttom" class="btn btn-success" onclick="saveApps()">保存</button>
      
      <a href="javascript:history.back(-1)" class="btn btn-primary ">返回</a>
    </div>
  </div>
</form>



</div>




<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/appMaintenance.js"></script>
</body>
</html>
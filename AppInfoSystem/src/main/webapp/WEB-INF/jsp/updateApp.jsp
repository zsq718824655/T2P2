<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--app维护主页面  -->
<%@include file="/WEB-INF/jsp/common/left.jsp"%>


<div  class="right_col" role="main" style="min-height: 1021.99px;">

<form id="editFormAPP" class="form-horizontal" action="${pageContext.request.contextPath }/editSaveApp" method="post" enctype="multipart/form-data">
  <input type="hidden" name="id" value="${appinfo.id }">
  <div class="form-group">
    <label for="appName" class="col-sm-2 control-label">软件名称</label>
    <div class="col-sm-4 col-md-4">
      <input type="text" name="softwarename" value="${appinfo.softwarename }" class="form-control" id="appName" required="required">
    </div>
      <label class="control-label" >提示信息</label>
  </div>
  <div class="form-group">
    <label  class="col-sm-2 control-label">APK名称</label>
    <div class="col-sm-4 col-md-4" >
      <input type="text" name="apkname" value="${appinfo.apkname }" class="form-control" readonly="readonly">
    </div>
    <label class="control-label">提示信息</label>
  </div>
  <div class="form-group">
    <label for="romlab" class="col-sm-2 control-label">支持ROM</label>
    <div class="col-sm-4 col-md-4">
      <input type="text" name="supportrom" value="${appinfo.supportrom }" class="form-control" id="romlab" required="required">
    </div>
      <label class="control-label" >提示信息</label>
  </div><div class="form-group">
    <label for="langLab" class="col-sm-2 control-label">界面语言</label>
    <div class="col-sm-4 col-md-4">
      <input type="text" name="interfacelanguage" value="${appinfo.interfacelanguage }" class="form-control" id="langLab" required="required">
    </div>
      <label class="control-label" >提示信息</label>
  </div><div class="form-group">
    <label for="appSize" class="col-sm-2 control-label">软件大小</label>
    <div class="col-sm-4 col-md-4">
      <input name="softwaresize" type="number" value="${appinfo.softwaresize }" class="form-control" id="appSize" required="required" >
    </div>
      <label class="control-label" >提示信息</label>
  </div><div class="form-group">
    <label for="downNum" class="col-sm-2 control-label">下载次数</label>
    <div class="col-sm-4 col-md-4">
      <input name="downloads" type="number" value="${appinfo.downloads }" class="form-control" id="downNum" >
    </div>
      <label class="control-label" >提示信息</label>
  </div><div class="form-group">
    <label  class="col-sm-2 control-label">所属平台</label>
    <div class="col-sm-4 col-md-4">
      <select name="flatformid" class="form-control">
      <c:forEach items="${allplat }" var="oneplat">
      <option  value="${oneplat.valueid }" <c:if test="${oneplat.valueid==appinfo.flatformid }">selected="selected"</c:if>  >${oneplat.valuename }</option>
      </c:forEach>
      </select>
    </div>
      <label class="control-label" >提示信息</label>
  </div><div class="form-group">
    <label  class="col-sm-2 control-label">一级分类</label>
    <div class="col-sm-4 col-md-4">
      <select name="categorylevel1" class="form-control">
       <c:forEach items="${oneAllCategroy }" var="oneType">
      <option  value="${oneType.id }" <c:if test="${oneType.id ==appinfo.categorylevel1 }">selected="selected"</c:if>  >${oneType.categoryname }</option>
      </c:forEach>
      </select>
    </div>
      <label class="control-label" >提示信息</label>
  </div><div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">二级分类</label>
    <div class="col-sm-4 col-md-4">
    <select name="categorylevel2" class="form-control">
       <c:forEach items="${twoAllCategroy }" var="twoType">
      <option  value="${twoType.id }" <c:if test="${twoType.id ==appinfo.categorylevel2 }">selected="selected"</c:if>  >${twoType.categoryname }</option>
      </c:forEach>
      </select>
    </div>
      <label class="control-label" >提示信息</label>
  </div>
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">三级级分类</label>
    <div  class="col-sm-4 col-md-4">
    <select name="categorylevel3" class="form-control">
      <c:forEach items="${threeAllCategroy }" var="threeType">
      <option  value="${threeType.id }" <c:if test="${threeType.id ==appinfo.categorylevel3 }">selected="selected"</c:if>  >${threeType.categoryname }</option>
      </c:forEach>
      </select>
    </div>
      <label class="control-label" >提示信息</label>
  </div>
  
  <div class="form-group">
    <label class="col-sm-2 control-label">APP状态</label>
    <div class="col-sm-4 col-md-4">
      <input  name="status" type="text" value="${statusName }" class="form-control appStatusEdit" readonly="readonly" >
    </div>
      <label class="control-label" >提示信息</label>
  </div>
  
  <div class="form-group">
    <label for="appInfo" class="col-sm-2 control-label">应用简介</label>
    <div class="col-sm-4 col-md-4">
     <textarea name="appinfo"  class="form-control" rows="5">${appinfo.appinfo }</textarea>
    </div>
      <label class="control-label" >提示信息</label>
  </div>
  
 
  
  
  <div class="form-group" >
 <label  class="col-sm-2 control-label">LOGO图片</label>
    <div  class="col-sm-4 col-md-4 picdivdel">
      
       <c:choose>
    <c:when test="${appinfo.logolocpath!=null and appinfo.logolocpath!='' }">
 <!-- <input name="logolocpathPic" type="file" /> -->
   <img height="80px" width="80px" style="vertical-align: middle;" class="control-label" alt="login的图片" src="/mypic/${appinfo.logolocpath}"/>&nbsp;&nbsp;&nbsp;<a style="cursor:pointer" style="vertical-align: middle;"  onclick="dletPic(${appinfo.id})">删除</a>
    </c:when>
    <c:otherwise>
    <!--  <label class="col-sm-2 control-label"> 你还没有logo,请选择</label> -->
  <input type="file"  name="logolocpathPic" class="form-control"  required="required">
    </c:otherwise>
    </c:choose>
    </div>
      <!-- <label class="control-label" >提示信息</label> -->
  </div>
  
  
  
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
   <c:if test="${appinfo.status==3}">
   
    <button type="buttom" class="btn btn-success" onclick="saveCommint()">保存并在此提交审核</button>
   </c:if>
      <button type="buttom" class="btn btn-success" onclick="EditSave()">保存</button>
      
      <a href="javascript:history.back(-1)" class="btn btn-primary ">返回</a>
    </div>
  </div>
</form>



</div>




<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/appMaintenance.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--app维护主页面  -->
<%@include file="/WEB-INF/jsp/common/left.jsp"%>


<div  class="right_col" role="main" style="min-height: 1021.99px;">

<form class="form-horizontal">
  <div class="form-group">
    <label for="appName" class="col-sm-2 control-label">软件名称</label>
    <div class="col-sm-4 col-md-4">
      <input type="text" class="form-control" id="appName" required="required">
    </div>
      <label class="control-label" >提示信息</label>
  </div>
  <div class="form-group">
    <label  class="col-sm-2 control-label">APK名称</label>
    <div class="col-sm-4 col-md-4" >
      <input type="text" class="form-control" readonly="readonly">
    </div>
    <label class="control-label">提示信息</label>
  </div>
  <div class="form-group">
    <label for="romlab" class="col-sm-2 control-label">支持ROM</label>
    <div class="col-sm-4 col-md-4">
      <input type="text" class="form-control" id="romlab" required="required">
    </div>
      <label class="control-label" >提示信息</label>
  </div><div class="form-group">
    <label for="langLab" class="col-sm-2 control-label">界面语言</label>
    <div class="col-sm-4 col-md-4">
      <input type="text" class="form-control" id="langLab" required="required">
    </div>
      <label class="control-label" >提示信息</label>
  </div><div class="form-group">
    <label for="appSize" class="col-sm-2 control-label">软件大小</label>
    <div class="col-sm-4 col-md-4">
      <input type="number" class="form-control" id="appSize" required="required" >
    </div>
      <label class="control-label" >提示信息</label>
  </div><div class="form-group">
    <label for="downNum" class="col-sm-2 control-label">下载次数</label>
    <div class="col-sm-4 col-md-4">
      <input type="number" class="form-control" id="downNum" >
    </div>
      <label class="control-label" >提示信息</label>
  </div><div class="form-group">
    <label  class="col-sm-2 control-label">所属平台</label>
    <div class="col-sm-4 col-md-4">
      <select class="form-control">
      <option>fffff</option>
      </select>
    </div>
      <label class="control-label" >提示信息</label>
  </div><div class="form-group">
    <label  class="col-sm-2 control-label">一级分类</label>
    <div class="col-sm-4 col-md-4">
      <select class="form-control">
      <option>fffff</option>
      </select>
    </div>
      <label class="control-label" >提示信息</label>
  </div><div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">二级分类</label>
    <div class="col-sm-4 col-md-4">
    <select class="form-control">
      <option>fffff</option>
      </select>
    </div>
      <label class="control-label" >提示信息</label>
  </div>
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">三级级分类</label>
    <div class="col-sm-4 col-md-4">
    <select class="form-control">
      <option>fffff</option>
      </select>
    </div>
      <label class="control-label" >提示信息</label>
  </div>
  
  <div class="form-group">
    <label class="col-sm-2 control-label">APP状态</label>
    <div class="col-sm-4 col-md-4">
      <input type="number" class="form-control" readonly="readonly" >
    </div>
      <label class="control-label" >提示信息</label>
  </div>
  
  <div class="form-group">
    <label for="appInfo" class="col-sm-2 control-label">应用简介</label>
    <div class="col-sm-4 col-md-4">
     <textarea  class="form-control" rows="5">eee</textarea>
    </div>
      <label class="control-label" >提示信息</label>
  </div>
  
   <div class="form-group">
    <label  class="col-sm-2 control-label">LOGO图片</label>
    <div class="col-sm-4 col-md-4" >
     <img alt="login的图片" src="">&nbsp;&nbsp;&nbsp;<a href="#">删除</a>
    </div>
    <label class="control-label">提示信息</label>
  </div>
  
  
  
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">保存</button>
      <button type="submit" class="btn btn-default">返回</button>
    </div>
  </div>
</form>



</div>




<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/appMaintenance.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/jsp/common/left.jsp"%>
    <div  class="right_col" role="main" style="min-height: 1021.99px;">
    <!---顶部下开始++++++++++++++++++++++->
        <!-- page content -->
      
          <!-- top tiles -->
        
            
           
        	<table class="table table-bordered">
 				
 				<tr class="row">
 				
 				<th class="col-md-2 ">软件名称</th>
 				<th class="col-md-2">版本号</th>
 				<th class="col-md-2">版本大小(单位M)</th>
 				<th class="col-md-2">发布状态</th>
 				<th class="col-md-2">apk文件下载</th>
 				<th class="col-md-2">更新最新时间 </th>
 				
 				</tr>
 			<%-- 	<c:forEach items="${list }" varStatus="varstu" var="appInfo"> --%>
 				<tr class="row">
 				<td class="col-md-2"></td>
 				<td class="col-md-2"></td>
 				<td class="col-md-2"></td>
 				<td class="col-md-2"> </td>
 				<td class="col-md-2"></td>
 				<td class="col-md-2"></td>
 				
 					
 				<tr/>
 				<%-- </c:forEach> --%>
 				
 				
 				 
			</table>
        	  
          
          <!-- /top tiles -->

          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="dashboard_graph">

		<form  id="saveAPPforms" class="form-horizontal " action="${pageContext.request.contextPath }/addAPPInfo" method="post" enctype="multipart/form-data">
		 <div class="form-group">
		    <label  class="col-sm-2 control-label">版本号</label>
		    <div class="col-sm-4 col-md-4" >
		      <input type="text" required="required" name="apkname"  class="form-control apkAscViladate" >
		    </div>
		    <label class="control-label apkNameLable"></label>
		   
		  </div>
		
		<div class="form-group">
		    <label  class="col-sm-2 control-label">版本大小</label>
		    <div class="col-sm-4 col-md-4" >
		      <input type="text" required="required" name="apkname"  class="form-control apkAscViladate" >
		    </div>
		    <label class="control-label apkNameLable"></label>
		   
		  </div>
	
			<div class="form-group">
		    <label  class="col-sm-2 control-label">发布状态</label>
		    <div class="col-sm-4 col-md-4" >
		      <input type="text" required="required" name="apkname"  class="form-control apkAscViladate" >
		    </div>
		    <label class="control-label apkNameLable"></label>
		   
		  </div>
		  <div class="form-group">
		    <label  class="col-sm-2 control-label">版本简介</label>
		    <div class="col-sm-4 col-md-4" >
		      <input type="text" required="required" name="apkname"  class="form-control apkAscViladate" >
		    </div>
		    <label class="control-label apkNameLable"></label>
		   
		  </div>
		
		<div class="form-group">
		    <label  class="col-sm-2 control-label">apk文件</label>
		    <div class="col-sm-4 col-md-4" >
		      <input type="file" required="required" name="apkname"  class="form-control apkAscViladate" >
		    </div>
		    <label class="control-label apkNameLable"></label>
		   
		  </div>
		
		</form>
               
              </div>
            </div>

          </div>
          <br />

                </div>
                <!-- end of weather widget -->
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>
    
    </div>
    </body>
</html>

    
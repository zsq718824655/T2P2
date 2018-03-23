<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--app维护主页面  -->
<%@include file="/WEB-INF/jsp/common/left.jsp"%>





<div class="right_col" role="main" style="min-height: 1021.99px;">
<!---顶部下开始++++++++++++++++++++++->
        <!-- page content -->
        <div class="right_col" role="main" style="margin-left: 5px">
          <!-- top tiles -->
          <div class="row tile_count" style="margin-left: 15px">
            <div class="row">
            <font SIZE="5PX">APP管理维护：</font>${userSession.devname }
            <hr/>
            </div>
            
            <form action="${pageContext.request.contextPath }/appMaintenanceView" method="post">
            <div class="row">
       `    <div class="col-md-3 form-group">
       			 <span class="col-md-3 text-center" style="line-height: 34px">软件名称：</span>
       			<div class="col-md-9">
       			
       			 <input name="softwareName" class="form-control" type="text" value="${queryBean.softwareName }"/>
       			 </div>
       		</div>
       		
       		<div class="col-md-3 form-group">
  			        <span class="col-md-3 text-center" style="line-height: 34px">app状态：</span>
       			<div class="col-md-9">
       			
       			 <select name="appStatus" class="form-control">
       			<c:if test="${allStatus != null }">
						   <option value="0">--请选择--</option>
						   <c:forEach var="allst" items="${allStatus}">
						   		<option <c:if test="${allst.valueid == queryBean.appStatus }">selected="selected"</c:if>
						   		value="${allst.valueid}">${allst.valuename}</option>
						   </c:forEach>
				</c:if>
       			</select>
       			
       			
       			
       			 </div>
       		</div>
       		
       		<div class="col-md-3 form-group">
        	     <span class="col-md-3 text-center" style="line-height: 34px">所属平台：</span>
       			<div class="col-md-9">
       			
       			 <select name="appFlatform" class="form-control">
       			<c:if test="${allplat != null }">
						   <option value="0">--请选择--</option>
						   <c:forEach var="allpl" items="${allplat}">
						   		<option <c:if test="${allpl.valueid == queryBean.appFlatform }">selected="selected"</c:if>
						   		value="${allpl.valueid}">${allpl.valuename}</option>
						   </c:forEach>
				</c:if>
       			</select>
       			 </div>
       		</div>
            </div>
            
            <div class="row">
                 <div class="col-md-3 form-group">
       			 <span class="col-md-3 text-center" style="line-height: 34px">一级分类：</span>
       			<div class="col-md-9">
       			
       			 <select  name="oneType" class="form-control oneType">
       			<c:if test="${oneAllCategroy != null }">
						   <option value="0">--请选择--</option>
						   <c:forEach var="oneALLcat" items="${oneAllCategroy}">
						   		<option <c:if test="${oneALLcat.id == queryBean.oneType }">selected="selected"</c:if>
						   		value="${oneALLcat.id}">${oneALLcat.categoryname}</option>
						   </c:forEach>
				</c:if>
       			</select>
       			 </div>
       		</div>
       		
       		<div class="col-md-3 form-group">
  			        <span class="col-md-3 text-center" style="line-height: 34px">二级分类：</span>
       			<div class="col-md-9">
       			
       			<select name="twoType" class="form-control twoType">
       			</select>
       			 </div>
       		</div>
       		
       		<div class="col-md-3 form-group">
        	     <span class="col-md-3 text-center" style="line-height: 34px">三级分类：</span>
       			<div class="col-md-9">
       			
       			 <select name="threeType" class="form-control threeType">
       			
       			</select>
       			 </div>
       		</div>
            </div>
            
              <div class="row">
              <div class="col-md-offset-4">
              <input type="submit" class="btn btn-primary" value="查询"/>
              </div>
              
           	 </div>
           	 
           	 <!-- 当前的页数 -->
           	 <input type="hidden" name="pageIndex" value="1"/>
           </form>
        	  
        	   
        	  
          </div>
          <!-- /top tiles -->

          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="dashboard_graph">
			
			<div class="row"> 
              <input type="button" class="btn btn-success btn-sm"  value="新增app基础信息"/>
            </div>
			
			<table class="table table-bordered">
 				
 				<tr class="row">
 				
 				<th class="col-md-1 ">软件名称</th>
 				<th class="col-md-2">apk名称</th>
 				<th class="col-md-1">软件大小(单位m)</th>
 				<th class="col-md-1">所属平台</th>
 				<th class="col-md-2">所属分类(一级，二级，三级)</th>
 				<th class="col-md-1">状态</th>
 				<th class="col-md-1">下载数量</th>
 				<th class="col-md-1">最新版本</th>
 				<th class="col-md-2">操作</th>
 				</tr>
 				<c:forEach items="${list }" varStatus="varstu" var="appInfo">
 				<tr class="row">
 				<td class="col-md-1">${appInfo.softwarename }</td>
 				<td class="col-md-2">${appInfo.apkname }</td>
 				<td class="col-md-1">${appInfo.softwaresize }</td>
 				<td class="col-md-1">${platNames[varstu.index] } </td>
 				<td class="col-md-2">${categoryNames[varstu.index]}</td>
 				<td class="col-md-1">${status[varstu.index]}</td>
 				<td class="col-md-1">${appInfo.downloads }</td>
 				<td class="col-md-1">11111</td>
 					<td class="col-md-2 text-center">
 				
 				<div class="btn-group">
					  <button type="button" class="btn  btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					    点击操作 <span class="caret"></span>
					  </button>
					  <ul class="dropdown-menu">
					  
					    <li><a href="#">新增版本</a></li>
					    <li><a href="#">修改版本</a></li>
					      <li><a href="#">修改</a></li>
					     <li><a href="#">查看</a></li>
					  
					  <li><a href="#">上架/下架</a></li>
					  <li><a href="#">删除</a></li>
					  </ul>
				</div>
 				
 				</td>
 				<tr/>
 				</c:forEach>
 				
 				
 				 
			</table>
            
            <div class="row">
           	<c:import url="rollpage.jsp">
	          	<c:param name="totalCount" value="${totalCount}"/>
	          	<c:param name="currentPageNo" value="${queryBean.pageIndex}"/>
	          	<c:param name="totalPageCount" value="${totalPageCount}"/>
          	</c:import>
            
             </div>
           
           
                <div class="clearfix"></div>
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


<<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/appMaintenance.js"></script>
</body>
</html>
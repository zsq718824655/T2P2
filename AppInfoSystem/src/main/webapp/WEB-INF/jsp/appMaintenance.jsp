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
            
            <form action="" method="post">
            <div class="row">
       `    <div class="col-md-3 form-group">
       			 <span class="col-md-3 text-center" style="line-height: 34px">软件名称：</span>
       			<div class="col-md-9">
       			
       			 <input class="form-control" type="text" />
       			 </div>
       		</div>
       		
       		<div class="col-md-3 form-group">
  			        <span class="col-md-3 text-center" style="line-height: 34px">app状态：</span>
       			<div class="col-md-9">
       			<select class="form-control">
       			<option>---请选择-----</option>
       			</select>
       			
       			 </div>
       		</div>
       		
       		<div class="col-md-3 form-group">
        	     <span class="col-md-3 text-center" style="line-height: 34px">所属平台：</span>
       			<div class="col-md-9">
       			
       			 <select class="form-control">
       			<option>---请选择-----</option>
       			</select>
       			 </div>
       		</div>
            </div>
            
            <div class="row">
                 <div class="col-md-3 form-group">
       			 <span class="col-md-3 text-center" style="line-height: 34px">一级分类：</span>
       			<div class="col-md-9">
       			
       			 <select class="form-control">
       			<option>---请选择-----</option>
       			</select>
       			 </div>
       		</div>
       		
       		<div class="col-md-3 form-group">
  			        <span class="col-md-3 text-center" style="line-height: 34px">二级分类：</span>
       			<div class="col-md-9">
       			
       			<select class="form-control">
       			</select>
       			 </div>
       		</div>
       		
       		<div class="col-md-3 form-group">
        	     <span class="col-md-3 text-center" style="line-height: 34px">三级分类：</span>
       			<div class="col-md-9">
       			
       			 <select class="form-control">
       			
       			</select>
       			 </div>
       		</div>
            </div>
            
              <div class="row">
              <div class="col-md-offset-4">
              <input type="submit" class="btn btn-primary" value="查询"/>
              </div>
              
           	 </div>
           	 
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
 				
 				<tr class="row">
 				<td class="col-md-1">11</td>
 				<td class="col-md-2">11</td>
 				<td class="col-md-1">11</td>
 				<td class="col-md-1">11</td>
 				<td class="col-md-2">11</td>
 				<td class="col-md-1">11</td>
 				<td class="col-md-1">11</td>
 				<td class="col-md-1">11</td>
 				<td class="col-md-2">11</td>
 				</tr>
 				
 				 
			</table>
             <div class="row">
             <span class="text-left"> ff1/2cvvv页</span>
             
             </div>
            <div class="row">
             <span class="col-md-offset-11 text-right"> 1/2页</span>
            
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



</body>
</html>
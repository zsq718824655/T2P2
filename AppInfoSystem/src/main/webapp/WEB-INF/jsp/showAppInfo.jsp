<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
    <title>APP后台管理系统</title>
     
    <link href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${pageContext.request.contextPath }/statics/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${pageContext.request.contextPath }/statics/css/nprogress.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="${pageContext.request.contextPath }/statics/css/custom.min.css" rel="stylesheet">
    
    

</head>
<body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>APP BMS</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile">
              <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>test001</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
             <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>  测试账户001 </h3>
                <ul class="nav side-menu">
                	
                  <li><a><i class="fa fa-home"></i> APP帐户管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath }/error">暂无功能</a></li>
                      <li><a href="${pageContext.request.contextPath }/error">暂无功能</a></li>
                      <li><a href="${pageContext.request.contextPath }/error">暂无功能</a></li>
                    </ul>
                  </li>
                  
                  <!--  -->
                  <li><a><i class="fa fa-edit"></i>APP应用管理<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath }/dev/maintenance">APP维护</a></li>
                     
                    </ul>
                  </li>
                  
                </ul>
              </div>
           

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
          <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
             <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a> 
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
            <!--   <a data-toggle="tooltip" data-placement="top" title="Logout">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a> -->
            </div>
            /menu footer buttons
          </div>
        </div>

        <!-- top navigation -->
      <!--  <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="images/img.jpg" alt="">John Doe
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                   
                    <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>

                <li role="presentation" class="dropdown">
                 
                </li>
              </ul>
            </nav>
          </div>
        </div> -->
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>查看APP信息，测试用户test001<small></small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#"></a>
                          </li>
                          <li><a href="#"></a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

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
                          <textarea id="desc" required="required" name="desc" class="form-control col-md-7 col-xs-12">${showAppInfo.appinfo}</textarea>
                        </div>
                      </div>
                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="logo">Logo图片<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="file" id="logo" name="logo" data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
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
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
           welcome Thundersoft <a href="https://www.baidu.com">support</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

   <!-- jQuery -->
    <script src="${pageContext.request.contextPath }/statics/js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="${pageContext.request.contextPath }/statics/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="${pageContext.request.contextPath }/statics/js/fastclick.js"></script>
    <!-- NProgress -->
    <script src="${pageContext.request.contextPath }/statics/js/nprogress.js"></script>
    <!-- validator -->
    <script src="${pageContext.request.contextPath }/statics/js/validator.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="${pageContext.request.contextPath }/statics/js/custom.min.js"></script>

    <!-- validator -->
    <script>
      // initialize the validator function
  <!--     validator.message.date = 'not a real date';

      // validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
      $('form')
        .on('blur', 'input[required], input.optional, select.required', validator.checkField)
        .on('change', 'select.required', validator.checkField)
        .on('keypress', 'input[required][pattern]', validator.keypress);

      $('.multi.required').on('keyup blur', 'input', function() {
        validator.checkField.apply($(this).siblings().last()[0]);
      });

      $('form').submit(function(e) {
        e.preventDefault();
        var submit = true;

        // evaluate the form using generic validaing
        if (!validator.checkAll($(this))) {
          submit = false;
        }

        if (submit)
          this.submit();

        return false;
      });
      
    </script>
     /validator
 -->  </body>
</html>
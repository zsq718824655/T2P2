<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String path = request.getContextPath(); String basePath = request.getScheme()
+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%> 
      
<html>
<!DOCTYPE html>
<html lang="en">
<base href=" <%=basePath%>">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>login in | </title>
<link href="statics/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${pageContext.request.contextPath }/statics/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${pageContext.request.contextPath }/statics/css/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="${pageContext.request.contextPath }/statics/css/flat/green.css" rel="stylesheet">
    <!-- bootstrap-progressbar -->
    <link href="${pageContext.request.contextPath }/statics/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="${pageContext.request.contextPath }/statics/css/jqvmap.min.css" rel="stylesheet"/>

    <!-- Custom Theme Style -->
    <link href="${pageContext.request.contextPath }/statics/css/custom.min.css" rel="stylesheet">

    <script type="text/javascript" src="statics/jquery/jquery-1.12.4.js"></script>
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form id="backform" action="backloginGo" method="post">
              <h1>管理员登录</h1>
              <div>
              <span id="unusercode"></span>
                <input type="text" id="userCode" class="form-control" name="usercode"   placeholder="Username" required="" /><span></span> 
				             
              </div>
              <div>
              <span id="unuserpassword"></span>
                <input type="password" id="userpassword"class="form-control" name="userpassword" placeholder="Password" required="" /><span></span> 
              </div>
              <div>
              		 <span id="error1"></span><br>
                <input type="submit" id="submit" value="登录">
               <input type="reset"/><br><br>
              
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">新网站?
                  <a href="#signup" class="to_register"> 创建新账户</a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> 开发者用户!</h1>
                </div>
              </div>
            </form>
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">
            <form>
              <h1>新建用户</h1>
              <div>
                <input type="text" class="form-control" placeholder="Username" required="" />
              </div>
              <div>
                <input type="email" class="form-control" placeholder="Email" required="" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" required="" />
              </div>
              <div>
                <a class="btn btn-default submit" href="${pageContext.request.contextPath }/appMaintenanceView">提交</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">已注册 ?
                  <a href="#signin" class="to_register"> 注册</a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> 开发者用户!</h1>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
  <script type="text/javascript">
  var flag = true;
	$("#submit").click(function(){
		
		//alert("+++++++++");
			//$("#devForm").submit();
			$("#backform").submit(function(){
				if(flag){
					return true;
				}else{
					$("#error1").text("您输入的账号或密码错误").css("color","red");
					return false;
				}
			}); 
		
	});
  		
  		$("#userCode").blur(function(){
  			
  			$(this).next().html("");
  			if($(this).val().length <=5 ){
  			$("#unusercode").html("请输入正确登录账号").css("color","gray");
  			flag=false;
  			}else{
  				flag=true;
  			}
  		
  			
  		});
  		
  		$("#userpassword").blur(function(){
  			$(this).next().html("");
  	  		if($(this).val().length!=6){
  	  	//alert("aaaa");
  	  			$("#unuserpassword").html("请输入正确的密码").css("color","gray");
  	  		flag=false;
  			}else{
  				flag=true;
  			}
  	  		
  	  	});
  		
  </script>
</html>
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

    <title>Login in </title>
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
            <form action="Login" method="post">
              <h1>登 录!</h1>
              <div>
            <%-- <form  method="post" action="${pageContext.request.contextPath }/loginGo">
					<input type="button" value ="普 通 用 户 登 录"> --%>
 		<a href="${pageContext.request.contextPath }/FirstLogin">开发者登录</a><br><br>
              </div>
              <span></span>
              <div>
              	<a href="${pageContext.request.contextPath }/backlogin">管理员登录</a><br><br>
              </div>
    
           
          </section>
        </div>
      </div>
    </div>
  </body>
  
</html>
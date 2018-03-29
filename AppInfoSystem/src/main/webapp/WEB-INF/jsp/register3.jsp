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
    <script type="text/javascript">
    
    
    function m1() {

        $(document).ready(function() {

            var email = $("#email").val();

            if (email == null || email == "") {
                $("#nameDiv1").html("邮箱不能为空");

            } else if (email.indexOf("@") == -1) {
                $("#nameDiv1").html("邮箱格式不正确,必须包含@");

            } else if (email.indexOf(".") == -1) {
                $("#nameDiv1").html("邮箱格式不正确,必须包含.");
            } else {
                $("#nameDiv1").html('<font color="grey">邮箱格式正确</font>');

            }

        });

    }
    
    function m2(){
        $(document).ready(function(){
          
            var userPassword=$("#userPassword2").val();
            if(userPassword==null||userPassword==""){
                $("#nameDiv2").html("密码不能为空");
            }else if(userPassword.length<6){
                $("#nameDiv2").html("密码长度不能小于六位");
            }else if(userPassword.length>18){
                $("#nameDiv2").html("密码长度已经超过18位，</br>不符合给定要求");
            }else{
            	  $("#nameDiv2").html('<font color="grey">密码格式正确</font>');
                
            }
            
            
            
        });
    }
    function m3(){
        var userCode=$("#userCodeinput").val();
        $.ajax({
        
           url:"user/queryByUser",
           type:"post",
           data:{"userCodeinput":userCode},
           dataType:"json",
          success:function(data){
               if (data!=true ) {
                $("#nameDiv3").text("用户名已存在");
                $("#userCodeinput").val('');
            }else if(data==true && userCode!=''){
                $("#nameDiv3").html('<font color="grey">用户名可用</font>');
            }
          }
        });
    }

    
    
    
    
    </script>
    
    
    
  </head>
<body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form" >
          <section class="login_content">
          
         
          
          
          
            <form action="${pageContext.request.contextPath }/user/todevRegistView" method="post">
              <h1>${idtf }注册</h1>
              <div >
               	<b style="display:inline-block;width:72px; ">用户编码：</b>
               	<input type="text"  placeholder="用户编码" required name="userCode" id="userCodeinput" onblur="m3()" style="width:200px;height:30px;margin-bottom: 0;"/>   
               <!-- 	<div class="info"></div>    	 -->
               </br><span id="nameDiv3" style="color: red; font-size: 13px; margin-bottom: 20px "></span>
               		
               
              </div>
             <br>
              <div>
              <b style="display:inline-block;width:72px;">用户名：</b>
               <input type="text" placeholder="用户名" required name="userName" id="userName" style="width:200px;height:30px; margin-bottom: 0;"/>
				<div class="info"></div> 
              </div>
              <br>
              <div>
              <b style="display:inline-block;width:72px;">密码：</b>
                <input type="password" placeholder="密码" required name="userPassword" id="userPassword2" onblur="m2()" style="width:200px;height:30px;margin-bottom: 0;"/>
              	<!-- <div class="info"></div> -->
              	</br><span id="nameDiv2" style="color: red; font-size: 13px; "></span>
              </div>
              <br>
            <!--   <div>
              	<b style="display:inline-block;width:72px;">确认密码：</b>
                <input type="password" placeholder="确认密码" required name="confirmUserPassword" id="confirmUserPassword" style="width:200px;margin-bottom: 0;"/>
              	<div class="info"></div>
              </div> -->
              
              <div>
              <b style="display:inline-block;width:72px;">邮箱地址：</b>
                <input type="email"  placeholder="邮箱" required name="email" id="email" onblur="m1()"style="width:200px;height:30px;margin-bottom: 0;"/>
              	<!-- <div class="info"></div> -->
              	</br><span id="nameDiv1" style="color: red; font-size: 13px;"></span>
              </div>
              <br>
              <div>
              <b style="display:inline-block;width:72px;">用户信息：</b>
                <input type="text" placeholder="备注信息" required name="info" id="info" style="width:200px;height:30px;margin-bottom: 0;"/>
              <div class="info"></div>
              </div>
              <br>
              <div>
              
                <input type="submit" class="btn btn-default submit" value="提交" style="margin-left:150px;"/>
                
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> App信息管理平台!</h1>
                  <p>©2018 All Rights Reserved. AppManager is a system to manage applications.</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
    
</html>

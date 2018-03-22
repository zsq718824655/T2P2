<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>



<form action="${pageContext.request.contextPath }/loginGo" method="post">
用户名:<input type="text" name="devcode"/>     
密码：<input type="password" name="devpassword"/>



<input type="submit"  value="登陆"/>

<label>
<c:if test="${loginErro!='' }">
${loginErro }
</c:if>
</label>

</form>



</body>
</html>
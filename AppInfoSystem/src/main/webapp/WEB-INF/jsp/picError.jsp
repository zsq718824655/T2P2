<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--app维护主页面  -->
<%@include file="/WEB-INF/jsp/common/left.jsp"%>





<div class="right_col" role="main" style="min-height: 1021.99px;">
~~~~~~${uploadFileError }<br/>
 <a href="javascript:history.back(-1)" class="btn btn-primary ">返回</a>
 </div>


<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/appMaintenance.js"></script>
</body>
</html>
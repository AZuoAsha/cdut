<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
      <%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" 
    + request.getServerName() + ":"
    + request.getServerPort()+path+"/";
%>
    <base href="<%=basePath%>">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录成功</title>
<script src="js/jquery-1.11.3.min.js"></script>

</head>
<body>
<div  align="center"><span style="align-items: center;color:green;font-size:24px">恭喜你登录成功</span><p style="font-size: 26px;color:red">o(∩_∩)o </p>
<button onclick="backIndex()">返回首页</button></div>
<script type="text/javascript">
$(document).ready(function () {
	backIndex=function(){
		//alert("执行了");
		window.location.href="${pageContext.request.contextPath}/index.jsp";
	}
});
</script>
</body>
</html>
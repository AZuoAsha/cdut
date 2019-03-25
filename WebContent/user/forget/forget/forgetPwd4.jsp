<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
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
<meta charset="UTF-8">
<title>忘记密码</title>
<link rel="shortcut icon" href="images/favicon.ico" />
  <link type="text/css" href="user/forget/forget/css/css.css" rel="stylesheet"/>
    <script type="text/javascript" src="user/forget/forget/js/jquery-1.8.3-min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
	backLogin=function(){
		//alert("执行了");
		window.location.href="${pageContext.request.contextPath}/user.jsp";
	}
});
</script>
</head>

<body>

  <div class="content">
     <div class="for-liucheng">
      <div class="liulist for-cur"></div>
      <div class="liulist for-cur"></div>
      <div class="liulist for-cur"></div>
      <div class="liulist for-cur"></div>
      <div class="liutextbox">
       <div class="liutext for-cur"><em>1</em><br /><strong>填写账户名</strong></div>
       <div class="liutext for-cur"><em>2</em><br /><strong>验证身份</strong></div>
       <div class="liutext for-cur"><em>3</em><br /><strong>设置新密码</strong></div>
       <div class="liutext for-cur"><em>4</em><br /><strong>完成</strong></div>
      </div>
     </div><!--for-liucheng/-->
      <div class="successs">
       <h3>恭喜您，修改成功！</h3>
          <button onclick="backLogin()">现在去登录</button>
          
      </div>
   </div><!--web-width/-->
  </div><!--content/-->
 
</body>
</html>

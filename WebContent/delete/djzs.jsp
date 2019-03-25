<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" 
    + request.getServerName() + ":"
    + request.getServerPort()+path+"/";
%>
<base  href="<%=basePath%>">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/ajaxdelete.js"></script>
<title>Insert title here</title>
</head>
<body>
<div>
<section>
      <div id="content">
      
        <ul>
          <div class="zs_pic left"></div>
          <div class="zs_news right"  id="newsCenter7">
            <ol style="margin-top:2px;overflow:auto;height:auto">
            </ol>
          </div>
        </ul>
      </div>
    </section>
  </div>
</body>
</html>
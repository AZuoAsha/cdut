<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除通知</title>
<style type="text/css">
.span1{
color:#6C6C6C;
font-size:20px;
}
.input{
border-radius:6px;
font-size:30px;
margin-top:5px;
}
.span2{
font-size: 10px;
color:red;
}
.input2{
border-radius:6px;
height:40px;
border-color:#BB5E00;
width:200px;

}

</style>
</head>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" 
    + request.getServerName() + ":"
    + request.getServerPort()+path+"/";
%>
<base  href="<%=basePath%>">
<body>
<div class="nav" align="center">
<form action="notice/deleteNotice.do" method="post">
<span class="span1">输入所删除的通知标题</span><span class="span2">(提示:可以在主页新闻区查看新闻标题)</span><br><input placeholder="请正确填写" class="input2" name="deleteNoticeTittle" type="text" required><br>
<input class="input" type="submit" nsme="删除" value="点击删除">
</form>
</div>
</body>
</html>
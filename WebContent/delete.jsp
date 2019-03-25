<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="cdut.com.cn.controller.*" %>
<%@ page import="cdut.com.cn.dao.*" %>
<%@ page import="cdut.com.cn.dao.impl.*" %>
<%@ page import="cdut.com.cn.entity.*" %>
<%@ page import="cdut.com.cn.service.*" %>
<%@ page import="cdut.com.cn.service.impl.*" %>
<%@ page import="cdut.com.cn.mappers.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除新闻</title>
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
li{
padding-bottom: 20px;
}
</style>
</head>
<body>
<div class="nav" align="center">
<ul style="list-style-type:none;">
<a href="delete/djzs.jsp"><li>删除党建知识</li></a>
<a href="delete/dygs.jsp"><li>删除党员故事</li></a>
<a href="delete/zbsh.jsp"><li>删除支部生活</li></a>
<a href="delete/sbgs.jsp"><li>删除身边故事</li></a>
<a href="delete/djll.jsp"><li>删除党建理论</li></a>
<a href="delete/jcdj.jsp"><li>删除基层党建</li></a>
<a href="delete/dfxw.jsp"><li>删除地方新闻</li></a>
<a href="delete/tzgg.jsp"><li>删除通知公告</li></a>
<a href="delete/wj.jsp"><li>删除文件</li></a>
</ul>
<!-- <form action="receive/delete.do" method="post">
<span class="span1">输入所删除的新闻标题</span><span class="span2">(提示:可以在主页新闻区查看新闻标题)</span><br><input  placeholder="请正确填写" class="input2" name="deleteNews" type="text" required><br>
<span class="span1">选择类型:</span>
<input type="radio" name="newsType" value="1" checked>党建知识
<input type="radio" name="newsType" value="2">党员故事
<input type="radio" name="newsType" value="3">支部生活
<input type="radio" name="newsType" value="4">身边故事
<input type="radio" name="newsType" value="5">党建理论
<input type="radio" name="newsType" value="6">基层党建
<input type="radio" name="newsType" value="7">公司新闻
<input type="radio" name="newsType" value="8">地方新闻
<input type="radio" name="newsType" value="9">通知公告
<input type="radio" name="newsType" value="10">图片内容<br>
<input class="input" type="submit" name="删除" value="点击删除">
</form> -->
</div>
</body>
</html>
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
<title>发布通知</title>
<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="ueditor/ueditor.all.min.js"></script>
<script type="text/javascript" src="ueditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript" src="ueditor/third-party/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="ueditor/third-party/SyntaxHighlighter/shCore.js"></script>
<style type="text/css" rel="stylesheet" href="ueditor/third-party/SyntaxHighlighter/shCoreDefault.css"></style>
<style type="text/css" rel="stylesheet" href="ueditor/themes/default/css/ueditor.min.css"></style>
<style type="text/css">
	#div_1{
		border:thin none #069;
		padding:1px;
		float:none;
		width:500px;
		height:300px;
		background:#9C6;
		
	}
	.manger{
	margin-top:20px;
	font-size:32px;
	color:#5B5B5B;
	}
	.nav{
	height:100px;
	width:1000px;
	border:1px solid #930093;
	margin-top:50px;
	position:relative;
	margin-left:16%;
	border-radius:8px;
	}
	.nav ul li{
	list-style-type:none;
	float:left;
	padding:4%;
	padding-top:10px;
	font-size:20px;
	}
.nav ul li a:link {color: #6C6C6C}  
 .nav ul li a:visited {color:#6C6C6C } 
.nav ul li a:hover {color: #d90a81;text-decoration: underline }  
/* .nav ul li a:active {color: #d90a81}  */
.submit{
border-radius:6px;
font-size:40px;
margin-left:41%;
margin-top:60px;
margin-bottom:-9px;
}
.span1{
color: 	#5B4B00;
font-size:20px;
}

.input{
border-radius:6px;
height:25px;
border-color:#BB5E00;
width:200px;
}
.img{
height:70px;
width:18%;
border-radius:8px;
border:2px solid #7B7B7B;
}
.index{
margin-top:60px;
}
</style>
</head>
<body>

<form action="notice/release.do" method="post">
<textarea id="container" name="noticeContext" wrap="hard" required>
	
</textarea>
<div align="center">
<span class="span1">通知标题</span><span style="color: red;font-size:12px;">(*)</span>:<input class="input" placeholder="必填" type="text" name="noticeTittle" required>
</div>
<input type="submit" value="点击发布通知" name="ceshi" onClick="test();" class="submit"/>
</form>
<hr>

<div class="nav">
<ul>
<li><a href="delete.jsp">删除一篇新闻</a></li>
<li><a href="releaseNews.jsp">发布新闻</a></li>
<li><a href="indexPictureShow/releasePicture.jsp">发布图片</a></li>
<li><a href="indexPictureShow/deletePicture.jsp">删除图片</a></li>
<li><a href="notice/deleteNotice.jsp">删除已有通知</a></li>
</ul>
</div>
 <div align="center" class="manger"><span>以上全由管理员操作</span></div>
 
 <div align="center" class="index">
<a href="index.jsp"><img src="delete/backIndex.jpg" class="img"></a>
</div>
<script type="text/javascript">
	var editor=new baidu.editor.ui.Editor();
	editor.render("container");
	var ue=UE.getEditor('container'/* ,
		{toolbars: [[
	        'fullscreen', 'source', '|', 
	        'undo', 'redo', '|',
	        'bold', 'italic', 'underline', 'strikethrough', 'removeformat', '|', 
	        'forecolor', 'backcolor', '|', 
	        'insertorderedlist', 'insertunorderedlist', 'cleardoc', '|',
	        'paragraph', 'fontfamily', 'fontsize', '|',
	        'indent', '|',
	        'justifyleft', 'justifycenter', 'justifyright', 'justifyjustify', '|', 
	        'link', '|', 
	        'simpleupload', 'emotion', 'insertvideo', '|',
	        'inserttable', 'deletetable', 'insertparagraphbeforetable', 'insertrow', 'deleterow', 'insertcol', 'deletecol', 'mergecells', 'mergeright', 'mergedown', 'splittocells', 'splittorows', 'splittocols', 'charts'
	    ]]} */);
	function test(){
	var html=ue.getContent();
	var txt=ue.getContentTxt();
	
	//alert(html);
	//alert(txt);
		} 
</script>


</body>
</html>
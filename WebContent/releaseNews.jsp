<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻发布</title>
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
	margin-top:50px;
	font-size:32px;
	color:#5B5B5B;
	}
	.nav{
	padding:10px;
	height:30px;
	width:200px;
	border:1px solid #930093;
	margin-top:50px;
	position:relative;
	margin-left:42.5%;
	border-radius:8px;
	}
	
 .nav a:link {color: #6C6C6C}  
.nav a:visited {color:#6C6C6C } 
 .nav a:hover {color: #d90a81;text-decoration: underline }  
/* .nav ul li a:active {color: #d90a81} */ 
.submit{
border-radius:6px;
font-size:40px;
margin-left:44%;
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

<form action="receive/News.do" method="post">
<textarea id="container" name="context" wrap="hard" required>
	
</textarea>
<div align="center">
<span class="span1">新闻标题</span><span style="color: red;font-size:12px;">(*)</span>:<input class="input" type="text" placeholder="要求与正文标题一致" name="newsTittle" required>
<span class="span1">选择类型:</span>
<input type="radio" name="newsType" value="1" checked>党建知识
<input type="radio" name="newsType" value="2">党员故事
<input type="radio" name="newsType" value="3">支部生活
<input type="radio" name="newsType" value="4">身边故事
<input type="radio" name="newsType" value="5">党建理论
<input type="radio" name="newsType" value="6">基层党建
<!-- <input type="radio" name="newsType" value="7">公司新闻 -->
<input type="radio" name="newsType" value="8">地方新闻
<input type="radio" name="newsType" value="9">通知公告
</div>
<input type="submit" value="点击发布" name="ceshi" onClick="test();" class="submit"/>
</form>
<hr>
<div class="nav" align="center"><a href="filemannger/upload.jsp" style="float: left">上传文件</a><a href="delete.jsp" style="float:right">删除操作</a></div>
 <div align="center" class="manger"><span>以上全由管理员操作</span></div>
 
 <div align="center" class="index">
 
<a href="index.jsp"><img src="delete/backIndex.jpg" class="img"></a>
</div>
<script type="text/javascript">
	var editor=new baidu.editor.ui.Editor();
	editor.render("container");
	var ue=UE.getEditor('container');
	function test(){
	var html=ue.getContent();
	var txt=ue.getContentTxt();
	
	//alert(html);
	//alert(txt);
		} 
</script>


</body>
</html>
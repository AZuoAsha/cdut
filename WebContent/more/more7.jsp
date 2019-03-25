<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cdut.com.cn.controller.*" %>
<%@ page import="cdut.com.cn.dao.*" %>
<%@ page import="cdut.com.cn.dao.impl.*" %>
<%@ page import="cdut.com.cn.entity.*" %>
<%@ page import="cdut.com.cn.service.*" %>
<%@ page import="cdut.com.cn.service.impl.*" %>
<%@ page import="cdut.com.cn.mappers.*" %>
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
<meta charset="UTF-8">
<title>党建知识</title>
<meta name="Keywords" content="" >
<meta name="Description" content="" >
<link href="css/index.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="fenye/css/style.css" media="screen"/>
        <style>
         
            .content{
                margin-top:10px;
                padding:0px;
                bottom:0px;
            }
            .about{
                width:101%;
                background:transparent url(about.png) repeat-x top left;
                border-top:2px solid #ccc;
            }
            .about .text{
                width:16%;
                margin:5px 2% 10px 2%;
                float:left;
                color:#FCFEF3;
                font-size: 16px;
                text-align:justify;
                letter-spacing:0px;
            }
            
            .demo{
                width:990px;
                height:auto;
                padding:10px;
                margin-top:-60px;
                border: 1px solid #fff;
                background-color:#f7f7f7;
            }
           .pagedemo{
				border: 1px solid #CCC;
				width:976px;
				margin-left:0px;
                padding:10px 10px;
                height:auto;
                /* text-align:center; */
				background-color:white;	
				overflow:auto;
			}
 .dot{
     width: 899px;
    bottom: 0;
    height: 30px;
    position: absolute;
    text-align: center;
    z-index: 10;
   padding-left:100px;
 }
 .dot span{
    display: inline-block;
     width: 12px;
   height: 12px;
   border-radius: 50px;
    background: #fff;
    margin: 0 15px 0 0 ;
     cursor: pointer;
 }
 .dot .active{
   background: #f00 !important;
 }
 .left2{
    left: 0;
}
 .right2{
     right: 0;
}
 .left2:hover,.right2:hover{
    opacity:1;
 }
 .left2,.right2{
    position: absolute;
     top: 200px;
     z-index: 10;
    width: 30px;
     height: 30px;
   border: none;
    background: #000;
     color: #fff;
    text-align: center;
     opacity: 0.1;
    cursor: pointer;
 }
        </style>
<script src="js/jquery-1.11.3.min.js"></script>

<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
<!--[if IE 6]>
 <script  src="js/png.js"></script>
 <script type="text/javascript">
    EvPNG.fix('.logo');
 </script>
<![endif]-->
<link rel="stylesheet" href="fenye/fenye/src/jquery.page.css">
<script type="text/javascript">
$(function(){
                           var items = $('#carousel').children();
                          var len = items.length;
                           var index = 0;
                          var str = 0;
                          var dots =  $('.dot').children();
                          /*var dotsChild = $('.dot span');*/
                         
                          //自动播放函数autoPlay()
                         
                           function autoPlay(){
                        	   
                              $(items[index]).fadeIn(10);
                               function play(){
                            	  // alert("加载就执行");
                                    $(dots).removeClass("active");
                                   if(index >=0 & index < len-1){
                                     $(items[index]).fadeOut(10);
                                       index++;
                                      $(items[index]).fadeIn(10);
                                       $(dots[index]).addClass("active");
                                  }else{
                                       $(items[index]).fadeOut(10);
                                     index=0;
                                     $(items[index]).fadeIn(10);
                                      $(dots[index]).addClass("active");
                                 };
                                 str = index;
                              }
                              
                             setInterval(play,4000);
                              
                          }
                         autoPlay(); 	
                         
                          //点击左侧按钮的函数
                           $(".left2").click(function(){
                             $(dots).removeClass("active");
                             if(str == 0){
                                 $(items[str]).fadeOut(10);
                                str = len-1;
                                $(items[str]).fadeIn(10);
           $(dots[str]).addClass("active");
                                index = str;
                                  
                             }else{
                                   $(items[str]).fadeOut(10);
                                  str --;
                                $(items[str]).fadeIn(10);
                                $(dots[str]).addClass("active");
                               index = str;
                            }
                          });
                         //点击右侧按钮的函数
                         $(".right2").click(function(){
                            $(dots).removeClass("active");
                          if(str == len-1){
                               $(items[str]).fadeOut(10);
                               str = 0;
                                $(items[str]).fadeIn(10);
                               $(dots[str]).addClass("active");
                                index = str;
                           }else{
                                 $(items[str]).fadeOut(10);
                                  str ++;
                                $(items[str]).fadeIn(10);
                                 $(dots[str]).addClass("active");
                                index = str;
                             }
                        })
                         //小圆点
                         $(".dot span").click(function(){
                            var num = $(this).index();
                            $(dots).removeClass("active");
                            $(dots[num]).addClass("active");
                              $(items).fadeOut(10);
                          $(items[num]).fadeIn(10);
                             index = num;
                         })
                  });

</script>
</head>
<body>
<header>
  <div class="headtop">
    <div class="timer box"><span></span><script type="text/javascript" src="js/timer.js"></script></div>
  </div>
<a href="http://www.cdut.edu.cn/default.html"><div class="logo box"></div></a> 
  <nav id="nav" class="box">
    <ul>
    	<li><a href="index.jsp">网站首页</a></li>
        <li><a href="more/more1.jsp" target="_blank">党建理论</a></li>
        <li><a href="more/more2.jsp" target="_blank">基层党建</a></li>
        <li><a href="more/more3.jsp" target="_blank">党员故事</a></li>
        <li><a href="more/more4.jsp" target="_blank">支部生活</a></li>
        <li><a href="more/more5.jsp" target="_blank">身边故事</a></li>
        <li><a href="more/more6.jsp" target="_blank">地方新闻</a></li>
        <li><a href="more/more7.jsp" target="_blank">党建知识</a></li>
        <li><a href="list.jsp" target="_blank">下载专区</a></li>
    </ul>
  </nav>
 <div class="banner box" id="flash" style="margin-top:0px;position:relative;height:480px;width:1001px;">
<button class="left2"><<</button>
<ul id="carousel">
<li><a href="receive/findOneTo.do?newsType=10&newsTittle=习近平与德国总理默克尔举行会晤" target="_blank"><img src="images/1122883897_15271726918271n.jpg" style="width:1000px;height:480px;border:1px solid #DDFF77;"></a></li>
	<li><a href="receive/findOneTo.do?newsType=10&newsTittle=中国处于半岛外交的中心 " target="_blank"><img src="images/banner.jpg" style="width:1000px;height:480px;border:1px solid #DDFF77;"></a></li>
	<li><a href="receive/findOneTo.do?newsType=10&newsTittle=栗战书会见美国联邦参议员戴恩斯一行" target="_blank"><img src="images/banner2.jpg" style="width:1000px;height:480px;border:1px solid #DDFF77;"></a></li>
	<!-- <li><img src="images/banner3.jpg" style="width:1000px;height:300px;border:1px solid #DDFF77;"></li> -->
	 <li><a href="receive/findOneTo.do?newsType=10&newsTittle=李克强主持召开国务院常务会议" target="_blank"><img src="images/banner4.jpg" style="width:1000px;height:480px;border:1px solid #DDFF77;"></a></li>
	<li><a href="receive/findOneTo.do?newsType=10&newsTittle=广州：双胞胎大熊猫断母乳 迈出独立生活第一步" target="_blank"><img src="images/banner5.jpg" style="width:1000px;height:480px;border:1px solid #DDFF77;"></a></li>
	<li><a href="receive/findOneTo.do?newsType=10&newsTittle=【新时代 新气象 新作为】浙江苍南的振兴之路" target="_blank"><img src="images/banner6.jpg" style="width:1000px;height:480px;border:1px solid #DDFF77;"></a></li>
	<li><a href="receive/findOneTo.do?newsType=10&newsTittle=习近平：在第十三届全国人民代表大会第一次会议上的讲话" target="_blank"><img src="images/banner7.jpg" style="width:1000px;height:480px;border:1px solid #DDFF77;"></a></li>
	<li><a href="receive/findOneTo.do?newsType=10&newsTittle=环球时报：传承友谊是中朝共同受益的大战略" target="_blank"><img src="images/banner8.jpg" style="width:1000px;height:480px;border:1px solid #DDFF77;"></a></li>
<li><a href="receive/findOneTo.do?newsType=10&newsTittle=诺奖得主中村修二教授讲述蓝光LED的“今生与未来”" target="_blank"><img src="images/20180505131125_488.png" style="width:1000px;height:480px;border:1px solid #DDFF77;"></a></li>

<li><a href="receive/findOneTo.do?newsType=10&newsTittle=重走地震之路" target="_blank"><img src="images/20180521161915_857.png" style="width:1000px;height:480px;border:1px solid #DDFF77;"></a></li>
</ul>
<div class="dot"><span class="active"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></div>
<button class="right2">>></button>
</div>
 
</header>
<script type="text/javascript">
$(document).ready(function(){
	  $.ajax({
	        type: "get",
	        url: "receive/jsonAjax.do?newsType=1",
//	      data: "para="+para,  此处data可以为 a=1&b=2类型的字符串 或 json数据。
	       // data: {"para":1},
	        //cache: false,
	        //async : false,
	        dataType: "json",
	        success: function (data ,textStatus, jqXHR)
	        {
	        	var oj = JSON.parse(data);
		     		var html="";
		      		for(var i=0;i<oj.length;i++){
			      	html=i+1+".  "+oj[i].newsTittle;
			      	var html2=oj[i].releaseTime;
			    	var txt1=$(".content .demo #div1");
			      	var txt2=$("<a style='color:#613030;font-size:16px;padding-top:10px' target='_blank'><li></li></a><img src='images/new.gif'><br>").text(html).attr("id","new_title_"+i);
			    	var txt3=$("<span style='float:right;margin-top:-19px;font-size:13.5px;color:#BEBEBE'></span><br>").text(html2)
			      	txt1.append(txt2);
			      	txt1.append(txt3);
		      			var href="receive/findOne.do?id="+oj[i].id;
		      			$('#new_title_'+i).attr("href",href);
		      			 
		      			}
	        },
	        error:function (XMLHttpRequest, textStatus, errorThrown) {      
	          //  alert("请求失败！");
	        }
	     });
});
</script>

<!--头部 end-->
<div class="contain" style="margin-top: -14px">
  <div  id="fileUp">
  <div class="listr right">
    <h2><span>您现在的位置: <a href="index.jsp">网站首页</a>>>党建知识</span>党建知识</h2>
  
    <div class="blank"></div>
    
    <br><br><br>
	
		<div class="content">
			<div id="paginationdemo" class="demo">
                <div id="p1" class="pagedemo _current"> 
	                 <ul style="padding-top:0px">
	     				 <div><ol id="div1"></ol></div>
	   				 </ul>
   				 </div>
				
				<div id="demo5">                   
                </div>
            </div>
			<div class="about">
                
                <div class="text">
                </div>
            </div>
          </div>
          <script src="fenye/jquery.paginate.js" type="text/javascript"></script>
        
     <!-- <div class="page"><a title="Total record"><b>29</b></a><b>1</b><a href="/download/index_2.html">2</a><a href="/download/index_2.html">&gt;</a><a href="/download/index_2.html">&gt;&gt;</a></div>  -->
	</div>
 </div>
</div>
<footer>
  <div class="footnav">
    <!-- <ul>
      <li><a href="index.jsp">网站首页</a></li>
        <li><a href="more/more1.jsp">党建理论</a></li>
        <li><a href="more/more2.jsp">基层党建</a></li>
        <li><a href="more/more3.jsp">党员故事</a></li>
        <li><a href="more/more4.jsp">支部生活</a></li>
        <li><a href="more/more5.jsp">身边故事</a></li>
        <li><a href="more/more6.jsp">地方新闻</a></li>
        <li><a href="more/more7.jsp">党建知识</a></li>
        <li><a href="list.jsp">下载专区</a></li>
    </ul> -->
  </div>
  <div class="copyright" style="height:auto">
<p>Copyright  2018 All Rights Reserved 版权所有 成都市成都理工大学网上党支部</p> 
<p>地址：<span style="color:#D94600;">四川省成都市成华区二仙桥东三路1号成都理工大学</span>   &nbsp;&nbsp;&nbsp;邮政编码：<span style="color:#D94600;">610059</span></p>
<p>本、专科招生咨询电话：<span style="color:#D94600;">028-84078927</span> &nbsp;&nbsp;中英合作办学招生咨询电话:<span style="color:#D94600;">028-84075593</span></p>
<p>成教招生咨询电话：<span style="color:#D94600;">028-84077092</span> &nbsp;&nbsp;自考招生咨询电话：<span style="color:#D94600;">028-84079791</span></p>
<p>备案号：蜀ICP备<span style="color:#D94600;">05026980</span>号     &nbsp;&nbsp;&nbsp;&nbsp;技术支持:<span style="color:#984B4B;"><a style="color:#984B4B;" href="user/Certy/index.html" target="_blank">阿作阿沙</a></span></p>
  </div>
</footer>
</body>

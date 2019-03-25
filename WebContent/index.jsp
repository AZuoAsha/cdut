<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>成都市成都理工大学网上党支部</title>
<link rel="stylesheet" type="text/css" href="css2/style.css" />

<script src="js2/main.js"></script>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/ajax.js"></script>
<link href="css/index.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
<!--[if IE 6]>
 <script  src="js/png.js"></script>
 <script type="text/javascript">
    EvPNG.fix('.logo');
 </script>
<![endif]-->
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
                              $(items[index]).fadeIn(1500);
                               function play(){
                            	   //alert(index);
                                    $(dots).removeClass("active");
                                   if(index >=0 && index < len-1){
                                     $(items[index]).fadeOut(1500);
                                       index++;
                                      $(items[index]).fadeIn(1500);
                                       $(dots[index]).addClass("active");
                                  }else{
                                       $(items[index]).fadeOut(1500);
                                     index=0;
                                     $(items[index]).fadeIn(1500);
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
                                 $(items[str]).fadeOut(1500);
                                str = len-1;
                                $(items[str]).fadeIn(1500);
           $(dots[str]).addClass("active");
                                index = str;
                                  
                             }else{
                                   $(items[str]).fadeOut(1500);
                                  str --;
                                $(items[str]).fadeIn(1500);
                                $(dots[str]).addClass("active");
                               index = str;
                            }
                          });
                         //点击右侧按钮的函数
                         $(".right2").click(function(){
                            $(dots).removeClass("active");
                          if(str == len-1){
                               $(items[str]).fadeOut(1500);
                               str = 0;
                                $(items[str]).fadeIn(1500);
                               $(dots[str]).addClass("active");
                                index = str;
                           }else{
                                 $(items[str]).fadeOut(1500);
                                  str ++;
                                $(items[str]).fadeIn(1500);
                                 $(dots[str]).addClass("active");
                                index = str;
                             }
                        })
                         //小圆点
                         $(".dot span").click(function(){
                            var num = $(this).index();
                            $(dots).removeClass("active");
                            $(dots[num]).addClass("active");
                              $(items).fadeOut(1500);
                          $(items[num]).fadeIn(1500);
                             index = num;
                         })
                  });

</script>
</head>
<body onload="autoPlay()">
<header>
  <div class="headtop">
    <div class="timer box"><span><a href="user.jsp"  target='_blank'>用户登录</a>&nbsp;&nbsp;<a onclick="javascript:window.external.addFavorite('/','成都市成华区卫生和计划生育局')" href="manner.html" target='_blank'>管理员入口</a><a onclick="show()" href=""></a></span><script type="text/javascript" src="js/timer.js"></script></div>
  <script type="text/javascript">
  function show(){
  alert('(*^__^*)设置成功 (*^__^*)');
  window.history.back(-1);
  }
  </script>
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
  <script src="js/silder.js"></script> 
</header>
<!--头部 end-->
<style>
#flash{overflow:hidden;}
#flash li{position:absolute;left:0;top:0;}
</style>
<style>
 /*圆点*/
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


<div class="banner box" id="flash" style="margin-top:0px;position:relative;height:480px;width:1001px;">
<button class="left2"><<</button>
<ul id="carousel">
	<li><a href="receive/findOneTo.do?newsType=10&newsTittle=诺奖得主中村修二教授讲述蓝光LED的“今生与未来”" target="_blank"><img src="images/20180505131125_488.png" style="width:1000px;height:480px;border:1px solid #DDFF77;"></a></li>
	<li><a href="receive/findOneTo.do?newsType=10&newsTittle=习近平与德国总理默克尔举行会晤" target="_blank"><img src="images/1122883897_15271726918271n.jpg" style="width:1000px;height:480px;border:1px solid #DDFF77;"></a></li>
	<li><a href="receive/findOneTo.do?newsType=10&newsTittle=中国处于半岛外交的中心 " target="_blank"><img src="images/banner.jpg" style="width:1000px;height:480px;border:1px solid #DDFF77;"></a></li>
	<li><a href="receive/findOneTo.do?newsType=10&newsTittle=栗战书会见美国联邦参议员戴恩斯一行" target="_blank"><img src="images/banner2.jpg" style="width:1000px;height:480px;border:1px solid #DDFF77;"></a></li>
	<li><a href="receive/findOneTo.do?newsType=10&newsTittle=李克强主持召开国务院常务会议" target="_blank"><img src="images/banner4.jpg" style="width:1000px;height:480px;border:1px solid #DDFF77;"></a></li>
	<li><a href="receive/findOneTo.do?newsType=10&newsTittle=广州：双胞胎大熊猫断母乳 迈出独立生活第一步" target="_blank"><img src="images/banner5.jpg" style="width:1000px;height:480px;border:1px solid #DDFF77;"></a></li>
	<li><a href="receive/findOneTo.do?newsType=10&newsTittle=【新时代 新气象 新作为】浙江苍南的振兴之路" target="_blank"><img src="images/banner6.jpg" style="width:1000px;height:480px;border:1px solid #DDFF77;"></a></li>
	<li><a href="receive/findOneTo.do?newsType=10&newsTittle=习近平：在第十三届全国人民代表大会第一次会议上的讲话" target="_blank"><img src="images/banner7.jpg" style="width:1000px;height:480px;border:1px solid #DDFF77;"></a></li>
	<li><a href="receive/findOneTo.do?newsType=10&newsTittle=环球时报：传承友谊是中朝共同受益的大战略" target="_blank"><img src="images/banner8.jpg" style="width:1000px;height:480px;border:1px solid #DDFF77;"></a></li>
	<li><a href="receive/findOneTo.do?newsType=10&newsTittle=重走地震之路" target="_blank"><img src="images/20180521161915_857.jpg" style="width:1000px;height:480px;border:1px solid #DDFF77;"></a></li>
</ul>
<div class="dot"><span class="active"></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></div>
<button class="right2">>></button>
</div>

<script type="text/javascript">

(function($){
	 $.fn.scrollTop = function(options){
	  var defaults = {
	   speed:30
	   }
	  var opts = $.extend(defaults,options);
	  this.each(function(){
	   var $timer;
	   var scroll_top=0;
	   var obj = $(this);
	   var $height = obj.find("ol").height();
	   obj.find("ol").clone().appendTo(obj);
	   obj.hover(function(){
	    clearInterval($timer);
	    },function(){
	     $timer = setInterval(function(){
	      scroll_top++;
	      if(scroll_top > $height){
	       scroll_top = 0;
	      }
	      obj.find("ol").first().css("margin-top",-scroll_top);
	    },opts.speed);
	    }).trigger("mouseleave");
	   })
	  }
	 })(jQuery)
	</script>
	<script>
	$(function(){
	 $("#newsCenter9").scrollTop({
	  speed:30 //数值越大 速度越慢
	  });
	})
	</script>

<div class="box">
  
      
<h2 style="font-size: 14px; color: #fff; background: url(images/annh2.png) no-repeat; padding-left: 20px; line-height: 27px; height: 27px;background-size:100% 100%;width:196px;"></h2>
  <div class="announce right" id="newsCenter9" style="height:300px;float:left;margin-bottom:10px;border:1px solid #9D9D9D;border-bottom-left-radius:4px;border-bottom-right-radius:4px;">
    
    <ol style="padding: 10px;background:white;height:140%;float:left;padding-top:140%;">
     
    </ol>
  </div>
 

  
  <div id="dao" class="zhishu left" style="margin-top: -30px;margin-left:17px;height:330px;">
    <h3>新闻中心
      <ul id="tab" style="font-family:KaiTi;">
        <li class="current"><a href="more/more1.jsp" target="_blank">党建理论</a></li>
        <li><a href="more/more2.jsp" target="_blank">基层党建</a></li>
        <li><a href="more/more3.jsp" target="_blank">党员故事</a></li>
        <li><a href="more/more4.jsp" target="_blank">支部生活</a></li>
        <li><a href="more/more5.jsp" target="_blank">身边故事</a></li>
        <li><a href="more/more6.jsp" target="_blank">地方新闻</a></li>
        <li><a href="more/more7.jsp" target="_blank">党建知识</a></li>
        <li><a href="list.jsp" target="_blank">下载专区</a></li>
      </ul>
    </h3>
    <section>
      <div id="content">
        <ul style="display:block;">
          <div class="zs_pic left"><a href="more/more1.jsp" target="_blank"> <img src="images/dangjianlilun.jpg"></a> </div>
          <div class="zs_news right" id="newsCenter" >
            <ol style="margin-top:2px;overflow:hidden;height:260px">
            </ol>
            <span><a href="more/more1.jsp" style="float:right;color:#600000" target="_blank">查看更多>></a></span>
          </div>
        </ul>
        <ul>
          <div class="zs_pic left"><a href="more/more2.jsp" target="_blank"><img src="images/jicengdangjian.jpg"></a> </div>
          <div class="zs_news right"  id="newsCenter2">
            <ol style="margin-top:2px;overflow:hidden;height:260px">
            </ol>
            <span><a href="more/more2.jsp" style="float:right;color:#600000" target="_blank">查看更多>></a></span>
          </div>
        </ul>
        
        <ul>
          <div class="zs_pic left"> <a href="more/more3.jsp" target="_blank"><img src="images/story.jpg"> </a></div>
          <div class="zs_news right"  id="newsCenter3">
            <ol style="margin-top:2px;overflow:hidden;height:260px">
            </ol>
              <span><a href="more/more3.jsp" style="float:right;color:#600000" target="_blank">查看更多>></a></span>
          </div>
        </ul>
        
        <ul>
          <div class="zs_pic left"><a href="more/more4.jsp" target="_blank"> <img src="images/zhibushh.jpg"> </a></div>
          <div class="zs_news right"  id="newsCenter4">
            <ol style="margin-top:2px;overflow:hidden;height:260px">
            </ol>
            <span><a href="more/more4.jsp" style="float:right;color:#600000" target="_blank">查看更多>></a></span>
          </div>
        </ul>
        
        <ul>
          <div class="zs_pic left"> <a href="more/more5.jsp" target="_blank"><img src="images/shenbianstory.jpg"></a> </div>
          <div class="zs_news right"  id="newsCenter5">
            <ol style="margin-top:2px;overflow:hidden;height:260px">
            </ol>
            <span><a href=more/more5.jsp style="float:right;color:#600000" target="_blank">查看更多>></a></span>
          </div>
        </ul>
        
        <ul>
          <div class="zs_pic left"> <a href="more/more6.jsp" target="_blank"><img src="images/localstory.jpg"></a> </div>
          <div class="zs_news right"  id="newsCenter6">
            <ol style="margin-top:2px;overflow:hidden;height:260px">
            </ol>
            <span><a href="more/more6.jsp" style="float:right;color:#600000" target="_blank">查看更多>></a></span>
          </div>
        </ul>
        
        <ul>
          <div class="zs_pic left"><a href="more/more7.jsp" target="_blank"> <img src="images/newspic1.jpg"></a> </div>
          <div class="zs_news right"  id="newsCenter7">
            <ol style="margin-top:2px;overflow:hidden;height:260px">
            </ol>
            <span><a href="more/more7.jsp" style="float:right;color:#600000" target="_blank">查看更多>></a></span>
          </div>
        </ul>
        
        <ul>
          <div class="zs_pic left"><a href="list.jsp" target="_blank"><img src="images/download.jpg"></a> </div>
          <div class="zs_news right"  id="newsCenter8">
            <ol style="margin-top:2px;overflow:hidden;height:260px">
            </ol>
            <span><a href="list.jsp" style="float:right;color:#600000" target="_blank">下载更多>></a></span>
          </div>
        </ul>
      </div>
    </section>
  </div>
 
  <div class="links" style="width:978px;margin-top:10px">
  <p style="color: red">相关链接:</p>
  <ul>
  <li><a href="http://www.people.com.cn/" target="_blank">人民网</a></li>
    <li><a href="http://www.gmw.cn/" target="_blank">光明网</a></li>   
    <li><a href="http://www.xinhuanet.com/" target="_blank">新华网</a></li>
    <li><a href="http://www.qstheory.cn/" target="_blank">求是理论网</a></li>   
    <li><a href="http://cpc.people.com.cn/" target="_blank">中国共产党新闻网</a></li>
    <li><a href="http://www.china.com.cn/" target="_blank">中国网</a></li>   
    <li><a href="http://www.cctv.com/" target="_blank">央视网</a></li>
    <li><a href="http://www.cri.cn/" target="_blank">国际在线</a></li>
    <li><a href="http://www.npc.gov.cn/" target="_blank">中国人大网</a></li>
    <li><a href="http://www.gov.cn/" target="_blank">中国政府网</a></li>
    <li><a href="http://www.chinadaily.com.cn/" target="_blank">中国日报网</a></li>
  </ul>
 <!--  <ul style="display:none">
      <a href="/"><img src="images/ad01.jpg"></a><a href="/"><img src="images/ad02.jpg"></a>
  </ul> -->
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
<div class="copyright">
<p>Copyright  2018 All Rights Reserved 版权所有 成都市成都理工大学网上党支部</p> 
<p>地址：<span style="color:#D94600;">四川省成都市成华区二仙桥东三路1号成都理工大学</span>   &nbsp;&nbsp;&nbsp;邮政编码：<span style="color:#D94600;">610059</span></p>
<p>本、专科招生咨询电话：<span style="color:#D94600;">028-84078927</span> &nbsp;&nbsp;中英合作办学招生咨询电话:<span style="color:#D94600;">028-84075593</span></p>
<p>成教招生咨询电话：<span style="color:#D94600;">028-84077092</span> &nbsp;&nbsp;自考招生咨询电话：<span style="color:#D94600;">028-84079791</span></p>
<p>备案号：蜀ICP备<span style="color:#D94600;">05026980</span>号     &nbsp;&nbsp;&nbsp;&nbsp;技术支持:<span style="color:#984B4B;"><a href="user/Certy/index.html" target="_blank">阿作阿沙</a></span></p>
</div>
<div style="text-align:center;">
</div>
</footer>
</body>
</html>
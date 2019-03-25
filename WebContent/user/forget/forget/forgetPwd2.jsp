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
    <link rel="shortcut icon" href="images/favicon.ico"/>
    <link type="text/css" href="user/forget/forget/css/css.css" rel="stylesheet"/>
    <script type="text/javascript" src="user/forget/forget/js/jquery-1.8.3-min.js"></script>
    <script type="text/javascript">
    var countdown=60; 
    function sendemail(){
        var obj = $("#phonecfg");
        settime(obj);
        
        }
    function settime(obj) { //发送验证码倒计时
        if (countdown == 0) { 
            obj.attr('disabled',false); 
            //obj.removeattr("disabled"); 
            obj.val("免费获取验证码");
            countdown = 60; 
            return;
        } else { 
            obj.attr('disabled',true);
            obj.val("重新发送(" + countdown + ")");
            countdown--; 
        } 
    setTimeout(function() { 
        settime(obj) }
        ,1000) 
    }
    </script>
    <script type="text/javascript">
        //导航定位
        $(function () {
            // $(".nav li:eq(2) a:first").addClass("navCur")
            //验证手机 邮箱
            $(".selyz").change(function () {
                var selval = $(this).find("option:selected").val();
                if (selval == "0") {
                    $(".sel-yzsj").show()
                    $(".sel-yzyx").hide()
                }
                else if (selval == "1") {
                    $(".sel-yzsj").hide()
                    $(".sel-yzyx").show()
                }
            })
        })
    </script>
</head>

<body>

<div class="content">
    <div class="web-width">
        <div class="for-liucheng">
            <div class="liulist for-cur"></div>
            <div class="liulist for-cur"></div>
            <div class="liulist"></div>
            <div class="liulist"></div>
            <div class="liutextbox">
                <div class="liutext for-cur"><em>1</em><br/><strong>填写账户名</strong></div>
                <div class="liutext for-cur"><em>2</em><br/><strong>验证身份</strong></div>
                <div class="liutext"><em>3</em><br/><strong>设置新密码</strong></div>
                <div class="liutext"><em>4</em><br/><strong>完成</strong></div>
            </div>
        </div><!--for-liucheng/-->
        <div class="forget-pwd">
            <dl>
                <dt>验证方式：</dt>
                <dd>
                    <select class="selyz">
                        <option value="0">已验证手机</option>
                        <!--<option value="1">已验证邮箱</option>-->
                    </select>
                </dd>
                <div class="clears"></div>
            </dl>
            <!--  <dl>
              <dt>用户名：</dt>
              <dd><input type="text" /></dd>
              <div class="clears"></div>
             </dl> -->
            <dl class="sel-yzsj">
                <dt>已验证手机：</dt>
                <dd><input type="text" placeholder="输入手机号" required id="phone"/></dd>
                <div class="clears"></div>
            </dl>
            <dl class="sel-yzyx">
                <dt>已验证邮箱：</dt>
                <dd><input type="text" placeholder="输入邮箱" required id="email"/></dd>
                <div class="clears"></div>
            </dl>
            <dl  class="div-phone">
                <dt>手机校验码：</dt>
                <dd><input placeholder="此项非必填"  required/><input style="width: 100px" type="button" id="phonecfg" value="免费获取验证码" onclick="sendemail()" />
                    <!-- <button id="num" class="send1" onclick="sends.send();">获取短信验证码</button> -->
                    
                </dd>
                <div class="clears"></div>
            </dl>
            <div class="subtijiao"><input type="submit" onclick="submitOk()" value="提交"/></div>
        </div><!--forget-pwd/-->
    </div><!--web-width/-->
</div><!--content/-->
<script>
    $(document).ready(function () {
        submitOk = function () {
            var phone = $("#phone").val();
            var email = $("#email").val();
         //   alert(phone + "," + email);
            var phonecfg = $("#phonecfg").val();
            var patrnPhone = /^0?(13[0-9]|15[012356789]|18[0123456789]|14[57]|17[579])[0-9]{8}$/;
            var patrnEmail = /^([0-9A-Za-z\-_\.]+)@([0-9A-Za-z]+\.[A-Za-z]{2,3}(\.[A-Za-z]{2})?)$/g;
            if (!patrnEmail.exec(email) || !patrnPhone.exec(phone)) {
    alert("输入的邮箱或电话的格式不正确");
    return false;
    } else {
    $.ajax({
    type: "get",
    url: "userController/config.do?phone=" + phone + "&email=" + email,
    dataType: "json",
    success: function (data, textStatus, jqXHR) {
    // alert(data);
    if (data == 'true') {
    	window.location.href="${pageContext.request.contextPath}/user/forget/forget/forgetPwd3.jsp";
    } else {
    alert("用户不存在，请输入正确的信息");
    }
    },
    error: function (XMLHttpRequest, textStatus, errorThrown) {
    alert("请求失败！");
    }
    });
            }
        }
    });
</script>
</body>
</html>

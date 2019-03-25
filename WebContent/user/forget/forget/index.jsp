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
    <title>找回密码</title>
      <link type="text/css" href="user/forget/forget/css/css.css" rel="stylesheet"/>
    <script type="text/javascript" src="user/forget/forget/js/jquery-1.8.3-min.js"></script>
    <style type="text/css">
        #code {
            width: 80px;
            height: 30px;
            font-size: 20px;
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            border: 0;
            letter-spacing: 2px;
            color: blue;
        }
    </style>
</head>

<body>

<div class="content">
    <div class="web-width">
        <div class="for-liucheng">
            <div class="liulist for-cur"></div>
            <div class="liulist"></div>
            <div class="liulist"></div>
            <div class="liulist"></div>
            <div class="liutextbox">
                <div class="liutext for-cur"><em>1</em><br/><strong>填写账户名</strong></div>
                <div class="liutext"><em>2</em><br/><strong>验证身份</strong></div>
                <div class="liutext"><em>3</em><br/><strong>设置新密码</strong></div>
                <div class="liutext"><em>4</em><br/><strong>完成</strong></div>
            </div>
        </div><!--for-liucheng/-->
        <div class="forget-pwd">
            <dl>
                <dt>邮箱：</dt>
                <dd><input type="text" placeholder="输入邮箱" id="email" required/></dd>
                <div class="clears"></div>
            </dl>
            <dl>
                <dt>验证码：</dt>
                <dd>
                    <input type="text" placeholder="输入验证码" id="input" required/>
                    <div class="yanzma">
                        <input type="button" id="code"/>
                    </div>
                </dd>
                <div class="clears"></div>
            </dl>
            <div class="subtijiao"><input type="submit" onclick="submitinfo()" id="check" value="提交"/></div>
        </div><!--forget-pwd/-->
    </div><!--web-width/-->
</div><!--content/-->
<script>
    $(document).ready(function () {
        function change() {
            code = $("#code");
            var arrays = new Array(
                '1', '2', '3', '4', '5', '6', '7', '8', '9', '0',
                'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j',
                'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't',
                'u', 'v', 'w', 'x', 'y', 'z',
                'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
                'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T',
                'U', 'V', 'W', 'X', 'Y', 'Z'
            );
            codes = '';
            for (var i = 0; i < 4; i++) {
                var r = parseInt(Math.random() * arrays.length);
                codes += arrays[r];
            }
            code.val(codes);
        }

        change();
        code.click(change);
        $("#check").click(function () {
            var inputCode = $("#input").val().toUpperCase();
            console.log(inputCode);
            if (inputCode.length == 0) {
                alert("请输入验证码！");
                window.location.href="${pageContext.request.contextPath}/user/forget/forget/index.jsp";
                return false;
            }
            else if (inputCode != codes.toUpperCase()) {
                alert("验证码输入错误!请重新输入");
                window.location.href="${pageContext.request.contextPath}/user/forget/forget/index.jsp";
                change();
                $("#input").val("");
            } else {
              //  alert("输入正确");
            }
        });
        submitinfo = function () {
            var email = $("#email").val();
            var patrnEmail = /^([0-9A-Za-z\-_\.]+)@([0-9A-Za-z]+\.[A-Za-z]{2,3}(\.[A-Za-z]{2})?)$/g;
            if (!patrnEmail.exec(email)) {
                alert("输入的邮箱不正确");
                return false
            } else {
            	window.location.href="${pageContext.request.contextPath}/user/forget/forget/forgetPwd2.jsp";
            }
        }
    });
</script>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
    <p>适用浏览器：IE8、360、FireFox、Chrome、Safari、Opera、傲游、搜狗、世界之窗.</p>
</div>
</body>
</html>

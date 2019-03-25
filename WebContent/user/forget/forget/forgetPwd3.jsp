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
<link rel="shortcut icon" href="user/forget/images/favicon.ico" />
<link type="text/css" href="user/forget/forget/css/css.css" rel="stylesheet" />
    <script src="user/forget/forget/js/jquery-1.8.3-min.js"></script>
</head>

<body>

  <div class="content">
   <div class="web-width">
     <div class="for-liucheng">
      <div class="liulist for-cur"></div>
      <div class="liulist for-cur"></div>
      <div class="liulist for-cur"></div>
      <div class="liulist"></div>
      <div class="liutextbox">
       <div class="liutext for-cur"><em>1</em><br /><strong>填写账户名</strong></div>
       <div class="liutext for-cur"><em>2</em><br /><strong>验证身份</strong></div>
       <div class="liutext for-cur"><em>3</em><br /><strong>设置新密码</strong></div>
       <div class="liutext"><em>4</em><br /><strong>完成</strong></div>
      </div>
     </div><!--for-liucheng/-->
     <div class="forget-pwd">
       <dl>
        <dt>手机号：</dt>
        <dd><input type="text" placeholder="输入手机号" id="phone" required/></dd>
        <div class="clears"></div>
       </dl> 
       <dl>
        <dt>新密码：</dt>
        <dd><input type="password" placeholder="输入新密码" id="password" required/></dd>
        <div class="clears"></div>
       </dl> 
       <dl>
        <dt>确认密码：</dt>
        <dd><input type="password" placeholder="确认新密码" id="passwordcfg" required/></dd>
        <div class="clears"></div>
       </dl> 
       <div class="subtijiao"><input type="submit" onclick="submitOk()" value="提交" /></div>
      </div><!--forget-pwd/-->
   </div><!--web-width/-->
  </div><!--content/-->
  <script>
      $(document).ready(function () {
          submitOk=function () {
              var phone = $("#phone").val();
              var password = $("#password").val();
              var passwordcfg = $("#passwordcfg").val();
              var patrnPhone = /^0?(13[0-9]|15[012356789]|18[0123456789]|14[57]|17[579])[0-9]{8}$/;
              if (!patrnPhone.exec(phone) || password!=passwordcfg) {
                  alert("输入的电话号码不正确或密码不一致");
                  return false;
              } else {
                  $.ajax({
                      type: "get",
                      url: "userController/update.do?phone=" + phone + "&password=" + password+"&passwordcfg="+passwordcfg,
                      dataType: "json",
                      success: function (data, textStatus, jqXHR) {
                          // alert(data);
                           if (data=='success') {
                        	   window.location.href="${pageContext.request.contextPath}/user/forget/forget/forgetPwd4.jsp";
                           }else {
                               alert("修改失败");
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

<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
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
    <title>登录注册</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery-1.11.3.min.js"></script>
</head>

<body>

<div class="cotn_principal">
    <div class="cont_centrar">
        <div class="cont_login">
            <div class="cont_info_log_sign_up">
                <div class="col_md_login">
                    <div class="cont_ba_opcitiy">
                        <h2>登录</h2>
                        <p>欢迎登录.</p>
                        <button class="btn_login" onClick="cambiar_login()">登录</button>
                    </div>
                </div>
                <div class="col_md_sign_up">
                    <div class="cont_ba_opcitiy">
                        <h2>注册</h2>
                        <p>没有账号点击注册.</p>
                        <button class="btn_sign_up" onClick="cambiar_sign_up()">注册</button>
                    </div>
                </div>
            </div>
            <div class="cont_back_info">
                <div class="cont_img_back_grey"><img src="images/po.jpg" alt=""/></div>
            </div>
            <div class="cont_forms">
                <div class="cont_img_back_"><img src="images/po.jpg" alt=""/></div>
                <div class="cont_form_login"><a href="user.jsp#" onClick="ocultar_login_sign_up()"><i
                        class="material-icons">&#xE5C4;</i></a>
                    <h2>登录</h2>
                    <input type="text" placeholder="邮箱" id="email" required/>
                    <input type="password" placeholder="登录密码" id="password" required/>
                    <button class="btn_login" onClick="cambiar_login2()">登录</button>
                    <div><a href="user/forget/forget/index.jsp" align="center" style="text-decoration: none">忘记密码?</a></div>
                </div>
                <div class="cont_form_sign_up"><a href="user.jsp#" onClick="ocultar_login_sign_up()"><i
                        class="material-icons">&#xE5C4;</i></a>
                    <h2>注册</h2>
                    <input type="text" placeholder="邮箱" id="remail"/>
                    <input type="text" placeholder="手机号" id="rphone"/>
                    <input type="password" placeholder="密码" id="rpassword"/>
                    <input type="password" placeholder="确认密码" id="rpasswordcfg"/>
                    <button class="btn_sign_up" onClick="cambiar_sign_up2()">注册</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="js/index.js"></script>
<script>
    $(document).ready(function () {
        //注册开始
        cambiar_sign_up2 = function () {
            var email = $("#remail").val();
            var phone = $("#rphone").val();
            var password = $("#rpassword").val();
            var passwordcfg = $("#rpasswordcfg").val();
            var patrnPhone = /^0?(13[0-9]|15[012356789]|18[0236789]|14[57])[0-9]{8}$/;
            var patrnEmail = /^([0-9A-Za-z\-_\.]+)@([0-9A-Za-z]+\.[A-Za-z]{2,3}(\.[A-Za-z]{2})?)$/g;
            if (!patrnEmail.exec(email) || !patrnPhone.exec(phone)) {
                alert("输入的邮箱或电话不正确");
                return false
            } else {
                $.ajax({
                    type: "get",
                    url: "userController/findAll.do?email=" + email + "&phone=" + phone,
                    dataType: "json",
                    success: function (data, textStatus, jqXHR) {
                       // alert(data);
                        if (data == 'true') {
                            alert("用户已存在");
                        } else {
                            if (passwordcfg != password || password == '' || passwordcfg == '') {
                                alert("输入的密码不一致");
                            } else {
                                $.ajax({
                                    type: "get",
                                    url: "userController/register.do?email=" + email + "&phone=" + phone + "&password=" + password + "&passwordcfg="
                                    + passwordcfg,
                                    dataType: "json",
                                    success: function (data, textStatus, jqXHR) {
                                        // alert("请求成功"+data);
                                        if (data == 'success') {
                                            alert("恭喜注册成功,现在去登录吗?");
                                            window.location.replace("http://localhost:8080/cdut/user.jsp");
                                        } else {
                                            alert("注册失败");
                                        }
                                    },
                                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                                        alert("请求失败！");
                                    }
                                });
                            }
                        }


                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert("请求失败！");
                    }
                });


            }
        }
        //注册结束

        //登录开始
        cambiar_login2 = function () {
            var isNull="${sessionScope.id}";
            var result = "<%=session.getAttribute("id")%>";
           // alert("result="+isNull);
            var email = $("#email").val();
            var password = $("#password").val();
            //alert(isNull);
            $.ajax({
                type: "get",
                url: "userController/login.do?email=" + email + "&password=" + password,
                dataType: "json",
                success: function (data, textStatus, jqXHR) {
                    // alert("请求成功"+data);
                    if (data == 'success') {
                        if(isNull==''){
                        	window.location.href="${pageContext.request.contextPath}/user/loginsuccess.jsp";
                        }else{
                        	window.location.href="${pageContext.request.contextPath}/user/comment.jsp";
                        }
                     
                    } else {
                        alert("用户名或密码错误");
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert("请求失败！");
                }
            });
        }
    });
</script>
</body>
</html>

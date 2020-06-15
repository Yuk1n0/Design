<%@ page import="com.ccpv.bean.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>稿件管理系统 | 登录</title>

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">

<div class="middle-box text-center loginscreen animated fadeInDown">
    <div>
        <div>
            <h1 class="logo-name">Hi!</h1>
        </div>
        <h3>欢迎来到稿件管理系统</h3>
        <p>登录，立即发表您的精彩内容
            <!--Continually expanded and constantly improved Inspinia Admin Them (IN+)-->
        </p>
        <p>请注意，如果您没有在本网站注册将无法正常使用</p>
        <form class="m-t" role="form" action="${pageContext.request.contextPath}/user/login.do" method="post">
            <div class="form-group">
                <input type="email" class="form-control" placeholder="邮箱" required="" name="UAccount"
                       value="${user.UAccount}">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="密码" required="" name="UPassword">
            </div>
            <button type="submit" class="btn btn-primary block full-width m-b">登录</button>

            <a href="${pageContext.request.contextPath}/user/toForgetPassword"><small>忘记密码？</small></a>
            <p class="text-muted text-center"><small>还没有账号？</small></p>
            <a class="btn btn-sm btn-white btn-block"
               href="${pageContext.request.contextPath}/user/toRegister">创建一个账户</a>
        </form>
        <p class="m-t"><small>Copyright By Yuk1n0 &copy; 2020</small></p>
    </div>
</div>

<!-- Mainly scripts -->
<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

</body>

</html>
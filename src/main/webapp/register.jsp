<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>稿件管理系统 | 注册</title>

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">
<script>
    var sendCode = function () {
        var uaccount = document.getElementById("UAccount").value;
        console.log(uaccount);
        $.ajax({
            type: 'POST',
            url: '${pageContext.request.contextPath}/user/send',
            contentType: "application/x-www-form-urlencoded",
            data: {"UAccount": uaccount},
            success: function (code) {

            }
        });
    }

</script>

<div class="middle-box text-center loginscreen   animated fadeInDown">
    <div>
        <div>

            <h1 class="logo-name">Hi!</h1>

        </div>
        <h3>创建一个账户，立即发表</h3>
        <p>请注意，如果您注册过无须再次注册</p>

        <form class="m-t" role="form" action="${pageContext.request.contextPath}/user/register" method="post">

            <div class="form-group">
                <input type="email" class="form-control" placeholder="用邮箱注册账号" required="" name="UAccount"
                       id="UAccount">
            </div>
            <%--<a href="${pageContext.request.contextPath}/user/send">发送激活码</a></td>--%>

            <div class="form-group">
                <input type="text" class="form-control" placeholder="昵称" required="" name="UName">
            </div>


            <div class="form-group">
                <input type="password" class="form-control" placeholder="密码" required="" name="UPassword">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="个人简介" required="" name="UIntroduction">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="验证码" required="" name="codeTemp">
            </div>

            <button id="btn" class="btn btn-primary block full-width m-b" onclick="sendCode()" type="button">发送激活码</button>

            <div class="form-group">
                <div class="checkbox i-checks"><label> <input type="checkbox"><i></i> 我已阅读并同意协议 </label></div>
            </div>
            <p class="text-muted text-center"><small>注册成功后，您将跳转回登录页面</small></p>
            <button type="submit" class="btn btn-primary block full-width m-b">注册</button>

            <p class="text-muted text-center"><small>已有账户？</small></p>
            <a class="btn btn-sm btn-white btn-block" href="${pageContext.request.contextPath}/user/toLogin">登录</a>
        </form>
        <p class="m-t"><small>Copyright By Yuk1n0 &copy; 2020</small></p>
    </div>
</div>

<!-- Mainly scripts -->
<script src="js/jquery-2.1.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="js/plugins/iCheck/icheck.min.js"></script>
<script>
    $(document).ready(function () {
        $('.i-checks').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green',
        });
    });
</script>

</body>

</html>

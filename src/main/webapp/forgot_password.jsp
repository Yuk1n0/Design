<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>稿件管理系统 | 忘记密码</title>

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">

<div class="passwordBox animated fadeInDown">
    <div class="row">

        <div class="col-md-12">
            <div class="ibox-content">
                <h2 class="font-bold">忘记密码</h2>
                <p>
                    输入您的邮箱地址，我们将会把您的新密码发送到您的邮箱
                </p>
                <div class="row">

                    <div class="col-lg-12">
                        <form class="m-t" role="form" action="${pageContext.request.contextPath}/user/ForgetPassword"
                              method="post">
                            <div class="form-group">
                                <input type="email" name="UAccount" class="form-control" placeholder="Email address"
                                       required="">
                            </div>
                            <button type="submit" class="btn btn-primary block full-width m-b">确认发送新密码
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr/>
    <div class="row">
        <div class="col-md-6">
            Copyright By Yuk1n0 &copy; 2020
        </div>
    </div>
</div>

</body>

</html>

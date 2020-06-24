<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>稿件管理系统 | 疑难解惑</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/plugins/jQueryUI/jquery-ui.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>

<body>

<div id="wrapper">

    <jsp:include page="aside.jsp"></jsp:include>

    <div id="page-wrapper" class="gray-bg">
        <jsp:include page="header.jsp"></jsp:include>

        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>疑难解惑</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${pageContext.request.contextPath}/user/HomePage">首页</a>
                    </li>
                    <li class="active">
                        <strong>疑难解惑</strong>
                    </li>
                </ol>
            </div>
            <div class="col-lg-2">

            </div>
        </div>
        <div class="wrapper wrapper-content  animated fadeInRight">


            <div class="resizable-panels">
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>
                            问题1
                        </h5>

                        <div class="ibox-tools">
                            <label class="label label-primary">新用户须知</label>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <h2>
                            这是一个简单的网站说明！
                        </h2>

                        <p>
                            本网站是由本人在兴趣之下制作而成，希望大家可以通过这个网站随时随地发布自己的稿件
                        </p>
                    </div>
                </div>
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>
                            问题2
                        </h5>
                    </div>
                    <div class="ibox-content">
                        <h2>
                            如何上传稿件？
                        </h2>

                        <p>
                            用户注册登陆之后，选择稿件创作即可
                        </p>
                    </div>
                </div>
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>
                            问题3
                        </h5>
                    </div>
                    <div class="ibox-content">
                        <h2>
                            为什么我注册后在第一编辑部？
                        </h2>

                        <p>
                            为了区分稿件作者的水平，我们默认将新注册用户划分至第一编辑部，随着您水平的提升我们会将您移至其他编辑部
                        </p>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <jsp:include page="copyright.jsp"></jsp:include>
    </div>
    <jsp:include page="right_sidebar.jsp"></jsp:include>
</div>

<!-- Mainly scripts -->
<script src="js/jquery-2.1.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Peity -->
<script src="js/plugins/peity/jquery.peity.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>

<script src="js/plugins/jquery-ui/jquery-ui.min.js"></script>

<script>
    $(document).ready(function () {

        $(".ibox").resizable({
            helper: "ui-resizable-helper",
            grid: 20
        });

    });
</script>

</body>

</html>

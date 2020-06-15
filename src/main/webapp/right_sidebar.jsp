<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>稿件管理系统</title>

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="${pageContext.request.contextPath}/css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <!-- Gritter -->
    <link href="${pageContext.request.contextPath}/js/plugins/gritter/jquery.gritter.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

</head>
<body>

<!-----------------头部位置的右边菜单栏----------------------->
<div id="right-sidebar">
    <div class="sidebar-container">

        <ul class="nav nav-tabs navs-3">

            <li class="active"><a data-toggle="tab" href="index1.html#tab-1">
                Notes
            </a></li>
            <li><a data-toggle="tab" href="index1.html#tab-2">
                Projects
            </a></li>
            <li class=""><a data-toggle="tab" href="index1.html#tab-3">
                <i class="fa fa-gear"></i>
            </a></li>
        </ul>

        <div class="tab-content">

            <div id="tab-1" class="tab-pane active">

                <div class="sidebar-title">
                    <h3><i class="fa fa-comments-o"></i> Latest Notes</h3>
                    <%--<small><i class="fa fa-tim"></i> You have 10 new message.</small>--%>
                </div>
                <div>
                </div>
            </div>

            <div id="tab-2" class="tab-pane">

                <div class="sidebar-title">
                    <h3><i class="fa fa-cube"></i> Latest projects</h3>
                </div>

                <ul class="sidebar-list">
                </ul>
            </div>

            <div id="tab-3" class="tab-pane">

                <div class="sidebar-title">
                    <h3><i class="fa fa-gears"></i> Settings</h3>
                </div>

                <div class="sidebar-content">
                    <h4>Settings</h4>
                    <div class="small">
                        I belive that. Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                        And typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the
                        1500s.
                        Over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>

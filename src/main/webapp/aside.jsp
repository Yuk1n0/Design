<%@ page import="com.ccpv.bean.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    User user = (User) session.getAttribute("User");
%>
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
<!-------------------------------左部菜单栏---------------------------------------------->
<nav class="navbar-default navbar-static-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav metismenu" id="side-menu">

            <!--------------------头像部分------------------------->
            <li class="nav-header">
                <div class="dropdown profile-element">
                    <span>
                        <img alt="image" class="img-circle"
                             src="${pageContext.request.contextPath}/img/profile_small.jpg"/>
                    </span>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong
                                    class="font-bold"><%=user.getUName()%></strong>
                             </span> <span class="text-muted text-xs block"><%=user.getUIntroduction()%> <b
                                    class="caret"></b></span> </span> </a>
                    <ul class="dropdown-menu animated fadeInRight m-t-xs">
                        <li><a href="${pageContext.request.contextPath}/user/totoastr_notifications">个人中心</a></li>
                        <li class="divider"></li>
                        <li>
                            <c:if test="${sessionScope.User.UPower=='1'}">
                                <a href="${pageContext.request.contextPath}/newsroom/toNewsroom?NId=<%=user.getNId()%>">编辑部信息</a>
                            </c:if>
                            <c:if test="${sessionScope.User.UPower=='2'}">
                                <a href="${pageContext.request.contextPath}/newsroom/toNewsroomAdmin?NId=<%=user.getNId()%>">编辑部管理</a>
                            </c:if>
                            <c:if test="${sessionScope.User.UPower=='3'}">
                                <a href="${pageContext.request.contextPath}/newsroom/toNewsroom?NId=<%=user.getNId()%>">编辑部信息</a>
                            </c:if>
                        </li>
                        <li class="divider"></li>
                        <li><a href="${pageContext.request.contextPath}/user/toLogin">注销</a></li>
                    </ul>
                </div>
                <div class="logo-element">
                    稿件管理系统
                </div>
            </li>

            <!------------------------首页部分，用于推荐文章----------------------------->
            <!-------------class="active" 高亮并展开列表---------------->
            <li class="active">
                <a href="${pageContext.request.contextPath}/user/HomePage"><i class="fa fa-diamond"></i> <span
                        class="nav-label">首页</span></a>
            </li>

            <!--------------------------------稿件中心---------------------------------------->
            <li>
                <a href="login.jsp"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">稿件分类中心</span><span
                        class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse">
                    <li><a href="${pageContext.request.contextPath}/article/getArticleByTag?ATag=politics">政治</a></li>
                    <li><a href="${pageContext.request.contextPath}/article/getArticleByTag?ATag=economy">经济</a></li>
                    <li><a href="${pageContext.request.contextPath}/article/getArticleByTag?ATag=civilization">文化</a></li>
                    <li><a href="${pageContext.request.contextPath}/article/getArticleByTag?ATag=military">军事</a></li>
                    <li><a href="${pageContext.request.contextPath}/article/getArticleByTag?ATag=livelihood">生活</a></li>
                </ul>
            </li>
            <!--------------------------------稿件分配------------------------------------------>
            <li>
                <c:if test="${sessionScope.User.UPower=='2'}">
                    <a href="${pageContext.request.contextPath}/newsroom/toManageArticle?NId=<%=user.getNId()%>"><i
                            class="fa fa-files-o"></i> <span class="nav-label">稿件分配</span></a>
                </c:if>
            </li>

            <!----------------------------------稿件创作----------------------------------->
            <li>
                <c:if test="${sessionScope.User.UPower=='1'}">
                    <a href="${pageContext.request.contextPath}/article/toFormEditor"><i class="fa fa-edit"></i> <span
                            class="nav-label">稿件创作</span></a>
                </c:if>
            </li>


            <!-------------------------------------我的稿件----------------------------------------------->
            <li>
                <c:if test="${sessionScope.User.UPower=='1'}">
                    <a href="${pageContext.request.contextPath}/article/getMyArticle?UAccount=<%=user.getUAccount()%>"><i
                            class="fa fa-desktop"></i> <span class="nav-label">我的稿件</span></a>
                </c:if>
                <c:if test="${sessionScope.User.UPower=='2'}">
                    <a href="${pageContext.request.contextPath}/article/getAllUnpass"><i
                            class="fa fa-desktop"></i> <span class="nav-label">所有未审核稿件</span> </a>
                </c:if>
                <c:if test="${sessionScope.User.UPower=='3'}">
                    <a href="${pageContext.request.contextPath}/article/getUnpass?AReviewer=<%=user.getUName()%>"><i
                            class="fa fa-desktop"></i> <span class="nav-label">未审核稿件</span> </a>
                </c:if>
            </li>

            <!-------------------------------------我的意见----------------------------------------------->
            <li>
                <a href="${pageContext.request.contextPath}/comment/MyComment"><i class="fa fa-globe"></i> <span
                        class="nav-label">我的意见</span></a>
            </li>

            <!-------------------------------------聊天室------------------------------------------------>
            <li>
                <a href="${pageContext.request.contextPath}/chat/toChatRoom"><i class="fa fa-globe"></i> <span
                        class="nav-label">聊天室</span></a>
            </li>

            <!--------------------------------常见疑难解答-------------------------------------->
            <li>
                <a href="${pageContext.request.contextPath}/user/Question"><i class="fa fa-flask"></i> <span
                        class="nav-label">疑难解答</span></a>
            </li>
        </ul>
    </div>
</nav>

<!-- Mainly scripts -->
<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Flot -->
<script src="${pageContext.request.contextPath}/js/plugins/flot/jquery.flot.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/flot/jquery.flot.spline.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/flot/jquery.flot.resize.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/flot/jquery.flot.pie.js"></script>

<!-- Peity -->
<script src="${pageContext.request.contextPath}/js/plugins/peity/jquery.peity.min.js"></script>
<script src="${pageContext.request.contextPath}/js/demo/peity-demo.js"></script>

<!-- Custom and plugin javascript -->
<script src="${pageContext.request.contextPath}/js/inspinia.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/pace/pace.min.js"></script>

<!-- jQuery UI -->
<script src="${pageContext.request.contextPath}/js/plugins/jquery-ui/jquery-ui.min.js"></script>

<!-- GITTER -->
<script src="${pageContext.request.contextPath}/js/plugins/gritter/jquery.gritter.min.js"></script>

<!-- Sparkline -->
<script src="${pageContext.request.contextPath}/js/plugins/sparkline/jquery.sparkline.min.js"></script>

<!-- Sparkline demo data -->
<script src="${pageContext.request.contextPath}/js/demo/sparkline-demo.js"></script>

<!-- ChartJS-->
<script src="${pageContext.request.contextPath}/js/plugins/chartJs/Chart.min.js"></script>

<!-- Toastr -->
<script src="${pageContext.request.contextPath}/js/plugins/toastr/toastr.min.js"></script>


<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date();
        a = s.createElement(o),
            m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-4625583-2', 'webapplayers.com');
    ga('send', 'pageview');
</script>

</body>
</html>

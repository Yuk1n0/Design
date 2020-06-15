<%@ page import="com.ccpv.bean.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%
    User user = (User) session.getAttribute("User");
%>
<!DOCTYPE html>
<!--文章展示页面,含评论，文章标签，浏览量和评论量-->
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>稿件管理系统 | 聊天室</title>

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="${pageContext.request.contextPath}/css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

</head>

<body>

<div id="wrapper">

    <!--左侧导航栏-->
    <jsp:include page="aside.jsp"></jsp:include>

    <div id="page-wrapper" class="gray-bg">

        <!--头部导航栏-->
        <jsp:include page="header.jsp"></jsp:include>

        <!--头部下面的导航栏-->
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>聊天室</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${pageContext.request.contextPath}/user/HomePage">首页</a>
                    </li>
                    <li class="active">
                        <strong>聊天室</strong>
                    </li>
                </ol>
            </div>
            <div class="col-lg-2">

            </div>
        </div>

        <!--文章主体-->
        <div class="wrapper wrapper-content  animated fadeInRight article">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1">
                    <div class="ibox">
                        <div class="ibox-content">
                            <!--评论-->
                            <div class="row">
                                <div class="col-lg-12">
                                    <h2>聊天:</h2>
                                    <c:forEach var="allchat" items="${AllChat.list}">
                                        <div class="social-feed-box">
                                            <div class="social-avatar">
                                                <a class="pull-left">
                                                    <img alt="image" src="../img/a1.jpg">
                                                </a>
                                                <div class="media-body">
                                                    <a>
                                                            ${allchat.UAccount}
                                                    </a>
                                                    <small class="text-muted">${allchat.TTime}</small>
                                                </div>
                                            </div>
                                            <div class="social-body">
                                                <p>
                                                        ${allchat.TContent}
                                                </p>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                                <div class="box-tools pull-right">
                                    <ul class="pagination">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/chat/toChatRoom?page=1&size=5"
                                               aria-label="Previous">首页</a></li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/chat/toChatRoom?page=${AllChat.pageNum-1}&size=5">上一页</a>
                                        </li>
                                        <c:forEach begin="1" end="${AllChat.pages}" var="pageNum">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/chat/toChatRoom?page=${pageNum}&size=5">${pageNum}</a>
                                            </li>
                                        </c:forEach>

                                        <li>
                                            <a href="${pageContext.request.contextPath}/chat/toChatRoom?page=${AllChat.pageNum+1}&size=5">下一页</a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/chat/toChatRoom?page=${AllChat.pages}&size=5"
                                               aria-label="Next">尾页</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="row">
                                <form action="${pageContext.request.contextPath}/chat/addChat" method="post">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="hidden" name="UAccount" value="<%=user.getUAccount()%>">
                                            <textarea class="form-control" name="TContent" rows="3"
                                                      placeholder="Enter something you like..."
                                                      maxlength="1024"></textarea>
                                        </div>
                                        <br>
                                        <button class="btn btn-primary btn-xs" type="submit" style="width: 100px ">
                                            发送
                                        </button>
                                        <br><br><br><br>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--底部导航栏-->
        <jsp:include page="copyright.jsp"></jsp:include>

        <!-----------------头部位置的右边菜单栏----------------------->
        <jsp:include page="right_sidebar.jsp"></jsp:include>
    </div>
</div>

<!-- Mainly scripts -->
<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="${pageContext.request.contextPath}/js/inspinia.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/pace/pace.min.js"></script>

</body>

</html>

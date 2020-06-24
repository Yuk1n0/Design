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

    <title>稿件管理系统 | 稿件</title>

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
                <h2>稿件</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${pageContext.request.contextPath}/user/HomePage">首页</a>
                    </li>
                    <li>
                        <a>原创</a>
                    </li>
                    <li class="active">
                        <strong>稿件</strong>
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

                            <!--标题-->
                            <div class="text-center article-title">
                                <span class="text-muted"><i class="fa fa-clock-o"></i>${AArticle.ATime}</span>
                                <h1>
                                    ${AArticle.AName}
                                </h1>
                                <h3>
                                    ${AArticle.UAccount}
                                </h3>
                            </div>

                            <!--正文-->
                            <p>
                                <!--
                                ${AArticle.AContent}
                                -->
                            <form action="${pageContext.request.contextPath}/article/updateAContent?AId=${AArticle.AId}" method="post">
                                <textarea class="form-control" name="AContent" rows="3"
                                          maxlength="100">${AArticle.AContent}</textarea>
                                <br>
                                <button class="btn btn-primary btn-xs" style="float:right" type="submit"
                                        style="width: 100px">
                                    修改
                                </button>
                                <br><br>
                            </form>
                            </p>

                            <!--正文下部-->
                            <hr>

                            <div class="row">
                                <form action="${pageContext.request.contextPath}/comment/addComment" method="post">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="hidden" name="AId" value="${AArticle.AId}">
                                            <input type="hidden" name="AName" value="${AArticle.AName}">
                                            <input type="hidden" name="UAccount" value="<%=user.getUAccount()%>">
                                            <textarea class="form-control" name="CContent" rows="3"
                                                      placeholder="Enter something you like..."
                                                      maxlength="100"></textarea>
                                        </div>
                                        <br>
                                        <button class="btn btn-primary btn-xs" type="submit" style="width: 100px">
                                            发表意见
                                        </button>
                                        <br><br>
                                    </div>
                                </form>
                                <div class="col-md-6">
                                    <div class="small text-right">
                                        <h5>统计:</h5>
                                        <i class="fa fa-eye"> </i> ${AArticle.AGlanceNum} 浏览
                                        <div>
                                            <i class="fa fa-comments-o">
                                                <c:if test="${AArticle.APass=='0'}">未审核</c:if>
                                                <c:if test="${AArticle.APass=='1'}">已审核</c:if>
                                            </i>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!--评论-->
                            <div class="row">
                                <div class="col-lg-12">
                                    <h2>意见:</h2>
                                    <c:forEach var="comment" items="${AArticleComment}">
                                        <div class="social-feed-box">
                                            <div class="social-avatar">
                                                <a href="article.jsp" class="pull-left">
                                                    <img alt="image" src="../img/a1.jpg">
                                                </a>
                                                <div class="media-body">
                                                    <a>
                                                            ${comment.UAccount}
                                                    </a>
                                                    <small class="text-muted">${comment.CTime}</small>
                                                </div>
                                            </div>
                                            <div class="social-body">
                                                <p>
                                                        ${comment.CContent}
                                                </p>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
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

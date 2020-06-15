<%@ page import="com.ccpv.bean.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%
    User user = (User) session.getAttribute("User");
%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>稿件管理系统 | 我的意见</title>

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

</head>

<body>

<div id="wrapper">

    <jsp:include page="aside.jsp"></jsp:include>

    <div id="page-wrapper" class="gray-bg">

        <jsp:include page="header.jsp"></jsp:include>

        <div class="row wrapper border-bottom white-bg page-heading">

            <div class="col-lg-9">
                <h2>意见</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${pageContext.request.contextPath}/user/HomePage">首页</a>
                    </li>
                    <li class="active">
                        <strong>我的意见</strong>
                    </li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="wrapper wrapper-content animated fadeInUp">
                    <ul class="notes">

                        <c:forEach var="comment" items="${MyComments}">
                            <li>
                                <div>
                                    <small>${comment.CTime}</small>
                                    <h4>${comment.AName}</h4>
                                    <p>${comment.CContent}</p>
                                    <p><%=user.getUName()%>
                                    </p>
                                    <a href="${pageContext.request.contextPath}/comment/deleteComment?CId=${comment.CId}"><i
                                            class="fa fa-trash-o "></i></a>
                                </div>

                            </li>
                        </c:forEach>

                    </ul>
                </div>
            </div>
        </div>

        <jsp:include page="copyright.jsp"></jsp:include>
    </div>
    <jsp:include page="right_sidebar.jsp"></jsp:include>
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

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>稿件管理系统 | 稿件 | 经济</title>

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="${pageContext.request.contextPath}/css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

</head>

<!----------------------博文页面-------------------------------->
<body>

<div id="wrapper">

    <!--左侧导航栏-->
    <jsp:include page="aside.jsp"></jsp:include>

    <div id="page-wrapper" class="gray-bg">

        <jsp:include page="header.jsp"></jsp:include>
        <!--首部导航栏Blog-->
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>稿件中心</h2>
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
        <!--博客内容-->
        <div class="wrapper wrapper-content  animated fadeInRight blog">

            <div class="row">
                <c:forEach var="ArticleInfo" items="${pageInfos.list}">
                    <div class="col-lg-4">
                        <div class="ibox">
                            <div class="ibox-content">
                                <a href="${pageContext.request.contextPath}/article/getArticle?AId=${ArticleInfo.AId}"
                                   class="btn-link">
                                    <h2>
                                            ${ArticleInfo.AName}
                                    </h2>
                                </a>
                                <div class="small m-b-xs">
                                    <strong>${ArticleInfo.UAccount}</strong> <span class="text-muted"><i
                                        class="fa fa-clock-o"></i>${ArticleInfo.ATime}</span>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <h5>标签:</h5>
                                        <button class="btn btn-primary btn-xs"
                                                type="button">${ArticleInfo.ATag}</button>
                                            <%--<button class="btn btn-white btn-xs" type="button">发布</button>--%>
                                        <button class="btn btn-primary btn-xs" type="button">
                                            <c:if test="${ArticleInfo.APass=='0'}">未审核</c:if>
                                            <c:if test="${ArticleInfo.APass=='1'}">已审核</c:if>
                                        </button>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="small text-right">
                                            <h5>统计:</h5>
                                                <%--<div><i class="fa fa-comments-o"> </i> 56 评论 </div>--%>
                                            <i class="fa fa-eye"> </i> ${ArticleInfo.AGlanceNum} 浏览
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>

            <div class="box-tools pull-right">
                <ul class="pagination">
                    <li><a href="${pageContext.request.contextPath}/article/getArticleByTag?page=1&size=9&ATag=${Tag}"
                           aria-label="Previous">首页</a></li>
                    <li>
                        <a href="${pageContext.request.contextPath}/article/getArticleByTag?page=${pageInfos.pageNum-1}&size=9&ATag=${Tag}">上一页</a>
                    </li>
                    <c:forEach begin="1" end="${pageInfos.pages}" var="pageNum">
                        <li>
                            <a href="${pageContext.request.contextPath}/article/getArticleByTag?page=${pageNum}&size=9&ATag=${Tag}">${pageNum}</a>
                        </li>
                    </c:forEach>

                    <li>
                        <a href="${pageContext.request.contextPath}/article/getArticleByTag?page=${pageInfos.pageNum+1}&size=9&ATag=${Tag}">下一页</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/article/getArticleByTag?page=${pageInfos.pages}&size=9&ATag=${Tag}"
                           aria-label="Next">尾页</a></li>
                </ul>
            </div>
        </div>
        <!--底部导航栏-->
        <jsp:include page="copyright.jsp"></jsp:include>
    </div>
    <!-----------------头部位置的右边菜单栏----------------------->
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

<%@ page import="com.ccpv.bean.User" %>
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

    <title>稿件管理系统 | 稿件编写</title>

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

</head>

<body>

<div id="wrapper">

    <jsp:include page="aside.jsp"></jsp:include>

    <div id="page-wrapper" class="gray-bg">

        <jsp:include page="header.jsp"></jsp:include>

        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>稿件编写</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${pageContext.request.contextPath}/user/HomePage">首页</a>
                    </li>
                    <li class="active">
                        <strong>稿件编写</strong>
                    </li>
                </ol>
            </div>
            <div class="col-lg-2">

            </div>
        </div>

        <div class="wrapper wrapper-content">

            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">

                        <form name="articleForm" action="${pageContext.request.contextPath}/article/addArticle"
                              method="post">
                            <div class="ibox-title">
                                <input type="hidden" name="UAccount" id="UAccount" value="<%=user.getUAccount()%>">
                                <input name="AName" class="form-control" id="ATitle" type="text" placeholder="请输入稿件标题"
                                       required="">
                                <br>
                                <select name="ATag" class="input-sm form-control input-s-sm inline" size="1" id="ATag">
                                    <option value="politics">政治</option>
                                    <option value="economy">经济</option>
                                    <option value="civilization">文化</option>
                                    <option value="military">军事</option>
                                    <option value="livelihood">生活</option>
                                </select>
                                <div class="ibox-tools">
                                    <a class="collapse-link">
                                        <i class="fa fa-chevron-up"></i>
                                    </a>
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="form_editors.jsp#">
                                        <i class="fa fa-wrench"></i>
                                    </a>
                                    <ul class="dropdown-menu dropdown-user">
                                        <li><a href="form_editors.jsp#">Config option 1</a>
                                        </li>
                                        <li><a href="form_editors.jsp#">Config option 2</a>
                                        </li>
                                    </ul>
                                    <a class="close-link">
                                        <i class="fa fa-times"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="ibox-content no-padding">
                                <div class="summernote">

                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <%--<h5>Edit by click and save as a jsp</h5>--%>
                            <%--<button id="edit" class="btn btn-primary btn-xs m-l-sm" onclick="edit()" type="button">Edit</button>--%>
                            <button id="save" class="btn btn-primary  btn-xs" onclick="save()" type="button">发布</button>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="form_editors.jsp#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li><a href="form_editors.jsp#">Config option 1</a>
                                    </li>
                                    <li><a href="form_editors.jsp#">Config option 2</a>
                                    </li>
                                </ul>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                    </div>
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

<!-- SUMMERNOTE -->
<script src="${pageContext.request.contextPath}/js/plugins/summernote/summernote.min.js"></script>

<script>
    $(document).ready(function () {

        $('.summernote').summernote();

    });
    <%--var edit = function() {--%>
    <%--$('.click2edit').summernote({focus: true});--%>
    <%--};--%>
    <%--var save = function() {--%>
    <%--var ajsp = $('.click2edit').code(); //save jsp If you need(ajsp: array).--%>
    <%--$('.click2edit').destroy();--%>
    <%--};--%>

    var edit = function () {
        $('.note-editable').summernote({focus: true});
    };
    var save = function () {
        var ajsp = $('.note-editable').code(); //save jsp If you need(ajsp: array).
        // var title = $("#ATitle").val();
        // var tag = $("#ATag").val();
        var uaccount = document.getElementById("UAccount").value;
        var title = document.getElementById("ATitle").value;
        var tag = document.getElementById("ATag").value;

        console.log(ajsp);
        console.log(title);
        console.log(tag);
        console.log(uaccount);
        $.ajax({
            type: 'POST',
            url: '${pageContext.request.contextPath}/article/addArticle',
            contentType: "application/x-www-form-urlencoded",
            data: {"array": ajsp, "ATitle": title, "ATag": tag, "UAccount": uaccount},
            success: function (data) {
                alert("" + data);
            }
        });
    }
</script>

</body>

</html>

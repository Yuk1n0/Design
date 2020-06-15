<%@ page import="com.ccpv.bean.User" %>
<%@ page import="org.springframework.web.context.request.SessionScope" %>
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

    <title>稿件管理系统 | 编辑部信息</title>

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="${pageContext.request.contextPath}/css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

    <style type="text/css">
        .comments {
            width: 100%; /*自动适应父布局宽度*/
            overflow: auto;
            word-break: break-all; /*在ie中解决断行问题(防止自动变为在一行显示，主要解决ie兼容问题，ie8中当设宽度为100%时，文本域类容超过一行时，当我们双击文本内容就会自动变为一行显示，所以只能用ie的专有断行属性"word-break或word-wrap"控制其断行)*/
        }

        .t_global {
            width: 100%;
        }

        .t_left {
            width: 80px;
            background-color: #CCC;
        }
    </style>

</head>

<body>

<div id="wrapper">

    <jsp:include page="aside.jsp"></jsp:include>

    <div id="page-wrapper" class="gray-bg">

        <jsp:include page="header.jsp"></jsp:include>

        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>编辑部信息中心</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${pageContext.request.contextPath}/user/HomePage">返回主页</a>
                    </li>
                    <li class="active">
                        <strong>编辑部信息中心</strong>
                    </li>
                </ol>
            </div>
            <div class="col-lg-2">
            </div>
        </div>

        <div class="wrapper wrapper-content animated fadeIn">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>
                                您隶属于：${Newsroom.NName}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;编辑部简介:${Newsroom.NIntroduction}
                            </h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="toastr_notifications.html#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li><a href="toastr_notifications.html#">Config option 1</a>
                                    </li>
                                    <li><a href="toastr_notifications.html#">Config option 2</a>
                                    </li>
                                </ul>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>

                        <div class="ibox-content">

                            <!--数据列表-->
                            <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                                <thead>
                                <tr>
                                    <th class="sorting_asc">稿件标题</th>
                                    <th class="sorting_asc">稿件作者</th>
                                    <th class="sorting_asc">稿件类型</th>
                                    <th class="sorting_asc">浏览次数</th>
                                    <th class="sorting_asc">上传日期</th>
                                    <th class="sorting_asc">审核状态</th>
                                    <th class="sorting_asc">审核专家</th>
                                    <th class="sorting_asc">修改审核专家</th>
                                    <th class="text-center">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="allArticle" items="${AllArticle.list}">
                                    <form action="${pageContext.request.contextPath}/newsroom/updateArticleExpert?AId=${allArticle.AId}&BelongNId=${Newsroom.NId}"
                                          method="post">
                                        <tr>
                                            <td>${allArticle.AName}</td>
                                            <td>${allArticle.UAccount}</td>
                                            <td>
                                                <c:if test="${allArticle.ATag=='politics'}">政治</c:if>
                                                <c:if test="${allArticle.ATag=='economy'}">经济</c:if>
                                                <c:if test="${allArticle.ATag=='civilization'}">文化</c:if>
                                                <c:if test="${allArticle.ATag=='military'}">军事</c:if>
                                                <c:if test="${allArticle.ATag=='livelihood'}">生活</c:if>
                                            </td>
                                            <td>${allArticle.AGlanceNum}</td>
                                            <td>${allArticle.ATime}</td>
                                            <td>
                                                <c:if test="${allArticle.APass=='0'}">&nbsp;未审核</c:if>
                                                <c:if test="${allArticle.APass=='1'}">&nbsp;已审核</c:if>
                                            </td>
                                            <td>${allArticle.AReviewer}</td>
                                            <td>
                                                <select name="AReviewer" class="input-sm form-control input-s-sm inline"
                                                        size="1"
                                                        id="AReviewer">
                                                    <!--
                                                    <option value="1">第一编辑部</option>
                                                    <option value="2">第二编辑部</option>
                                                    <option value="3">第三编辑部</option>
                                                    -->

                                                    <c:forEach var="allExpert" items="${AllExpert}">
                                                        <option value="${allExpert.UName}">
                                                                ${allExpert.UName}
                                                        </option>
                                                    </c:forEach>

                                                </select>
                                            </td>
                                            <td class="text-center">
                                                <!--
                                                <a href="${pageContext.request.contextPath}/newsroom/updateUserNewsroom?UId=${NewsroomUser.UId}&NId=${NId}"
                                                   class="btn bg-olive btn-xs">修改</a>
                                                   -->
                                                <button class="btn btn-primary btn-xs" type="submit"
                                                        style="width: 100px ">
                                                    修改
                                                </button>
                                            </td>
                                        </tr>
                                    </form>
                                </c:forEach>
                                </tbody>
                            </table>
                            <!--数据列表/-->

                            <div class="box-tools pull-right">
                                <ul class="pagination">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/newsroom/toManageArticle?NId=<%=user.getNId()%>&page=1&size=9"
                                           aria-label="Previous">首页</a></li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/newsroom/toManageArticle?NId=<%=user.getNId()%>&page=${AllArticle.pageNum-1}&size=9">上一页</a>
                                    </li>
                                    <c:forEach begin="1" end="${AllArticle.pages}" var="pageNum">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/newsroom/toManageArticle?NId=<%=user.getNId()%>&page=${pageNum}&size=9">${pageNum}</a>
                                        </li>
                                    </c:forEach>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/newsroom/toManageArticle?NId=<%=user.getNId()%>&page=${AllArticle.pageNum+1}&size=9">下一页</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/newsroom/toManageArticle?NId=<%=user.getNId()%>&page=${AllArticle.pages}&size=9"
                                           aria-label="Next">尾页</a></li>
                                </ul>
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

<!-- Toastr script -->
<script src="${pageContext.request.contextPath}/js/plugins/toastr/toastr.min.js"></script>

<script> var selected_val = document.getElementById(UId).value;</script>

<script>
    var select = document.getElementById("UId");
    var NowNewsroom = "${sessionScope.User.UId}";
    for (var i = 0; i < select.options.length; i++) {
        if (select.options[i].innerHTML == NowNewsroom) {
            select.options[i].selected = true;
            break;
        }
    }
</script>

<script type="text/javascript">

    $(function () {
        var i = -1;
        var toastCount = 0;
        var $toastlast;
        var getMessage = function () {
            var msg = 'Hi, welcome to Inspinia. This is example of Toastr notification box.';
            return msg;
        };

        $('#showsimple').click(function () {
            // Display a success toast, with a title
            toastr.success('Without any options', 'Simple notification!')
        });
        $('#showtoast').click(function () {
            var shortCutFunction = $("#toastTypeGroup input:radio:checked").val();
            var msg = $('#message').val();
            var title = $('#title').val() || '';
            var $showDuration = $('#showDuration');
            var $hideDuration = $('#hideDuration');
            var $timeOut = $('#timeOut');
            var $extendedTimeOut = $('#extendedTimeOut');
            var $showEasing = $('#showEasing');
            var $hideEasing = $('#hideEasing');
            var $showMethod = $('#showMethod');
            var $hideMethod = $('#hideMethod');
            var toastIndex = toastCount++;
            toastr.options = {
                closeButton: $('#closeButton').prop('checked'),
                debug: $('#debugInfo').prop('checked'),
                progressBar: $('#progressBar').prop('checked'),
                preventDuplicates: $('#preventDuplicates').prop('checked'),
                positionClass: $('#positionGroup input:radio:checked').val() || 'toast-top-right',
                onclick: null
            };
            if ($('#addBehaviorOnToastClick').prop('checked')) {
                toastr.options.onclick = function () {
                    alert('You can perform some custom action after a toast goes away');
                };
            }
            if ($showDuration.val().length) {
                toastr.options.showDuration = $showDuration.val();
            }
            if ($hideDuration.val().length) {
                toastr.options.hideDuration = $hideDuration.val();
            }
            if ($timeOut.val().length) {
                toastr.options.timeOut = $timeOut.val();
            }
            if ($extendedTimeOut.val().length) {
                toastr.options.extendedTimeOut = $extendedTimeOut.val();
            }
            if ($showEasing.val().length) {
                toastr.options.showEasing = $showEasing.val();
            }
            if ($hideEasing.val().length) {
                toastr.options.hideEasing = $hideEasing.val();
            }
            if ($showMethod.val().length) {
                toastr.options.showMethod = $showMethod.val();
            }
            if ($hideMethod.val().length) {
                toastr.options.hideMethod = $hideMethod.val();
            }
            if (!msg) {
                msg = getMessage();
            }
            $("#toastrOptions").text("Command: toastr["
                + shortCutFunction
                + "](\""
                + msg
                + (title ? "\", \"" + title : '')
                + "\")\n\ntoastr.options = "
                + JSON.stringify(toastr.options, null, 2)
            );
            var $toast = toastr[shortCutFunction](msg, title); // Wire up an event handler to a button in the toast, if it exists
            $toastlast = $toast;
            if ($toast.find('#okBtn').length) {
                $toast.delegate('#okBtn', 'click', function () {
                    alert('you clicked me. i was toast #' + toastIndex + '. goodbye!');
                    $toast.remove();
                });
            }
            if ($toast.find('#surpriseBtn').length) {
                $toast.delegate('#surpriseBtn', 'click', function () {
                    alert('Surprise! you clicked me. i was toast #' + toastIndex + '. You could perform an action here.');
                });
            }
        });

        function getLastToast() {
            return $toastlast;
        }

        $('#clearlasttoast').click(function () {
            toastr.clear(getLastToast());
        });
        $('#cleartoasts').click(function () {
            toastr.clear();
        });
    })
</script>

</body>

</html>

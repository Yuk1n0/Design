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
                            <div class="form-group" style="text-align:center">
                                <label>编辑部通知</label>
                                <textarea class="comments" rows=4 name=s1 cols=27
                                          onpropertychange="this.style.posHeight=this.scrollHeight"
                                          disabled>${Newsroom.NNotice}</textarea>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <!--数据列表-->
                            <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                                <thead>
                                <tr>
                                    <th class="sorting_asc">用户邮箱</th>
                                    <th class="sorting_asc">用户名</th>
                                    <th class="sorting_asc">用户介绍</th>
                                    <th class="sorting_asc">用户身份</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="NewsroomUser" items="${NewsroomUsers.list}">
                                    <tr>
                                        <td>${NewsroomUser.UAccount}</td>
                                        <td>${NewsroomUser.UName}</td>
                                        <td>${NewsroomUser.UIntroduction}</td>
                                        <td>
                                            <c:if test="${NewsroomUser.UPower=='1'}">作者</c:if>
                                            <c:if test="${NewsroomUser.UPower=='2'}">编辑</c:if>
                                            <c:if test="${NewsroomUser.UPower=='3'}">专家</c:if>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <!--数据列表/-->
                            <div class="box-tools pull-right">
                                <ul class="pagination">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/newsroom/toNewsroom?NId=<%=user.getNId()%>&page=1&size=9"
                                           aria-label="Previous">首页</a></li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/newsroom/toNewsroom?NId=<%=user.getNId()%>&page=${NewsroomUsers.pageNum-1}&size=9">上一页</a>
                                    </li>
                                    <c:forEach begin="1" end="${NewsroomUsers.pages}" var="pageNum">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/newsroom/toNewsroom?NId=<%=user.getNId()%>&page=${pageNum}&size=9">${pageNum}</a>
                                        </li>
                                    </c:forEach>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/newsroom/toNewsroom?NId=<%=user.getNId()%>&page=${NewsroomUsers.pageNum+1}&size=9">下一页</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/newsroom/toNewsroom?NId=<%=user.getNId()%>&page=${NewsroomUsers.pages}&size=9"
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

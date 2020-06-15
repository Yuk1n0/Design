<%@ page import="com.ccpv.bean.User" %>
<%@ page import="com.fasterxml.jackson.databind.ser.Serializers" %>
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

    <title>稿件管理系统 | 用户信息管理</title>

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="${pageContext.request.contextPath}/css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

</head>

<body>

<div id="wrapper">

    <jsp:include page="aside.jsp"></jsp:include>

    <div id="page-wrapper" class="gray-bg">

        <jsp:include page="header.jsp"></jsp:include>

        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>用户信息管理中心</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${pageContext.request.contextPath}/user/HomePage">返回主页</a>
                    </li>
                    <li class="active">
                        <strong>个人信息中心</strong>
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
                            <h5>查看/修改个人信息</h5>
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
                        <form action="${pageContext.request.contextPath}/user/update?UAccount=<%=user.getUAccount()%>"
                              method="post">
                            <div class="ibox-content">

                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="UAccount">用户账户</label>
                                            <input id="UAccount" type="text" name="UAccount" class="form-control"
                                                   disabled="disabled"
                                                   value="<%=user.getUAccount()%>"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="UName">用户名</label>
                                            <textarea class="form-control" id="UName" name="UName"
                                                      rows="3"
                                            ><%=user.getUName()%></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label for="UIntroduction">个人简介</label>
                                            <textarea class="form-control" id="UIntroduction" name="UIntroduction"
                                                      rows="3"
                                            ><%=user.getUIntroduction()%></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label for="UPassword">密码</label>
                                            <input id="UPassword" type="text" class="form-control" name="UPassword"
                                                   placeholder="Enter your new password${pageContext.request.contextPath}."
                                                   value=""/>
                                        </div>
                                        <input type="hidden" name="UPower" value="<%=user.getUPower()%>">
                                        <input type="hidden" name="NId" value="<%=user.getNId()%>">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-12">

                                        <button type="submit" class="btn btn-primary" id="showtoast">保存更改</button>

                                    </div>
                                </div>
                            </div>
                        </form>
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

<script type="text/javascript" src="${pageContext.request.contextPath}/js/crypto-js-4.0.0/crypto-js.js"></script>

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

<script>
    // Create Base64 Objectvar
    var isFirst = true;
    if (isFirst) {
        Base64 = {
            _keyStr: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
            decode: function (e) {
                var t = "";
                var n, r, i;
                var s, o, u, a;
                var f = 0;
                e = e.replace(/[^A-Za-z0-9+/=]/g, "");
                while (f < e.length) {
                    s = this._keyStr.indexOf(e.charAt(f++));
                    o = this._keyStr.indexOf(e.charAt(f++));
                    u = this._keyStr.indexOf(e.charAt(f++));
                    a = this._keyStr.indexOf(e.charAt(f++));
                    n = s << 2 | o >> 4;
                    r = (o & 15) << 4 | u >> 2;
                    i = (u & 3) << 6 | a;
                    t = t + String.fromCharCode(n);
                    if (u != 64) {
                        t = t + String.fromCharCode(r)
                    }
                    if (a != 64) {
                        t = t + String.fromCharCode(i)
                    }
                }
                t = Base64._utf8_decode(t);
                isFirst = false;
                return t
            }, _utf8_decode: function (e) {
                var t = "";
                var n = 0;
                var r = c1 = c2 = 0;
                while (n < e.length) {
                    r = e.charCodeAt(n);
                    if (r < 128) {
                        t += String.fromCharCode(r);
                        n++
                    } else if (r > 191 && r < 224) {
                        c2 = e.charCodeAt(n + 1);
                        t += String.fromCharCode((r & 31) << 6 | c2 & 63);
                        n += 2
                    } else {
                        c2 = e.charCodeAt(n + 1);
                        c3 = e.charCodeAt(n + 2);
                        t += String.fromCharCode((r & 15) << 12 | (c2 & 63) << 6 | c3 & 63);
                        n += 3
                    }
                }
                return t
            }
        }
    }
</script>

<script type="text/javascript">
    //关于js中取值问题
    $(function () {
        var encrypt = "<%=user.getUPassword()%>";
        /*
        console.log(encryptedBase64Str);
        console.log(key);
        var decryptedData = CryptoJS.AES.decrypt(encryptedBase64Str, key, {
            mode: CryptoJS.mode.ECB,
            padding: CryptoJS.pad.Pkcs7
        })
        console.log(decryptedData);
        var decryptedStr = decryptedData.toString(CryptoJS.enc.Utf8);
        console.log(decryptedStr);
        */

        /*
        var decData = Base64.decode(encryptedBase64Str);
        console.log(decData);
        var encrypt = decData.toString(CryptoJS.enc.Utf8);
        console.log(encrypt);
        var skey = key.toString(CryptoJS.enc.Utf8);
        console.log(skey);
        var decryptedData = CryptoJS.AES.decrypt(encrypt, skey, {
            mode: CryptoJS.mode.ECB,
            padding: CryptoJS.pad.Pkcs7
        })
        console.log(decryptedData);
        var decrypt = decryptedData.toString(CryptoJS.enc.Utf8);
        console.log(decrypt);
        */
        var decrypt = Base64.decode(encrypt);
        document.getElementById("UPassword").value = decrypt;
    })
</script>

</body>

</html>

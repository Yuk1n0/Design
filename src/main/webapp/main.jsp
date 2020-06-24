<%@ page import="com.ccpv.bean.User" %>
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

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="../css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <!-- Gritter -->
    <link href="../js/plugins/gritter/jquery.gritter.css" rel="stylesheet">

    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">

</head>

<body>
<div id="wrapper">

    <!-- 左侧导航侧栏 -->
    <jsp:include page="aside.jsp"></jsp:include>
    <!-- 左侧导航侧栏 /-->

    <!--------------------------------右边页面------------------------------------------->
    <div id="page-wrapper" class="gray-bg dashbard-1">

        <!---------头部------------>
        <jsp:include page="header.jsp"></jsp:include>

        <!-----------首页展示内容------------------>
        <jsp:include page="landing.jsp"></jsp:include>

        <!-------------------底部版本号信息------------------------>
        <jsp:include page="copyright.jsp"></jsp:include>

    </div>

    <%--<!-----------------底部聊天小窗口----------------->--%>
    <%--<jsp:include page="small_chat.jsp"></jsp:include>--%>
    <!-----------------头部位置的右边菜单栏----------------------->
    <jsp:include page="right_sidebar.jsp"></jsp:include>

</div>

<!-- Mainly scripts -->
<script src="../js/jquery-2.1.1.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Flot -->
<script src="../js/plugins/flot/jquery.flot.js"></script>
<script src="../js/plugins/flot/jquery.flot.tooltip.min.js"></script>
<script src="../js/plugins/flot/jquery.flot.spline.js"></script>
<script src="../js/plugins/flot/jquery.flot.resize.js"></script>
<script src="../js/plugins/flot/jquery.flot.pie.js"></script>

<!-- Peity -->
<script src="../js/plugins/peity/jquery.peity.min.js"></script>
<script src="../js/demo/peity-demo.js"></script>

<!-- Custom and plugin javascript -->
<script src="../js/inspinia.js"></script>
<script src="../js/plugins/pace/pace.min.js"></script>

<!-- jQuery UI -->
<script src="../js/plugins/jquery-ui/jquery-ui.min.js"></script>

<!-- GITTER -->
<script src="../js/plugins/gritter/jquery.gritter.min.js"></script>

<!-- Sparkline -->
<script src="../js/plugins/sparkline/jquery.sparkline.min.js"></script>

<!-- Sparkline demo data  -->
<script src="../js/demo/sparkline-demo.js"></script>

<!-- ChartJS-->
<script src="../js/plugins/chartJs/Chart.min.js"></script>

<!-- Toastr -->
<script src="../js/plugins/toastr/toastr.min.js"></script>

<script>
    $(document).ready(function () {
        setTimeout(function () {
            toastr.options = {
                closeButton: true,
                progressBar: true,
                showMethod: 'slideDown',
                timeOut: 4000
            };
            var UPower = <%=user.getUPower()%>;
            if (UPower == 1)
                toastr.success('作者登录成功', '欢迎进入稿件管理系统');
            if (UPower == 2)
                toastr.success('编辑登录成功', '欢迎进入稿件管理系统');
            if (UPower == 3)
                toastr.success('专家登录成功', '欢迎进入稿件管理系统');
        }, 1300);

        var data1 = [
            [0, 4], [1, 8], [2, 5], [3, 10], [4, 4], [5, 16], [6, 5], [7, 11], [8, 6], [9, 11], [10, 30], [11, 10], [12, 13], [13, 4], [14, 3], [15, 3], [16, 6]
        ];
        var data2 = [
            [0, 1], [1, 0], [2, 2], [3, 0], [4, 1], [5, 3], [6, 1], [7, 5], [8, 2], [9, 3], [10, 2], [11, 1], [12, 0], [13, 2], [14, 8], [15, 0], [16, 0]
        ];
        $("#flot-dashboard-chart").length && $.plot($("#flot-dashboard-chart"), [
                data1, data2
            ],
            {
                series: {
                    lines: {
                        show: false,
                        fill: true
                    },
                    splines: {
                        show: true,
                        tension: 0.4,
                        lineWidth: 1,
                        fill: 0.4
                    },
                    points: {
                        radius: 0,
                        show: true
                    },
                    shadowSize: 2
                },
                grid: {
                    hoverable: true,
                    clickable: true,
                    tickColor: "#d5d5d5",
                    borderWidth: 1,
                    color: '#d5d5d5'
                },
                colors: ["#1ab394", "#1C84C6"],
                xaxis: {},
                yaxis: {
                    ticks: 4
                },
                tooltip: false
            }
        );

        var doughnutData = [
            {
                value: 300,
                color: "#a3e1d4",
                highlight: "#1ab394",
                label: "App"
            },
            {
                value: 50,
                color: "#dedede",
                highlight: "#1ab394",
                label: "Software"
            },
            {
                value: 100,
                color: "#A4CEE8",
                highlight: "#1ab394",
                label: "Laptop"
            }
        ];

        var doughnutOptions = {
            segmentShowStroke: true,
            segmentStrokeColor: "#fff",
            segmentStrokeWidth: 2,
            percentageInnerCutout: 45, // This is 0 for Pie charts
            animationSteps: 100,
            animationEasing: "easeOutBounce",
            animateRotate: true,
            animateScale: false
        };

        var ctx = document.getElementById("doughnutChart").getContext("2d");
        var DoughnutChart = new Chart(ctx).Doughnut(doughnutData, doughnutOptions);

        var polarData = [
            {
                value: 300,
                color: "#a3e1d4",
                highlight: "#1ab394",
                label: "App"
            },
            {
                value: 140,
                color: "#dedede",
                highlight: "#1ab394",
                label: "Software"
            },
            {
                value: 200,
                color: "#A4CEE8",
                highlight: "#1ab394",
                label: "Laptop"
            }
        ];

        var polarOptions = {
            scaleShowLabelBackdrop: true,
            scaleBackdropColor: "rgba(255,255,255,0.75)",
            scaleBeginAtZero: true,
            scaleBackdropPaddingY: 1,
            scaleBackdropPaddingX: 1,
            scaleShowLine: true,
            segmentShowStroke: true,
            segmentStrokeColor: "#fff",
            segmentStrokeWidth: 2,
            animationSteps: 100,
            animationEasing: "easeOutBounce",
            animateRotate: true,
            animateScale: false
        };
        var ctx = document.getElementById("polarChart").getContext("2d");
        var Polarchart = new Chart(ctx).PolarArea(polarData, polarOptions);

    });
</script>

</body>
</html>

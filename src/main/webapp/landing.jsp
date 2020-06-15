<%@ page import="com.ccpv.bean.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%
    User user = (User) session.getAttribute("User");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>稿件管理系统 | 首页</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- Animation CSS -->
    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
</head>

<body id="page-top" class="landing-page">

<!--------------------首页展示的图片------------------------->
<div id="inSlider" class="carousel carousel-fade" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#inSlider" data-slide-to="0" class="active"></li>
        <li data-target="#inSlider" data-slide-to="1"></li>
    </ol>
    <div class="carousel-inner" role="listbox">

        <div class="item active">
            <div class="container">
                <div class="carousel-image wow zoomIn">
                    <img src="${pageContext.request.contextPath}/img/landing/laptop.png" alt="laptop"/>
                </div>
            </div>
            <!-- Set background for slide in css -->
            <div class="header-back one"></div>
        </div>
    </div>
</div>

<section id="features" class="container services">
    <div class="row">
        <div class="col-sm-3">
            <h2>随时随地编写您的稿件</h2>
            <p>本网站架设于互联网上，您可以在任何有互联网的角落上传您的稿件</p>
            <br><br>
            <!--
            <p><a class="navy-link" href="${pageContext.request.contextPath}/article/toFormEditor" role="button">详情
                &raquo;</a></p>
             -->
        </div>
        <div class="col-sm-3">
            <h2>编辑部分类</h2>
            <p>我们会根据稿件作者的创作能力，将其分配到不同的编辑部工作
                <br><br>
            </p>
            <!--
            <p><a class="navy-link" href="${pageContext.request.contextPath}/software/toUploadUI" role="button">详情
                &raquo;</a></p>
             -->
        </div>
        <div class="col-sm-3">
            <h2>编辑与专家审核</h2>
            <p>我们的编辑以及相关的专家会对作者的稿件进行仔细审核，并提出指导意见
                <br><br>
            </p>
            <!--
            <p><a class="navy-link"
                  href="${pageContext.request.contextPath}/download/toProductList?UAccount=<%=user.getUAccount()%>"
                  role="button">详情 &raquo;</a></p>
             -->
        </div>
        <div class="col-sm-3">
            <h2>发现更多有趣的灵魂</h2>
            <p>在本网站，您可以发现与您文笔相同的伙伴，我们提供有限的个人联系方式供您联络
                <br><br>
            </p>
            <!--
            <p><a class="navy-link" href="${pageContext.request.contextPath}/follow/findMyStart" role="button">详情
                &raquo;</a></p>
             -->
        </div>
    </div>
</section>

<hr style="background-color: darkturquoise;height: 1px">

<!-----------------网站简介----------------------->
<section class="container features">

    <div class="row">
        <div class="col-lg-12 text-center">
            <div class="navy-line"></div>
            <h1>网站特色<br/></h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3 text-center wow fadeInLeft">
            <div>
                <i class="fa fa-mobile features-icon"></i>
                <h2>跨平台</h2>
                <p>你可以在所有设备上，无论PC，手机，PAD等访问都可以自动调整网页的浏览格式，让浏览网页更舒服和容易</p>
            </div>
            <div class="m-t-lg">
                <i class="fa fa-bar-chart features-icon"></i>
                <h2>导航栏</h2>
                <p>导航栏清晰明了，就算是第一次使用/访问本网站，你也可以很容易地找到自己需求的功能</p>
            </div>
        </div>
        <div class="col-md-6 text-center  wow zoomIn">
            <img src="${pageContext.request.contextPath}/img/landing/perspective.png" alt="dashboard"
                 class="img-responsive">
        </div>
        <div class="col-md-3 text-center wow fadeInRight">
            <div>
                <i class="fa fa-envelope features-icon"></i>
                <h2>聊天室</h2>
                <p>当您在工作中遇到困难，不妨到聊天室中提出您的疑惑，我们的编辑/专家看到后会及时解答您的问题</p>
            </div>
            <div class="m-t-lg">
                <i class="fa fa-google features-icon"></i>
                <h2>多用户登录</h2>
                <p>本网站支持多用户同时登录，您可以实时的查看到他人上传的稿件</p>
            </div>
        </div>
    </div>
</section>
<hr style="background-color: darkturquoise;height: 1px">

<!--------------------------联系我们------------------------------>
<section id="contact" class="gray-section contact">
    <div class="container">
        <div class="row m-b-lg">
            <div class="col-lg-12 text-center">
                <div class="navy-line"></div>
                <h1>联系我们</h1>
                <p>您的建议将是我们前进的指南针</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 text-center">
                <a href="mailto:test@email.com" class="btn btn-primary">给我们发邮件</a>
                <p class="m-t-sm">
                    在社交媒体上关注我们
                </p>
                <ul class="list-inline social-icon">
                    <li><a href="#"><i class="fa fa-twitter"></i></a>
                    </li>
                    <li><a href="#"><i class="fa fa-facebook"></i></a>
                    </li>
                    <li><a href="#"><i class="fa fa-linkedin"></i></a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 text-center m-t-lg m-b-lg">
                <p><strong>Copyright By Yuk1n0 &copy; 2020</strong></p>
            </div>
        </div>
    </div>
</section>

<!-- Mainly scripts -->
<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="${pageContext.request.contextPath}/js/inspinia.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/pace/pace.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/wow/wow.min.js"></script>

<script>

    $(document).ready(function () {

        $('body').scrollspy({
            target: '.navbar-fixed-top',
            offset: 80
        });

        // Page scrolling feature
        $('a.page-scroll').bind('click', function (event) {
            var link = $(this);
            $('html, body').stop().animate({
                scrollTop: $(link.attr('href')).offset().top - 50
            }, 500);
            event.preventDefault();
            $("#navbar").collapse('hide');
        });
    });

    var cbpAnimatedHeader = (function () {
        var docElem = document.documentElement,
            header = document.querySelector('.navbar-default'),
            didScroll = false,
            changeHeaderOn = 200;

        function init() {
            window.addEventListener('scroll', function (event) {
                if (!didScroll) {
                    didScroll = true;
                    setTimeout(scrollPage, 250);
                }
            }, false);
        }

        function scrollPage() {
            var sy = scrollY();
            if (sy >= changeHeaderOn) {
                $(header).addClass('navbar-scroll')
            } else {
                $(header).removeClass('navbar-scroll')
            }
            didScroll = false;
        }

        function scrollY() {
            return window.pageYOffset || docElem.scrollTop;
        }

        init();

    })();

    // Activate WOW.js plugin for animation on scrol
    new WOW().init();

</script>

</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>首页</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <!-- google font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet" type="text/css"/>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/ionicons.css" rel="stylesheet" type="text/css">
    <link href="assets/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="assets/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="assets/css/weather-icons.min.css" rel="stylesheet">
    <!--Morris Chart -->
    <link rel="stylesheet" href="assets/js/index/morris-chart/morris.css">
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/responsive.css" rel="stylesheet">
</head>

<body>
<div class="wrapper">
    <!-- header -->
    <header class="main-header">
        <div class="container_header">
            <div class="logo d-flex align-items-center">
                <a href="#"> <strong class="logo_icon"> <img src="assets/images/small-logo.png" alt=""> </strong> <span
                        class="logo-default"> <img src="assets/images/logo2.png" alt=""> </span> </a>
                <div class="icon_menu full_menu">
                    <a href="#" class="menu-toggler sidebar-toggler"></a>
                </div>
            </div>
            <div class="right_detail">
                <div class="row d-flex align-items-center min-h pos-md-r">
                    <div class="col-xl-5 col-3 search_col ">
                        <div class="top_function">

                            <div class="search">
                                <a id="toggle_res_search" data-toggle="collapse" data-target="#search_form"
                                   class="res-only-view collapsed" href="javascript:void(0);"
                                   aria-expanded="false"> <i class=" icon-magnifier"></i> </a>
                                <form id="search_form" role="search" class="search-form collapse" action="#">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Search...">
                                        <button type="button" class="btn" data-target="#search_form"
                                                data-toggle="collapse" aria-label="Close">
                                            <i class="ion-android-search"></i>
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-7 col-9 d-flex justify-content-end">
                        <div class="right_bar_top d-flex align-items-center">


                            <!--   <div class="dropdown dropdown-notification">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"
                                   data-hover="dropdown" data-close-others="true" aria-expanded="false"> <i
                                        class="fa fa-bell-o"></i> <span class="badge_coun"> 6 </span> </a>
                                <ul class="dropdown-menu scroll_auto height_fixed">
                                    <li class="bigger">
                                        <h3><span class="bold">Notifications</span></h3>
                                        <span class="notification-label">New 6</span>
                                    </li>
                                    <li>
                                        <ul class="dropdown-menu-list">
                                            <li>
                                                <a href="javascript:;"> <span class="time">just now</span> <span
                                                        class="details"> <span
                                                        class="notification-icon deepPink-bgcolor"> <i
                                                        class="fa fa-check"></i> </span> Congratulations!. </span> </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;"> <span class="time">3 mins</span> <span
                                                        class="details"> <span class="notification-icon purple-bgcolor"> <i
                                                        class="fa fa-user o"></i> </span> <b>John Micle </b>is now following you. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;"> <span class="time">7 mins</span> <span
                                                        class="details"> <span
                                                        class="notification-icon blue-bgcolor"> <i
                                                        class="fa fa-comments-o"></i> </span> <b>Sneha Jogi </b>sent you a message. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;"> <span class="time">12 mins</span> <span
                                                        class="details"> <span class="notification-icon pink"> <i
                                                        class="fa fa-heart"></i> </span> <b>Ravi Patel </b>like your photo. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;"> <span class="time">15 mins</span> <span
                                                        class="details"> <span class="notification-icon yellow"> <i
                                                        class="fa fa-warning"></i> </span> Warning! </span> </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;"> <span class="time">10 hrs</span> <span
                                                        class="details"> <span class="notification-icon red"> <i
                                                        class="fa fa-times"></i> </span> Application error. </span> </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>


                            <div class="dropdown dropdown-inbox">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"
                                   data-hover="dropdown" data-close-others="true"> <i class="fa fa-envelope-o"></i>
                                    <span class="badge_coun"> 2 </span> </a>
                                <ul class="dropdown-menu scroll_auto height_fixed">
                                    <li class="bigger">
                                        <h3><span class="bold">Messages</span></h3>
                                        <span class="notification-label">New 2</span>
                                    </li>
                                    <li>
                                        <ul class="dropdown-menu-list">
                                            <li>
                                                <a href="#"> <span class="photo"> <img src="assets/images/about-1.jpg"
                                                                                       class="img-circle"
                                                                                       alt=""> </span> <span
                                                        class="subject"> <span class="from"> Sarah Smith </span> <span
                                                        class="time">Just Now </span> </span> <span class="message"> Jatin I found you on LinkedIn... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#"> <span class="photo"> <img src="assets/images/about-1.jpg"
                                                                                       class="img-circle"
                                                                                       alt=""> </span> <span
                                                        class="subject"> <span class="from"> Sarah Smith </span> <span
                                                        class="time">Just Now </span> </span> <span class="message"> Jatin I found you on LinkedIn... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#"> <span class="photo"> <img src="assets/images/about-1.jpg"
                                                                                       class="img-circle"
                                                                                       alt=""> </span> <span
                                                        class="subject"> <span class="from"> Sarah Smith </span> <span
                                                        class="time">Just Now </span> </span> <span class="message"> Jatin I found you on LinkedIn... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#"> <span class="photo"> <img src="assets/images/about-1.jpg"
                                                                                       class="img-circle"
                                                                                       alt=""> </span> <span
                                                        class="subject"> <span class="from"> Sarah Smith </span> <span
                                                        class="time">Just Now </span> </span> <span class="message"> Jatin I found you on LinkedIn... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#"> <span class="photo"> <img src="assets/images/about-1.jpg"
                                                                                       class="img-circle"
                                                                                       alt=""> </span> <span
                                                        class="subject"> <span class="from"> Sarah Smith </span> <span
                                                        class="time">Just Now </span> </span> <span class="message"> Jatin I found you on LinkedIn... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#"> <span class="photo"> <img src="assets/images/about-1.jpg"
                                                                                       class="img-circle"
                                                                                       alt=""> </span> <span
                                                        class="subject"> <span class="from"> Sarah Smith </span> <span
                                                        class="time">Just Now </span> </span> <span class="message"> Jatin I found you on LinkedIn... </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>

                            -->  <!-- Dropdown_User -->
                            <div class="dropdown dropdown-user">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"
                                   data-hover="dropdown" data-close-others="true" aria-expanded="true">
                                    <img class="img-circle pro_pic" src="/uploads/avatars/${sessionScope.USER.pic}" alt="">
                                </a>
                                <ul class="dropdown-menu dropdown-menu-default">



                                    <li class="divider"></li>

                                    <li>
                                        <a href="/logout"> <i class="icon-logout"></i>退出登录</a>
                                    </li>
                                </ul>
                            </div>
                            <!-- Dropdown_User_End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </header>
    <!-- header_End -->
    <!-- Content_right -->
    <div class="container_full">

        <div class="side_bar scroll_auto">
            <div class="user-panel">
                <div class="user_image">
                    <img src="/uploads/avatars/${sessionScope.USER.pic}" class="img-circle mCS_img_loaded" alt="User Image">
                </div>
                <div class="info">
                    <p>
                        ${sessionScope.USER.name}
                    </p>
                    <a href="#"> <i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>

            <ul id="dc_accordion" class="sidebar-menu tree">

                <li class="menu_sub">
                    <a href="/index">
                        <i class="icon-grid text-aqua"></i> <span>首页</span>
                    </a>
                </li>

                <li class="menu_sub">
                    <a href="/getformpage">
                        <i class="fa fa fa-newspaper-o text-aqua"></i> <span>报修申请</span>
                    </a>
                </li>

                <li class="menu_sub dcjq-parent-li">
                    <a href="#" class="dcjq-parent">
                        <i class="fa fa fa-calendar text-aqua"></i>
                        <span>报修记录</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="down_menu" style="display: block;">
                        <li>
                            <a href="/getRecordDoingPage">正在进行的订单</a>
                        </li>
                        <li>
                            <a href="/getRecordDonePage">已完成订单</a>
                        </li>
                    </ul>
                </li>

                <li class="menu_sub">
                    <a href="/getSearchPage/alice">
                        <i class="fa fa-search text-aqua"></i> <span>报修查询</span>
                    </a>
                </li>

                <li class="menu_sub">
                    <a href="/profilepage">
                        <i class="fa fa fa-home text-aqua"></i> <span>个人中心</span>
                    </a>
                </li>
            </ul>
        </div>

        <div class="content_wrapper" style="min-height: inherit;">
            <div class="container-fluid">
                <!-- breadcrumb -->
                <div class="page-heading">
                    <div class="row d-flex align-items-center">
                        <div class="col-md-6">
                            <div class="page-breadcrumb">
                                <h1>首页</h1>
                            </div>
                        </div>
                        <div class="col-md-6 justify-content-md-end d-md-flex">
                            <div class="breadcrumb_nav">
                                <ol class="breadcrumb">
                                    <li>
                                        <i class="fa fa-home"></i>
                                        <a class="parent-item" href="#">首页</a>
                                        <i class="fa fa-angle-right"></i>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- breadcrumb_End -->

                <!-- Section -->
                <section class="chart_section">

                    <div class="row">
                        <div class="col-xl-12 col-sm-12 mb-12" style="margin-bottom: 24px;">
                            <div class="card border-0 text-light">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-12" style="display: flex;justify-content: center;">
                                            <img src="/images/liucheng.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xl-3 col-sm-6 mb-4">
                            <div class="card border-0 text-light">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="homepage_single">
                                                <span class="sec_icon"><i class="fa fa-wpforms" aria-hidden="true"></i></span>
                                                <div class="homepage_fl_right">
                                                    <h4 class="mt-0">已提交的申请</h4>
                                                    <h3><span class="single-count">${all}</span></h3>
                                                </div>
                                                <p>
                                                    提交的申请总数
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-3 col-sm-6 mb-4">
                            <div class="card border-0 text-light">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="homepage_single">
                                                <span class="sec_icon"><i class="fa fa-hand-o-right"
                                                                          aria-hidden="true"></i></span>
                                                <div class="homepage_fl_right">
                                                    <h4 class="mt-0">已受理的申请</h4>
                                                    <h3><span class="single-count">${dealed}</span></h3>
                                                </div>
                                                <p>
                                                    已经指派给维修人员
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-3 col-sm-6 mb-4">
                            <div class="card border-0 text-light">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="homepage_single">
                                                <span class="sec_icon"><i class="fa fa-check"
                                                                          aria-hidden="true"></i></span>
                                                <div class="homepage_fl_right">
                                                    <h4 class="mt-0">已确认的申请</h4>
                                                    <h3><span class="single-count">${todo}</span></h3>
                                                </div>
                                                <p>
                                                    维修人员已确认任务
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-3 col-sm-6 mb-4">
                            <div class="card border-0 text-light">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="homepage_single">
                                                <span class="sec_icon"><i class="fa fa-check-square-o"
                                                                          aria-hidden="true"></i></span>
                                                <div class="homepage_fl_right">
                                                    <h4 class="mt-0">已完成的申请</h4>
                                                    <h3><span class="single-count">${finish}</span></h3>
                                                </div>
                                                <p>
                                                    维修人员已完成维修
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </section>
                <!-- Section_End -->

            </div>
        </div>
    </div>
    <!-- Content_right_End -->
    <!-- Footer -->
    <footer class="footer ptb-20">
        <div class="row">
            <div class="col-md-12 text-center">
                <div class="copy_right">
                    <p>
                        2020 © Designed By
                        <a href="http://www.aclic.com/">Aclic</a>
                    </p>
                </div>
                <a id="back-to-top" href="#"> <i class="ion-android-arrow-up"></i> </a>
            </div>
        </div>
    </footer>
    <!-- Footer_End -->
</div>
<script type="text/javascript" src="assets/js/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/popper.min.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
<!--vectormap-->
<script src="assets/js/index/jquery-jvectormap-1.2.2.min.js"></script>
<script src="assets/js/index/jquery-jvectormap-world-mill-en.js"></script>
<script src="assets/js/index/vmap-init.js"></script>

<!--echarts-->
<script type="text/javascript" src="assets/js/index/echarts-all-3.js"></script>
<!--init echarts-->
<script type="text/javascript" src="assets/js/index/init-echarts.js"></script>

<!-- chart js -->
<script src="assets/js/index/Chart.bundle.js"></script>
<script src="assets/js/index/utils.js"></script>

<script src="assets/js/index/chart.js"></script>

<script type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="assets/js/custom.js" type="text/javascript"></script>

<!-- x -->

<link rel="stylesheet" href="xgather/xcss/index.css">


</body>

</html>
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
    <title>报修查询</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <!-- google font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="/assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="/assets/css/ionicons.css" rel="stylesheet" type="text/css">
    <link href="/assets/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="/assets/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="/assets/css/style.css" rel="stylesheet">
    <link href="/assets/css/responsive.css" rel="stylesheet">
</head>

<body>
<div class="wrapper">
    <!-- header -->
    <header class="main-header">
        <div class="container_header">
            <div class="logo d-flex align-items-center">
                <a href="#"> <strong class="logo_icon"> <img src="/assets/images/small-logo.png" alt=""> </strong> <span
                        class="logo-default"> <img src="/assets/images/logo2.png" alt=""> </span> </a>
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

                            <!-- notification_Start -->
                            <div class="dropdown dropdown-notification">
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
                            <!-- notification_End -->
                            <!-- DropDown_Inbox -->
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
                                                <a href="#"> <span class="photo"> <img src="/assets/images/about-1.jpg"
                                                                                       class="img-circle"
                                                                                       alt=""> </span> <span
                                                        class="subject"> <span class="from"> Sarah Smith </span> <span
                                                        class="time">Just Now </span> </span> <span class="message"> Jatin I found you on LinkedIn... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#"> <span class="photo"> <img src="/assets/images/about-1.jpg"
                                                                                       class="img-circle"
                                                                                       alt=""> </span> <span
                                                        class="subject"> <span class="from"> Sarah Smith </span> <span
                                                        class="time">Just Now </span> </span> <span class="message"> Jatin I found you on LinkedIn... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#"> <span class="photo"> <img src="/assets/images/about-1.jpg"
                                                                                       class="img-circle"
                                                                                       alt=""> </span> <span
                                                        class="subject"> <span class="from"> Sarah Smith </span> <span
                                                        class="time">Just Now </span> </span> <span class="message"> Jatin I found you on LinkedIn... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#"> <span class="photo"> <img src="/assets/images/about-1.jpg"
                                                                                       class="img-circle"
                                                                                       alt=""> </span> <span
                                                        class="subject"> <span class="from"> Sarah Smith </span> <span
                                                        class="time">Just Now </span> </span> <span class="message"> Jatin I found you on LinkedIn... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#"> <span class="photo"> <img src="/assets/images/about-1.jpg"
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
                            <!--DropDown_Inbox_End -->
                            <!-- Dropdown_User -->
                            <div class="dropdown dropdown-user">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"
                                   data-hover="dropdown" data-close-others="true" aria-expanded="true"> <img
                                        class="img-circle pro_pic" src="/assets/images/about-1.jpg" alt=""> </a>
                                <ul class="dropdown-menu dropdown-menu-default">
                                    <li>
                                        <a href="#"> <i class="icon-user"></i> Profile </a>
                                    </li>
                                    <li>
                                        <a href="#"> <i class="icon-settings"></i> Settings </a>
                                    </li>
                                    <li>
                                        <a href="#"> <i class="icon-directions"></i> Help </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="lock_screen.html"> <i class="icon-lock"></i> Lock </a>
                                    </li>
                                    <li>
                                        <a href="#"> <i class="icon-logout"></i> Log Out </a>
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
                    <img src="/assets/images/about-1.jpg" class="img-circle mCS_img_loaded" alt="User Image">
                </div>
                <div class="info">
                    <p>
                        Alexander Pierce
                    </p>
                    <a href="#"> <i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>

            <ul id="dc_accordion" class="sidebar-menu tree">

                <li class="menu_sub">
                    <a href="./index.html"> <i class="fa fa-file text-aqua"></i> <span>首页</span>

                    </a>
                </li>

                <li class="menu_sub">
                    <a href="./form-request.html"> <i class="fa fa-file text-aqua"></i> <span>报修申请</span>

                    </a>
                </li>

                <li class="menu_sub dcjq-parent-li">
                    <a href="#" class="dcjq-parent">
                        <i class="fa fa-file text-aqua"></i>
                        <span>报修记录</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="down_menu" style="display: block;">
                        <li>
                            <a href="/table-record-doing.html">正在进行的订单</a>
                        </li>
                        <li>
                            <a href="/table-record-done.html">已完成订单</a>
                        </li>
                    </ul>
                </li>

                <li class="menu_sub">
                    <a href="/getSearchPage/alice"> <i class="fa fa-file text-aqua"></i> <span>报修查询</span>

                    </a>
                </li>

                <li class="menu_sub">
                    <a href="./profile.profile.jsp"> <i class="fa fa-file text-aqua"></i> <span>个人中心</span>

                    </a>
                </li>


            </ul>
        </div>
        <div class="container-fluid">

            <!--main contents start-->
            <main class="content_wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="input-group">
                                    <input type="text" class="form-control"
                                           id="ridinput"
                                           value="${rid=='alice'?'':rid}"
                                           placeholder="输入完整记录编号查询...">
                                    <button type="button" class="btn" data-target="#search_form" data-toggle="collapse"
                                            onclick="toSearch()"
                                            aria-label="Close">
                                        <i class="ion-android-search"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="card">
                                <div class="row invoice-contact">
                                    <div class="col-md-8">
                                        <div class="invoice-box row">
                                            <div class="col-sm-12">
                                                <table class="table table-responsive invoice-table table-borderless">
                                                    <tbody>
                                                    <tr>
                                                        <td><img src="/assets/images/logo.png" class="m-b-10" alt="">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>订单编号</td>
                                                        <td>${comment.id}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>发起者id</td>
                                                        <td>${comment.subuserid}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>报修人姓名</td>
                                                        <td>${comment.username}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>报修人电话</td>
                                                        <td>${comment.userphone}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>申请时间</td>
                                                        <td>${comment.ctime}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>预约时间</td>
                                                        <td>${comment.rtime}</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4"></div>
                                </div>
                                <div class="card-body">
                                    <h4>详细信息 </h4>
                                    <div class="row invoive-info">

                                        <div class="col-md-4 col-sm-6">

                                            <table class="table table-responsive invoice-table invoice-order table-borderless">
                                                <tbody>
                                                <tr>
                                                    <th>受理人id :</th>
                                                    <td>${comment.dealuserid}</td>
                                                </tr>

                                                <tr>
                                                    <th>受理时间 :</th>
                                                    <td>${comment.dtime}</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="col-md-4 col-sm-6">

                                            <table class="table table-responsive invoice-table invoice-order table-borderless">
                                                <tbody>

                                                <tr>
                                                    <th>修理人员id :</th>
                                                    <td>${comment.assignuserid}</td>
                                                </tr>
                                                <tr>
                                                    <th>修理人员确认时间 :</th>
                                                    <td>${comment.atime}</td>
                                                </tr>
                                                <tr>
                                                    <th>修理完成时间 :</th>
                                                    <td>${comment.finishtime}</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="col-md-4 col-sm-6">
                                            <table class="table table-responsive invoice-table invoice-order table-borderless">
                                                <tbody>
                                                <tr>
                                                    <th>当前状态 :</th>
                                                    <td>${comment.state}</td>
                                                </tr>
                                                <tr>
                                                    <th>申请类型 :</th>
                                                    <td>${comment.type}</td>
                                                </tr>
                                                <tr>
                                                    <th>地点 :</th>
                                                    <td>${comment.whereRepair}</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="col-md-4 col-sm-6">
                                            <table class="table table-responsive invoice-table invoice-order table-borderless">
                                                <tbody>
                                                <tr>
                                                    <th>支付状态 :</th>
                                                    <td>${comment.payState}</td>
                                                </tr>
                                                <tr>
                                                    <th>支付款项 :</th>
                                                    <td>${comment.payPrice}</td>
                                                </tr>
                                                <tr>
                                                    <th>支付时间/逾期时间 :</th>
                                                    <td>${comment.payTime}</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="table-responsive">
                                            <table class="table  invoice-detail-table">
                                                <thead>
                                                <tr class="thead-default">
                                                    <th>问题详情</th>

                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        ${comment.detail}
                                                    </td>

                                                </tr>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
            </main>
            <!--main contents end-->
        </div>
    </div>
    <!-- Content_right_End -->
    <!-- Footer -->
    <footer class="footer ptb-20">
        <div class="row">
            <div class="col-md-12 text-center">
                <div class="copy_right">
                    <p>
                        2018 © Dashboard Theme By
                        <a href="http://www.bootstrapmb.com/">Poliset</a>
                    </p>
                </div>
                <a id="back-to-top" href="#"> <i class="ion-android-arrow-up"></i> </a>
            </div>
        </div>
    </footer>
    <!-- Footer_End -->
</div>
<script type="text/javascript" src="/assets/js/jquery.min.js"></script>
<script type="text/javascript" src="/assets/js/popper.min.js"></script>
<script type="text/javascript" src="/assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="/assets/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="/assets/js/custom.js" type="text/javascript"></script>
</body>

<script>
    function toSearch() {
        var str = $('#ridinput').val()
        location.href="/getSearchPage/"+str
    }
</script>

</html>

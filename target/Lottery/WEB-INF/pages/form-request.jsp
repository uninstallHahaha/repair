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
    <title>提交申请</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <!-- google font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet" type="text/css"/>
    <link href="../../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="../../assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="../../assets/css/ionicons.css" rel="stylesheet" type="text/css">
    <link href="../../assets/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="../../assets/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="../../assets/css/animate.min.css" rel="stylesheet">
    <!--jqery steps-->
    <link href="../../assets/css/jquery.steps.css" rel="stylesheet">
    <link href="../../assets/css/style.css" rel="stylesheet">
    <link href="../../assets/css/responsive.css" rel="stylesheet">
</head>

<body>
<div class="wrapper">
    <!-- header -->
    <header class="main-header">
        <div class="container_header">
            <div class="logo d-flex align-items-center">
                <a href="#"> <strong class="logo_icon"> <img src="../../assets/images/small-logo.png" alt=""> </strong>
                    <span
                            class="logo-default"> <img src="../../assets/images/logo2.png" alt=""> </span> </a>
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
                                                <a href="#"> <span class="photo"> <img src="../../assets/images/about-1.jpg"
                                                                                       class="img-circle"
                                                                                       alt=""> </span> <span
                                                        class="subject"> <span class="from"> Sarah Smith </span> <span
                                                        class="time">Just Now </span> </span> <span class="message"> Jatin I found you on LinkedIn... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#"> <span class="photo"> <img src="../../assets/images/about-1.jpg"
                                                                                       class="img-circle"
                                                                                       alt=""> </span> <span
                                                        class="subject"> <span class="from"> Sarah Smith </span> <span
                                                        class="time">Just Now </span> </span> <span class="message"> Jatin I found you on LinkedIn... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#"> <span class="photo"> <img src="../../assets/images/about-1.jpg"
                                                                                       class="img-circle"
                                                                                       alt=""> </span> <span
                                                        class="subject"> <span class="from"> Sarah Smith </span> <span
                                                        class="time">Just Now </span> </span> <span class="message"> Jatin I found you on LinkedIn... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#"> <span class="photo"> <img src="../../assets/images/about-1.jpg"
                                                                                       class="img-circle"
                                                                                       alt=""> </span> <span
                                                        class="subject"> <span class="from"> Sarah Smith </span> <span
                                                        class="time">Just Now </span> </span> <span class="message"> Jatin I found you on LinkedIn... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#"> <span class="photo"> <img src="../../assets/images/about-1.jpg"
                                                                                       class="img-circle"
                                                                                       alt=""> </span> <span
                                                        class="subject"> <span class="from"> Sarah Smith </span> <span
                                                        class="time">Just Now </span> </span> <span class="message"> Jatin I found you on LinkedIn... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#"> <span class="photo"> <img src="../../assets/images/about-1.jpg"
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
                                   data-hover="dropdown" data-close-others="true" aria-expanded="true"> <img
                                        class="img-circle pro_pic" src="../../assets/images/about-1.jpg" alt=""> </a>
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

        <!--main contents start-->
        <main class="content_wrapper">
            <!--page title start-->
            <div class="page-heading">
                <div class="container-fluid">
                    <div class="row d-flex align-items-center">
                        <div class="col-md-6">
                            <div class="page-breadcrumb">
                                <h1>报修申请</h1>
                            </div>
                        </div>
                        <div class="col-md-6 justify-content-md-end d-md-flex">
                            <div class="breadcrumb_nav">
                                <ol class="breadcrumb">
                                    <li>
                                        <i class="fa fa-home"></i>
                                        <a class="parent-item" href="../../index.html">首页</a>
                                        <i class="fa fa-angle-right"></i>
                                    </li>
                                    <li class="active">
                                        报修申请
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--page title end-->
            <div class="container-fluid">
                <!-- state start-->
                <div class="row">

                    <div class="col-md-12">
                        <div class="card card-shadow mb-4">
                            <div class="card-header">
                                <div class="card-title">
                                    填写申请单
                                </div>
                            </div>
                            <div class="card-body">
                                <form id="wizard-validation-form"
                                      enctype="multipart/form-data"
                                      action="/addRecord" method="post" class="right-text-label-form">
                                    <div>
                                        <h3>基本报修信息</h3>
                                        <section>

                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label col-form-label-sm"
                                                       for="place">地点</label>
                                                <div class="col-sm-6">
                                                    <input id="place" name="place" type="text"
                                                           class="required form-control" value="6教">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label col-form-label-sm" for="rtime">预约时间</label>
                                                <div class="col-sm-6">
                                                    <!--                                                    <input id="rtime" name="rtime" type="text"-->
                                                    <!--                                                           class="required form-control" value="上午">-->
                                                    <input type="text" id="rtime" name="rtime">
                                                </div>
                                            </div>


                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label col-form-label-sm"
                                                       for="type">报修类型</label>
                                                <div class="col-sm-6">
                                                    <label class="custom-control custom-radio">
                                                        <input id="type1" name="type" type="radio" value="1"
                                                               checked="checked" class="custom-control-input">
                                                        <span class="custom-control-indicator"></span> <span
                                                            class="custom-control-description">宿舍报修</span>
                                                    </label>
                                                    <label class="custom-control custom-radio">
                                                        <input id="type2" name="type" type="radio" value="2"
                                                               class="custom-control-input">
                                                        <span class="custom-control-indicator"></span> <span
                                                            class="custom-control-description">教学设备报修</span>
                                                    </label>
                                                    <label class="custom-control custom-radio">
                                                        <input id="type3" name="type" type="radio" value="3"
                                                               class="custom-control-input">
                                                        <span class="custom-control-indicator"></span> <span
                                                            class="custom-control-description">实验设备报修</span>
                                                    </label>
                                                </div>
                                            </div>
                                        </section>
                                        <h3>详细报修信息</h3>
                                        <section>

                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label col-form-label-sm"
                                                       for="desc">问题描述</label>
                                                <div class="col-sm-6">
                                                    <input class="form-control" id="desc" name="desc" type="text"
                                                           required value="无">
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label col-form-label-sm"
                                                       for="pic">图片</label>
                                                <div class="col-sm-6">
                                                    <input type="file" id="pic" name="pic" class="dropify"
                                                           data-height="200"/>
                                                </div>
                                            </div>


                                        </section>
                                        <h3>联系方式</h3>


                                        <section>

                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label col-form-label-sm" for="username">报修人姓名 </label>
                                                <div class="col-sm-6">
                                                    <input class="form-control"
                                                           value="vlice"
                                                           id="username" name="username"
                                                           type="text" required>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label col-form-label-sm"
                                                       for="userphone">联系电话 </label>
                                                <div class="col-sm-6">
                                                    <input class="form-control"
                                                           value="18888888888"
                                                           id="userphone" name="userphone"
                                                           type="number" required>
                                                </div>
                                            </div>


                                        </section>
                                        <h3>确认信息</h3>
                                        <section>

                                            <div class="form-group row">
                                                <div class="col-sm-12">
                                                    <ul class="list-unstyled">
                                                        <li id="place_i">地点:</li>
                                                        <li id="rtime_i">预约时间:</li>
                                                        <li id="type_i">类型: 宿舍维修</li>
                                                        <li id="desc_i">问题描述:</li>
                                                        <li id="username_i">申请人姓名:</li>
                                                        <li id="userphone_i">申请人手机号:</li>
                                                    </ul>
                                                </div>
                                            </div>

                                        </section>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- state end-->
            </div>
        </main>
        <!--main contents end-->
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
<script type="text/javascript" src="../../assets/js/jquery.min.js"></script>
<script src="../../assets/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../assets/js/popper.min.js"></script>
<script type="text/javascript" src="../../assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../../assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="../../assets/js/jquery.validate.js"></script>
<!--form basic wizard init-->
<script src="../../assets/js/form-wizard-init.js"></script>
<!--jquery steps-->
<script src="../../assets/js/jquery.steps.min.js"></script>
<!--jquery stepy-->
<script src="../../assets/js/jquery.stepy.js"></script>
<script type="text/javascript" src="../../assets/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="../../assets/js/custom.js" type="text/javascript"></script>

<script>
    //stepy tab wizard
    $(function () {
        $('#default').stepy({
            backLabel: 'Previous',
            block: true,
            nextLabel: 'Next',
            titleClick: true,
            titleTarget: '.stepy-tab'
        });
    });
</script>
<script type="text/javascript">
    // wizard validation
    $(document).ready(function () {
        var form = $("#wizard-validation-form");
        form.validate({
            errorPlacement: function errorPlacement(error, element) {
                element.after(error);
            }
        });
        form.children("div").steps({
            headerTag: "h3",
            bodyTag: "section",
            transitionEffect: "slideLeft",
            onStepChanging: function (event, currentIndex, newIndex) {
                form.validate().settings.ignore = ":disabled,:hidden";
                return form.valid();
            },
            onFinishing: function (event, currentIndex) {
                form.validate().settings.ignore = ":disabled";
                return form.valid();
            },
            onFinished: function (event, currentIndex) {
                //提交方法
                $('#wizard-validation-form').submit()
                // alert("Submitted!");
            }
        }).validate({
            errorPlacement: function errorPlacement(error, element) {
                element.after(error);
            },
            rules: {
                confirm: {
                    equalTo: "#password"
                }
            }
        });
    });
</script>

<script src="../../xgather/xlib/laydate/laydate.js"></script>

<link rel="stylesheet" href="../../xgather/xlib/dropify/dropify.css">
<script src="../../xgather/xlib/dropify/dropify.js"></script>
<script src="../../xgather/xjs/form-request.js"></script>

</body>

</html>

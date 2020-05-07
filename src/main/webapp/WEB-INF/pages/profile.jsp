﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>个人中心</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <!-- google font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet" type="text/css"/>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/ionicons.css" rel="stylesheet" type="text/css">
    <link href="assets/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="assets/css/jquery.mCustomScrollbar.css" rel="stylesheet">
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
                            <!--DropDown_Inbox_End -->
                            <!-- Dropdown_User -->
                            <div class="dropdown dropdown-user">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"
                                   data-hover="dropdown" data-close-others="true" aria-expanded="true"> <img
                                        class="img-circle pro_pic" src="assets/images/about-1.jpg" alt=""> </a>
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
                    <img src="assets/images/about-1.jpg" class="img-circle mCS_img_loaded" alt="User Image">
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
                    <a href="#"> <i class="fa fa-home"></i> <span>Dashboard</span>
                        <span class="arrow"></span> </a>
                    <ul class="down_menu">
                        <li>
                            <a href="index.html">Dashboard 1</a>
                        </li>
                        <li>
                            <a href="index1.html">Dashboard 2</a>
                        </li>

                        <li>
                            <a href="index-green.html">Dashboard Green</a>
                        </li>
                        <li>
                            <a href="index-light.html">Dashboard Light</a>
                        </li>
                        <li>
                            <a href="index-orange.html">Dashboard Orange</a>
                        </li>
                        <li>
                            <a href="index-purple.html">Dashboard Purple</a>
                        </li>
                        <li>
                            <a href="index-red.html">Dashboard Red</a>
                        </li>

                    </ul>
                </li>

                <li class="menu_sub">
                    <a href="#"> <i class="fa fa-newspaper-o"></i> <span>UI Elements </span> <span class="arrow"></span>
                    </a>
                    <ul class="down_menu">
                        <li>
                            <a href="alert.html">Alerts</a>
                        </li>
                        <li>
                            <a href="buttons.html">Buttons</a>
                        </li>
                        <li>
                            <a href="cards.html">Cards</a>
                        </li>
                        <li>
                            <a href="dropdown.html">Dropdowns</a>
                        </li>
                        <li>
                            <a href="grid.html">Grids</a>
                        </li>
                        <li>
                            <a href="lists.html">Lists</a>
                        </li>
                        <li>
                            <a href="input-tags.html">Input Tags</a>
                        </li>
                        <li>
                            <a href="modal.html">Modals</a>
                        </li>
                        <li>
                            <a href="progress.html"> Progress</a>
                        </li>
                        <li>
                            <a href="popover-tooltips.html">Popover &amp; Tooltips</a>
                        </li>
                        <li>
                            <a href="typography.html">Typography</a>
                        </li>
                        <li>
                            <a href="tabs.html">Tabs</a>
                        </li>
                        <li>
                            <a href="tree.html">Tree</a>
                        </li>
                        <li>
                            <a href="toastr.html">Toastr Notification</a>
                        </li>
                    </ul>
                </li>
                <li class="menu_sub">
                    <a href="#"> <i class="fa fa-pie-chart"></i> <span>Portlets</span> <span class="arrow"></span> </a>
                    <ul class="down_menu">
                        <li>
                            <a href="portlet-base.html">Portlets Base</a>
                        </li>
                        <li>
                            <a href="portlet-advanced.html">Portlets Advanced</a>
                        </li>
                    </ul>
                </li>
                <li class="menu_sub">
                    <a href="#"> <i class="fa fa-laptop"></i> <span>Icons</span> <span class="arrow"></span> </a>
                    <ul class="down_menu">
                        <li>
                            <a href="icon-font-awesome.html">Fontawesome Icons</a>
                        </li>
                        <li>
                            <a href="icon-simple-line.html">Simple line Icons</a>
                        </li>
                    </ul>
                </li>
                <li class="menu_sub">
                    <a href="#"> <i class="fa fa-table"></i> <span>Widgets </span> <span class="arrow"></span> </a>
                    <ul class="down_menu">
                        <li>
                            <a href="widgets-base.html">Widgets Base</a>
                        </li>
                        <li>
                            <a href="widgets-chart.html">Widgets Chart</a>
                        </li>
                    </ul>
                </li>
                <li class="menu_sub">
                    <a href="#"> <i class="fa fa-envelope-o"></i> <span>Email </span> <span class="arrow"></span> </a>
                    <ul class="down_menu">
                        <li>
                            <a href="inbox.html">Inbox</a>
                        </li>
                        <li>
                            <a href="inbox-details.html">Email Read</a>
                        </li>
                        <li>
                            <a href="inbox-compose.html">Email Compose</a>
                        </li>
                    </ul>
                </li>
                <li class="menu_sub">
                    <a href="#"> <i class="fa fa-calendar"></i> <span>Calendar </span> <span class="arrow"></span> </a>
                    <ul class="down_menu">
                        <li>
                            <a href="calendar-basic.html">Basic Calendar</a>
                        </li>
                        <li>
                            <a href="calendar-external-events.html">External Events Calendar</a>
                        </li>
                        <li>
                            <a href="calendar-list.html">List Calendar</a>
                        </li>
                    </ul>
                </li>
                <li class="menu_sub">
                    <a href="#"> <i class="fa fa-wpforms"></i> <span>Forms</span> <span class="arrow"></span> </a>
                    <ul class="down_menu">
                        <li class="menu_sub">
                            <a href="#">Form Control <span class="arrow"></span> </a>
                            <ul class="down_menu lavel3">
                                <li>
                                    <a href="form-basic-input.html">Basic Input</a>
                                </li>
                                <li>
                                    <a href="form-input-group.html">Input Group</a>
                                </li>
                                <li>
                                    <a href="form-checkbox-radio.html">Checkbox & Radio</a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu_sub">
                            <a href="#">Form Validation <span class="arrow"></span> </a>
                            <ul class="down_menu lavel3">
                                <li>
                                    <a href="form-validation-basic.html">Basic Validation</a>
                                </li>
                                <li>
                                    <a href="form-validation-jquery.html">jQuery Validation</a>
                                </li>
                                <li>
                                    <a href="form-wizard.html">Form Wizard</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="menu_sub">
                    <a href="#"> <i class="icon-grid"></i> <span>Data Tables</span> <span class="arrow"></span> </a>
                    <ul class="down_menu">
                        <li>
                            <a href="table-basic.html">Basic Table</a>
                        </li>
                        <li class="menu_sub">
                            <a href="#">Data Tables <span class="arrow"></span> </a>
                            <ul class="down_menu">
                                <li>
                                    <a href="table-datatable.html">Basic Datatable</a>
                                </li>
                                <li>
                                    <a href="table-datatable-show-hide.html">Toggle Col Datatable</a>
                                </li>
                                <li>
                                    <a href="table-datatable-ajax.html">Ajax Datatable</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="menu_sub">
                    <a href="#"> <i class="fa fa-bar-chart text-aqua"></i> <span>Charts</span> <span
                            class="arrow"></span> </a>
                    <ul class="down_menu">
                        <li>
                            <a href="flot-chart.html">Flot Charts</a>
                        </li>
                        <li>
                            <a href="echart.html">eCharts</a>
                        </li>

                    </ul>
                </li>
                <li class="menu_sub">
                    <a href="#"> <i class="fa fa-file text-aqua"></i> <span>Extra Pages</span> <span
                            class="arrow"></span> </a>
                    <ul class="down_menu">
                        <li>
                            <a href="profile.html">User Profile</a>
                        </li>
                        <li>
                            <a href="page-login.html">Sign In</a>
                        </li>
                        <li>
                            <a href="page-register.html">Sign Up</a>
                        </li>
                        <li>
                            <a href="invoice.html">Invoice</a>
                        </li>
                        <li>
                            <a href="page_404.html">404</a>
                        </li>
                    </ul>
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
                                <h1>个人中心</h1>
                            </div>
                        </div>
                        <div class="col-md-6 justify-content-md-end d-md-flex">
                            <div class="breadcrumb_nav">
                                <ol class="breadcrumb">
                                    <li>
                                        <i class="fa fa-home"></i>
                                        <a class="parent-item" href="index.html">首页</a>
                                        <i class="fa fa-angle-right"></i>
                                    </li>
                                    <li class="active">
                                        个人中心
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
                    <div class="col-lg-12">
                        <div class="panel profile-cover">
                            <div class="profile-cover__img">
                                <img	title="点击切换头像" id="bigAV" class="img-circle"
                                        style="width: 120px;height: 120px;"
                                        src="/uploads/avatars/${sessionScope.USER.pic}" alt="">
                                <h3 class="h3" id="username">${sessionScope.USER.name}</h3>
                            </div>
                            <div class="profile-cover__action bg--img" data-overlay="0.3">
                                <button class="btn btn-rounded btn-info" style="visibility: hidden;">
                                    <i class="fa fa-plus"></i>
                                    <span>Follow</span>
                                </button>
                                <button class="btn btn-rounded btn-info" style="visibility: hidden;">
                                    <i class="fa fa-comment"></i>
                                    <span>Message</span>
                                </button>
                            </div>
                            <div class="profile-cover__info">
                                <ul class="nav">
                                    <li id="changeName">
                                        <strong>
                                            <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                                        </strong>修改用户名
                                    </li>
                                    <li  id="changePass">
                                        <strong>
                                            <i class="fa fa-key" aria-hidden="true"></i>
                                        </strong>修改密码
                                    </li>
                                    <li id="bindEmail">
                                        <strong>
                                            <i class="fa fa-wheelchair-alt" aria-hidden="true"></i>
                                        </strong>修改邮箱
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">Activity Feed</h3>
                            </div>
                            <div class="panel-content panel-activity">
                                <form action="#" class="panel-activity__status">
                                    <textarea name="user_activity" placeholder="Share what you've been up to..."
                                              class="form-control"></textarea>
                                    <div class="actions">
                                        <div class="btn-group">
                                            <button type="button" class="btn-link" title="" data-toggle="tooltip"
                                                    data-original-title="Post an Image">
                                                <i class="fa fa-image"></i>
                                            </button>
                                            <button type="button" class="btn-link" title="" data-toggle="tooltip"
                                                    data-original-title="Post an Video">
                                                <i class="fa fa-video-camera"></i>
                                            </button>
                                            <button type="button" class="btn-link" title="" data-toggle="tooltip"
                                                    data-original-title="Post an Idea">
                                                <i class="fa fa-lightbulb-o"></i>
                                            </button>
                                            <button type="button" class="btn-link" title="" data-toggle="tooltip"
                                                    data-original-title="Post an Question">
                                                <i class="fa fa-question-circle-o"></i>
                                            </button>
                                        </div>
                                        <button type="submit" class="btn btn-sm btn-rounded btn-info">
                                            Post
                                        </button>
                                    </div>
                                </form>
                                <ul class="panel-activity__list">
                                    <li>
                                        <i class="activity__list__icon fa fa-question-circle-o"></i>
                                        <div class="activity__list__header">
                                            <img src="assets/images/01_40x40.png" alt="">
                                            <a href="#">John Doe</a> Posted the question: <a href="#">How can I change
                                            my annual reports for the better effect?</a>
                                        </div>
                                        <div class="activity__list__body entry-content">
                                            <p>
                                                <strong>Lorem ipsum dolor sit amet</strong>, consectetur adipisicing
                                                elit. Voluptatibus ab a nostrum repudiandae dolorem
                                                ut quaerat veniam asperiores, rerum voluptatem magni dolores corporis!
                                                <em>Molestiae commodi nesciunt a, repudiandae repellendus ea.</em>
                                            </p>
                                        </div>
                                        <div class="activity__list__footer">
                                            <a href="#"> <i class="fa fa-thumbs-up"></i>123</a>
                                            <a href="#"> <i class="fa fa-comments"></i>23</a>
                                            <span> <i class="fa fa-clock"></i>2 hours ago</span>
                                        </div>
                                    </li>
                                    <li>
                                        <i class="activity__list__icon fa fa-question-circle-o"></i>
                                        <div class="activity__list__header">
                                            <img src="assets/images/01_40x40.png" alt="">
                                            <a href="#">John Doe</a> Posted the question: <a href="#">How can I change
                                            my annual reports for the better effect?</a>
                                        </div>
                                        <div class="activity__list__body entry-content">
                                            <blockquote>
                                                <p>
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                                    Voluptatibus ab a nostrum repudiandae dolorem ut quaerat veniam
                                                    asperiores, rerum voluptatem magni dolores corporis! Molestiae
                                                    commodi nesciunt a, repudiandae repellendus
                                                    ea.
                                                </p>
                                            </blockquote>
                                        </div>
                                        <div class="activity__list__footer">
                                            <a href="#"> <i class="fa fa-thumbs-up"></i>123</a>
                                            <a href="#"> <i class="fa fa-comments"></i>23</a>
                                            <span> <i class="fa fa-clock"></i>2 hours ago</span>
                                        </div>
                                    </li>
                                    <li>
                                        <i class="activity__list__icon fa fa-image"></i>
                                        <div class="activity__list__header">
                                            <img src="assets/images/01_40x40.png" alt="">
                                            <a href="#">John Doe</a> Uploaded 4 Image: <a href="#">Office Working
                                            Time</a>
                                        </div>
                                        <div class="activity__list__body entry-content">
                                            <ul class="gallery">
                                                <li>
                                                    <img src="assets/images/01.jpg" alt="">
                                                </li>
                                                <li>
                                                    <img src="assets/images/02.jpg" alt="">
                                                </li>
                                                <li>
                                                    <img src="assets/images/03.jpg" alt="">
                                                </li>
                                                <li>
                                                    <img src="assets/images/04.jpg" alt="">
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="activity__list__footer">
                                            <a href="#"> <i class="fa fa-thumbs-up"></i>123</a>
                                            <a href="#"> <i class="fa fa-comments"></i>23</a>
                                            <span> <i class="fa fa-clock"></i>2 hours ago</span>
                                        </div>
                                    </li>
                                    <li>
                                        <i class="activity__list__icon fa fa-question-circle-o"></i>
                                        <div class="activity__list__header">
                                            <img src="assets/images/01_40x40.png" alt="">
                                            <a href="#">John Doe</a> Posted the question: <a href="#">How can I change
                                            my annual reports for the better effect?</a>
                                        </div>
                                        <div class="activity__list__body entry-content">
                                            <blockquote>
                                                <p>
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                                    Voluptatibus ab a nostrum repudiandae dolorem ut quaerat veniam
                                                    asperiores, rerum voluptatem magni dolores corporis! Molestiae
                                                    commodi nesciunt a, repudiandae repellendus
                                                    ea.
                                                </p>
                                            </blockquote>
                                        </div>
                                        <div class="activity__list__footer">
                                            <a href="#"> <i class="fa fa-thumbs-up"></i>123</a>
                                            <a href="#"> <i class="fa fa-comments"></i>23</a>
                                            <span> <i class="fa fa-clock"></i>2 hours ago</span>
                                        </div>
                                    </li>
                                    <li>
                                        <i class="activity__list__icon fa fa-lightbulb-o"></i>
                                        <div class="activity__list__header">
                                            <img src="assets/images/01_40x40.png" alt="">
                                            <a href="#">John Doe</a> bookmarked a page: <a href="#">Awesome Idea</a>
                                        </div>
                                        <div class="activity__list__footer">
                                            <a href="#"> <i class="fa fa-thumbs-up"></i>123</a>
                                            <a href="#"> <i class="fa fa-comments"></i>23</a>
                                            <span> <i class="fa fa-clock"></i>2 hours ago</span>
                                        </div>
                                    </li>
                                </ul>
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
<script type="text/javascript" src="assets/js/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/popper.min.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="assets/js/custom.js" type="text/javascript"></script>

<script src="/layer/layer.js"></script>
<script src="/js/pCenter.js"></script>
<link href="/css/index.css" rel="stylesheet">
<link href="/css/scroll.css" rel="stylesheet">
<link href="/css/pCenter.css" rel="stylesheet">
</body>

</html>
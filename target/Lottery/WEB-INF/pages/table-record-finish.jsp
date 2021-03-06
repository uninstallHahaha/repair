﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>维修人员 - 历史维修记录</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <!-- google font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet" type="text/css"/>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/ionicons.css" rel="stylesheet" type="text/css">
    <link href="assets/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="assets/css/jquery.mCustomScrollbar.css" rel="stylesheet">

    <!--bs4 data table-->
    <link href="assets/css/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/responsive.css" rel="stylesheet">

    <style type="text/css">
        .search {
            float: left !important;
        }
    </style>

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







                              <!-- Dropdown_User -->
                            <div class="dropdown dropdown-user">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"
                                   data-hover="dropdown" data-close-others="true" aria-expanded="true"> <img class="img-circle pro_pic" src="/uploads/avatars/${sessionScope.USER.pic}" alt=""> </a>
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
                    <a href="/getworkermissonpage">
                        <i class="fa fa fa-check-square-o text-aqua"></i> <span>待确认报修任务</span>
                    </a>
                </li>
                <li class="menu_sub">
                    <a href="/getworkertodomissonpage">
                        <i class="fa fa fa-tasks text-aqua"></i> <span id="todotxt">待执行报修任务</span>
                    </a>
                </li>

                <li class="menu_sub">
                    <a href="/getworkerfinishmissonpage">
                        <i class="fa fa fa-history text-aqua"></i> <span>历史维修记录</span>
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
                                <h1>历史报修任务</h1>
                            </div>
                        </div>
                        <div class="col-md-6 justify-content-md-end d-flex">
                            <div class="breadcrumb_nav">
                                <ol class="breadcrumb">
                                    <li>
                                        <i class="fa fa-home"></i>
                                        <a class="parent-item" href="index.html">历史维修记录</a>
                                        <i class="fa fa-angle-right"></i>
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
                    <div class=" col-sm-12">
                        <div class="card card-shadow mb-4">
                            <div class="card-header">
                                <div class="card-title">
                                    历史维修记录
                                </div>
                            </div>
                            <div class="card-body">

                                <!--  bootstrap table  -->
                                <div id="toolbar">
                                </div>
                                <table
                                        id="table"
                                        data-toolbar="#toolbar"
                                        data-search="true"
                                        data-show-refresh="true"
                                        data-show-toggle="false"
                                        data-show-fullscreen="true"
                                        data-show-columns="true"
                                        data-show-columns-toggle-all="true"
                                        data-detail-view="false"
                                        data-show-export="true"
                                        data-click-to-select="true"
                                        data-detail-formatter="detailFormatter"
                                        data-minimum-count-columns="2"
                                        data-show-pagination-switch="false"
                                        data-pagination="true"
                                        data-id-field="id"
                                        data-page-list="[10, 25, 50, 100, all]"
                                        data-show-footer="false"
                                        data-side-pagination="client"
                                        data-url="/obtainRecordsFinish/${sessionScope.USER.id}"
                                        data-response-handler="responseHandler">
                                </table>
                                <!-- End bootstrap table  -->
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
                        <a href="http://www.Hu.com/">Hu</a>
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
<!--datatables-->
<script src="assets/js/jquery.dataTables.min.js"></script>
<script src="assets/js/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="assets/js/custom.js" type="text/javascript"></script>
<script>
    $(document).ready(function () {
        var table = $('#show-hide').DataTable({
            "scrollY": "400px",
            "paging": false
        });
        $('a.toggle-vis').on('click', function (e) {
            e.preventDefault();
            // Get the column API object
            var column = table.column($(this).attr('data-column'));
            // Toggle the visibility
            column.visible(!column.visible());
        });
    });
</script>


<style type="text/css">
    td {
        white-space: nowrap;
        overflow: hidden;
        word-break: keep-all;
    }
</style>


<!--	x-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.16.0/bootstrap-table.min.css"/><link rel="stylesheet" href="/xgather/xcss/tabletool.css">
<script src="https://unpkg.com/tableexport.jquery.plugin/tableExport.min.js"></script>
<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.js"></script>
<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table-locale-all.min.js"></script>
<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/extensions/export/bootstrap-table-export.min.js"></script>


<link rel="stylesheet" href="/xgather/xcss/scroll.css">
<link rel="stylesheet" href="/xgather/xcss/tabletool.css">
<script src="/xgather/xlib/layer/layer.js"></script>
<script src="/xgather/xjs/table-record-finish.js"></script>
</body>

</html>
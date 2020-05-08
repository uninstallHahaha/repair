<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
		<title>管理端 - 报修管理</title>
		<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
		<!-- google font -->
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet" type="text/css" />
		<link href="../../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="../../assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
		<link href="../../assets/css/ionicons.css" rel="stylesheet" type="text/css">
		<link href="../../assets/css/simple-line-icons.css" rel="stylesheet" type="text/css">
		<link href="../../assets/css/jquery.mCustomScrollbar.css" rel="stylesheet">

		<!--bs4 data table-->
		<link href="../../assets/css/dataTables.bootstrap4.min.css" rel="stylesheet">
		<link href="../../assets/css/style.css" rel="stylesheet">
		<link href="../../assets/css/responsive.css" rel="stylesheet">
	</head>

	<body>
		<div class="wrapper">
			<!-- header -->
			<header class="main-header">
				<div class="container_header">
					<div class="logo d-flex align-items-center">
						<a href="#"> <strong class="logo_icon"> <img src="../../assets/images/small-logo.png" alt=""> </strong> <span class="logo-default"> <img src="../../assets/images/logo2.png" alt=""> </span> </a>
						<div class="icon_menu full_menu">
							<a href="#" class="menu-toggler sidebar-toggler"></a>
						</div>
					</div>
					<div class="right_detail">
						<div class="row d-flex align-items-center min-h pos-md-r">
							<div class="col-xl-5 col-3 search_col ">
								<div class="top_function">

									<div class="search">
										<a id="toggle_res_search" data-toggle="collapse" data-target="#search_form" class="res-only-view collapsed" href="javascript:void(0);"
										aria-expanded="false"> <i class=" icon-magnifier"></i> </a>
										<form id="search_form" role="search" class="search-form collapse" action="#">
											<div class="input-group">
												<input type="text" class="form-control" placeholder="Search...">
												<button type="button" class="btn" data-target="#search_form" data-toggle="collapse" aria-label="Close">
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
										<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true" aria-expanded="false"> <i class="fa fa-bell-o"></i> <span class="badge_coun"> 6 </span> </a>
										<ul class="dropdown-menu scroll_auto height_fixed" >
											<li class="bigger">
												<h3><span class="bold">Notifications</span></h3>
												<span class="notification-label">New 6</span>
											</li>
											<li>
												<ul class="dropdown-menu-list">
													<li>
														<a href="javascript:;"> <span class="time">just now</span> <span class="details"> <span class="notification-icon deepPink-bgcolor"> <i class="fa fa-check"></i> </span> Congratulations!. </span> </a>
													</li>
													<li>
														<a href="javascript:;"> <span class="time">3 mins</span> <span class="details"> <span class="notification-icon purple-bgcolor"> <i class="fa fa-user o"></i> </span> <b>John Micle </b>is now following you. </span> </a>
													</li>
													<li>
														<a href="javascript:;"> <span class="time">7 mins</span> <span class="details"> <span class="notification-icon blue-bgcolor"> <i class="fa fa-comments-o"></i> </span> <b>Sneha Jogi </b>sent you a message. </span> </a>
													</li>
													<li>
														<a href="javascript:;"> <span class="time">12 mins</span> <span class="details"> <span class="notification-icon pink"> <i class="fa fa-heart"></i> </span> <b>Ravi Patel </b>like your photo. </span> </a>
													</li>
													<li>
														<a href="javascript:;"> <span class="time">15 mins</span> <span class="details"> <span class="notification-icon yellow"> <i class="fa fa-warning"></i> </span> Warning! </span> </a>
													</li>
													<li>
														<a href="javascript:;"> <span class="time">10 hrs</span> <span class="details"> <span class="notification-icon red"> <i class="fa fa-times"></i> </span> Application error. </span> </a>
													</li>
												</ul>
											</li>
										</ul>
									</div>


									<div class="dropdown dropdown-inbox">
										<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> <i class="fa fa-envelope-o"></i> <span class="badge_coun"> 2 </span> </a>
										<ul class="dropdown-menu scroll_auto height_fixed" >
											<li class="bigger">
												<h3><span class="bold">Messages</span></h3>
												<span class="notification-label">New 2</span>
											</li>
											<li>
												<ul class="dropdown-menu-list">
													<li>
														<a href="#"> <span class="photo"> <img src="../../assets/images/about-1.jpg" class="img-circle" alt=""> </span> <span class="subject"> <span class="from"> Sarah Smith </span> <span class="time">Just Now </span> </span> <span class="message"> Jatin I found you on LinkedIn... </span> </a>
													</li>
													<li>
														<a href="#"> <span class="photo"> <img src="../../assets/images/about-1.jpg" class="img-circle" alt=""> </span> <span class="subject"> <span class="from"> Sarah Smith </span> <span class="time">Just Now </span> </span> <span class="message"> Jatin I found you on LinkedIn... </span> </a>
													</li>
													<li>
														<a href="#"> <span class="photo"> <img src="../../assets/images/about-1.jpg" class="img-circle" alt=""> </span> <span class="subject"> <span class="from"> Sarah Smith </span> <span class="time">Just Now </span> </span> <span class="message"> Jatin I found you on LinkedIn... </span> </a>
													</li>
													<li>
														<a href="#"> <span class="photo"> <img src="../../assets/images/about-1.jpg" class="img-circle" alt=""> </span> <span class="subject"> <span class="from"> Sarah Smith </span> <span class="time">Just Now </span> </span> <span class="message"> Jatin I found you on LinkedIn... </span> </a>
													</li>
													<li>
														<a href="#"> <span class="photo"> <img src="../../assets/images/about-1.jpg" class="img-circle" alt=""> </span> <span class="subject"> <span class="from"> Sarah Smith </span> <span class="time">Just Now </span> </span> <span class="message"> Jatin I found you on LinkedIn... </span> </a>
													</li>
													<li>
														<a href="#"> <span class="photo"> <img src="../../assets/images/about-1.jpg" class="img-circle" alt=""> </span> <span class="subject"> <span class="from"> Sarah Smith </span> <span class="time">Just Now </span> </span> <span class="message"> Jatin I found you on LinkedIn... </span> </a>
													</li>
												</ul>
											</li>
										</ul>
									</div>

									-->  <!-- Dropdown_User -->
									<div class="dropdown dropdown-user">
										<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true" aria-expanded="true"> <img class="img-circle pro_pic" src="/uploads/avatars/${sessionScope.USER.pic}" alt=""> </a>
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
							<a href="/WEB-INF/pages/table-record-deal.html">
								<i class="fa fa-file text-aqua"></i> <span>报修受理</span>
							</a>
						</li>

						<li class="menu_sub">
							<a href="/WEB-INF/pages/table-record-manage.html">
								<i class="fa fa-file text-aqua"></i> <span>报修管理 </span>
							</a>
						</li>
						<li class="menu_sub">
							<a href="/userlistpage">
								<i class="fa fa-file text-aqua"></i> <span>用户管理</span>
							</a>
						</li>

						<li class="menu_sub">
							<a href="/workerlistpage">
								<i class="fa fa-file text-aqua"></i> <span>维修人员管理 </span>
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
										<h1>报修管理</h1>
									</div>
								</div>
								<div class="col-md-6 justify-content-md-end d-flex">
									<div class="breadcrumb_nav">
										<ol class="breadcrumb">
											<li>
												<i class="fa fa-home"></i>
												<a class="parent-item" href="../../index.html">报修管理</a>
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
											报修管理
										</div>
									</div>
									<div class="card-body">

										<!--  bootstrap table  -->
										<div id="toolbar">
											<button id="remove" class="btn btn-danger" disabled>
												<i class="glyphicon glyphicon-remove"></i> 删除
											</button>
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
												data-url="/obtainRecordsDone"
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
		<script type="text/javascript" src="../../assets/js/popper.min.js"></script>
		<script type="text/javascript" src="../../assets/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
		<!--datatables-->
		<script src="../../assets/js/jquery.dataTables.min.js"></script>
		<script src="../../assets/js/dataTables.bootstrap4.min.js"></script>
		<script type="text/javascript" src="../../assets/js/jquery.dcjqaccordion.2.7.js"></script>
		<script src="../../assets/js/custom.js" type="text/javascript"></script>
		<script>
			$(document).ready(function() {
				var table = $('#show-hide').DataTable({
					"scrollY" : "400px",
					"paging" : false
				});
				$('a.toggle-vis').on('click', function(e) {
					e.preventDefault();
					// Get the column API object
					var column = table.column($(this).attr('data-column'));
					// Toggle the visibility
					column.visible(!column.visible());
				});
			});
		</script>


		<style type="text/css">
			td{
				white-space:nowrap;
				overflow:hidden;
				word-break:keep-all;
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
		<script src="/xgather/xjs/table-record-manage.js"></script>
	</body>

</html>
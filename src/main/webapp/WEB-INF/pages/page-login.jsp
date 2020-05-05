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
    <title>登录</title>
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

<body class="bg_darck">
<div class="sufee-login d-flex align-content-center flex-wrap">
    <div class="container">
        <div class="login-content">
            <div class="logo">
                <a href="#">
                    <strong class="logo_icon">
                        <img alt="" src="assets/images/small-logo.png">
                    </strong>
                    <span class="logo-default">
                            <img alt="" src="assets/images/white-logo.png">
                        </span>
                </a>
            </div>
            <div class="login-form">
                <form>
                    <div class="form-group">
                        <label>账号</label>
                        <input type="text"
                               id="inputName"
                               name="name" class="form-control" placeholder="账号">
                    </div>
                    <div class="form-group">
                        <label>密码</label>
                        <input type="password"
                               id="inputPassword"
                               name="pass" class="form-control" placeholder="密码">
                    </div>
                    <div class="form-group">
                        <label>我是</label>
                        <select class="form-control" id="roleselect">
                            <option value=1>普通用户</option>
                            <option value=2>管理员</option>
                            <option value=3>修理人员</option>
                        </select>
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" name="rememberMe"> 记住密码
                        </label>
                        <label class="pull-right">
                            <a href="#">忘记密码?</a>
                        </label>
                    </div>
                </form>
                <button id="loginBtn" class="btn btn-success btn-flat m-b-30 m-t-30">登录</button>
                <div class="register-link m-t-15 text-center">
                    <p>还没有账户 ?
                        <a href="/signuppage"> 注册</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="assets/js/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/popper.min.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="assets/js/custom.js" type="text/javascript"></script>

<script src="/xgather/xlib/layer/layer.js"></script>
<script src="/xgather/xjs/login.js"></script>
</body>

</html>
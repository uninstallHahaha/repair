<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page isELIgnored="false" %> <%--开启el--%>
<html>

<head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no"/>
    <!--百度地图-->
    <script type="text/javascript"
            src="http://api.map.baidu.com/api?v=3.0&ak=lG1VWYp7csmOHn3Au6WRSrLKlGaSXIk3"></script>
    <!--jquery-->
    <script src="/js/jq/jquery.min.js"></script>
    <script src="/layer/layer.js"></script>

    <!--bootstrap-->
    <link href="/js/bootstrap/bootstrap.css" rel="stylesheet">
    <script src="/js/bootstrap/bootstrap.js"></script>

    <link rel="icon" href="/images/buser.ico" type="image/x-icon"/>

    <script src="/js/index.js"></script>
    <script src="/js/pCenter.js"></script>
    <link href="/css/index.css" rel="stylesheet">
    <link href="/css/scroll.css" rel="stylesheet">
    <link href="/css/pCenter.css" rel="stylesheet">

    <title>激活结果</title>
</head>

<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default" role="navigation" style="margin: 0px;">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1"><span
                            class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span></button>
                    <a class="navbar-brand" href="/index.jsp">Buser</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="/index.jsp">地图</a>
                        </li>
                        <li>
                            <a href="getNewsPage">新闻</a>
                        </li>

                    </ul>


                </div>

            </nav>
            <div class="row clearfix" style="    display: flex;justify-content : center;">
                <div class="col-md-12 column" style="width: 75%;;">

                    <div class="col-md-12 column">
                        <div class="row clearfix main">
                            <div class="panel panel-default pPanel">
                                <h3>${result}</h3>
                                <button class="btn btn-default"
                                        onclick="location.href='/'">
                                    返回首页
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="coverCopyRight">@ 2020 Aaidu.com</div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
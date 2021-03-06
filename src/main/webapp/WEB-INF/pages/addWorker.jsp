<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page isELIgnored="false" %> <%--开启el--%>
<html>
<head>
    <title>Title</title>
    <!--jquery-->
    <script src="js/jq/jquery.min.js"></script>
    <script src="layer/layer.js"></script>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script src="/js/addWorker.js"></script>
    <link href="/css/CPass.css" rel="stylesheet">

    <style type="text/css">
        body {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            flex-grow: 1;
        }
        #dep{
            width: 100%;
            height: 38px;
            border: 1px solid #e6e6e6;
        }
    </style>

</head>
<body>

<div class="container">
    <div class="row clearfix">
        <form class="form-horizontal formChange" role="form" method="post" action="modPass">
            <div class="form-group">
                <label class="col-sm-2 control-label">维修人员名字</label>
                <div class="col-sm-10">
                    <input type="text" class="layui-input" id="name"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">密码</label>
                <div class="col-sm-10">
                    <input type="password" class="layui-input" id="pass"/>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="col-sm-2 control-label">部门</label>
                <form class="layui-form">
                    <div class="col-sm-10">
                        <select name="interest" id="dep" lay-filter="aihao">
                            <option value="1">物业部门</option>
                            <option value="2">工程部门</option>
                        </select>
                    </div>
                </form>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="button" class="layui-btn layui-btn-normal" id="subModPass">提交</button>
                </div>
            </div>
        </form>
    </div>
</div>

<link rel="stylesheet" href="/xgather/xlib/layui-v2.5.6/layui/css/layui.css">
<script src="/xgather/xlib/layui-v2.5.6/layui/layui.js"></script>

</body>
</html>

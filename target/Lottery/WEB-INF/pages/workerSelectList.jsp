<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page isELIgnored="false" %> <%--开启el--%>
<html>
<head>
    <title>Title</title>
    <!--jquery-->
    <script src="/js/jq/jquery.min.js"></script>
    <script src="/layer/layer.js"></script>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%--    <script src="/js/CPass.js"></script>--%>
    <link href="/css/CPass.css" rel="stylesheet">

    <style type="text/css">
        body {
            padding: 20px 0px!important;
        }

        .container {
            flex-grow: 1;
        }
        .layui-input-block{
            margin-left: 20px!important;
        }
        .assignbtn{
            margin-left: 20px;
        }
    </style>

</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="layui-tab  layui-tab-brief" lay-filter="demo">
            <ul class="layui-tab-title">
                <li class="layui-this">物业部门</li>
                <li>工程部门</li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <div class="layui-form">
                        <c:forEach items="${w1}" var="w">
                            <div class="layui-input-block">
                                <input type="radio" name="wk" value="${w.id}" title="${w.name}  待完成任务数:${w.todo}">
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="layui-tab-item">
                    <div class="layui-form">
                        <c:forEach items="${w2}" var="w">
                            <div class="layui-input-block">
                                <input type="radio" name="wk" value="${w.id}" title="${w.name}  待完成任务数:${w.todo}">
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <button class="layui-btn layui-btn-primary assignbtn" onclick="assign()">指派</button>
    </div>
</div>

<link rel="stylesheet" href="/xgather/xlib/layui-v2.5.6/layui/css/layui.css">
<script src="/xgather/xlib/layui-v2.5.6/layui/layui.js"></script>
<script src="/xgather/xlib/layer/layer.js"></script>

</body>

<input type="text" value="${rid}" style="display: none;" id="ridinput">

<script>
    layui.use('element', function () {
        var element = layui.element;
        element.on('tab(demo)', function (data) {
        });
    });
    layui.use('form', function () {
        var form = layui.form;
        form.render('radio', 'wk');
    });

    function assign() {
        var wks = $('[name="wk"]')
        var checkedwkval;
        var rid = $('#ridinput').val()
        for(var i=0;i<wks.length;i++){
            if(wks[i].checked == true){
                checkedwkval = wks[i].value
            }
        }
        $.ajax({
            'url': '/assignTo',
            'method': 'post',
            data: {rid: rid, wkid: checkedwkval},
            success: function (res) {
                if (res == 1) {
                    parent.$('#table').bootstrapTable('refresh')
                    parent.layer.msg('指派成功')
                    var index = parent.layer.getFrameIndex(window.name);
                    parent.layer.close(index);
                } else {
                    layer.msg('指派失败')
                }
            }
        })
    }
</script>
</html>

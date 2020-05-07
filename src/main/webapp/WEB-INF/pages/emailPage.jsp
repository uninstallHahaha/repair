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

    <script src="js/login.js"></script>

    <style type="text/css">
        .emailInput{
            margin: 12px 0px;
        }
        body{
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container{
            flex-grow: 1;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column" style="padding: 20px;">
            <h4>${curEmail}</h4>
            <input type="email" class="layui-input emailInput" id="emailInput"
            placeholder="输入邮箱地址以更换或绑定"/>
            <button class="layui-btn layui-btn-normal" onclick="sendEmail()">确定</button>
            <button class="layui-btn layui-btn-primary" onclick="closeEmailPage()">取消</button>
        </div>
    </div>
</div>

<script>

    function closeEmailPage() {
        let index = parent.layer.getFrameIndex(window.name);
        parent.layer.close(index);
    }

    function sendEmail() {
        layer.load(1,{
            shade:0.2
        });
        let email = $('#emailInput').val()
        $.ajax({
            url: 'send',
            data: {to: email},
            success: function (res) {
                layer.closeAll('loading');
                if(res == 1){
                    layer.msg('邮件发送成功,请到您的邮箱中进行确认')
                }else{
                    layer.msg("激活邮件发送失败,请稍后再试")
                }
            },
            error: function () {
                layer.msg("激活邮件发送失败,请稍后再试")
                layer.closeAll('loading');
            },
        })
    }
</script>


<link rel="stylesheet" href="/xgather/xlib/layui-v2.5.6/layui/css/layui.css">
<script src="/xgather/xlib/layui-v2.5.6/layui/layui.js"></script>

</body>
</html>

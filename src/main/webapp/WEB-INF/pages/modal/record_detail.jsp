<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        .bodycon{
            display: flex;
            flex-direction: column;
            padding: 20px;
        }
        .con{
            display: flex;
        }
    </style>

</head>
<body class="bodycon">

<h2>记录详情</h2>
<hr>
<div class="con">

<div>
<ul class="list-unstyled">
    <li id="username_i">申请人时间:${record.ctime}</li>
    <li id="userphone_i">申请人手机号:${record.userphone}</li>
    <li id="username_i">申请人姓名:${record.username}</li>
    <li id="userphone_i">处理人:${record.dealuserid}</li>
    <li id="username_i">执行人:${record.assignuserid}</li>
    <li id="userphone_i">预约报修时间:${record.rtime}</li>
    <li id="username_i">记录状态:${record.state}</li>
    <li id="userphone_i">记录类型:${record.type}</li>
    <li id="userphone_i">地点:${record.whereRepair}</li>
    <li id="userphone_i">问题描述:${record.detail}</li>
    <li id="userphone_i">支付状态:${record.payState}</li>
    <li id="userphone_i">支付款项:${record.payPrice}</li>
</ul>
<img src="/uploads/record/${record.pic}" width="100%" alt="图片">
</div>

<div>
    <ul class="layui-timeline">
        <li class="layui-timeline-item">
            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
            <div class="layui-timeline-content layui-text">
                <h3 class="layui-timeline-title">8月18日</h3>
                <p>
                    layui 2.0 的一切准备工作似乎都已到位。发布之弦，一触即发。
                    <br>不枉近百个日日夜夜与之为伴。因小而大，因弱而强。
                    <br>无论它能走多远，抑或如何支撑？至少我曾倾注全心，无怨无悔 <i class="layui-icon"></i>
                </p>
            </div>
        </li>
        <li class="layui-timeline-item">
            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
            <div class="layui-timeline-content layui-text">
                <h3 class="layui-timeline-title">8月16日</h3>
                <p>杜甫的思想核心是儒家的仁政思想，他有“<em>致君尧舜上，再使风俗淳</em>”的宏伟抱负。个人最爱的名篇有：</p>
                <ul>
                    <li>《登高》</li>
                    <li>《茅屋为秋风所破歌》</li>
                </ul>
            </div>
        </li>
        <li class="layui-timeline-item">
            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
            <div class="layui-timeline-content layui-text">
                <h3 class="layui-timeline-title">8月15日</h3>
                <p>
                    中国人民抗日战争胜利72周年
                    <br>常常在想，尽管对这个国家有这样那样的抱怨，但我们的确生在了最好的时代
                    <br>铭记、感恩
                    <br>所有为中华民族浴血奋战的英雄将士
                    <br>永垂不朽
                </p>
            </div>
        </li>
        <li class="layui-timeline-item">
            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
            <div class="layui-timeline-content layui-text">
                <div class="layui-timeline-title">过去</div>
            </div>
        </li>
    </ul>
</div>

</div>
</body>

<link rel="stylesheet" href="/xgather/xlib/layui-v2.5.6/layui/css/layui.css">
<script src="/xgather/xlib/layui-v2.5.6/layui/layui.js"></script>

</html>

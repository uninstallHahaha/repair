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
    <li id="userphone_i">申请人手机号:${record.userphone}</li>
    <li id="username_i">申请人姓名:${record.username}</li>
    <li id="username_i">申请时间:${record.ctime}</li>
    <li id="username_i">受理时间:${record.dtime}</li>
    <li id="username_i">确认时间:${record.atime}</li>
    <li id="userphone_i">受理人:${record.dealuserid}</li>
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
                <h3 class="layui-timeline-title">${record.atime}</h3>
                <p>
                    订单以被维修人员查看并确认,等待维修人员在预约时间段内上门服务
                </p>
            </div>
        </li>
        <li class="layui-timeline-item">
            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
            <div class="layui-timeline-content layui-text">
                <h3 class="layui-timeline-title">${record.atime}</h3>
                <p>
                    订单以被维修人员查看并确认,等待维修人员在预约时间段内上门服务
                </p>
            </div>
        </li>
        <li class="layui-timeline-item">
            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
            <div class="layui-timeline-content layui-text">
                <h3 class="layui-timeline-title">${record.dtime}</h3>
                <p>
                    报修申请已由管理员查看并指派任务
                </p>
            </div>
        </li>
        <li class="layui-timeline-item">
            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
            <div class="layui-timeline-content layui-text">
                <h3 class="layui-timeline-title">${record.ctime}</h3>
                <p>
                    报修申请成功, 已生成申请记录
                </p>
            </div>
        </li>
        <li class="layui-timeline-item">
            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
            <div class="layui-timeline-content layui-text">
                <div class="layui-timeline-title">提交申请</div>
            </div>
        </li>
    </ul>
</div>

</div>
</body>

<link rel="stylesheet" href="/xgather/xlib/layui-v2.5.6/layui/css/layui.css">
<script src="/xgather/xlib/layui-v2.5.6/layui/layui.js"></script>

</html>

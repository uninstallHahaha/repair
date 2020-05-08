<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        .bodycon {
            display: flex;
            flex-direction: column;
            padding: 20px;
        }

        .con {
            display: flex;
        }
    </style>

</head>
<body class="bodycon">

<h2>记录详情</h2>
<hr>
<div class="con">

    <div style="width: 50%;">
        <ul class="list-unstyled">
            <li id="userphone_i">申请人手机号:${record.userphone}</li>
            <li id="username_i">申请人姓名:${record.username}</li>
            <li id="username_i">申请时间:
                <fmt:formatDate value="${record.ctime}" type="date"
                                pattern="yyyy-MM-dd HH:mm:ss"/></li>
            <li id="username_i">受理时间:
                <fmt:formatDate value="${record.dtime}" type="date"
                                pattern="yyyy-MM-dd HH:mm:ss"/>
            </li>
            <li id="username_i">确认时间:
                <fmt:formatDate value="${record.atime}" type="date"
                                pattern="yyyy-MM-dd HH:mm:ss"/>
            </li>
            <li id="userphone_i">受理人:${record.dealuserid}</li>
            <li id="username_i">执行人:${record.assignuserid}</li>
            <li id="userphone_i">预约报修时间:
                <fmt:formatDate value="${record.rtime}" type="date"
                                pattern="yyyy-MM-dd HH:mm:ss"/></li>
            <li id="username_i">记录状态:
                <c:choose>
                    <c:when test="${record.state==1}">
                        用户已提交
                    </c:when>
                    <c:when test="${record.state==2}">
                        管理员已指派
                    </c:when>
                    <c:when test="${record.state==3}">
                        维修人员已确认
                    </c:when>
                    <c:when test="${record.state==4}">
                        维修已完成
                    </c:when>
                </c:choose>
            </li>
            <li id="userphone_i">记录类型:
                <c:choose>
                    <c:when test="${record.type==1}">
                        宿舍报修
                    </c:when>
                    <c:when test="${record.state==2}">
                        教学设备报修
                    </c:when>
                    <c:when test="${record.state==3}">
                        实验设备报修
                    </c:when>
                </c:choose>
            </li>
            <li id="userphone_i">地点:${record.whereRepair}</li>

            <li id="userphone_i">支付状态:
                <c:choose>
                    <c:when test="${record.payState==1}">
                        已支付
                    </c:when>
                    <c:when test="${record.state==0}">
                        未支付
                    </c:when>
                    <c:when test="${record.state==28}">
                        逾期未支付
                    </c:when>
                </c:choose>
            </li>
            <li id="userphone_i">支付款项:${record.payPrice}元</li>
            <li id="userphone_i">问题描述:${record.detail}</li>
        </ul>

    </div>

    <div>
        <ul class="layui-timeline">
            <c:if test="${record.finishtime != null}">
                <li class="layui-timeline-item">
                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                    <div class="layui-timeline-content layui-text">
                        <h3 class="layui-timeline-title">
                            <fmt:formatDate value="${record.finishtime}" type="date"
                                            pattern="yyyy-MM-dd HH:mm:ss"/>
                        </h3>
                        <p>
                            维修人员已在预约时间段内上门维修完成
                        </p>
                    </div>
                </li>
            </c:if>
            <c:if test="${record.atime != null}">
                <li class="layui-timeline-item">
                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                    <div class="layui-timeline-content layui-text">
                        <h3 class="layui-timeline-title">
                            <fmt:formatDate value="${record.atime}" type="date"
                                            pattern="yyyy-MM-dd HH:mm:ss"/>
                        </h3>
                        <p>
                            订单以被维修人员查看并确认,等待维修人员在预约时间段内上门服务
                        </p>
                    </div>
                </li>
            </c:if>
            <c:if test="${record.dtime != null}">
                <li class="layui-timeline-item">
                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                    <div class="layui-timeline-content layui-text">
                        <h3 class="layui-timeline-title">
                            <fmt:formatDate value="${record.dtime}" type="date"
                                            pattern="yyyy-MM-dd HH:mm:ss"/>
                        </h3>
                        <p>
                            报修申请已由管理员查看并指派任务
                        </p>
                    </div>
                </li>
            </c:if>
            <c:if test="${record.payTime != null}">
                <li class="layui-timeline-item">
                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                    <div class="layui-timeline-content layui-text">
                        <h3 class="layui-timeline-title">
                            <fmt:formatDate value="${record.payTime}" type="date"
                                            pattern="yyyy-MM-dd HH:mm:ss"/>
                        </h3>
                        <p>
                                ${record.payState==28?'用户未能在规定时间内完成订单支付, 订单已逾期失效':'用户完成订单支付,订单状态为已支付'}
                        </p>
                    </div>
                </li>
            </c:if>
            <li class="layui-timeline-item">
                <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                <div class="layui-timeline-content layui-text">
                    <h3 class="layui-timeline-title">
                        <fmt:formatDate value="${record.ctime}" type="date"
                                        pattern="yyyy-MM-dd HH:mm:ss"/>
                    </h3>
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

<hr>

<img src="/uploads/record/${record.pic}" width="100%" alt="图片">
</body>

<link rel="stylesheet" href="/xgather/xcss/scroll.css">
<link rel="stylesheet" href="/xgather/xlib/layui-v2.5.6/layui/css/layui.css">
<script src="/xgather/xlib/layui-v2.5.6/layui/layui.js"></script>

</html>

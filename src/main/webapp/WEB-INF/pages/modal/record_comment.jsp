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
            flex-direction: column;
        }

        .star {
            text-align: center;
        }
    </style>

</head>
<body class="bodycon">


<h2>${comment.id==null?'评价':'已评价'}</h2>
<hr>
<div class="con">

    <input type="text" id="rid" value="${rid}" style="display: none;">
    <input type="text" id="svalue" value="${comment.star}" style="display: none;">

    <div id="star" class="star"></div>

    <div>
        <label class="layui-form-label">请填写评价</label>
        <div class="layui-input-block">
        <c:if test="${comment.id!=null}">
        <textarea placeholder="请输入内容" readonly
                  class="layui-textarea" id="cominfo">${comment.comment}</textarea>
        </c:if>
        <c:if test="${comment.id==null}">
        <textarea placeholder="请输入内容"
                  class="layui-textarea" id="cominfo"></textarea>
        </c:if>
        </div>
    </div>

    <c:if test="${comment.id == null}">
        <button onclick="subcom()" class="layui-btn" style="margin-top: 12px;">提交</button>
    </c:if>

</div>


</body>

<script type="text/javascript" src="/assets/js/jquery.min.js"></script>
<link rel="stylesheet" href="/xgather/xcss/scroll.css">
<link rel="stylesheet" href="/xgather/xlib/layui-v2.5.6/layui/css/layui.css">
<script src="/xgather/xlib/layui-v2.5.6/layui/layui.js"></script>
<script src="/xgather/xlib/layer/layer.js"></script>

<script>

    let statnum = 0;
    layui.use('rate', function () {
        var rate = layui.rate;

        //渲染
        var ins1 = rate.render({
            elem: '#star',  //绑定元素,
            value: $('#svalue').val(),
            choose: function (value) {
                statnum = value
            }
        });
    });


    function subcom() {
        var cominfo = $('#cominfo').val()
        if(statnum == 0 || cominfo ==""){
            parent.layer.msg('请完善信息,不能评价为零分')
            return
        }
        $.ajax({
            url: '/subComment',
            data: {rid: $('#rid').val(), star: statnum, cominfo: cominfo},
            method: 'post',
            success: function (res) {
                if (res == 1) {
                    parent.layer.msg('评价成功')
                    var index = parent.layer.getFrameIndex(window.name);
                    parent.layer.close(index);
                } else {
                    parent.layer.msg('评价失败')
                }
            }
        })
    }
</script>

</html>

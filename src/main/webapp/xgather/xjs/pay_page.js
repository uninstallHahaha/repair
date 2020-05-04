$(function () {

    let timer = setInterval(function () {
        if ($('#timerc').text() == "0:0") {
            clearInterval(timer)
            $('#timerc').text($('#timerc').text() + '已逾期')
            return
        }
        var cur = $('#timerc').text()
        var curlist = cur.split(":")
        if (parseInt(curlist[1]) != 0) {
            curlist[1] = parseInt(curlist[1] - 1) + ''
            $('#timerc').text(curlist[0] + ':' + curlist[1])
            return;
        } else if (parseInt(curlist[0]) != 0) {
            curlist[0] = parseInt(curlist[0] - 1) + ''
            curlist[1] = '59'
            $('#timerc').text(curlist[0] + ':' + curlist[1])
            return;
        }
    }, 1000)

    //轮询
    let stateTimer = setInterval(function () {
        $.ajax({
            url: '/getPayState',
            data: {id: $('#ridinput').val()},
            success: function (res) {
                if (res == 1) {
                    layer.msg('支付成功', function () {
                        location.href = "/form-request.html"
                    })
                }
            }
        })
    }, 5000)


})
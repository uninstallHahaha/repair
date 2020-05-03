$(function () {

    $('.dropify').dropify();

    laydate.render({
        elem: '#rtime',
        type: 'datetime',
        value: new Date(),
        min: 0,
        change: function (value, date, endDate) {
            rtime = value
            $('#rtime_i').text('预约时间: ' + rtime)
            console.log(value); //得到日期生成的值，如：2017-08-18
            console.log(date); //得到日期时间对象：{year: 2017, month: 8, date: 18, hours: 0, minutes: 0, seconds: 0}
            console.log(endDate); //得结束的日期时间对象，开启范围选择（range: true）才会返回。对象成员同上。
        }
    });

    var typemap = {1: '宿舍报修', 2: '教学设备报修', 3: '实验设备报修'}

    let place = $('#place').val()
    let rtime = $('#rtime').val()
    let type = $('input[name="type"]:checked').val();
    let desc = $('#desc').val()
    let username = $('#username').val()
    let userphone = $('#userphone').val()
    $('#place_i').text('地点: ' + place)
    $('#rtime_i').text('预约时间: ' + rtime)
    $('#type_i').text('报修类型: ' + typemap[type])
    $('#desc_i').text('问题描述: ' + desc)
    $('#username_i').text('申请人姓名: ' + username)
    $('#userphone_i').text('申请人手机号: ' + userphone)

    $('#place').bind('change', function () {
        place = $('#place').val()
        $('#place_i').text('地点: ' + place)
    })
    // $('#rtime').bind('change', function () {
    //     debugger
    //     rtime = $('#rtime').val()
    //     $('#rtime_i').text('预约时间: ' + place)
    // })
    $('input[type=radio][name=type]').bind('change', function () {
        type = $('input[name="type"]:checked').val()
        $('#type_i').text('报修类型: ' + typemap[type])
    })
    $('#desc').bind('change', function () {
        desc = $('#desc').val()
        $('#desc_i').text('问题描述: ' + desc)
    })
    $('#username').bind('change', function () {
        username = $('#username').val()
        $('#username_i').text('申请人姓名: ' + username)
    })
    $('#userphone').bind('change', function () {
        userphone = $('#userphone').val()
        $('#userphone_i').text('申请人手机号: ' + userphone)
    })


})
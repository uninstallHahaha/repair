var $table = $('#table')
var $remove = $('#remove')
var selections = []

function getIdSelections() {
    return $.map($table.bootstrapTable('getSelections'), function (row) {
        return row.id
    })
}

function responseHandler(res) {
    $.each(res.rows, function (i, row) {
        row.state = $.inArray(row.id, selections) !== -1
    })
    return res
}

function detailFormatter(index, row) {
    var html = []
    $.each(row, function (key, value) {
        html.push('<p><b>' + key + ':</b> ' + value + '</p>')
    })
    return html.join('')
}

function operateFormatter_d(value, row, index) {
    return [
        '<a class="detail" href="javascript:void(0)" title="详情">',
        '<i class="fa fa-dot-circle-o" aria-hidden="true"></i>',
        '</a>',
    ].join('')
}
function operateFormatter_f(value, row, index) {
    return [
        '<a class="finish" href="javascript:void(0)" title="完成">',
        '<i class="fa fa-check-square" aria-hidden="true"></i>',
        '</a>',
    ].join('')
}



function timeFormater(value, row, index) {
    var now = new Date(value);
    var year = now.getFullYear(),
        month = now.getMonth() + 1,
        date = now.getDate(),
        hour = now.getHours(),
        minute = now.getMinutes(),
        second = now.getSeconds();
    return [
        year + "-" + month + "-" + date + " " + hour + ":" + minute + ":" + second
    ].join('')
}

function stateFormater(value, row, index) {
    switch (value) {
        case 1: return '已提交';
        case 2: return '已分派';
        case 3: return '已确认';
        case 4: return '已完成';
    }
}

function typeFormater(value, row, index) {
    switch (value) {
        case 1: return '宿舍报修';
        case 2: return '教学设备报修';
        case 3: return '实验设备报修';
    }
}
function paystateFormater(value, row, index) {
    switch (value) {
        case 0: return '未支付';
        case 1: return '已支付';
        case 28: return '逾期未支付';
    }
}

window.operateEvents = {
    //删除
    'click .remove': function (e, value, row, index) {
        $.ajax({
            url: '/delLog',
            data: {'id': row.id},
            method: 'post',
            async: false,
            success: function (res) {
                if (res == 1) {
                    $table.bootstrapTable('remove', {
                        field: 'id',
                        values: [row.id]
                    })
                    layer.msg('删除成功')
                } else {
                    layer.msg('删除失败')
                }
            }
        })
    },
    //详情
    'click .detail': function (e, value, row, index) {
        layer.open({
            title: false,
            type: 2,
            area: ['800px', '600px'],
            closeBtn: 1, //不显示关闭按钮
            anim: 2,
            shadeClose: true, //开启遮罩关闭
            content: '/getRecordDetailPage/'+row.id
        });
    },
    //完成
    'click .finish': function (e, value, row, index) {
        $.ajax({
            url: '/finishRecord',
            data: {'id': row.id},
            method: 'post',
            async: false,
            success: function (res) {
                if (res == 1) {
                    $table.bootstrapTable('remove', {
                        field: 'id',
                        values: [row.id]
                    })
                    if(document.getElementById('todobadge') == null){
                        $('#finishtxt').append('<span id="todobadge" class="layui-badge">1</span>')
                    }else{
                        $('#todobadge').text(parseInt($('#todobadge').text())+1)
                    }
                    layer.msg('提交成功')
                } else {
                    layer.msg('提交失败')
                }
            }
        })
    },
}


function initTable() {
    $table.bootstrapTable('destroy').bootstrapTable({
        height: 550,
        locale: 'zh-CN',
        columns:
            [{
                field: 'ctime',
                title: '申请时间',
                align: 'center',
                valign: 'middle',
                sortable: true,
                formatter: timeFormater,
            },{
                field: 'username',
                title: '报修人姓名',
                align: 'center',
                valign: 'middle',
                sortable: true,
            }, {
                field: 'userphone',
                title: '报修人电话',
                sortable: true,
                align: 'center'
            },  {
                field: 'rtime',
                title: '预约时间',
                sortable: true,
                align: 'center',
                formatter: timeFormater,
            },  {
                field: 'type',
                title: '报修类型',
                sortable: true,
                align: 'center',
                formatter: typeFormater
            }, {
                field: 'whereRepair',
                title: '地点',
                sortable: true,
                align: 'center',
            },{
                field: 'operate_d',
                title: '详情',
                align: 'center',
                clickToSelect: false,
                events: window.operateEvents,
                formatter: operateFormatter_d
            },{
                field: 'operate_f',
                title: '完成',
                align: 'center',
                clickToSelect: false,
                events: window.operateEvents,
                formatter: operateFormatter_f
            }
            ],
    })
    $table.on('check.bs.table uncheck.bs.table ' +
        'check-all.bs.table uncheck-all.bs.table',
        function () {
            $remove.prop('disabled', !$table.bootstrapTable('getSelections').length)

            // save your data, here just save the current page
            selections = getIdSelections()
            // push or splice the selections if you want to save all data selections
        })
    $table.on('all.bs.table', function (e, name, args) {
        console.log(name, args)
    })
    //del list
    $remove.click(function () {
        var ids = getIdSelections()
        $.ajax({
            url: '/delLogList',
            data: {'ids': ids},
            async: false,
            success: function (res) {
                if (res == 1) {
                    $table.bootstrapTable('remove', {
                        field: 'id',
                        values: ids
                    })
                    layer.msg('删除成功')
                } else {
                    layer.msg('删除失败')
                }
            }
        })
        $remove.prop('disabled', true)
    })
}

$(function () {
    initTable()

    //修复图标
    $(".fa-sync").addClass('fa-refresh')
})
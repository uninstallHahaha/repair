function subModName(){
    let name = $('#newName').val()
    if(  name == "" ){
        layer.msg('请完善信息')
        return
    }

    $.ajax({
        type: 'POST',
        url: 'modName',
        data: {
            newName : name,
        },
        success: (res) => {
            if(res.res == 1){
                parent.layer.msg("修改用户名成功",{icon:1})
                parent.$('#username').text(name)
                var index = parent.layer.getFrameIndex(window.name);
                parent.layer.close(index);
            }else{
                parent.layer.msg(res.data,{icon:2})
            }
        }
    });
}


$(function(){
    $("#subModName").click(subModName)
})
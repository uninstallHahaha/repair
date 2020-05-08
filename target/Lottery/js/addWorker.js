function subModPass(){
    let name= $('#name').val()
    let pass = $('#pass').val()
    let dep = $('#dep').val()
    if( name == "" || pass == "" || dep == "" ){
        layer.msg('请完善信息')
        return
    }
    if(pass.length<8){
        layer.msg('密码不能小于8位')
        return
    }
    $.ajax({
        type: 'POST',
        url: 'addWorker',
        data: {
            name : name,
            pass : pass,
            dep : dep
        },
        success: (res) => {
            if(res.stat == 1){
                parent.layer.msg("添加成功",{icon:1})
                var index = parent.layer.getFrameIndex(window.name);
                parent.layer.close(index);
                location.href="/workerlistpage"
            }else{
                parent.layer.msg(res.data,{icon:2})
            }
        }
    });
}


$(function(){
    $("#subModPass").click(subModPass)
})
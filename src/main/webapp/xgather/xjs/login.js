$(function () {

    $('#loginBtn').click(function () {
        var name = $('#inputName').val()
        var pass = $('#inputPassword').val()
        var mem = $('input[name="rememberMe"]:checked').length
        if (name == "" || pass == "") {
            layer.msg('账户或者密码不能为空')
            return
        }
        var role = $('#roleselect').val()
       if(role == 1){
           $.ajax({
               'url': '/signin',
               'method': 'post',
               data: {name: name, pass: pass, mem: mem},
               success: function (res) {
                   if (res.stat == 1) {
                           location.href = "/index"
                   } else {
                       layer.msg(res.data)
                   }
               }
           })
       }
       if(role == 2){
           $.ajax({
               'url': '/signin_admin',
               'method': 'post',
               data: {name: name, pass: pass, mem: mem},
               success: function (res) {
                   if (res.stat == 1) {
                           location.href = "/adminindex"
                   } else {
                       layer.msg(res.data)
                   }
               }
           })
       }
       if(role == 3){
           $.ajax({
               'url': '/signin_worker',
               'method': 'post',
               data: {name: name, pass: pass, mem: mem},
               success: function (res) {
                   if (res.stat == 1) {
                           location.href = "/getworkermissonpage"
                   } else {
                       layer.msg(res.data)
                   }
               }
           })
       }
    })

    $('#inputName').bind('change', function () {

        var arrCookie = document.cookie.split(';')
        var username
        var passWord
        var role = $('#roleselect').val()
        for (var i = 0; i < arrCookie.length; i++) {
            var arr = arrCookie[i].trim().split('=')
            if(role == 1){
                if (arr[0] === 'name') {
                    username = arr[1]
                }
                if (arr[0] === 'pass') {
                    passWord = arr[1]
                }
            }
            if(role == 2){
                if (arr[0] === 'name_admin') {
                    username = arr[1]
                }
                if (arr[0] === 'pass_admin') {
                    passWord = arr[1]
                }
            }
            if(role == 3){
                if (arr[0] === 'name_worker') {
                    username = arr[1]
                }
                if (arr[0] === 'pass_worker') {
                    passWord = arr[1]
                }
            }

        }
        if (username == $('#inputName').val()) {
            $('#inputPassword').val(passWord)
            $('#rememberMe').attr("checked", 'checked')
        }
    })


})
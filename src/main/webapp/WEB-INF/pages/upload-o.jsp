<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page isELIgnored="false" %> <%--开启el--%>
<html>
<head>
    <title>Title</title>
    <!--jquery-->
    <script src="js/jq/jquery.min.js"></script>
    <script src="layer/layer.js"></script>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="js/cropper/cropper.js"></script>
    <link href="js/cropper/cropper.css" rel="stylesheet">

    <script src="js/login.js"></script>
</head>
<body>

<div class="container">
    <div class="row clearfix">


        <button id="replaceImg" class="l-btn">更换图片</button>
        <div style="width: 320px;height:136.23px;border: solid 1px #555;margin-top: 10px">
            <img id="finalImg" name="file" src="" width="100%">
        </div>
        <button type="button" onclick="update()">submit</button>


        <!--图片裁剪框 start-->
        <div style="display: none" class="tailoring-container">
            <div class="black-cloth" onclick="closeTailor(this)"></div>
            <div class="tailoring-content">
                <div class="tailoring-content-one">
                    <label title="上传图片" for="chooseImg" class="l-btn choose-btn">
                        <input type="file" accept="image/jpg,image/jpeg,image/png" name="file" id="chooseImg" class="hidden" onchange="selectImg(this)">
                        选择图片
                    </label>
                    <div class="close-tailoring"  onclick="closeTailor(this)">×</div>
                </div>
                <div class="tailoring-content-two">
                    <div class="tailoring-box-parcel">
                        <img id="tailoringImg">
                    </div>
                    <div class="preview-box-parcel">
                        <p>图片预览：</p>
                        <div class="square previewImg"></div>
                        <div class="circular previewImg"></div>
                    </div>
                </div>
                <div class="tailoring-content-three">
                    <button class="l-btn cropper-reset-btn">复位</button>
                    <button class="l-btn cropper-rotate-btn">旋转</button>
                    <button class="l-btn cropper-scaleX-btn">换向</button>
                    <button class="l-btn sureCut" id="sureCut">确定</button>
                </div>
            </div>
        </div>
        <!--图片裁剪框 end-->



        <script>

            function update() {
                var cas = $('#tailoringImg').cropper('getCroppedCanvas');
                cas = cas.toDataURL('image/jpg');
                console.log(cas)
                $("#registerForm").attr("enctype","multipart/form-data");
                var formData = new FormData($("#registerForm")[0]);
                formData.append("imgBase64",encodeURIComponent(cas));
                formData.append("fileFileName","photo.jpg");
                console.log(formData)
                $.ajax({
                    url: "/uploadAV",
                    type: 'POST',
                    data: formData,
                    timeout : 10000, //超时时间设置，单位毫秒
                    async: true,
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function (result) {
                        console.log(result)
                        window.location="/success";
                    },
                    error: function (returndata) {
                    }
                });

            }

            //弹出框水平垂直居中
            (window.onresize = function () {
                var win_height = $(window).height();
                var win_width = $(window).width();
                if (win_width <= 768){
                    $(".tailoring-content").css({
                        "top": (win_height - $(".tailoring-content").outerHeight())/2,
                        "left": 0
                    });
                }else{
                    $(".tailoring-content").css({
                        "top": (win_height - $(".tailoring-content").outerHeight())/2,
                        "left": (win_width - $(".tailoring-content").outerWidth())/2
                    });
                }
            })();

            //弹出图片裁剪框
            $("#replaceImg").on("click",function () {
                $(".tailoring-container").toggle();
            });
            //图像上传
            function selectImg(file) {
                if (!file.files || !file.files[0]){
                    return;
                }
                var reader = new FileReader();
                reader.onload = function (evt) {
                    var replaceSrc = evt.target.result;
                    //更换cropper的图片
                    $('#tailoringImg').cropper('replace', replaceSrc,false);//默认false，适应高度，不失真
                }
                reader.readAsDataURL(file.files[0]);
            }
            //cropper图片裁剪
            $('#tailoringImg').cropper({
                aspectRatio: 790/340,//默认比例
                preview: '.previewImg',//预览视图
                guides: false,  //裁剪框的虚线(九宫格)
                autoCropArea: 0.5,  //0-1之间的数值，定义自动剪裁区域的大小，默认0.8
                movable: false, //是否允许移动图片
                dragCrop: true,  //是否允许移除当前的剪裁框，并通过拖动来新建一个剪裁框区域
                movable: true,  //是否允许移动剪裁框
                resizable: true,  //是否允许改变裁剪框的大小
                zoomable: false,  //是否允许缩放图片大小
                mouseWheelZoom: false,  //是否允许通过鼠标滚轮来缩放图片
                touchDragZoom: true,  //是否允许通过触摸移动来缩放图片
                rotatable: true,  //是否允许旋转图片
                crop: function(e) {
                    // 输出结果数据裁剪图像。
                }
            });
            //旋转
            $(".cropper-rotate-btn").on("click",function () {
                $('#tailoringImg').cropper("rotate", 45);
            });
            //复位
            $(".cropper-reset-btn").on("click",function () {
                $('#tailoringImg').cropper("reset");
            });
            //换向
            var flagX = true;
            $(".cropper-scaleX-btn").on("click",function () {
                if(flagX){
                    $('#tailoringImg').cropper("scaleX", -1);
                    flagX = false;
                }else{
                    $('#tailoringImg').cropper("scaleX", 1);
                    flagX = true;
                }
                flagX != flagX;
            });

            //裁剪后的处理
            $("#sureCut").on("click",function () {
                if ($("#tailoringImg").attr("src") == null ){
                    return false;
                }else{
                    var cas = $('#tailoringImg').cropper('getCroppedCanvas');//获取被裁剪后的canvas
                    var base64url = cas.toDataURL('image/png'); //转换为base64地址形式
                    $("#finalImg").prop("src",base64url);//显示为图片的形式

                    //关闭裁剪框
                    closeTailor();
                }
            });


            //关闭裁剪框
            function closeTailor() {
                $(".tailoring-container").toggle();
            }



        </script>


    </div>
</div>

</body>
</html>

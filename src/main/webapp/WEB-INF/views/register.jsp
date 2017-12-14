<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/regist.css">
</head>
<body>

<div class="header">
    <div class="main">

    </div>

    <div class="nav-user">
        <!-- 登入后的状态 -->

        <a class="avatar" href="#">
            <img src="${pageContext.request.contextPath}/images/meizi.png">
            <cite>黑马程序员</cite>
            <i>VIP2</i>
        </a>
        <div class="nav">

        </div>

    </div>
</div>
</div>

<div class="main layui-clear">

    <div class="fly-panel fly-panel-user" pad20>
        <div class="layui-tab layui-tab-brief">

            <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
                <div class="layui-tab-item layui-show">
                    <div class="layui-form layui-form-pane">
                        <form method="post" action="/rest/user/regist" id = "registForm">
                            <input type="hidden" name="classid" value="${param.classid}">
                            <div class="layui-form-item">
                                <label for="L_email" class="layui-form-label">姓名</label>
                                <div class="layui-input-inline">
                                    <input type="text" id="L_email" name="username" required  autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-form-mid layui-word-aux">请填写您的真实姓名</div>
                            </div>

                            <div class="layui-form-item">
                                <label for="L_pass" class="layui-form-label">密码</label>
                                <div class="layui-input-inline">
                                    <input type="password" id="L_pass" name="password" required lay-verify="required" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-form-mid layui-word-aux">6到16个字符</div>
                            </div>
                            <div class="layui-form-item">
                                <label for="L_repass" class="layui-form-label">确认密码</label>
                                <div class="layui-input-inline">
                                    <input type="password" id="L_repass" name="repass" required lay-verify="required" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <button class="layui-btn" lay-filter="regist" lay-submit>立即注册</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<div class="footer">
    <p><a href="http://sh.itcast.cn">上海传智播客.黑马程序员</a> 2017 &copy; <a href="http://sh.itcast.cn">sh.itcast.cn</a></p>
    <p>
        <a href="#" target="_blank">黑马程序员</a>
        <a href="#" target="_blank">博学谷</a>
        <a href="#" target="_blank">酷丁鱼</a>
    </p>
</div>
<script src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/lib/jquery-1.8.3.js"></script>
<script>
    layui.use(['form'],function () {
        var form = layui.form();
        form.on('submit(regist)',function (data) {
            console.log(data);
            var pass = data.field.password;
            var repass = data.field.repass;
            if(pass != repass) {
                layer.alert('两次输入密码不一致，请重新输入', {
                    skin: 'layui-layer-molv' //样式类名
                    ,closeBtn: 0
                });
                return false;
            }
        });







    });

</script>

</body>
</html>

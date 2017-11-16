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
            <img src="${pageContext.request.contextPath}/images/meizi.jpg">
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
            <ul class="layui-tab-title">
                <li><a href="login2.jsp">登入</a></li>
                <li class="layui-this">注册</li>
            </ul>
            <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
                <div class="layui-tab-item layui-show">
                    <div class="layui-form layui-form-pane">
                        <form method="post" action="/rest/user/regist" id = "registForm">
                            <div class="layui-form-item">
                                <label for="L_email" class="layui-form-label">姓名</label>
                                <div class="layui-input-inline">
                                    <input type="text" id="L_email" name="name" required  autocomplete="off" class="layui-input">
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
                                <label for="L_vercode" class="layui-form-label">人类验证</label>
                                <div class="layui-input-inline">
                                    <input type="text" id="L_vercode" name="vercode" required lay-verify="required" placeholder="请回答后面的问题" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-form-mid">
                                    <span style="color: #c00;">认识姣姣吗？</span>
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
    <p><a href="http://fly.layui.com/">Fly社区</a> 2017 &copy; <a href="http://www.layui.com/">layui.com</a></p>
    <p>
        <a href="#" target="_blank">产品授权</a>
        <a href="#" target="_blank">获取Fly社区模版</a>
        <a href="#" target="_blank">微信公众号</a>
    </p>
</div>
<script src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
<script>
    layui.use(['form,jquery'],function () {
        var form = layui.form(),
                $ = layui.jquery;

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

            form.submit();
        });







    });

</script>

</body>
</html>

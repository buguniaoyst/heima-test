<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
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
<div class="main layui-clear">

    <div class="fly-panel fly-panel-user" pad20>
        <div class="layui-tab layui-tab-brief" lay-filter="user">
            <ul class="layui-tab-title">
                <li class="layui-this">登入</li>
                <li><a href="reg.jsp">注册</a></li>
            </ul>
            <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
                <div class="layui-tab-item layui-show">
                    <div class="layui-form layui-form-pane">
                        <form method="post" action="/rest/user/login" id="loginForm">
                            <div class="layui-form-item">
                                <label for="L_email" class="layui-form-label">姓名</label>
                                <div class="layui-input-inline">
                                    <input type="text" id="L_email" name="name" required lay-verify="required" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label for="L_pass" class="layui-form-label">密码</label>
                                <div class="layui-input-inline">
                                    <input type="password" id="L_pass" name="password" required lay-verify="required" autocomplete="off" class="layui-input">
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
                                <button class="layui-btn" lay-filter="login" lay-submit>立即登录</button>
                                <span style="padding-left:20px;">
                                  <a href="#">忘记密码？</a>
                                </span>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['form'],function () {
        var form = layui.form(),
                $ = layui.jquery;

        form.on('submit(login)',function (data) {
            $("#loginForm").submit();
        });
        if('${requestScope.regMessage}') {
            layer.alert('${requestScope.regMessage}', {
                skin: 'layui-layer-molv' //样式类名
                ,closeBtn: 0
            });
            return false;
        }
    });
</script>
</html>

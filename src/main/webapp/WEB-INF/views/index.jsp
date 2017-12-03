<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>黑马程序员考试系统</title>
    <link rel="stylesheet" type="text/css" href="../../lib/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="../../css/global.css">
    <link rel="stylesheet" type="text/css" href="../../css/main.css">
    <script type="text/javascript" src="../../lib/layui/layui.js"></script>
</head>
<body>
<!--布局容器 border-bottom:设置下边框的样式-->
<div class="layui-layout layui-layout-admin" style="border-bottom: solid 5px #1aa094;">
    <!--设置头部信息-->
    <div class="layui-header header header-demo">
        <div class="layui-main">

            <div class="admin-login-box">
                <a class="logo" style="left: 0;" href="">
                    <span style="font-size: 18px;font-family:Verdana, Geneva, sans-serif">黑马程序员考试系统</span>
                </a>
            </div>
            <!--水平导航-->
            <ul class="layui-nav admin-header-item">

                <li class="layui-nav-item">
                    <a href="javascript:;" class="admin-header-user">
                        <img src="../../images/0.jpg" />
                        <span style="color: #1aa094">您好!&nbsp; ${sessionScope.loginUser.username}，欢迎您登录！</span>
                    </a>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;" class="admin-header-user">
                        <i class="layui-icon" style="font-size: 30px; color: #1aa094;">&#xe607;</i>
                        <span style="color: #1aa094;font-size: small">帮助</span>
                    </a>
                </li>
                <li class="layui-nav-item">
                    <a href="/rest/user/loginOut" class="admin-header-user">
                        <i class="layui-icon" style="font-size: 30px; color: #1aa094;">&#xe609;</i>
                        <span style="color: #1aa094;font-size: small">退出</span>
                    </a>
                </li>
            </ul>

        </div>
    </div>

    <!--左侧导航栏-->
    <div class="layui-side layui-bg-black" id="admin-side">
        <div class="layui-side-scroll" id="admin-navbar-side" lay-filter="side"></div>
    </div>

    <div class="layui-body" style="bottom: 0;border-left: solid 2px #1AA094;" id="admin-body">
        <div class="layui-tab admin-nav-card layui-tab-brief" lay-filter="admin-tab">
            <ul class="layui-tab-title">
                <li class="layui-this">
                    <i class="fa fa-dashboard" aria-hidden="true"></i>
                    <cite>控制面板</cite>
                </li>
            </ul>
            <div class="layui-tab-content" style="min-height: 150px; padding: 5px 0 0 0;">
                <div class="layui-tab-item layui-show">
                    <iframe src="/rest/main"></iframe>
                </div>
            </div>
        </div>
    </div>
    <div class="layui-footer footer footer-demo" id="admin-footer">
        <div class="layui-main">
            <p>2017 &copy;
                <a href="http://sh.itcast.cn/">sh.itcast.cn/</a> LGPL license
            </p>
        </div>
    </div>

</div>
</body>
<script type="text/javascript" src="../../datas/nav.js"></script>
<script src="../../js/index.js"></script>
<script>
    layui.use(['layer'], function() {
        var $ = layui.jquery,
                layer = layui.layer;


        $('#video1').on('click', function() {
            layer.open({
                title: 'YouTube',
                maxmin: true,
                type: 2,
                content: 'video.html',
                area: ['800px', '500px']
            });
        });

        if('${requestScope.message}') {
            layer.alert('${requestScope.message}', {
                skin: 'layui-layer-molv' //样式类名
                ,closeBtn: 0
            });
        }

    });
</script>
</html>

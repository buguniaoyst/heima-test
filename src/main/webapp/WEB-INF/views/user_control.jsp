<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加用户</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/layui/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" ></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/wenjuan.css" >
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/lay/modules/form.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>
</head>
<body >
    <div class="container" >
        <form class="layui-form layui-form-pane" action="${pageContext.request.contextPath}/rest/user/addUser" method="post">
            <div class="layui-form-item">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-block">
                    <input type="text" name="username" id="username" required  lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">密码</label>
                <div class="layui-input-block">
                    <input type="text" name="password" id="password" required  lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">确认密码</label>
                <div class="layui-input-block">
                    <input type="text" name="repwd" id="repwd" required  lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                    <label class="layui-form-label">用户角色</label>
                    <div class="layui-input-block">
                        <select name="usertype" id="usertype" required lay-verify="required">
                            <option value=""></option>
                            <option value="0">普通用户</option>
                            <option value="1">管理员</option>
                        </select>
                    </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">备注</label>
                <div class="layui-input-block">
                    <textarea name="desc" id="testDesc" placeholder="请输入内容" class="layui-textarea"></textarea>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button id="user_submit"  class="layui-btn">添加</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
</body>

<script>
    //Demo
    layui.use(['form','jquery','layer'], function() {
        var form = layui.form(),
            $ = layui.jquery,
            layer = layui.layer;
    });
    $("#user_submit").click(function(){
        //班级类型

    });
</script>
</html>

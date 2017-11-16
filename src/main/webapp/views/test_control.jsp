<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>考试设置</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/layui/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" ></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/wenjuan.css" >
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/lay/modules/form.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>
</head>
<body >
<form class="layui-form layui-form-pane" action="">
    <div class="layui-form-item">
        <label class="layui-form-label">班级名称</label>
        <div class="layui-input-block">
            <input type="text" name="title" required  lay-verify="required" placeholder="请输入班级名称如：上海黑马JavaEE就业18期" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">选择试卷</label>
        <div class="layui-input-block">
            <select name="city" lay-verify="required">
                <option value="none"></option>
                <option value="0">基础班-JavaEE基础阶段开班考试</option>
                <option value="1">就业班-JavaEE就业阶段开班考试</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">班级人数</label>
        <div class="layui-input-block">
            <input type="text" name="title" required  lay-verify="required" placeholder="请输入班级人数" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">参加考试人数</label>
        <div class="layui-input-block">
            <input type="text" name="title" required  lay-verify="required" placeholder="请输入实际参加考试的人数" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">备注</label>
        <div class="layui-input-block">
            <textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formDemo">立即组卷</button>
            <button type="reset" class="layui-btn layui-btn-primary">重新组卷</button>
        </div>
    </div>
</form>
</body>

<script>
    //Demo
    layui.use(['form','jquery','layer'], function() {
        var form = layui.form(),
            $ = layui.jquery,
            layer = layui.layer;
    });
</script>
</html>

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
    <div class="container" >
        <form class="layui-form layui-form-pane" action="${pageContext.request.contextPath}/rest/test/addTest">

            <div class="layui-form-item">
                    <label class="layui-form-label">班级类型</label>
                    <div class="layui-input-block">
                        <select name="classType" id="classType" required lay-verify="required">
                            <option value=""></option>
                            <option value="0">基础班</option>
                            <option value="1">就业班</option>shang
                        </select>
                    </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">多少期？</label>
                <div class="layui-input-block">
                    <input type="number" name="classNo" id="classNo" required  lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">选择试卷</label>
                <div class="layui-input-block" >
                    <select name="classTestNo" id="classTestNo" lay-verify="required" >
                        <option value=""></option>
                        <option value="0">基础班-JavaEE基础阶段开班考试</option>
                        <option value="1">就业班-JavaEE就业阶段开班考试</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">

                    <label class="layui-form-label">实际参考</label>
                    <div class="layui-input-block">
                        <input type="number" name="stuNumber" id="stuNumber" required  lay-verify="required" placeholder="请输入实际参加考试的人数" autocomplete="off" class="layui-input">
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
                    <button id="test_submit"  class="layui-btn">立即组卷</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重新组卷</button>
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
    $("#test_submit").click(function(){
        //班级类型
        var classType = $("#classType").val();
        var classNo = $("#classNo").val();
        var classTestNo = $("#classTestNo").val();
        var stuNum = $("#stuNumber").val();
        if(!classType) {
            layer.alert('请选择班级类型', {
                skin: 'layui-layer-molv' //样式类名
                ,closeBtn: 0
            });
            return false;
        }
        if(!classNo) {
            layer.alert('请告诉我你们班是多少期', {
                skin: 'layui-layer-molv' //样式类名
                ,closeBtn: 0
            });
            return false;
        }
        if(!classTestNo) {
            layer.alert('请选择试卷', {
                skin: 'layui-layer-molv' //样式类名
                ,closeBtn: 0
            });
            return false;
        }
        if(!stuNum) {
            layer.alert('请输入实际参加考试的人数', {
                skin: 'layui-layer-molv' //样式类名
                ,closeBtn: 0
            });
            return false;
        }











    });
</script>
</html>

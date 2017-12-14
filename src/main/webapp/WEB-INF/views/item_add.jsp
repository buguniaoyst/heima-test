<%--
  Created by IntelliJ IDEA.
  User: yst
  Date: 2017/7/20
  Time: 0:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <title>新增测试题</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" media="all">
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/lay/modules/laypage.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/common.js"></script>
</head>
<body>
<!-- 列表面板 -->
<div class="layui-form-pane" style="margin-top: 15px;">
    <form class="layui-form layui-form-pane" action="${pageContext.request.contextPath}/rest/item/addItem" method="post">

       <%-- <div class="layui-form-item">
            <label class="layui-form-label">短输入框</label>
            <div class="layui-input-inline">
                <input type="text" name="username" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
        </div>--%>

        <div class="layui-form-item">
            <label class="layui-form-label">适用范围</label>
            <div class="layui-input-inline">
                <select name="classType" lay-filter="aihao">
                    <option value=""></option>
                    <option value="0" selected="">基础班</option>
                    <option value="1">就业班</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">题目类型</label>
            <div class="layui-input-inline">
                <select name="itemType" lay-filter="aihao">
                    <option value=""></option>
                    <option value="0">选择题</option>
                    <option value="1" selected="">编程题</option>
                    <option value="2">填空题</option>
                    <option value="3">判断题</option>
                    <option value="4">其他</option>
                </select>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">课程模块</label>
            <div class="layui-input-inline">
                <select name="quiz1">
                    <option value="">请选择课程模块</option>
                    <option value="11" selected="">JavaSE初级</option>
                    <option value="12" >JavaSE高级</option>
                    <option value="13" >MySQL+JDBC</option>
                    <option value="14" >前端</option>
                    <option value="15" >JavaWeb核心</option>
                    <option value="16" >Estore</option>
                    <option value="17" >Linux</option>
                </select>
            </div>
            <div class="layui-input-inline">
                <select name="itemSourceId">
                    <option value="">请选择课程</option>
                    <option value="1101" selected="">day01-搭建环境、数据类型</option>
                    <option value="1102">day02-Eclipse-运算符-键盘录入</option>
                    <option value="1103">day03-选择、循环语句</option>
                    <option value="1104">day04-Random-数组</option>
                    <option value="1105">day05-方法</option>
                    <option value="1106">day06-断点调试-练习</option>
                    <option value="1107">day07-面向对象-private-this-构造方法</option>
                    <option value="1108">day08-String-StringBuilder</option>
                    <option value="1109">day09-对象数组-ArrayList-学生管理案例</option>
                    <option value="1110">day10-字符流-字符缓冲流</option>
                    <option value="1111">day11-学生管理案例IO流版本</option>
                </select>
            </div>
            <%--<div class="layui-input-inline">
                <select name="quiz3">
                    <option value="">请选择县/区</option>
                    <option value="西湖区">西湖区</option>
                </select>
            </div>--%>
        </div>

        <div class="layui-form-item" pane="">
            <label class="layui-form-label">题目状态</label>
            <div class="layui-input-block">
                <input type="radio" name="itemStatus" value="1" title="启用" checked="">
                <input type="radio" name="itemStatus" value="0" title="禁用" >
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">题干信息</label>
            <div class="layui-input-block">
                <textarea  name="itemContent" placeholder="请输入题干信息" class="layui-textarea"></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <button class="layui-btn" lay-submit="" lay-filter="demo2">新增</button>
            <button class="layui-btn "   type="reset" >重置</button>
        </div>
    </form>

</div>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use(['laypage', 'layer','laydate','jquery','form'],function() {
        var laydate = layui.laydate;
        var laypage = layui.laypage;
        var form = layui.form();
        var $ = layui.jquery;

    });
</script>
</body>
</html>

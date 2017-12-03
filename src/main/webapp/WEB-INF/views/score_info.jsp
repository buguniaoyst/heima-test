<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
    <link rel="stylesheet" href="../../lib/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../../css/global.css" media="all">
    <script type="text/javascript" src="../../lib/layui/layui.js"></script>
    <script type="text/javascript"
            src="../../js/common.js"></script>
</head>
<body>
<div class="container">
    <blockquote class="layui-elem-quote">
        <strong>黑马程序员考试后台系统</strong>
    </blockquote>

    <table class="layui-table">
        <thead>
        <tr>
            <th colspan="2" scope="col">组卷信息</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th width="30%">试卷信息</th>
            <td><span id="lbServerName">${testinfo}</span></td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>

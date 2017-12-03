<%--
  Created by IntelliJ IDEA.
  User: yst
  Date: 2017/7/20
  Time: 0:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/layui/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" ></script>
    <style>
        .main{width:auto; margin:0 15px;}
        .index_main{margin:0 15px;}
    </style>
</head>
<body >
<div class="banner">
    <div class="main index_main">
        <img class="banner_pic" src="${pageContext.request.contextPath}/images/banner.jpg" alt="banner_学无止境">
    </div>
</div>
</body>
<script>
    //Demo
    layui.use('form', function(){
        var form = layui.form();

        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });
</script>
</html>

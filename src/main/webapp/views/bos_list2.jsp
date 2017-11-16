<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" media="all">
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/lay/modules/laypage.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/common.js"></script>
</head>
<body>
<div class="layui-form-pane" style="margin-top: 15px;">
    <!-- 列表操作按钮组 -->
    <div class="layui-form-item">
        <button id="exportbtn" class="layui-btn layui-btn-warm" lay-filter="exportpro">导出数据</button>&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <div id="view">

    </div>
</div>
</body>
<script>
    layui.config({
        base: '${pageContext.request.contextPath}/js/',
        version:'1.0'
    }).use(['jfTable','laypage', 'layer','laydate','jquery','form'], function () {
        var laydate = layui.laydate;
        var laypage = layui.laypage;
        var form = layui.form();
        var $ = layui.jquery;


        var config = {
            url:"${pageContext.request.contextPath}/rest/pro/proinfo_list",
            page:true,
            select:true,
            dataFilter:function (res) {
                console.log(res);
                var data = res.results;
                for(var i = 0;i<data.length;i++) {
                    console.log(data[i]);
                    for(var j=1;j<=20;j++){

                        var ele = 'day'+j;
                        if(data[i][ele] == 1) {
                            data[i][ele] = "已完成";
                        }else{
                            data[i][ele] = "未完成";
                        }

                    }
                }
            },
            columns: [ {
                text:'班级名称',
                name: 'classname',
                width: 90
            }, {
                text:'姓名',
                name: 'name',
                width: 75
            }, {
                text:'第1天',
                name: 'day1',
                width: 75
            }, {
                text:'第2天',
                name: 'day2',
                width: 75
            }, {
                text:'第3天',
                name: 'day3',
                width: 75
            }, {
                text:'第4天',
                name: 'day4',
                width: 75
            }, {
                text:'第5天',
                name: 'day5',
                width: 75
            }, {
                text:'第6天',
                name: 'day6',
                width: 75
            }, {
                text:'第7天',
                name: 'day7',
                width: 75
            }, {
                text:'第8天',
                name: 'day8',
                width: 75
            }, {
                text:'第9天',
                name: 'day9',
                width: 75
            }, {
                text:'第10天',
                name: 'day10',
                width: 75
            }, {
                text:'第11天',
                name: 'day11',
                width: 75
            }, {
                text:'第12天',
                name: 'day12',
                width: 75
            }, {
                text:'第13天',
                name: 'day13',
                width: 75
            }, {
                text:'第14天',
                name: 'day14',
                width: 75
            }, {
                text:'第15天',
                name: 'day15',
                width: 75
            }, {
                text:'第16天',
                name: 'day16',
                width: 75
            }, {
                text:'第17天',
                name: 'day17',
                width: 75
            }, {
                text:'第18天',
                name: 'day18',
                width: 75
            }, {
                text:'第19天',
                name: 'day19',
                width: 75
            }, {
                text:'第20天',
                name: 'day20',
                width: 75
            }],
            method:"get",
            toolbarClass:"layui-btn-small"

        }
        $("#view").jfTable(config);

    });
</script>
</html>

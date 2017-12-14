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
    <title>试卷管理列表</title>
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
    <!-- 列表操作按钮组 -->
   <%-- <div class="layui-form-item">
        <button id="exportbtn" class="layui-btn layui-btn-warm" lay-filter="exportpro">导出数据</button>&nbsp;&nbsp;&nbsp;&nbsp;
    </div>--%>
    <div class="layui-form" >
        <table class="layui-table" style="height: 58px;" lay-even="" lay-skin="row" id="testSourceTable">
            <colgroup>
                <col width="200">
                <col width="200">
                <col width="600">
                <col width="400">
            </colgroup>
            <thead>
            <tr>
                <th align="center">班级名称</th>
                <th align="center">试卷名称</th>
                <th align="center">学员访问地址</th>
                <th align="center">操作</th>
            </tr>
            </thead>
            <tbody id="tbody">
            </tbody>
        </table>
    </div>
    <div id="demo5" align="center"></div>
    <!-- <div id="demo7" align="center"></div> -->
</div>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script src="/lib/jquery-1.8.3.js"></script>
<script>
    layui.use(['laypage', 'layer','laydate','jquery','form'],function() {
        var laydate = layui.laydate;
        var laypage = layui.laypage;
        var form = layui.form();
        var $ = layui.jquery;
        var start = {
            max : '2099-06-16 23:59:59',
            istoday : false,
            choose : function(datas) {
                end.min = datas; //开始日选好后，重置结束日的最小日期
                end.start = datas //将结束日的初始值设定为开始日
            }
        };

        var end = {
            max : '2099-06-16 23:59:59',
            istoday : false,
            choose : function(datas) {
                start.max = datas; //结束日选好后，重置开始日的最大日期
            }
        };


        //页面初始化的时候加载分页数据
        $(function(){
            //alert("页面初始化了.......");

            $.ajax({
                type: "GET",
                url: "${pageContext.request.contextPath}/rest/test_source/queryTestSourceByClassId?classId=${param.classId}",
                //记得加双引号  T_T
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    var _table = $("#tbody");
                    var _tr = $("<tr></tr>");
                    var className ;
                    var classId;
                    if(data.classinfo){
                        classId = data.classinfo.classId;
                        if(classId && classId.substring(classId.length-1,classId.length) == '0'){
                            className = '基础班第' + classId.substring(0, classId.length - 1)+'期';
                        }else{
                            className = '就业班第' + classId.substring(0, classId.length - 1)+'期';
                        }
                    }
                    var td1 = $("<td>"+className+"</td>");
                    var td2 = $("<td>"+data.testinfo.testName+"</td>");
                    var td3 = $("<td>请学员登录，开始做题</td>");
                    var td4 = $("<td><button class='layui-btn'>编辑</button></td>");
                    td1.appendTo(_tr);
                    td2.appendTo(_tr);
                    td3.appendTo(_tr);
                    td4.appendTo(_tr);

                    _tr.appendTo(_table);
                },
                error: function (err) {
                    alert(err + "err");
                }
            });


        })



    });

    //查看分数详情
    function showScoreDetail(testid) {
        //location.href = "${pageContext.request.contextPath}/rest/test/showScoreDetail?testId="+testid;
        location.href = "${pageContext.request.contextPath}/rest/score_detail?testId="+testid;
    }


</script>
</body>
</html>

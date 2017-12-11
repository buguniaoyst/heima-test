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
        <table class="layui-table" style="height: 58px;" lay-even="" lay-skin="row" id="personTable">
            <colgroup>
                <col width="40">
                <col width="600">
                <col width="400">
                <col width="600">
            </colgroup>
            <thead>
            <tr>
<%--
                <th align="center"><input type="checkbox" id="layui-table-checkbox" name="id" lay-skin="primary" lay-filter="allChoose"></th>
--%>
                <th align="center"style="padding: 0;text-align: center">序号</th>
                <th align="center">用户名</th>
                <th align="center">角色</th>
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
                url: "${pageContext.request.contextPath}/rest/user/userList",
                //记得加双引号  T_T
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    nums = data.pagesize; //每页出现的数量
                    pageData = data;
                    var pages = Math.ceil(data.results.length / nums); //得到总页数
                    //调用分页
                    laypage({
                        cont: 'demo5',
                        pages: pages,
                        jump: function (obj) {
                            thisDate(obj.curr)
                            console.log( thisDate(obj.curr));
                            form.render();
                        }
                    })
                    return;
                },
                error: function (err) {
                    alert(err + "err");
                }
            });

            //根据助教姓名查询 查询
            $("#searchBtn").click(function(){
                //墨绿深蓝风
                layer.alert('不想写了，你自己写吧.....', {
                    skin: 'layui-layer-molv' //样式类名
                    ,closeBtn: 0
                });
            });


        })

        //分页数据
        var pageData ;
        var nums = 1; //每页出现的数量
        var pages = 1;
        var thisDate = function (curr) {
            //此处只是演示，实际场景通常是返回已经当前页已经分组好的数据
            data = pageData.results;
            var str = '', last = curr * nums - 1;
            last = last >= data.length ? (data.length - 1) : last;
            var table = $("#tbody");
            $("#tbody tr").empty();//每次进来先清空table
            for (var i = (curr * nums - nums); i <= last; i++) {
                // str += '<li>' + data[i] + '</li>';
                var tr=$("<tr></tr>");
                var usertype ;
                if (data[i].usertype == '1') {
                    usertype = "管理员";

                }else{
                    usertype = "普通用户";
                }

                var td1 = $("<td align='center'>"+i+"</td>")
                var td2 = $("<td align='center'>"+data[i].username+"</td>");
                var td3 = $("<td align='center'>"+usertype+"</td>");
                var td4 = $("<td align='center' ><button  class='layui-btn  layui-btn-radius' >编辑</button></td>");
                td1.appendTo(tr);
                td2.appendTo(tr);
                td3.appendTo(tr);
                td4.appendTo(tr);
                tr.appendTo(table);
            }
            return table;
        };

    });


</script>
</body>
</html>

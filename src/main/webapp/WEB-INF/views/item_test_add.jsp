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
    <title>组卷管理</title>
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
    <form class="layui-form layui-form-pane" action="${pageContext.request.contextPath}/rest/item/addTestItem" method="post">

        <div class="layui-form-item">
            <label class="layui-form-label">试卷名称</label>
            <div class="layui-input-inline">
               <input type="text" name="testName" class="layui-input">
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
                <select name="testSourcesId">
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
        <div>
            <table class="layui-table" style="height: 58px;" lay-even="" lay-skin="row" id="personTable">
                <colgroup>
                    <col width="40">
                    <col width="200">
                    <col width="200">
                    <col width="400">
                    <col width="600">
                    <col width="400">
                </colgroup>
                <thead>
                <tr>
                    <th align="center"style="padding: 0;text-align: center">序号</th>
                    <th align="center">班级类型</th>
                    <th align="center">题目类型</th>
                    <th align="center">关联课程</th>
                    <th align="center">题干</th>
                    <th align="center">题目状态</th>
                </tr>
                </thead>
                <tbody id="tbody">
                </tbody>
            </table>
        </div>
        <div id="demo5" align="center"></div>
        <div class="layui-form-item">
            <button class="layui-btn" id="createTestItem" lay-submit="" lay-filter="demo2">立即组卷</button>
            <button class="layui-btn "   type="reset" >重置</button>
        </div>
    </form>

</div>
<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use(['laypage', 'layer','laydate','jquery','form'],function() {
        var laydate = layui.laydate;
        var laypage = layui.laypage;
        var form = layui.form();
        var $ = layui.jquery;


        //创建itemList的列表table
        //页面初始化的时候加载分页数据
        $(function(){
            //加载题目;
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/rest/item/queryItem",
                //记得加双引号  T_T
                data:{classType:"0"},
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
                var classType;
                var itemContent;
                var itemSourceId;
                var itemStatus;
                var itemType;
                if (data[i].classType == '0') {
                    classType = "基础班";
                }else{
                    classType = "就业班";
                }
                if (data[i].itemStatus == '0') {
                    itemStatus = "禁用";
                }else{
                    itemStatus = "启用";
                }
                if (data[i].itemType == '0') {
                    itemType = "选择题";
                }else if(data[i].itemType == '1'){
                    itemType = "编程题";
                }else if(data[i].itemType == '2'){
                    itemType = "填空题";
                }else if(data[i].itemType == '3'){
                    itemType = "判断题";
                }else{
                    itemType = "其他";
                }

                var td0 = $("<td align='center' ><input type='checkbox'  name='itemId' value="+data[i].id+"></input></td>")
                var td1 = $("<td align='center'>"+classType+"</td>")
                var td2 = $("<td align='center'>"+itemType+"</td>");
                var td3 = $("<td align='center'>"+data[i].itemSourceId+"</td>");
                var  td4 = $("<td align='center' >"+data[i].itemContent+"</td>");
                var  td5 = $("<td align='center' ><button  class='layui-btn  layui-btn-radius' >"+itemStatus+"</button></td>");
                td0.appendTo(tr);
                td1.appendTo(tr);
                td2.appendTo(tr);
                td3.appendTo(tr);
                td4.appendTo(tr);
                td5.appendTo(tr);
                tr.appendTo(table);
            }

            return table;
        };

    });

</script>
</body>
</html>

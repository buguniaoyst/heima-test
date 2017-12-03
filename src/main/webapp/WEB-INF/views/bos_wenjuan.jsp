<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BOS物流项目进度跟踪</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" media="all">
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/common.js"></script>
</head>
<body>
    <div style="position: relative; margin: 40px auto 6px 50px;">
        <form class="layui-form layui-form-pane" id="wenjuanForm" action="/rest/pro/save" method="post">

            <div class="site-tips">
                <span style="font-size: large">BOS物流项目进度跟踪...</span>
            </div>
            <div class="site-title">
                <fieldset><legend><a >项目第一天</a></legend></fieldset>
            </div>
            <div class="site-text">
                <p>项目第一天的任务主要是：1.完成基于maven工程的BOS物流分模块的项目搭建；2.掌握常用的EasyUI知识点（比如：布局，表单）</p>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="background-color: #009688">进度</label>
                <div class="layui-input-block">
                    <input type="radio" name="day1" value="1" title="已完成" checked>
                    <input type="radio" name="day1" value="0" title="未完成" >
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >项目第二天</a></legend></fieldset>
            </div>
            <div class="site-text">
                <p>项目第二天的任务主要是：1.掌握Spring data jpa的基本用法；2.基于spring data jpa 完成dao实现 ；3.	FacadeService门面业务类设计；4.通用BaseAction模板的设计</p>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="background-color: #009688">进度</label>
                <div class="layui-input-block">
                    <input type="radio" name="day2" value="1" title="已完成" checked>
                    <input type="radio" name="day2" value="0" title="未完成" >
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >项目第三天</a></legend></fieldset>
            </div>
            <div class="site-text">
                <p>项目第三天的任务主要是：1.掌握对login.jsp页面的修改；2.完成验证码的ajax校验；3.完成登录业务；4.完成添加登录拦截器</p>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="background-color: #009688">进度</label>
                <div class="layui-input-block">
                    <input type="radio" name="day3" value="1" title="已完成" checked>
                    <input type="radio" name="day3" value="0" title="未完成" >
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >项目第四天</a></legend></fieldset>
            </div>
            <div class="site-text">
                <p>项目第四天的任务主要是：1.掌握java操作redis的基本用法；2.完成阿里大于的短信业务的相关配置；3.熟悉ActiveMQ的两种通信模式</p>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="background-color: #009688">进度</label>
                <div class="layui-input-block">
                    <input type="radio" name="day4" value="1" title="已完成" checked>
                    <input type="radio" name="day4" value="0" title="未完成" >
                </div>
            </div>


            <div class="site-title">
                <fieldset><legend><a >项目第五天</a></legend></fieldset>
            </div>
            <div class="site-text">
                <p>项目第五天的任务主要是：1.完成ActiveMQ和Spring的整合；2.完成Redis和Spring的整合；3.完成基于阿里大于SDK的短信发送业务封装；4.完成短信找回密码功能；5.完成修改密码功能；</p>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="background-color: #009688">进度</label>
                <div class="layui-input-block">
                    <input type="radio" name="day5" value="1" title="已完成" checked>
                    <input type="radio" name="day5" value="0" title="未完成" >
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >项目第六天</a></legend></fieldset>
            </div>
            <div class="site-text">
                <p>项目第六天的任务主要是：1.掌握Easyui提供客户端表单数据的校验；2.收派标准表和实体模型搭建；3.完成收派标准添加之服务器代码实现；</p>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="background-color: #009688">进度</label>
                <div class="layui-input-block">
                    <input type="radio" name="day6" value="1" title="已完成" checked>
                    <input type="radio" name="day6" value="0" title="未完成" >
                </div>
            </div>


            <div class="site-title">
                <fieldset><legend><a >项目第七天</a></legend></fieldset>
            </div>
            <div class="site-text">
                <p>项目第七天的任务主要是：1.完成收派标准分页查询功能；2.完成收派标准作废和修改业务；</p>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="background-color: #009688">进度</label>
                <div class="layui-input-block">
                    <input type="radio" name="day7" value="1" title="已完成" checked>
                    <input type="radio" name="day7" value="0" title="未完成" >
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >项目第八天</a></legend></fieldset>
            </div>
            <div class="site-text">
                <p>项目第八天的任务主要是：1.完成取派员添加功能；2.完成取派员添加页面之收派标准数据回显；3.完成取派员添加页面表单校验；4.完成取派员信息分页查询；5.掌握datagrid的列属性formatter的使用</p>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="background-color: #009688">进度</label>
                <div class="layui-input-block">
                    <input type="radio" name="day8" value="1" title="已完成" checked>
                    <input type="radio" name="day8" value="0" title="未完成" >
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >项目第九天</a></legend></fieldset>
            </div>
            <div class="site-text">
                <p>项目第九天的任务主要是：1.掌握one click upload 一键上传插件的使用方法；2.掌握POI解析Excel，完成区域信息导入功能；3.完成区域添加功能；4.完成区域分页查询；5.能够完成分页查询优化；</p>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="background-color: #009688">进度</label>
                <div class="layui-input-block">
                    <input type="radio" name="day9" value="1" title="已完成" checked>
                    <input type="radio" name="day9" value="0" title="未完成" >
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >项目第十天</a></legend></fieldset>
            </div>
            <div class="site-text">
                <p>项目第十天的任务主要是：1.完成分区添加（分区是要关联区域信息（多表关联插入 ））；2.分区列表查询（b)	多条件组合分页查询 （jquery easyui datagrid 如何设置条件、 spring data 组合条件查询 Specification 接口规范 ））；3.分区查询结果导出 （POI 生成Excel 进行下载 ）；4.采用FastJson 完成json序列化结果集；</p>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="background-color: #009688">进度</label>
                <div class="layui-input-block">
                    <input type="radio" name="day10" value="1" title="已完成">
                    <input type="radio" name="day10" value="0" title="未完成" checked>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >项目第十一天</a></legend></fieldset>
            </div>
            <div class="site-text">
                <p>项目第十一天的任务主要是：1.完成定区添加功能；2.完成定区条件分页查询；3.完成定区关联客户的功能；</p>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="background-color: #009688">进度</label>
                <div class="layui-input-block">
                    <input type="radio" name="day11" value="1" title="已完成">
                    <input type="radio" name="day11" value="0" title="未完成" checked>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >项目第十二天</a></legend></fieldset>
            </div>
            <div class="site-text">
                <p>项目第十二天的任务主要是：1.能够完成CRM系统的搭建；2.实现定区关联客户功能；</p>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="background-color: #009688">进度</label>
                <div class="layui-input-block">
                    <input type="radio" name="day12" value="1" title="已完成">
                    <input type="radio" name="day12" value="0" title="未完成" checked>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >项目第十三天</a></legend></fieldset>
            </div>
            <div class="site-text">
                <p>项目第十三天的任务主要是：1.理解取派模块的业务需求；2.能够完成通过手机号码回显老客户信息；</p>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="background-color: #009688">进度</label>
                <div class="layui-input-block">
                    <input type="radio" name="day13" value="1" title="已完成">
                    <input type="radio" name="day13" value="0" title="未完成" checked>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >项目第十四天</a></legend></fieldset>
            </div>
            <div class="site-text">
                <p>项目第十四天的任务主要是：1.能够完成业务受理功能</p>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="background-color: #009688">进度</label>
                <div class="layui-input-block">
                    <input type="radio" name="day14" value="1" title="已完成">
                    <input type="radio" name="day14" value="0" title="未完成" checked>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >项目第十五天</a></legend></fieldset>
            </div>
            <div class="site-text">
                <p>项目第十五天的任务主要是：</p>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="background-color: #009688">进度</label>
                <div class="layui-input-block">
                    <input type="radio" name="day15" value="1" title="已完成">
                    <input type="radio" name="day15" value="0" title="未完成" checked>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >项目第十六天</a></legend></fieldset>
            </div>
            <div class="site-text">
                <p>项目第十六天的任务主要是：</p>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="background-color: #009688">进度</label>
                <div class="layui-input-block">
                    <input type="radio" name="day16" value="1" title="已完成">
                    <input type="radio" name="day16" value="0" title="未完成" checked>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >项目第十七天</a></legend></fieldset>
            </div>
            <div class="site-text">
                <p>项目第十七天的任务主要是：</p>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="background-color: #009688">进度</label>
                <div class="layui-input-block">
                    <input type="radio" name="day17" value="1" title="已完成">
                    <input type="radio" name="day17" value="0" title="未完成" checked>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >项目第十八天</a></legend></fieldset>
            </div>
            <div class="site-text">
                <p>项目第十八天的任务主要是：</p>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="background-color: #009688">进度</label>
                <div class="layui-input-block">
                    <input type="radio" name="day18" value="1" title="已完成">
                    <input type="radio" name="day18" value="0" title="未完成" checked>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >项目第十九天</a></legend></fieldset>
            </div>
            <div class="site-text">
                <p>项目第十九天的任务主要是：</p>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="background-color: #009688">进度</label>
                <div class="layui-input-block">
                    <input type="radio" name="day19" value="1" title="已完成">
                    <input type="radio" name="day19" value="0" title="未完成" checked>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >项目第二十天</a></legend></fieldset>
            </div>
            <div class="site-text">
                <p>项目第二十天的任务主要是：</p>
            </div>
            <div class="layui-form-item">
            <label class="layui-form-label" style="background-color: #009688">进度</label>
            <div class="layui-input-block">
                <input type="radio" name="day20" value="1" title="已完成">
                <input type="radio" name="day20" value="0" title="未完成" checked>
            </div>
        </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit="" lay-filter="wenjuan">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
     </div>
</body>
<script >
    layui.use('form',function () {
       var form = layui.form();
        //提交表单
        form.on('submit(wenjuan)',function(data){
            $('#wenjuanForm').submit();
            //location.href='index.html';
            return false;
        });


        function  addItem() {
            var aa = $("#itemId");
            if(aa != null) {
                $.messager.alert("要保存的数据为：-----" + aa);


            }
        }
    });
</script>
</html>

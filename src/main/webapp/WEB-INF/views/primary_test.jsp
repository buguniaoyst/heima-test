<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JavaEE基础班开班考试</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" media="all">
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/common.js"></script>
</head>
<body>
    <div style="position: relative; margin: 40px auto 6px 50px;">
        <form class="layui-form layui-form-pane" id="wenjuanForm" action="/rest/test/submit" method="post">

            <div class="site-tips">
                <span style="font-size: large">JavaEE基础班开班考试试卷...</span>
            </div>
            本试卷是JAVA基础班入学考试试卷，主要考察JAVA基础前五天大家在入学之前掌握的一个整体情况，本试卷共有40道题，其中有30道是单选，有10道题是多选题，希望大家认真对待



            <div>
               <div class="site-title">
                   <fieldset><legend><a >第一题</a></legend></fieldset>
               </div>
               <div class="site-item">
                   下列有关Windows的快捷键说法不正确的是
               </div>
               <div class="site-item-param">
                   <div id='qwe' class='matrix'>
                       <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q1" value="A" title="A">
                        </span>
                           <lable>ctrl + c是粘贴操作 ;</lable>
                       </div>
                       <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q1" value="B" title="B">
                        </span>
                           <lable>ctrl + c是复制操作;</lable>
                       </div>
                       <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q1" value="C" title="C">
                        </span>

                           <lable>ctrl + v是粘贴操作;</lable>
                       </div>
                       <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q1" value="D" title="D">
                        </span>

                           <lable>ctrl + a是全选操作;</lable>
                       </div>
                   </div>
               </div>
           </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第二题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    关于JRE和JDK的说法正确的是;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q2" value="A" title="A">
                        </span>
                            <lable>JRE是Java语言的运行环境;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q2" value="B" title="B">
                        </span>
                            <lable>JDK是Java语言的开发工具包;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q2" value="C" title="C">
                        </span>

                            <lable>JDK包含JRE;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q2" value="D" title="D">
                        </span>

                            <lable>必须要有JDK才能运行Java程序;</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第三题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    Java平台有三个版本，分别是javaSE、JavaME、javaEE，下列说法不正确的是;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q3" value="A" title="A">
                        </span>
                            <lable>javaSE是指Java语言的标准版;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q3" value="B" title="B">
                        </span>
                            <lable>javaME是指Java语言的标准版;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q3" value="C" title="C">
                        </span>

                            <lable>javaEE是指企业级的Java开发语言，是为企业提供服务的;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q3" value="D" title="D">
                        </span>

                            <lable>javaME是为机顶盒、移动电话和PDA之类嵌入式消费电子设备提供的Java语言平台，包括虚拟机和一系列标准化的Java API;</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第四题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    下列哪些不是Java中的的注释;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q4" value="A" title="A">
                        </span>
                            <lable>单行注释;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q4" value="B" title="B">
                        </span>
                            <lable>多行注释;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q4" value="C" title="C">
                        </span>

                            <lable>文档注释;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q4" value="D" title="D">
                        </span>

                            <lable>#注释;</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第五题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    Java注释有3种，单行注释、多行注释和文档注释，下列有关注释的说法，不正确的是;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q5" value="A" title="A">
                        </span>
                            <lable>注释指的是用来对程序的某个功能或者某行代码进行解释说明;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q5" value="B" title="B">
                        </span>
                            <lable>注释只在Java源文件中有效;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q5" value="C" title="C">
                        </span>

                            <lable>在多行注释中，能够嵌套多行注释;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q5" value="D" title="D">
                        </span>

                            <lable>注释不会被编译到class字节码文;</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第六题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    下面哪种类型的文件可以在Java虚拟机中运行;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q6" value="A" title="A">
                        </span>
                            <lable>java;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q6" value="B" title="B">
                        </span>
                            <lable>jre;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q6" value="C" title="C">
                        </span>

                            <lable>exe</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q6" value="D" title="D">
                        </span>

                            <lable>class</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第七题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    想要运行Java程序，必须得先通过______Java源文件，然后再通过______java程序;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q7" value="A" title="A">
                        </span>
                            <lable>javaw工具编译  javac工具运行;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q7" value="B" title="B">
                        </span>
                            <lable>java工具编译   javac工具运行;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q7" value="C" title="C">
                        </span>

                            <lable>javac工具编译  java工具运行</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q7" value="D" title="D">
                        </span>

                            <lable>java工具编译   java工具编译</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第八题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    下列关于变量和常量的说法正确的是;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q8" value="A" title="A">
                        </span>
                            <lable>常量表示不能被改变的值，例如1、2、“abc”都是常量;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q8" value="B" title="B">
                        </span>
                            <lable>常量表示常见的变量;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q8" value="C" title="C">
                        </span>

                            <lable>int x = 0;代码中，x表示常量，0表示变量;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q8" value="D" title="D">
                        </span>

                            <lable>在同一个大括号｛｝内，定义的变量不能够重名;</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第九题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    下列定义变量格式，错误的是;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q9" value="A" title="A">
                        </span>
                            <lable>float x,y=0; </lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q9" value="B" title="B">
                        </span>
                            <lable>float f = 1999.99F;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q9" value="C" title="C">
                        </span>

                            <lable>String str = 字符串;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q9" value="D" title="D">
                        </span>

                            <lable>char x = '0';</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第十题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    常见的进制有二进制、八进制、十进制、十六进制，其中计算机能够直接识别的进制是哪一种;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q10" value="A" title="A">
                        </span>
                            <lable>八进制;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q10" value="B" title="B">
                        </span>
                            <lable>十六进制;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q10" value="C" title="C">
                        </span>

                            <lable>十进制;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q10" value="D" title="D">
                        </span>

                            <lable>二进制;</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第十一题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    下列各种符号的定义格式，那种在java语言中是错误的变量定义;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q11" value="A" title="A">
                        </span>
                            <lable>int myVal =1;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q11" value="B" title="B">
                        </span>
                            <lable>char $myVal =1;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q11" value="C" title="C">
                        </span>

                            <lable>byte _myVal =1; </lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q11" value="D" title="D">
                        </span>

                            <lable>float 3.14myVal=1;</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第十二题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    Java语言中的int及char数据类型的长度分别为;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q12" value="A" title="A">
                        </span>
                            <lable>16位和8 位;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q12" value="B" title="B">
                        </span>
                            <lable>8位和16位;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q12" value="C" title="C">
                        </span>

                            <lable>32位和16位;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q12" value="D" title="D">
                        </span>

                            <lable>32位和8位;</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第十三题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    关于运算符的说法不正确的是;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q13" value="A" title="A">
                        </span>
                            <lable>= = 表示用于判断是否相等;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q13" value="B" title="B">
                        </span>
                            <lable>a > b表示判断a是否大于b;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q13" value="C" title="C">
                        </span>

                            <lable>int a = b; 表示把b的值赋给a;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q13" value="D" title="D">
                        </span>

                            <lable>& 表示逻辑或;</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第十四题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    下列对运算符的说法错误的是;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q14" value="A" title="A">
                        </span>
                            <lable>x += 2;的功能是把x的值增加2;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q14" value="B" title="B">
                        </span>
                            <lable>x -= 2;的功能是把x的值减去2;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q14" value="C" title="C">
                        </span>

                            <lable>x *= 2的功能是把x的值变为原来的两倍</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q14" value="D" title="D">
                        </span>

                            <lable>x ==2的功能是把2赋给了x;</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第十五题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    关于int x = 2; int y = (x= =3?5:6);的说法正确的是;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q15" value="A" title="A">
                        </span>
                            <lable>int y = (x= =3?5:6)的意思是，如果x的值是3，那么把5赋值给y，		如果x的值不等于3，那么把6赋给y</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q15" value="B" title="B">
                        </span>
                            <lable>y的值是6</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q15" value="C" title="C">
                        </span>

                            <lable>y的值是5</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q15" value="D" title="D">
                        </span>

                            <lable>编译会报错</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第十六题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    语句System.out.println(1+2+"java"+3+4)输出的结果是;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q16" value="A" title="A">
                        </span>
                            <lable>3java34;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q16" value="B" title="B">
                        </span>
                            <lable>12java34;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q16" value="C" title="C">
                        </span>

                            <lable>3java7</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q16" value="D" title="D">
                        </span>

                            <lable>12java7</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第十七题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    关于下列循环语句，写法正确的是;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q17" value="A" title="A">
                        </span>
                            <lable>while(true){};</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q17" value="B" title="B">
                        </span>
                            <lable>for(;;){};</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q17" value="C" title="C">
                        </span>

                            <lable>do{}while(false);</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q17" value="D" title="D">
                        </span>

                            <lable>for(int a=0;a<5;a++);</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第十八题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    下列关于Java函数的说法不正确的是;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q18" value="A" title="A">
                        </span>
                            <lable>函数也叫方法，函数就是定义在类中，具有特定功能的一段小程序;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q18" value="B" title="B">
                        </span>
                            <lable>方法体中不能有任何代码（抽象函数除外）;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q18" value="C" title="C">
                        </span>

                            <lable>函数必须先定义，才能被调用</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q18" value="D" title="D">
                        </span>

                            <lable>函数（构造函数除外）要有返回值类型</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第十九题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    以下关于函数重载的说法正确的有;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q19" value="A" title="A">
                        </span>
                            <lable>方法名必须一样;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q19" value="B" title="B">
                        </span>
                            <lable>与返回值类型无关;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q19" value="C" title="C">
                        </span>

                            <lable>参数个数或者顺序不一样</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q19" value="D" title="D">
                        </span>

                            <lable>参数类型不一样</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第二十题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    关于数组的说法，正确的是;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q20" value="A" title="A">
                        </span>
                            <lable>数组里面存放的是相同类型的数据;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q20" value="B" title="B">
                        </span>
                            <lable>获取数组的长度使用length属性;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q20" value="C" title="C">
                        </span>

                            <lable>获取数组的大小使用size方法;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q20" value="D" title="D">
                        </span>

                            <lable>数组的长度是可变的;</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第二十一题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    int[] arr = new int[2];怎样拿到第2个元素的值;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q21" value="A" title="A">
                        </span>
                            <lable>arr.get(2);</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q21" value="B" title="B">
                        </span>
                            <lable>arr.[1];</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q21" value="C" title="C">
                        </span>

                            <lable>arr[1];</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q21" value="D" title="D">
                        </span>

                            <lable>arr[2];</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第二十二题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    下列哪种写法可以实现访问数组arr的第1个元素;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q22" value="A" title="A">
                        </span>
                            <lable>arr[0];</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q22" value="B" title="B">
                        </span>
                            <lable>arr(0);</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q22" value="C" title="C">
                        </span>

                            <lable>arr[1]</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q22" value="D" title="D">
                        </span>

                            <lable>arr(1)</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第二十三题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    若int[] a = {12,43,54,23},则a[3]的值是;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q23" value="A" title="A">
                        </span>
                            <lable>12;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q23" value="B" title="B">
                        </span>
                            <lable>43;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q23" value="C" title="C">
                        </span>

                            <lable>54;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q23" value="D" title="D">
                        </span>

                            <lable>23;</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第二十四题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    想要结果输出为0，则可以做哪些修改<br>
                    int [ ] arr = new int[1];  	①<br>
                    arr[0] = 3;              	②<br>
                    System.out.println( arr[1] );  ③<br>
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q24" value="A" title="A">
                        </span>
                            <lable>②处修改为arr[3] = 0;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q24" value="B" title="B">
                        </span>
                            <lable>③处修改为System.out.println(0);</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q24" value="C" title="C">
                        </span>

                            <lable>①处修改为int [ ] arr = new int[2];</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q24" value="D" title="D">
                        </span>

                            <lable>不用修改了，结果就是0;</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第二十五题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    下列二维数组定义错误的是;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q25" value="A" title="A">
                        </span>
                            <lable>int[][] arr = new int[3][2];</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q25" value="B" title="B">
                        </span>
                            <lable>int arr[][] = new int[3][];</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q25" value="C" title="C">
                        </span>

                            <lable>int[][] arr = {{1,2,3},{4,5},{6,7,8,9}};</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q25" value="D" title="D">
                        </span>

                            <lable>int arr[][] ={{2,3},{6},9};</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第二十六题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    下面程序运行的结果是:<br>
                    public static void main(String[ ] args){<br>
                    int x = 10 + 20;<br>
                    System.out.println( x );<br>
                    };<br>
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q26" value="A" title="A">
                        </span>
                            <lable>10;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q26" value="B" title="B">
                        </span>
                            <lable>20;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q26" value="C" title="C">
                        </span>

                            <lable>1020;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q26" value="D" title="D">
                        </span>

                            <lable>30;</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第二十七题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    下面程序运行的结果是:<br>
                    public static void main(String[] args){<br>
                    int a = 1;<br>
                    if(a < 1){<br>
                    System.out.println(a);<br>
                    }else{<br>
                    System.out.println("a");<br>
                    }<br>
                    }<br>
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q27" value="A" title="A">
                        </span>
                            <lable>a</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q27" value="B" title="B">
                        </span>
                            <lable>2</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q27" value="C" title="C">
                        </span>

                            <lable>1</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q27" value="D" title="D">
                        </span>

                            <lable>编译报错</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第二十八题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    面程序运行的结果是:<br>
                    public static void main(String[] args){<br>
                    int x = 19;<br>
                    switch (x) {<br>
                    case 19:<br>
                    System.out.println("A");<br>
                    break;<br>
                    case 17:<br>
                    System.out.print("B");<br>
                    break;<br>
                    default:<br>
                    System.out.println("C");<br>
                    break;<br>
                    }<br>
                    }<br>
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q28" value="A" title="A">
                        </span>
                            <lable>A</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q28" value="B" title="B">
                        </span>
                            <lable>B</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q28" value="C" title="C">
                        </span>

                            <lable>C</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q28" value="D" title="D">
                        </span>

                            <lable>程序报错</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第二十九题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    下列循环语句，哪些是输出1-10这10个数字;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q29" value="A" title="A">
                        </span>
                            <lable>for(int x = 0; x < 10; x++）｛System.out.println(x);｝;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q29" value="B" title="B">
                        </span>
                            <lable>for(int x = 0; x < =10; x++）｛ System.out.println(x); ｝;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q29" value="C" title="C">
                        </span>

                            <lable>for(int x = 1; x < 10; x++）｛ System.out.println(x);｝;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q29" value="D" title="D">
                        </span>

                            <lable>for(int x = 1; x < =10; x++）｛System.out.println(x);｝;</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第三十题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    哪些代码能实现求从1加到10的和;
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q30" value="A" title="A">
                        </span>
                            <lable>int sum = 0;
                                for(int a=1;  a<=11;  a++)
                                {
                                sum += a;
                                };</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q30" value="B" title="B">
                        </span>
                            <lable>int sum = 0;
                                int a = 1;
                                while(a  <=  10)
                                {
                                sum += a;
                                a = a + 1;
                                };</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q30" value="C" title="C">
                        </span>

                            <lable>int sum = 0;
                                int a = 0;
                                do{
                                a = a + 1;
                                sum += a;
                                }while(a != 10);</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q30" value="D" title="D">
                        </span>

                            <lable>int sum = 0;
                                for(int x=0;  x<=10;  x++)
                                {
                                sum = 1 + 2 +3 +...+ 9 + 10;
                                }</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第三十一题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    查看代码，想要输出A，哪个选项可以实现：<br>
                    public static void main(String[ ] args){<br>
                    int x = 80 ;<br>
                    ①<br>
                    if(x > 100){<br>
                    System.out.println(“A”);<br>
                    }else{<br>
                    System.out.println(“B”);<br>
                    }<br>
                    }<br>
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q31" value="A" title="A">
                        </span>
                            <lable> x + 20;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q31" value="B" title="B">
                        </span>
                            <lable>x + 21;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q31" value="C" title="C">
                        </span>

                            <lable> x += 21;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q31" value="D" title="D">
                        </span>

                            <lable>x = 101;</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第三十二题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    发查看下面程序代码，输出的结果是:<br>
                    public static void main(String[] args){<br>
                    int x = 80;<br>
                    x = x - 1;<br>
                    x *= 10;<br>
                    if(x != 790)<br>
                    System.out.println(x);<br>
                    else<br>
                    System.out.println(x/10);<br>
                    };<br>
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q32" value="A" title="A">
                        </span>
                            <lable>80</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q32" value="B" title="B">
                        </span>
                            <lable>79</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q32" value="C" title="C">
                        </span>

                            <lable>790</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q32" value="D" title="D">
                        </span>

                            <lable>编译报错</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第三十三题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    下面代码的运行结果是:<br>
                    public static void main(String[] args){<br>
                    int x = 80;<br>
                    x ++;<br>
                    switch(x){<br>
                    case 80:<br>
                    System.out.println(80);<br>
                    case 81:<br>
                    System.out.println(81);<br>
                    default:<br>
                    System.out.println(82);<br>
                    }<br>
                    }<br>
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q33" value="A" title="A">
                        </span>
                            <lable>80</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q33" value="B" title="B">
                        </span>
                            <lable>80  81</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q33" value="C" title="C">
                        </span>

                            <lable>81</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q33" value="D" title="D">
                        </span>

                            <lable>81 82</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第三十四题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    下面程序代码的运行结果是:<br>
                    public static void main(String[] args){<br>
                    for(int x=80; x < 90; x ++){<br>
                    System.out.println(x);<br>
                    }<br>
                    }<br>
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q34" value="A" title="A">
                        </span>
                            <lable>80</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q34" value="B" title="B">
                        </span>
                            <lable>90</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q34" value="C" title="C">
                        </span>

                            <lable>输出80、81。。。89、90</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q34" value="D" title="D">
                        </span>

                            <lable>输出80、81。。。88、89</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第三十五题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    下面程序代码的运行结果是:<br>
                    public static void main(String[] args){<br>
                    boolean flag ;<br>
                    int x = 8;<br>
                    int y = 9;<br>
                    flag = (x&lt;y);<br>
                    while(flag && x > 0){<br>
                    System.out.println(x);<br>
                    x = x - 1;<br>
                    }<br>
                    }<br>
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q35" value="A" title="A">
                        </span>
                            <lable>什么也没有输出;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q35" value="B" title="B">
                        </span>
                            <lable>程序报错;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q35" value="C" title="C">
                        </span>

                            <lable>输出8 7 6 5 4 3 2	</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q35" value="D" title="D">
                        </span>

                            <lable>输出8 7 6 5 4 3 2 1</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第三十六题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    下面代码的运行结果是:<br>
                    public static void main(String[] args){<br>
                    int x = 80;<br>
                    do{<br>
                    System.out.println(80);<br>
                    x = x -20;<br>
                    }while(x >= 0 );<br>
                    }<br>
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q36" value="A" title="A">
                        </span>
                            <lable>80 60 40 20 0</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q36" value="B" title="B">
                        </span>
                            <lable>60 40 20 0</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q36" value="C" title="C">
                        </span>

                            <lable>80 60 40 20</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q36" value="D" title="D">
                        </span>

                            <lable>80 80 80 80 80</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第三十七题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    下面代码的运行结果是:<br>
                    public static void main(String[] args){<br>
                    for(int x = 0; x<5; x++){<br>
                    if(x%3==0){<br>
                    continue;<br>
                    }<br>
                    System.out.println(x);<br>
                    }<br>
                    }<br>
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q37" value="A" title="A">
                        </span>
                            <lable>0 1 2</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q37" value="B" title="B">
                        </span>
                            <lable>1 3 5</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q37" value="C" title="C">
                        </span>

                            <lable>1 2 4</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q37" value="D" title="D">
                        </span>

                            <lable>0 3 5</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第三十八题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    下面程序运行的结果是:<br>
                    public static void main(String[] args){<br>
                    int a = 1;<br>
                    if(a++>1){<br>
                    System.out.println(a);<br>
                    }else{<br>
                    System.out.println(a);<br>
                    }<br>
                    }<br>
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q38" value="A" title="A">
                        </span>
                            <lable>1</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q38" value="B" title="B">
                        </span>
                            <lable>2</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q38" value="C" title="C">
                        </span>

                            <lable>0</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q38" value="D" title="D">
                        </span>

                            <lable>编译报错</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第三十九题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    下面程序运行的结果是:<br>
                    public static void main(String[] args){<br>
                    int x = 12345;<br>
                    switch (++x) {<br>
                    case 12345:<br>
                    System.out.println("A");<br>
                    break;<br>

                    case 12346:<br>
                    System.out.print("B");<br>
                    break;<br>

                    default:<br>
                    System.out.println("C");<br>
                    break;<br>
                    }<br>
                    }<br>
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q39" value="A" title="A">
                        </span>
                            <lable>A</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q39" value="B" title="B">
                        </span>
                            <lable>B</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q39" value="C" title="C">
                        </span>

                            <lable>BC</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q39" value="D" title="D">
                        </span>

                            <lable>程序报错</lable>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="site-title">
                    <fieldset><legend><a >第四十题</a></legend></fieldset>
                </div>
                <div class="site-item">
                    求1到10之间所有的偶数的和，下面可以填入①处代码和②处代码的是:<br>
                    int sum = 0;<br>
                    for(int x=0;x<=10;①)<br>
                    {<br>
                    ②<br>
                    }<br>
                    System.out.println(sum);<br>
                </div>
                <div class="site-item-param">
                    <div id='qwe' class='matrix'>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q40" value="A" title="A">
                        </span>
                            <lable>x++

                                if(x %2 != 0)
                                {
                                sum += x;
                                }</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q40" value="B" title="B">
                        </span>
                            <lable>x+=2

                                sum += x;</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q40" value="C" title="C">
                        </span>

                            <lable>++x

                                if(x %2 == 0)
                                {
                                sum += x;
                                }</lable>
                        </div>
                        <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q40" value="D" title="D">
                        </span>

                            <lable>x+=1

                                sum =1+2+4+6+8+10;</lable>
                        </div>
                    </div>
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
//       var form = layui.form();
//        //提交表单
//        form.on('submit(wenjuan)',function(data){
//            $('#wenjuanForm').submit();
//            //location.href='index.html';
//            return false;
//        });


        function  addItem() {
            var aa = $("#itemId");
            if(aa != null) {
                $.messager.alert("要保存的数据为：-----" + aa);


            }
        }
    });
</script>
</html>

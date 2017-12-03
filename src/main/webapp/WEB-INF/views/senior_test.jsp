<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JavaEE就业班开班考试试卷</title>
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
                <span style="font-size: large">JavaEE就业班开班考试试卷</span>
            </div>
            本试卷是JAVA就业班入学考试试卷，主要考察大家对JavaSE阶段课程的吸收情况，希望大家认真对待
            <div class="site-title">
                <fieldset><legend><a >第一题</a></legend></fieldset>
            </div>
            <div class="site-item">
                找出下列哪个选项是java中的关键字
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio"  name="q1" value="A" title="A">
                        </span>
                        <lable>HelloWorld</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio"  name="q1" value="B" title="B">
                        </span>
                        <lable>class</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio" name="q1" value="C" title="C">
                        </span>

                        <lable>Demo</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio" name="q1" value="D" title="D">
                        </span>

                        <lable>String</lable>
                    </div>
                </div>
            </div>


            <div class="site-title">
                <fieldset><legend><a >第二题</a></legend></fieldset>
            </div>
            <div class="site-item">
                如果jdk安装路径为"c:\jdk",需要将普通的path环境变量设置下列那个选项
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio"  name="q2" value="A" title="A">
                        </span>
                        <lable>c:\jdk; </lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio"  name="q2" value="B" title="B">
                        </span>
                        <lable>c:\jdk\jre\bin;</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio" name="q2" value="C" title="C">
                        </span>

                        <lable>c:\jdk\bin;</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio" name="q2" value="D" title="D">
                        </span>

                        <lable>c:\jre;</lable>
                    </div>
                </div>
            </div>


            <div class="site-title">
                <fieldset><legend><a >第三题</a></legend></fieldset>
            </div>
            <div class="site-item">
                以下选项中不符合标识符定义的规则是
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio"  name="q3" value="A" title="A">
                        </span>
                        <lable>_myDate</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio"  name="q3" value="B" title="B">
                        </span>
                        <lable>12show</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio" name="q3" value="C" title="C">
                        </span>

                        <lable>public$C</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio" name="q3" value="D" title="D">
                        </span>

                        <lable>_12Class</lable>
                    </div>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >第四题</a></legend></fieldset>
            </div>
            <div class="site-item">
                以下选项中只包含Java虚拟机和核心类库的是
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio"  name="q4" value="A" title="A">
                        </span>
                        <lable>JDK</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio"  name="q4" value="B" title="B">
                        </span>
                        <lable>JVM</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio" name="q4" value="C" title="C">
                        </span>

                        <lable>JRE</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio" name="q4" value="D" title="D">
                        </span>

                        <lable>JBPM</lable>
                    </div>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >第五题</a></legend></fieldset>
            </div>
            <div class="site-item">
                请选出下列代码运行的结果<br>
                &emsp;public static void main(String[] args) {<br>
                &emsp;&emsp;boolean b =  3>10;<br>
                &emsp;&emsp;boolean b2 = 1 <=2;<br>
                &emsp;&emsp;System.out.println(b&&b2);<br>
                &emsp;&emsp;System.out.println(b||b2);<br>
                &emsp;}
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio"  name="q5" value="A" title="A">
                        </span>
                        <lable>true false</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio"  name="q5" value="B" title="B">
                        </span>
                        <lable>false true</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio" name="q5" value="C" title="C">
                        </span>

                        <lable>false false</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio" name="q5" value="D" title="D">
                        </span>

                        <lable>true true</lable>
                    </div>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >第六题</a></legend></fieldset>
            </div>
            <div class="site-item">
                写出下列代码运行的结果<br>
                &emsp;public static void main(String[] args) {<br>
                &emsp;&emsp;int a = 1;<br>
                &emsp;&emsp;int b = 2;<br>
                &emsp;&emsp;System.out.println( a=b );<br>
                &emsp;&emsp;System.out.println( a==b );<br>
                &emsp;}
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio"  name="q6" value="A" title="A">
                        </span>
                        <lable>1 false</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio"  name="q6" value="B" title="B">
                        </span>
                        <lable>2 true</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio" name="q6" value="C" title="C">
                        </span>

                        <lable>2 false</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio" name="q6" value="D" title="D">
                        </span>

                        <lable>1 true</lable>
                    </div>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >第七题</a></legend></fieldset>
            </div>
            <div class="site-item">
                下列switch程序的运行结果是()<br>
                &emsp;char ch = '8'; <br>
                &emsp;int r = 10; <br>
                &emsp;switch (ch) { <br>
                &emsp;&emsp;case '7': <br>
                &emsp;&emsp;&emsp;r = r + 3; <br>
                &emsp;&emsp;case '8': <br>
                &emsp;&emsp;&emsp;r = r + 5;  <br>
                &emsp;&emsp;case '9': <br>
                &emsp;&emsp;&emsp;r = r + 6;<br>
                &emsp;&emsp;&emsp;break;  <br>
                &emsp;&emsp;default:  <br>
                &emsp;&emsp;&emsp;r = r + 8;  <br>
                &emsp;} <br>
                &emsp;System.out.println(r);
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio"  name="q7" value="A" title="A">
                        </span>
                        <lable>10</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio"  name="q7" value="B" title="B">
                        </span>
                        <lable>15</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio" name="q7" value="C" title="C">
                        </span>

                        <lable>21</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio" name="q7" value="D" title="D">
                        </span>

                        <lable>23</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio" name="q7" value="E" title="E">
                        </span>

                        <lable>29</lable>
                    </div>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >第八题</a></legend></fieldset>
            </div>
            <div class="site-item">
                下列选项中正确的是
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio"  name="q8" value="A" title="A">
                        </span>
                        <lable>可以用Scanner.nextInt()实现键盘录入一个整数</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio"  name="q8" value="B" title="B">
                        </span>
                        <lable>Random类的nextInt(10)可能生成一个随机数10</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio" name="q8" value="C" title="C">
                        </span>

                        <lable>Scanner类的nextInt()方法用户接收键盘录入的字符串</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio" name="q8" value="D" title="D">
                        </span>

                        <lable>Random r = new Random (); r.next(10)+10可以生成10到19之间的数（包括10，不包 括19）</lable>
                    </div>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >第九题</a></legend></fieldset>
            </div>
            <div class="site-item">
                下列语句序列执行后,k的值是：<br>
                &emsp;int i = 4,j = 5,k=9,m=5;<br>
                &emsp;if(i > j || m < k){<br>&emsp;&emsp;k++;<br>&emsp;}else{<br>&emsp;&emsp;k--;<br>&emsp;}
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio"  name="q9" value="A" title="A">
                        </span>
                        <lable>5</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio"  name="q9" value="B" title="B">
                        </span>
                        <lable>10</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio" name="q9" value="C" title="C">
                        </span>

                        <lable>8</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="radio" name="q9" value="D" title="D">
                        </span>

                        <lable>9</lable>
                    </div>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >第十题</a></legend></fieldset>
            </div>
            <div class="site-item">
                关于java配置Path描述正确的是：
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q10" value="A" title="A">
                        </span>
                        <lable>安装JDK必须配置PATH</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q10" value="B" title="B">
                        </span>
                        <lable>可以简化javac与java调用</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q10" value="C" title="C">
                        </span>

                        <lable>配置Path时，不同的路径使用英文分号隔开</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q10" value="D" title="D">
                        </span>

                        <lable>配置Path时，不同的路径使用中文分号隔开</lable>
                    </div>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >第十一题</a></legend></fieldset>
            </div>
            <div class="site-item">
                下列哪些语句是正确的？
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q11" value="A" title="A">
                        </span>
                        <lable>int a =1;</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q11" value="B" title="B">
                        </span>
                        <lable>String b = "abc";</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q11" value="C" title="C">
                        </span>

                        <lable>char c = '家';</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q11" value="D" title="D">
                        </span>

                        <lable>boolean d = true;</lable>
                    </div>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >第十二题</a></legend></fieldset>
            </div>
            <div class="site-item">
                下列代码在控制台输出结果为true的是
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q12" value="A" title="A">
                        </span>
                        <lable>int a = 1; int b =1 ; System.out.println( a != b );</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q12" value="B" title="B">
                        </span>
                        <lable>int a = 1; int b =1 ; System.out.println( a >= b );</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q12" value="C" title="C">
                        </span>

                        <lable>int a = 1; double b =1.0 ; System.out.println( a < b );</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q12" value="D" title="D">
                        </span>

                        <lable>int a = 1; double b =1.0 ; System.out.println( a == b );</lable>
                    </div>
                </div>
            </div>
            <div class="site-title">
                <fieldset><legend><a >第十三题</a></legend></fieldset>
            </div>
            <div class="site-item">
                下面程序，定义变量时数据类型转换是正确的有
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q13" value="A" title="A">
                        </span>
                        <lable>byte a=0,b=3; byte c =a+b;</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q13" value="B" title="B">
                        </span>
                        <lable>short s =18; s=s+1;</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q13" value="C" title="C">
                        </span>

                        <lable>short s=18; s+=1;</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q13" value="D" title="D">
                        </span>

                        <lable>float f = 1;</lable>
                    </div>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >第十四题</a></legend></fieldset>
            </div>
            <div class="site-item">
                下列有关数组说法正确的是
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q14" value="A" title="A">
                        </span>
                        <lable>任意类型数组如果没有初始化，也没有赋值，则每个元素默认值为0</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q14" value="B" title="B">
                        </span>
                        <lable>定义一个数组时，数组长度只能用正整数表示(0不算)</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q14" value="C" title="C">
                        </span>

                        <lable>数组的下标可以是一个表达式;</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q14" value="D" title="D">
                        </span>

                        <lable>可以通过数组的索引获取、修改数组索引上的值</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q14" value="E" title="E">
                        </span>

                        <lable>数组定义后长度可变</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q14" value="F" title="F">
                        </span>

                        <lable>数组是基本数据类型</lable>
                    </div>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >第十五题</a></legend></fieldset>
            </div>
            <div class="site-item">
                以下选项中JVM对内存的划分包括
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q15" value="A" title="A">
                        </span>
                        <lable>栈内存</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q15" value="B" title="B">
                        </span>
                        <lable>堆内存</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q15" value="C" title="C">
                        </span>

                        <lable>方法区</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q15" value="D" title="D">
                        </span>

                        <lable>寄存器</lable>
                    </div>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >第十六题</a></legend></fieldset>
            </div>
            <div class="site-item">
                下面关于函数描述正确的是
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q16" value="A" title="A">
                        </span>
                        <lable>函数是对功能代码块的封装</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q16" value="B" title="B">
                        </span>
                        <lable>函数没有返回值的时候不用写返回值类型</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q16" value="C" title="C">
                        </span>

                        <lable>没有返回值的函数，不能有return 语句</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q16" value="D" title="D">
                        </span>

                        <lable>函数是可以没有形参的</lable>
                    </div>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >第十七题</a></legend></fieldset>
            </div>
            <div class="site-item">
                有关构造方法与重载描述正确的是
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q17" value="A" title="A">
                        </span>
                        <lable>如果你不提供构造方法,系统会给出默认构造方法</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q17" value="B" title="B">
                        </span>
                        <lable>如果你提供了构造方法,系统不会再给出默认的构造方法</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q17" value="C" title="C">
                        </span>

                        <lable>构造方法也是可以重载的,重载条件和普通方法相同</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q17" value="D" title="D">
                        </span>

                        <lable>以上答案都正确</lable>
                    </div>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >第十八题</a></legend></fieldset>
            </div>
            <div class="site-item">
                下列选项中属于StringBuilder类中的方法的是
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q18" value="A" title="A">
                        </span>
                        <lable>sort()</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q18" value="B" title="B">
                        </span>
                        <lable>reverse()</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q18" value="C" title="C">
                        </span>

                        <lable>append()</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q18" value="D" title="D">
                        </span>

                        <lable>length()</lable>
                    </div>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >第十九题</a></legend></fieldset>
            </div>
            <div class="site-item">
                以下选项中有关集合说法正确的是
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q19" value="A" title="A">
                        </span>
                        <lable>集合和数组一样都是用来存储数据的容器</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q19" value="B" title="B">
                        </span>
                        <lable>集合的长度是根据元素的增加而增长,随着元素的减少而减少</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q19" value="C" title="C">
                        </span>

                        <lable>集合的长度和集合中的元素没有关系</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q19" value="D" title="D">
                        </span>

                        <lable>集合只能用来存储引用数据类型</lable>
                    </div>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >第二十题</a></legend></fieldset>
            </div>
            <div class="site-item">
                执行下列代码后,哪个结论是正确的 String[] s=new String[10];
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q20" value="A" title="A">
                        </span>
                        <lable>s[10] 为 "";</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q20" value="B" title="B">
                        </span>
                        <lable>s[9] 为 null;</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q20" value="C" title="C">
                        </span>

                        <lable>s[0] 为 未定义</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q20" value="D" title="D">
                        </span>

                        <lable>s.length 为10</lable>
                    </div>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >第二十一题</a></legend></fieldset>
            </div>
            <div class="site-item">
                以下描述正确的有[  ]
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q21" value="A" title="A">
                        </span>
                        <lable>abstract class一定有abstract method(s)</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q21" value="B" title="B">
                        </span>
                        <lable>abstract class可以没有abstract method(s)</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q21" value="C" title="C">
                        </span>

                        <lable>定义abstract class的目的之一是为了被继承</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q21" value="D" title="D">
                        </span>

                        <lable>interface中定义的方法全是abstract methods</lable>
                    </div>
                </div>
            </div>


            <div class="site-title">
                <fieldset><legend><a >第二十二题</a></legend></fieldset>
            </div>
            <div class="site-item">
                在Java 语言中，以下代码会引起编译期错误的是。
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q22" value="A" title="A">
                        </span>
                        <lable>float[ ] f1 = new float[ ] ;</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q22" value="B" title="B">
                        </span>
                        <lable>float[ ] f2 = new float[ 3 ] ;</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q22" value="C" title="C">
                        </span>

                        <lable>float f3[ ] ={ 1.0 , 2.0 , 3.0 } ;</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q22" value="D" title="D">
                        </span>

                        <lable>float f4[ ] = new float[ ]{ 1.0f , 2.0f, 3.0f } ;</lable>
                    </div>
                </div>
            </div>

            <div class="site-title">
                <fieldset><legend><a >第二十三题</a></legend></fieldset>
            </div>
            <div class="site-item">
                给定如下Java程序的代码片段，运行后，要输出字符串“world”，则A处就该填入的代码是。<br>
                &emsp;String s="hello,world";<br>
                &emsp;System.out.println(A);<br>
            </div>
            <div class="site-item-param">
                <div id='qwe' class='matrix'>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q23" value="A" title="A">
                        </span>
                        <lable>s.substring(s.indexOf("w"),s.length())</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox"  name="q23" value="B" title="B">
                        </span>
                        <lable>s.substring(s.charAt("w"),s.length())</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q23" value="C" title="C">
                        </span>

                        <lable>s.substring(6,11)</lable>
                    </div>
                    <div >
                        <span style='font-size: 25px'>
                            <input type="checkbox" name="q23" value="D" title="D">
                        </span>

                        <lable>s.substring(7,12)</lable>
                    </div>
                </div>
            </div>

            <hr>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">请写下您对黑马的招生流程有什么好的建议或意见？</label>
                <div class="layui-input-block">
                    <textarea placeholder="请输入您的意见或建议" name="q24" class="layui-textarea"></textarea>
                </div>
            </div>


            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn"  lay-filter="wenjuan">立即交卷</button>
                    <%--<button type="reset" class="layui-btn layui-btn-primary">重新答题</button>--%>
                </div>
            </div>
        </form>
     </div>
</body>
<script >
    layui.use('form',function () {
       var form = layui.form();
        //提交表单
//        form.on('submit(wenjuan)',function(data){
//           // $('#wenjuanForm').submit();
//            //location.href='index.html';
//           var aaa =  $('input[type=checkbox]:checked').map(function(){return this.value}).get().join(',');
//            console.log(aaa);
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

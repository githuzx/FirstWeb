<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>JavaScript进阶篇</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
pre {
	margin: 0px;
}
</style>
</head>

<body>
	<!-- 系好安全带,准备启航 -->
	<h4>第1章 系好安全带,准备启航</h4>
	<pre>
//让你认识JS
JavaScript能做什么?
1.增强页面动态效果(如:下拉菜单、图片轮播、信息滚动等)
2.实现页面与用户之间的实时、动态交互(如:用户注册、登录验证等)
JS进阶篇学习什么?
在JavaScript入门篇中,我们学习了如何插入JS、输出内容及简单的DOM操作,JavaScript进阶篇让您进一步的了解JS的变量、数组、函数、语法、对象、时间、DOM操作,制作简单的网页动态效果

//编程练习
    </pre>

	<!-- 你要懂的规则(JS基础语法) -->
	<h4>第2章 你要懂的规则(JS基础语法)</h4>
	<pre>
//什么是变量
从编程角度讲,变量是用于存储某种/某些数值的存储器

//变量命名
规则
1.必须以字母、下划线或美元符号开头,和面可以跟字母、下划线、美元符号和数字
2.变量名区分大小写
3.不允许使用JavaScript关键字和保留字做变量名(java... var delete in typeof | java... export native const goto transient debugger volatile)

//变量声明
声明变量语法: var 变量名;
注意:变量也可以不声明,直接使用,但为了规范,需要先声明,后使用

//变量赋值
可以把任何类型存储在变量里(数值、字符串、布尔值等)

//表达式
表达式与数学中的定义相似,表达式是指具有一定的值、用操作符把常熟和变量连接起来的代数式。一个表达式可以包含常数或变量

//+号操作符
操作符是用于在JavaScript中指定一定动作的符号(算术操作符(+、-、*、/) | 比较操作符(<、>、>=、<=) | 逻辑操作符(&&、||、!))
在JavaScript中,'+'不止代表加法,还可以连接两个字符串

//自加,自减(++和--)
//比较操作符
//逻辑与操作符&&
//逻辑或操作符||
//逻辑非操作符!

//操作符优先级
操作符之间的优先级(高到低):
算术操作符->比较操作符->逻辑操作符->'='赋值操作符
如果同级的运算符是从左到右次序进行,多层括号由里向外

//编程练习
    </pre>

	<!-- 一起组团(数组) -->
	<h4>第3章 一起组团(数组)</h4>
	<pre>
//什么是数组
数组是一个值的集合,每个值都有一个索引号,从0开始,每个索引都有一个相应的值,根据需要添加更多数值
var myarr=new Array();//定义数组
myarr[0]=80;
myarr[1]=60;
myarr[2]=99;
document.write("第一个人的成绩是："+myarr[0]);
document.write("第二个人的成绩是："+myarr[1]);
document.write("第三个人的成绩是："+myarr[2]);

//如何创建数组
创建数组语法:
var myarr=new Array();
注意:
1.创建的新数组是空数组,没有值,如输出,则显示undefined
2.虽然创建数组时,指定了长度,但实际上数组都是变长的,也就是说即使指定了长度8,仍然可以将元素存储在规定长度之外

//数组赋值
var myarray=new Array(66,80,90,77,59);
var myarray=[66,80,90,77,59];
注意:数组存储的数据可以是任何类型(数字、字符、布尔值等)

//向数组增加一个新元素
任何时刻可以不断向数增加新元素

//使用数组元素
//数组属性length
myarr.length;
注意:因为数组的索引总是由0开始,所以一个数组的上下限分别是:0和length-1
同时,JavaScript数组的length属性是可变的,这一点需要特别注意
arr.length=10;
document.write(arr.length);

//二维数组
二维数组的两个维度的索引值也是从0开始,两个维度的最后一个索引值为长度-1
1.二维数组的定义方法一
var myarr=new Array();
for(var i=0;i<2;i++){
   myarr[i]=new Array();
   for(var j=0;j<3;j++){
      myarr[i][j]=i+j;
   }
}
2.二维数组的定义方法二
var myarr=[[0,1,2],[1,2,3]]
3.赋值
myarr[0][1]=5;
说明:myarr[0][1],0表示表的行,1表示表的列

//编程练习
    </pre>

	<!-- 跟着我的节奏走(流程控制语句) -->
	<h4>第4章 跟真我的节奏走(流程控制语句)</h4>
	<pre>
//if语句
if语句是基于条件成立才执行相应代码时使用的语句

//if...else语句
if...else语句是在指定的条件成立时执行代码,在条件不成立时执行else后的代码

//if...else嵌套语句
要在多组语句中选择一组来执行

//switch语句
switch必须赋初始值,值与每个case值匹配。满足执行该case后的所有语句,并用break语句来阻止运行下一个case。如所有case值都不匹配,执行default后的语句

//for循环
//while循环
//do...while
do while结构的基本原理和while结构是基本相同的,但是它保证循环体至少被执行一次

//break
在while、for、do...while、while循环中使用break语句退出当前循环,直接执行后面代码

//continue
continue的作用是仅仅跳过本次循环,而整个循环体继续执行

//编程练习
<script type="text/javascript">
	//第一步把之前的数据写成一个数组的形式,定义变量为 infos
	var infos = [ [ '小A', '女', 21, '大一' ], [ '小B', '男', 23, '大三' ],
			[ '小C', '男', 24, '大四' ], [ '小D', '女', 21, '大一' ],
			[ '小E', '女', 22, '大四' ], [ '小F', '男', 21, '大一' ],
			[ '小G', '女', 22, '大二' ], [ '小H', '女', 20, '大三' ],
			[ '小I', '女', 20, '大一' ], [ '小J', '男', 20, '大三' ] ];

	//第一次筛选，找出都是大一的信息
	var arr1 = [];
	var n = 0;
	for ( var i = 0; i < infos.length; i++) {
		if (infos[i][3] == "大一") {
			arr1[n] = infos[i];
			document.write(arr1[n] + "<br/>");
			n++;
		}
	}
	document.write("大一人数：" + arr1.length + "<br/>");

	//第二次筛选，找出都是女生的信息
	for ( var i = 0; i < arr1.length; i++) {
		if (arr1[i][1] == "女") {
			document.write(arr1[i][0] + "<br/>");
		}
	}
</script>
</pre>

	<!-- 小程序,大作用(函数) -->
	<h4>第5章 小程序,大作用(函数)</h4>
	<pre>
//什么是函数
函数的作用,可以写一次代码,然后反复地重用这个代码
function add2(a,b){
   var sum=a+b;
   alert(sum);
}//只需写一次就可以

//定义函数
function 函数名(){
        函数体;
}

//函数调用
函数定义好后,是不能自动执行的,需要调用它,直接在需要的位置写函数名
第一种情况:在script标签内调用
第二种情况:在HTML文件中调用,如通过点击按钮后调用定义好的函数

//有参数的函数
参数可以多个,根据需要增减参数个数。参数之间用(,)隔开

//返回值的函数
函数中参数和返回值不只是数字,还可以是字符串等其它类型

//编程练习
    </pre>

	<!-- 事件响应,让网页交互 -->
	<h4>第6章 事件响应,让网页交互</h4>
	<pre>
//什么是事件
JavaScript创建动态页面。事件是可以被JavaScript侦测到的行为。网页中的每个元素都可以产生某些可以触发JavaScript函数或程序的事件
    
//onclick
鼠标单击事件,当在网页上单击鼠标时,就会发生该事件。同时onclick事件调用的程序块就会被执行,通常与按钮一起使用

//onmouseover
鼠标经过事件,当鼠标移到一个对象上,该对象就触发onmouseover事件,并执行onmouseover事件调用的程序

//onmouseout
鼠标移开事件,当鼠标移开当前对象时,执行onmouseout调用的程序

//onfocus
当网页中的对象获得聚点时,执行infocus调用的程序就会被执行

//onblur
失焦事件,与onfocus是相对事件,当光标离开当前获得聚焦对象的时候,触发onblur事件,同时执行被调用的程序

//onselect
内容选中事件,当文本框或者文本域中的文字被选中时,触发onselect事件,同时调用的程序就会被执行

//onchange
文本框内容改变事件,通过改变文本框的内容来触发onchange事件,同时执行被调用的程序

//onload
加载事件,事件会在页面加载完成后,立即发生,同时执行被调用的程序。
注意:1.加载页面时,触发onload事件,事件写在body标签内
    2.此节的加载页面,可理解为打开一个新页面时

//onunload
卸载事件,当用户退出页面时(页面关闭、页面刷新等),触发onunload事件,同时执行被调用的程序
注意:不同浏览器对onunload事件支持不同

//编程练习
    </pre>

	<!-- JavaScript内置对象 -->
	<h4>第7章 JavaScript内置对象</h4>
	<pre>
    
    </pre>
</body>
</html>

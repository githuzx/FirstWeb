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

input {
	margin: 3px;
}
</style>
<script src="resource/js/script_advanced.js"></script>
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
//什么是对象
JavaScript中的所有事物都是对象,如:字符串、数值、数组、函数等,每个对象带有属性和方法
对象的属性:反应该对象某些特定的性质的,如:字符串的长度、图像的长宽等
对象的方法:能够在对象上执行的动作。例如,表单的"提交"(Submit),时间的"获取"(getYear)等
JavaScript提供多个內建对象,比如String、Date、Array等等,使用对象前先定义,如下使用数组对象:
var objectName=new Array();//使用new关键字定义对象 
或者
var objectName=[];
objectName.propertyName //访问对象属性
objectName.methodName() //访问对象的方法

//Date日期对象
日期对象可以储存任意一个日期,并且可以精确到毫秒数(1/1000秒)
var Udate=new Date(); //定义一个时间对象
注意:使用关键字new,Date()的首字母必须大写
如果要自定义初始值,可以用一下方法:
var d=new Date(2012,10,1); //2012.10.01
var d-new Date('Oct 1,2012'); //2012.10.01

//返回/设置年份方法
get/setFullYear() //返回/设置年份,用四位数表示
var mydate=new Date(); //当前时间2014.03.06
document.write(mydate+"<br>"); //输出当前时间 - Thu Mar 06 2014 10:57:47 GMT+0800
document.write(mydate.getFullYear()+"<br />"); //输出当前年份 - 2014
mydate.setFullYear(81); //设置年份
document.write(mydate+"<br />"); //输出年份被设定为0081年 - Thu Mar 06 0081 10:57:47 GMT+0800
注意:不同浏览器,mydate.setFullYear(81)结果不同,年份被设定为0081或81两种情况
   1.结果格式依次为:星期、月、日、年、时、分、秒、时区。(火狐浏览器)
   2.不同浏览器,时间格式有差异

//返回星期方法
getDay()返回星期,返回的是0-6,0表示星期天。如果要返回相对应"星期",通过数组完成,代码如下:
<script type="text/javascript">
	var mydate = new Date();//定义日期对象
	var weekday = [ "星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六" ];//定义数组对象,给每个数组项赋值
	var mynum = mydate.getDay();//返回值存储在变量mynum中
	document.write(mydate.getDay() + "<br>");//输出f=getDay()获取值
	document.write("今天是:" + weekday[mynum]);//输出星期几
</script>

//返回/设置时间方法
get/setTime()返回/设置时间,单位毫秒数,计算从1970.1.1 00：00:00到日期对象所指的日期的毫秒数
如果将目前日期对象的时间推迟1小时,代码如下:
<script type="text/javascript">
	var mydate = new Date();
	document.write("当前时间:" + mydate + "<br>");
	mydate.setTime(mydate.getTime() + 60 * 60 * 1000);
	document.write("推迟一小时时间:" + mydate);
</script>
注意:
   1.一小时60分,一分60秒,一秒1000毫秒
   2.时间推迟1小时,就是:"x.setTime(x.getTime()+60*60*1000);"
   
//String字符串对象
在之前的学习中已经使用字符串对象了,定义字符串的方法就是直接复制。比如
var mystr="I love JavaScript!";
定义mystr字符串后,我们就可以访问它的属性和方法
stringObject.length; //访问字符串对象的属性
stringObject.toUpperCase();

//返回指定位置的字符
charAt()方法可返回指定位置的字符。返回的字符的长度为1的字符串
stringObject.charAt(index) //必需。表示字符串中某个位置的数字,即字符在字符串中的下标
注意:
   1.字符串中第一个字符的下标是0。最后一个字符的下标为字符串长度减一(string.length-1)
   2.如果参数index不在0与string.length-1之间,该方法将返回一个空字符串
如:在字符串"I love JavaScript!"中,返回位置2的字符:
<script type="text/javascript">
	var mystr = "I love JavaScript!";
	document.write(mystr.charAt(2)); //注意:一个空格也算一个字符
</script>

//返回指定的字符串首次出现的位置
indexOf()方法可返回某个指定的字符串值在字符串中首次出现的位置
stringObject.indexOf(substring,startpos) //substring:必需。规定需检索的字符串值 startpos:可选的整数参数。规定在字符串中开始检索的位置。它的合法取值是0到stringObject.length-1。如省略该参数,则将从字符串的首字母开始检索
说明:
   1.该方法将从头到尾地检索字符串stringObject,看它是否含有子串substring
   2.可选参数,从stringObject的startpos位置开始查找substring,如果没有此参数将从stringObject的开始位置查找
   3.如果找到一个substring,则返回substring的第一次出现的位置。stringObject中的字符位置是从0开始的
注意:
   1.indexOf()方法区分大小写
   2.如果药检所的字符串值没有出现,则该方法返回-1
例如:对"I love JavaScript!"字符串内进行不同的检索:
<script type="text/javascript">
	var str = "I love JavaScript!";
	document.write(str.indexOf("I") + "<br/>");
	document.write(str.indexOf("v") + "<br/>");
	document.write(str.indexOf("v", 8));
</script>

//字符串分割
split()方法将字符串分割为字符串数组,并返回此数组
stringObject.split(separator,limit) //separator:必需。从该参数指定的地方分割stringObject limit:可选参数,分割的次数,如设置该参数,返回的子串不会多于这个参数指定的数组,如果无此参数为不限制次数
注意:如果把空字符串用作separator,那么stringObject中的每个字符之间都会被分割
我们按照不同的方式来分割字符串:
使用指定符号分割字符串,代码如下:
<script type="text/javascript">
	var mystr = "www.imooc.com";
	document.write(mystr.split(".") + "<br/>");
	document.write(mystr.split(".", 2) + "<br/>");

	//将字符串分割
	document.write(mystr.split("") + "<br/>");
	document.write(mystr.split("", 5));
</script>

//提取字符串
substring()方法用于提取字符串中介于两个指定下标之间的字符
stringObject.substring(startPos,stopPos) //startPos:必需。一个非负的整数,开始位置 stopPos:可选。一个非负的整数,结束位置，如果省略该参数那么返回的子串会一直到字符串对象的结尾
注意:
   1.返回的内容是从start开始(包含start位置的字符)到stop-1处的所有字符,其长度为stop减start
   2.如果参数start和stop相等,那么该方法返回的就是一个空字符串(即长度为0的字符串)
   3.如果start比stop大,那么该方法在提取子串之前会先交换这两个参数
使用substring()从字符串中提取字符串,代码如下:
<script type="text/javascript">
	var mystr = "I love JavaScript";
	document.write(mystr.substring(7) + "<br/>");
	document.write(mystr.substring(2, 6));
</script>

//提取指定数目的字符
substr()方法从字符串中提取从startPos位置开始的指定数目的字符串
stringObject.substr(startPos,length) //startPos:必需。要提取的子串的起始位置。必须是数值 length:可选。提取字符串的长度。如果省略,返回从stringObject的开始startPos到stringObject的结尾的字符
注意:如果参数startPos是负数,从字符串的尾部开始算起的位置。也就是说,-1指字符串中最后一个字符,-2指倒数第二个字符,以此类推
          如果startPos为负数且绝对值大于字符串长度,startPos为0
使用substr()从字符串中提取一些字符,代码如下:
<script type="text/javascript">
	var mystr = "I love JavaScript!";
	document.write(mystr.substr(7) + "<br/>");
	document.write(mystr.substr(2, 4));
</script>

//Math对象
Math对象,提供对数据的数学计算
使用Math的属性和方法,代码如下:
<script type="text/javascript">
	var myapi = Math.PI;
	var myabs = Math.abs(-15);
	document.write(myapi + "<br/>");
	document.write(myabs);
</script>
注意:Math对象是一个固有的对象,无需创建它,直接把Math作为对象使用就可以调用其所有属性和方法。这是它与Date,String对象的区别

//向上取整
ceil()方法可对一个数进行向上取整
Math.ceil(x) //x:必需。必需是一个数值 
注意:它返回的是大于或等于x,并且与x最接近的整数
我们将把ceil()方法运用到不同的数字上,代码如下:
<script type="text/javascript">
	document.write(Math.ceil(0.8) + "<br/>");
	document.write(Math.ceil(6.3) + "<br/>");
	document.write(Math.ceil(5) + "<br/>");
	document.write(Math.ceil(3.5) + "<br/>");
	document.write(Math.ceil(-5.1) + "<br/>");
	document.write(Math.ceil(-5.9));
</script>

//向下取整
floor()方法可对一个数进行向下取整
Math.floor(x) //x:必需。必须是一个数值
注意:返回的是小于或等于x,并且与x最接近的整数
我们将在不同的数字上使用floor()方法,代码如下:
<script type="text/javascript">
	document.write(Math.floor(0.8) + "<br>");
	document.write(Math.floor(6.3) + "<br>");
	document.write(Math.floor(5) + "<br>");
	document.write(Math.floor(3.5) + "<br>");
	document.write(Math.floor(-5.1) + "<br>");
	document.write(Math.floor(-5.9));
</script>

//四舍五入
round()方法可把一个数字四舍五入为最近的整数
Math.round(x) //x:必需。必须是数字
注意:
   1.返回与x最接近的整数
   2.对于0.5,该方法将进行上舍入
   3.如果x与两侧整数同等接近,则结果接近+∞方向的数字值。
把不同的数舍入为最近的整数,代码如下:
<script type="text/javascript">
	document.write(Math.round(1.6) + "<br>");
	document.write(Math.round(2.5) + "<br>");
	document.write(Math.round(0.49) + "<br>");
	document.write(Math.round(-6.4) + "<br>");
	document.write(Math.round(-6.6));
</script>

//随机数
random()方法可返回介于0~1之间的一个随机数
Math.random();
注意:返回一个大于或等于0但小于1的符号为正的数字值
我们取得介于0-1之间的一个随机数,代码如下:
<script type="text/javascript">
	document.write(Math.random() + "<br>");
	document.write((Math.random()) * 10 + "<br>");
</script>
注意:因为是随机数,所以每次运行结果不一样
    
//Array数组对象
数组对象是一个对象的集合,里边的对象可以是不同类型的。数组的每一个成员都有一个"下标",用来表示它在数组中的位置,是从零开始的
数组定义的方法:
1.var 数组名=new Array(); //定义了一个空数组
2.var 数组名=new Array(n); //定义时指定有几个空元素的数组
3.var 数组名=[<元素1>,<元素2>,<元素3>...]; //定义数组的时候,直接初始化数据
我们定义myArray数组,并赋值,代码如下:
var myArray=[2,8,6];
说明:定义了一个数组myArray,里边的元素是:myArray[0]=2;myArray[1]=8;myArray[2]=6
数组名[下标]=值; //数组元素的使用
数组属性:length用法:<数组对象>.length;返回:数组的长度,即数组里有多少个元素。它等于数组里最后一个元素的下标加一

//数组连接
concat()方法用于连接两个或多个数组。此方法返回一个新数组,不改变原来的数组
arrayObject.concat(array1,array2,...,arrayN) 
注意:该方法不会改变现有的数组,而仅仅会返回被连接数组的一个副本
我们创建一个数组,将把concat()中的参数连接到数组myarr中,代码如下:
<script type="text/javascript">
	var mya = new Array(3);
	mya[0] = "1";
	mya[1] = "2";
	mya[2] = "3";
	document.write(mya.concat(4, 5) + "<br>");
	document.write(mya + "<br>");

	var mya1 = new Array("hello!");
	var mya2 = new Array("I", "love");
	var mya3 = new Array("JavaScript", "!");
	var mya4 = mya1.concat(mya2, mya3);
	document.write(mya4);
</script>

//指定分隔符连接数组元素    
join()方法用于把数组中的所有元素放入一个字符串。元素是通过指定的分隔符进行分隔的
arrayObject.join(分隔符) //separator:可选。指定要使用的分隔符。如果省略该参数,则使用逗号作为分隔
注意:返回一个字符串,该字符串把数组中的各个元素串起来,用<分隔符>置于元素与元素之间。这个方法不影响数组原来的内容。我们是用join()方法,将数组的所有元素放入一个字符串中,代码如下:
<script type="text/javascript">
	var myarr = new Array(3);
	myarr[0] = "I";
	myarr[1] = "love";
	myarr[2] = "JavaScript";
	document.write(myarr.join("."));
</script>
	
//颠倒数组元素顺序
reverse()方法用于颠倒数组中元素的顺序
arrayObject.reverse()
注意:该方法会改变原来的数组,而不会创建新的数组
定义数组myarr并赋值,然后颠倒其元素的顺序:
<script type="text/javascript">
	var myarr = new Array(3);
	myarr[0] = "1";
	myarr[1] = "2";
	myarr[2] = "3";
	document.write(myarr + "<br/>");
	document.write(myarr.reverse());
</script>

//选定元素[slaɪs]
slice()方法可从已有的数组中返回选定的元素
arrayObject.slice(start,end) //start:必需。规定从何处开始选取。如果是负数,那么它规定从数组尾部开始算起的位置。也就是说,-1指最后一个元素,-2指倒数第二个元素,以此类推
                             //end:可选。规定从何处结束选取。该参数是数组片段结束处的数组下标。如果没有指定该参数,那么分割数组包含从start到数组结束的所有元素。如果这个参数是负数,那么它规定的是从数组尾部开始算起的元素
1.返回一个新的数组,包含从start到end(不包含该元素)的arrayObject中的元素
2.该方法并不会修改数组,二十返回一个子数组

注意:
1.可使用负值从数组的尾部选取元素
2.如果end未被规定,那么slice()方法会选取从start到数组结尾的所有元素
3.String.slice()与Array.slice()相似
我们将创建一个新数组,然后从其中选取的元素,代码如下:
<script type="text/javascript">
	var myarr = new Array(1, 2, 3, 4, 5, 6);
	document.write(myarr + "<br>");
	document.write(myarr.slice(2, 4) + "<br>");
	document.write(myarr);
</script>

//数组排序
sort()方法使数组中的元素按照一定的顺序排列
arrayOnject.sort(方法函数) //方法函数:可选。规定排序顺序,必须是函数
1.如果不指定<方法函数>,则按unicode码顺序排列
2.如果指定<方法函数>,则按<方法函数>所指定的排序方法排序
myarray.sort(sortMethod)
注意:该函数要比较两个值,然后返回一个用于说明这两个值的相对顺序的数字。比较函数应该具有两个参数a和b,其返回值如下:
          若返回值<=-1,则表示A在排序后的序列中出现在B之前
          若返回值>-1&&<1,则表示A和B具有相同的排序顺序
          若返回值>=1,则表示A在排序后的序列中出现在B之后
1.使用sort()将数组进行排序,代码如下:
<script type="text/javascript">
	var myarr1 = new Array("Hello", "John", "love", "JavaScript");
	var myarr2 = new Array("80", "16", "50", "6", "100", "1");
	document.write(myarr1.sort() + "<br>");
	document.write(myarr2.sort());
</script>
注意:上面的代码没有按照数值的大小对数字进行排序
2.如果实现这一点,就必须使用一个排序函数,代码如下:
<script type="text/javascript">
	function sortNum(a, b) {
		return a - b;//生序,如降序,把"a-b"改成"b-a"
	}

	var myarr = new Array("80", "16", "50", "6", "100", "1");
	document.write(myarr + "<br>");
	document.write(myarr.sort(sortNum));
</script>
	
//编程练习 XXXX年XX月X日 星期X--班级总分为:81
	
	
	
	
	
	
	
	
	
	
	
	</pre>
	<script type="text/javascript">
		//通过javascript的日期对象来得到当前的日期，并输出。
		var date = new Date();//实例化日期对象
		var timeStr = "";//日期
		timeStr = date.getFullYear() + "年";
		timeStr += date.getMonth() + 1 + "月";
		timeStr += date.getDate() + "日";
		var day = date.getDay();//星期
		var week = "";
		switch (day) {
		case 0:
			week = "星期日";
			break;
		case 1:
			week = "星期一";
			break;
		case 2:
			week = "星期二";
			break;
		case 3:
			week = "星期三";
			break;
		case 4:
			week = "星期四";
			break;
		case 5:
			week = "星期五";
			break;
		case 6:
			week = "星期六";
			break;
		}
		timeStr += "&nbsp;" + week;
		document.write(timeStr);//打印出日期

		//成绩是一长窜的字符串不好处理，找规律后分割放到数组里更好操作哦
		var scoreStr = "小明:87;小花:81;小红:97;小天:76;小张:74;小小:94;小西:90;小伍:76;小迪:64;小曼:76";

		var arr = scoreStr.split(';');//按;符号进行数组分割
		var sum = 0;
		var avg = 0;
		for ( var i = 0; i < arr.length; i++) {
			var index = arr[i].indexOf(':');//根据:符号确定数字开始的位置
			sum += parseInt(arr[i].substr(index + 1, 2));//parseInt()字符串类型转成整型
		}
		avg = sum / arr.length;
		avg = Math.floor(avg);//取整

		//从数组中将成绩撮出来，然后求和取整，并输出。
		document.write("--班级总分为:" + avg);
	</script>

	<!-- 浏览器对象 -->
	<h4>第8章 浏览器对象</h4>
	<pre>
//window对象
window对象是BOM的核心,window对象指当前的浏览器窗口
注意:在JavaScript基础篇中,已讲解了部分属性,window对象重点讲解计时器

//JavaScript计时器
在JavaScript中,我们可以在设定的时间间隔之后来执行代码,而不是在函数被调用后立即执行
计算器类型:
一次性计时器:仅在指定的延迟时间之后触发一次
间隔性触发计时器:每隔一定的时间间隔就触发一次

//计时器setInterval()
在执行时,从载入页面后每隔指定的时间执行代码
setInterval(代码,交互时间) //代码:要调用的函数或要执行的代码串 交互时间:周期性执行或调用表达式之间的时间间隔,以毫秒计(1s=1000ms)
返回值:
一个可以传递给clearInterval()从而取消对‘代码’的周期性执行的值
调用函数格式(假设有一个clock()函数):
setInterval("clock()",1000) | setInterval(clock,1000)
我们设置一个计时器,每隔100毫秒调用clock()函数,并将时间显示出来,代码如下:

//取消计时器clearInterval()
clearInterval()方法可取消由setinterval()设置的交互时间
clearInterval(id_of_setInterval) //id_of_setInterval:由setInterval()返回的ID值
每隔100毫秒调用clock()函数,并显示时间。当点击按钮时,停止时间,代码如下:

//计时器setTimeout()
setTimeout()计时器,在载入后延迟指定时间后,去执行一次表达式,仅执行一次
setTimeout(代码,延迟时间) //代码:要调用的函数或要执行的代码串 延迟时间:在执行代码前需等待的时间,以毫秒为单位(1s=1000ms)
当我们打开网页3秒后,在弹出一个提示框,代码如下:
要创建一个运行于无限循环的计数器,我们需要编写一个函数来调用其自身。在下面的代码,当按钮被点击后,输入域便从0开始计数

//取消计时器clearTimeout()
setTimeout()和clearTimeout()一起使用,停止计数器
clearTimeout(id_of_setTimeout) //id_of_setTimeout:由setTimeout()返回的ID值。该值标识要取消的延迟执行代码块
下面的例子和上节的无穷循环的例子相似。唯一不同是,现在我们添加了一个"Stop"按钮来停止这个计数器:
	</pre>
	<form>
		<input type="text" id="clock" size="50" /> <input type="button"
			value="stop" onClick="stop()" /><br /> <input type="button"
			value="start" onClick="tinfo()" /><br /> <input type="text"
			id="txt" /> <input type="button" value="Start" onClick="numCount()" />
		<input type="button" value="Stop" onClick="stopCount()" /><br />
	</form>

	<pre>
//History对象
history对象记录了用户曾经浏览过的页面(URL),并可以实现浏览器前进或后退相似导航的功能
注意:从窗口被打开的那一刻开始记录,每个浏览器窗口、每个标签页乃至每个框架,都有自己的history对象与特定的window对象关联
window.history.[属性|方法] 
注意:window可以省略
History对象属性
            -length:返回浏览器历史列表中的URL数量
History对象方法
            -back():加载history列表中的前一个URL
            -forward():加载history列表中的下一个URL
            -go():加载history列表中的某个具体的页面
使用length属性,当前窗口的浏览历史总长度,代码如下:
<script type="text/javascript">
	var HL = window.history.length;
	document.write(HL);
</script>

//返回前一个浏览的页面
back()方法,加载history列表中的前一个URL
window.history.back()
比如,返回前一个浏览的页面,代码如下:
注意:等同于点击浏览器的倒退按钮
back()相当于go(-1),代码如下:
window.history.go(-1);

//返回下一个浏览的页面
forward()方法,加载history列表中的下一个URL
如果倒退之后,再想回到倒退之前浏览的页面,则可以使用forward()方法,代码如下:
window.history.forward();//等价点击前进按钮
forward()相当于go(1),代码如下:
window.history.go(1);

//返回浏览历史中的其他页面
go()方法,根据当前所处的页面,加载history列表中的某个具体的页面
window.history.go(number); //number:1-前一个,go(1)等价于forward() 0-当前页面 -1-后一个,go(-1)等价back() 其它数值-要访问的URL在History的URL列表中的相对位置
浏览器中,返回当前页面之前浏览过的第二个历史页面,代码如下:
window.history.go(-2); //注意:和在浏览器中单击两次后退按钮操作一样
同理,返回当前页面之后浏览过的第三个历史页面,代码如下:
window.history.go(3);

//Location对象
location用于获取或设置窗体的URL,并且可以用于解析URL
location.[属性|方法]
location对象属性图示:

/                              href                                 \
protocol/      host      \ pathname/       search        \    hash
http://www.imooc.com:8080/list.php?courseid=8&charpterid=86#mediaid118
          hostname   port

//Navigator对象
Navigator对象包含有关浏览器的信息,通常用于检测浏览器与操作系统的版本
查看浏览器的名称和版本,代码如下:
<script type="text/javascript">
	var browser = navigator.appName;
	var b_version = navigator.appVersion;
	document.write("Browser name:" + browser);
	document.write("<br>");
	document.write("Browser version:" + b_version);
</script>

//userAgent
返回用户代理头的字符串表示(就是包括浏览器版本信息等的字符串)
navigator.userAgent
几种浏览的user_agent,像360的兼容模式用的是IE、极速模式用的是chrom的内核
使用userAgent判断使用的是什么浏览器(假设是用的是IE8浏览器),代码如下:
	<form>
		<input type="button" value="查看浏览器" onclick="validB()">
	</form>

//screen对象
screen对象用于获取用户的屏幕信息
window.screen.属性

//屏幕分辨率的高和宽
window.screen对象包含有关用户屏幕的信息
1.screen.height返回屏幕分辨率的高
2.screen.width返回屏幕分辨率的宽
注意:
1.单位以像素计
2.window.screen对象在编写时可以不使用window这个前缀。我们来获取屏幕的高和宽,代码如下:
<script type="text/javascript">
	document.write("屏幕宽度:" + screen.width + "px<br/>");
	document.write("屏幕高度:" + screen.height + "px<br/>");
</script>

//屏幕可用高和宽度
1.screen.availWidth属性返回访问者屏幕的宽度,以像素计,减去界面特性,比如任务栏
2.screen.availHeight属性返回访问者屏幕的高度,以像素计,减去界面特性,比如任务栏
注意:
不同系统的任务栏默认高度不一样,及任务栏的位置可在屏幕上下左右任何位置,所以有可能可用宽度和高度不一样
我们来获取屏幕的可用高和宽度,代码如下:
<script type="text/javascript">
	document.write("可用宽度:" + screen.availWidth);
	document.write("可用高度:" + screen.availHeight);
</script>

//编程练习
	</pre>
	<!--先编写好网页布局-->
	<h4>操作成功</h4>
	<p>
		<b id="second">5</b> 秒后回到主页&nbsp; <a href="javascript:goBack()">返回</a>
	</p>
	<script type="text/javascript">
		//获取显示秒数的元素，通过定时器来更改秒数。
		var sec = document.getElementById("second");
		var i = 5;
		var timer = setInterval(function() {
			i--;
			sec.innerHTML = i;
			if (i == 1) {
				//window.location.href = "http://www.imooc.com/";
				clearInterval(timer);
			}
		}, 1000);

		//通过window的location和history对象来控制网页的跳转。
		function goBack() {
			window.history.go(-1);
		}
	</script>

	<!-- DOM对象,控制HTML元素 -->
	<h4>第9章 DOM对象,控制HTML元素</h4>
	<pre>
//认识DOM
文档对象模型DOM(Document Object Model)定义访问和处理HTML文档的标准方法。DOM将HTML文档呈现为带有元素、属性和文本的树结构(节点树)
HTML文档可以说由节点构成的集合,DOM节点有:
1.元素节点:html、body、p等都是元素节点,即标签
2.文本节点:向用户展示的内容,li中的JavaScript、DOM、CSS等文本
3.属性节点:元素属性,如a标签的链接属性href
节点属性:
nodeName:返回一个字符串,其内容是给定节点的名字
nodeType:返回一个整数,这个数值代表给定节点的类型
nodeValue:返回给定节点的当前值

遍历节点树:
childNodes:返回一个数组,这个数组由给定元素节点的子节点构成
firstChild:返回第一个子节点
lastChild:返回最后一个子节点
parentNode:返回一个给定节点的父节点
nextSibling:返回给定节点的下一个子节点
previousSibling:返回给定节点的上一个子节点

DOM操作:
createElement(element):创建一个新的元素节点
createTextNode():创建一个包含着给定文本的新文本节点
appendChild():指定节点的最后一个子节点列表之后添加一个新的子节点
insertBefore():将一个给定节点插入到一个给定元素节点的给定子节点的前面
removeChild():从一个给定元素中删除一个子节点
replaceChild():把一个给定父元素的一个子节点替换为另外一个节点
注意:前两个是document方法

//getElementsByName()方法
返回带有指定名称的节点对象的集合
document.getElementsByName(name)
注意:
1.因为文档中的name属性可能不唯一,所有getElementsByName()方法返回的是元素的数组,而不是元素
2.和数组类似也有length属性,可以和访问数组一样的方法来访问,从0开始

//getElementsByTagName()方法
返回带有指定标签名的节点对象的集合。返回元素的顺序是它们在文档中的顺序
document.getElementByTagName(Tagname)
说明:
1.Tagname是标签的名称,如p、a、img等标签名
2.和数组类似也有length属性,可以和访问数组一样的方法来访问,所以从0开始

//区别ById/ByName/ByTagName
以人来举例说明,人有能标志身份的身份证,有姓名,有类别(大人、小孩、老人)等
1.ID是一个人的身份证号码,是唯一的。所以通过getElementById获取的是指定的一个人
2.Name是它的名字,可以重复。所以通过getElementsByName获取名字相同的人的集合
3.TagName可看似某类,getElementsByTagName获取相同类的人集合

//getAttribute()方法
通过元素节点的属性名称获取属性的值
elementNode.getAttribute(name) 
说明:
1.elementNode:使用getElementById()、getElementsByTagName()等方法,获取到的元素节点
2.name:要想查询的元素节点的属性名字

//setAttribute()方法
setAttribute()方法增加一个指定名称和值的新属性,或者把一个现有的属性设定为指定的值
elementNode.setAttribute(name,value)
说明:
1.name:要设置的属性名
2.value:要设置的属性值
注意:
1.把指定的属性设置为指定的值。如果不存在具有指定名称的属性,该方法将创建一个新属性
2.类似于getAttribute()方法,setAttribute()方法只能通过元素节点对象调用的函数

//节点属性
在文档对象模型(DOM)中,每个节点都是一个对象。DOM节点有三个重要的属性:
1.nodeName:节点的名称
2.nodeValue:节点的值
3.nodeType:节点的类型
一、nodeName属性:节点的名称,是只读的
   1.元素节点的nodeName与标签名相同
   2.属性节点的nodeName是属性的名称
   3.文本节点的nodeName永远是#text
   4.文档节点的nodeName永远是#document
二、nodeValue属性:节点的值
   1.元素节点的nodeValue是undefined或null
   2.文本节点的nodeValue是文本自身
   3.属性节点的nodeValue是属性的值
三、nodeType属性:节点的类型,是只读的。以下常用的集中节点类型:
       元素 - 1
       属性 - 2
       文本 - 3
       注释 - 8
       文档 - 9

//访问子节点childNodes
访问选定元素节点下的所有子节点的列表,返回的值可以看做是一个数组,它具有length属性
elementNode.childNodes
注意:
如果选定的节点没有子节点,则该属性返回不包含节点的NodeList
注意:
1.IE全系列------
2.

	</pre>
	<a name="alink" href="#">我是链接一</a>
	<br />
	<a name="alink" href="#">我是链接二</a>
	<br />
	<a name="alink" href="#">我是链接三</a>
	<br />
	<input type="button" value="看看有几个链接?" onclick="getElements()" />
	<ul>
		<li>JavaScript</li>
		<li>JQuery</li>
		<li>HTML</li>
		<li>JAVA</li>
		<li>PHP</li>
	</ul>
	<script type="text/javascript">
		var list = document.getElementsByTagName("li");//获取所有的li集合
		var li = list[0];//访问无序列表:[0]索引
		document.write(list.length + "<br/>");//获取list的长度
		document.write(li.innerHTML + "<br/>");//弹出li节点对象的内容
	</script>
	<h1 id="h1" title="getAttribute()获取标签的属值" onclick="hattr()">点击我,获取标签属值</h1>
	<ul>
		<li>javascript</li>
		<li>jQuery</li>
		<li>PHP</li>
	</ul>
	<script type="text/javascript">
		var list = document.getElementsByTagName("ul")[1].childNodes;
		document.write("UL子节点个数:" + list.length + "<br>");
		document.write("节点类型:" + list[0].nodeType + "<br>");
	</script>
</body>
</html>






















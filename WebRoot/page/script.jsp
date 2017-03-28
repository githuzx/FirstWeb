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
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>JavaScript入门篇</title>
<style type="text/css">
input {
	font-size: 10px;
}

.one {
	width: 200px;
	background-color: #CCC;
}

.two {
	width: 400px;
	background-color: pink;
}

.three {
	border: 1px solid #eee;
	width: 230px;
	height: 50px;
	background: #ccc;
	color: red;
}

.four {
	border: 1px solid #ccc;
	width: 230px;
	height: 50px;
	background: #9CF;
	color: blue;
}

#txt {
	height: 400px;
	width: 600px;
	border: #333 solid 1px;
	padding: 5px;
}
</style>
<script src="resource/js/script.js"></script>
</head>

<body>
	<h4>第1章 请做好准备</h4>
	<!-- 为什么学习JavaScript 
	     一、为什么JavaScript非常值得学习?
	     1.所有主流浏览器都支持JavaScript;
	     2.目前,全世界大部分网页都是用JavaScript;
	     3.它可以让网页呈现各种动态效果;
	     4.做为一个Web开发师,如果你想提供漂亮的网页、另用户满意的上网体验,JavaScript是必不可少的工具。
	     二、易学性
	     1.学习环境无处不在,只要有文本编辑器,就能编写JavaScript程序;
	     2.我们可以用简单命令,完成一些基本操作。
	     三、从哪开始学习?
	            学习JavaScript的起点就是处理网页,所以我们先学习基础语法和如何使用DOM进行简单操作。
	-->
	<p id="p1">我是第一段文字</p>
	<p id="p2">我是第二段文字</p>
	<script type="text/javascript">
		document.write("hello");
		document.getElementById("p1").style.color = "blue";
	</script>

	<!-- 新朋友你在哪里(如何插入JS) -->
	<p>只需一步操作,使用script标签在HTML网页中插入JavaScript代码。注意,script标签要成对出现,并把JavaScript带帽写在script之间。type="text/javascript"表示在script标签之间的是文本类型,javascript是为了告诉浏览器里面的文本是属于JavaScript语言。</p>

	<!-- 我也可以独立(引用JS外部文件) -->
	<p>
		JavaScript代码只能写在HTML文件中吗?当然不是,我们可以把HTML文件和JS代码分开,并单独穿件一个JavaScript文件(简称JS文件),其文件后缀名通常为.js,然后将JS代码直接写在JS文件中。
		注意:在JS文件中,不需要script标签,直接编写JavaScript代码就可以了。JS文件不能直接运行,需嵌入到HTML文件中执行,我们需在HTML中添加如下代码,就可将JS文件嵌入HTML文件中。
	</p>

	<!-- 找到你的位置(JS在页面中的位置) -->
	<p>
		我们可以将JavaScript代码放在html文件中任何位置,但是我们一般放在网页的head或者body部分。<br />
		1.最常用的方式是在页面中head部分放置script元素,浏览器解析head部分就会执行这个代码,然后才解析页面的其余部分。<br />
		2.JavaScript代码在网页读取到该语句的时候就会执行。<br />
		注意:javascript作为一种脚本语言可以放在html页面中任何位置,但是浏览器解释html时是按照先后顺序的,所以前面的script就先被执行。
		比如进行页面显示初始化的js必须放在head里面,因为初始化都要求提前进行(如给页面body设置css等);而如果是通过事件调用执行的function那么对位置没什么要求的。
	</p>

	<!-- 认识语句和符号 -->
	<p>JavaScript语句是发给浏览器的命令。这些命令的作用是告诉浏览器要做的事情。
		一行的结束就被认定为语句的结束,通常在结尾加上一个';'来表示语句的结束。
		注意:1.';'分号要在英文状态下输入,同样,JS中的代码和符号都要在英文状态下输入。2.虽然';'也可以不写,但我们要养成变成的好习惯,记得在语句末尾写上分号。
	</p>
	<script type="text/javascript">
		document.write("Hello\t");
		document.write("world");
		var mynum = 8;
	</script>

	<!-- 注释很重要 -->
	<p>注释的作用是提高代码的可读性,帮助自己和别人阅读和理解你所编写的JavaScript代码,注释的内容不会在网页中显示。注释可分为单行注释与多行注释两种。我们为了方便阅读,在注释内容前加符号'//'。多行注释以'/*'开始,以'*/'结束。</p>

	<!-- 什么是变量 -->
	<p>
		变量是用于存储某种/某些数值的存储器。我们把变量看做一个盒子,为了区分盒子,可以用BOX1、BOX2等名称代表不同盒子,BOX1就是盒子的名字(也就是变量的名字)。
		定义变量使用关键字var,变量名可以任意取名,但要遵循命名规则: 1.变量必须使用字母、下划线或者美元符开始;
		2.然后可以使用任意多个英文字母、数字、下划线或者美元符组成; 3.不能使用JavaScript关键词与JavaScript保留字。注意:
		1.在JS中区分大小写,如变量mychar与myChar是不一样的,表示是两个变量。
		2.变量虽然也可以不声明,直接使用,但不规范,需要先声明,后使用。</p>

	<!-- 判断语句(if...else) -->
	<script type="text/javascript">
		var myage = 18;
		if (myage >= 18)
			document.write("你是成年人。");
		else
			document.write("未满18岁,你不是成年人。");
	</script>

	<!-- 什么是函数 -->
	函数是完成某个特定功能的一组语句。如没有函数,完成任务可能需要五行、十行、甚至更多的代码。这时我们就可以把完成特定功能的代码块放到一个函数里,直接调用这个函数,就省重复输入大量代码的麻烦。
	如何定义一个函数呢?基本语法如下:
	<pre>
	function 函数名(){
	    函数代码;
	}
	</pre>
	说明:
	1.function定义函数的关键字;2.'函数名'你为函数去的名字;3.'函数代码'替换为完成特定功能的代码。我们来编写一个实现两数相加的简单函数,并
	给函数起个有意义的名字:'add2',代码如下:
	<pre>
    function add2(){
        var sum=3+2;
        alert(sum);
    }
    add2();//调用函数,直接写函数名。
    </pre>
	函数调用:函数定义好后,是不能自动执行的,所以需调用它,只需直接在需要的位置写函数就ok了,代码如下:
	<form action="#">
		<input type="button" value="点击我" onclick="contxt()">
	</form>
	<hr />

	<h4>第2章 请和我互动(常用互动方法)</h4>
	<!-- 输出内容(document.write) -->
	<p>
		document.write()可用于直接向HTML输出流写内容。简单的说就是直接在网页中输出内容。
		第一种:输出内容用'括起,直接输出'号内的内容; 第二种:通过变量,输出内容; 第三种:输出多项内容,内容之间用+号连接;
		第四种:输出HTML标签,并起作用,标签使用""括起来(ex:mystr+"<br>"//输出hello后,输出一个换行符)。
	</p>

	<!-- 警告(alert消息对话框) -->
	<p>我们在访问网站的时候,有时会突然弹出一个小窗口,上面写着一段提示信息文字。如果不点击'确定',就不能对网页做任何操作,这个小窗口就是使用alert实现的。
		语法:alert(字符串或变量);注:alert弹出消息对话框(包含一个确定按钮)。结果:按顺序弹出消息框。注意:
		1.在点击对话框'确定'按钮前,不能进行任何其它操作;2.消息对话框通常可以用于调试程序;3.alert输出内容,可以是字符串或变量,与document.write相似。
	</p>
	<input name="button" type="button" onClick="rec()" value="点击我，弹出对话框" />

	<!-- 确认(confirm消息对话框) -->
	<p>confirm消息对话框通常用于允许用户做选择的动作,弹出对话框(包括一个确定按钮和一个取消按钮)。语法:confirm(str);参数说明:str-在消息对话框中要显示的文本
		返回值:Boolean值 返回值:当用户点击'确定'按钮时,返回true;当用户点击'取消'按钮时,返回false。
		注:通过返回值可以判断用户点击了什么按钮。结果注:消息对话框是排它的,即用户在点击对话框按钮前,不能进行任何其它操作。</p>
	<input type="button" name="button" value="点击我,弹出对话框" onclick="gender()">

	<!-- 提问(prompt[prɒmpt]消息对话框) -->
	<p>prompt弹出消息对话框,通常用于询问一些需要与用户交互的信息。弹出消息对话框(包含一个确定按钮、取消按钮与一个文本输入框)。
		语法:prompt(str1,str2);参数说明:str1-要显示在消息对话框中的文本,不可修改;str2:文本框中的内容,可以修改。
		返回值:1.点击确定按钮,文本框中的内容将作为函数返回值;2.点击取消按钮,将返回null。</p>
	<input type="button" name="button" value="点击我,对成绩做评价!"
		onclick="score()">

	<!-- 打开新窗口(window.open) -->
	<p>open()方法可以查找一个已经存在或者新建的浏览器窗口。
		语法:window.open([URL],[窗口名称],[参数字符串]) 参数说明:
		URL-可选参数,在窗口中要显示网页的网址或路径。如果省略这个参数,或者它的值是空字符串,那么窗口就不显示任何文档。
		窗口名称-可选参数,被打开窗口的名称。1.该名称由字母、数字和下划线字符组成;2.‘_top’(框架网页中在上部窗口中显示目标网页)、'_blank'(在新窗口显示目标网页)、‘_self’(在当前差窗口显示目标网页)具有特殊意义的名称;
		3.相同name的窗口只能创建一个,要想创建多个窗口则name不能相同;4.name不能包含有空格。
		参数字符串:可选参数,设置窗口参数,各参数用逗号隔开。
		例如:打开http://www.imooc.com网站,大小为300px*200px,无菜单,无工具栏,有滚动条窗口:
		window.open('http://www.imooc.com','_blank','width=300,height=200,menubar=no,toolbar=no,status=no,scrollbars=yes');注意:运行结果考虑浏览器兼容问题。
	</p>
	<input type="button" name="button" value="点击我,打开新窗口" onclick="wopen()">

	<!-- 关闭窗口(window.close) -->
	<p>close()关闭窗口 用法：window.close();//关闭本窗口 或 窗口对象.close();//关闭指定的窗口</p>
	<input type="button" value="新窗口打开网站" onclick="practise()">
	<hr />

	<h4>第3章 你也有控制权(DOM操作)</h4>
	<!-- 认识DOM -->
	<p>文档对象模型DOM(Document Object
		Model)定义访问和处理HTML文档的标准方法。DOM将HTML文档呈现为带有元素、属性和文本的树结构(节点树)。
		HTML文档可以说由节点构成的集合,三种常见的DOM节点: 1.元素节点:上图中html、body、p等都是元素节点,即标签;
		2.文本节点:向用户展示的内容,如li中的JavaScript、DOM、CSS等文本; 3.属性节点:元素属性,如a标签的链接属性href。
	</p>
	<h2>
		<!-- a-元素节点;href-属性节点;javascript DOM-文本节点 -->
		<a href="http://www.imooc.com">javascript DOM</a>
	</h2>
	<p>对HTML元素进行操作,可添加、改变或移除CSS样式等</p>
	<ul>
		<li>JavaScript</li>
		<li>DOM</li>
		<li>CSS</li>
	</ul>

	<!-- 通过ID获取元素 -->
	<p>通过HTML/CSS样式,都知道,网页由标签将信息组织起来,而标签的id属性值是唯一的,就像是没人有一个身份证号一样,只要通过身份证号就可以找到对应的人。那么在网页中,我们通过id先找到标签,然后进行操作。语法:document.getElementById("id")。
		注:获取的元素是一个对象,如果想对元素进行操作,我们要通过它的元素或方法。</p>
	<p id="con1">JavaScript</p>
	<script type="text/javascript">
		var mychar = document.getElementById("con1");
		document.write("结果:" + mychar);//输出获取的p标签
	</script>

	<!-- innerHTML -->
	<p>innerHTML属性用于获取或替换HTML元素的内容。语法:Object.innerHTML 注意:
		1.Object是获取的元素对象,如通过document.getElementById("ID")获取的元素;2.注意书写,innerHTML区分大小写。
	</p>

	<p id="con2">Hello World!</p>
	<script type="text/javascript">
		var mycon = document.getElementById("con2");
		document.write("p标签原始内容:" + mycon.innerHTML + "<br>");
		//输入元素内容
		mycon.innerHTML = "New Text!";//修改p元素内容
		document.write("p标签修改后的内容:" + mycon.innerHTML);
	</script>
	<h2 id="con3">javascript</h2>
	<p>JavaScript是一种基于对象、事件驱动的简单脚本语言,嵌入在HTML文档中,由浏览器负责解释和执行,在网页上产生动态的显示效果并实现与用户交互功能。</p>
	<script type="text/javascript">
		var mychar = document.getElementById("con3");
		document.write("原标题:" + mychar.innerHTML + "<br>");
		mychar.innerHTML = "Hello world!";
		document.write("修改后的标题:" + mychar.innerHTML);
	</script>

	<!-- 改变HTML样式 -->
	<p id="pcon">HTML
		DOM允许JavaScript改变HTML元素的样式。语法:Object.style.property=new style;
		注意:Object是获取的元素对象,如通过document.getElementById("id")获取的元素。基本属性表(backgroundColor|height|width|color|font|fontFamily|fontSize)
		该表只是一小部分CSS样式属性,其它样式也可以通过该方法设置和修改。</p>
	<script type="text/javascript">
		var mychar = document.getElementById("pcon");
		mychar.style.color = "white";
		mychar.style.fontSize = "20";
		mychar.style.backgroundColor = "blue";
	</script>

	<!-- 显示和隐藏(display属性) -->
	<p>网页中经常会看到显示和隐藏的效果,可通过display属性来设置。语法:Object.style.display=vale;注意:Object是获取的元素对象,如通过document.getElementById("id")获取的元素。
		value取值:none-此元素不会被显示(即隐藏);block-此元素将显示为块级元素。</p>
	<h1>JavaScript</h1>
	<p id="disCon">做为一个Web开发师来说,如果你想提供漂亮的网页、令用户满意的上网体验,JavaScript是必不可少的工具。</p>
	<form>
		<input type="button" value="不显示段落内容" onclick="hideText()"> <input
			type="button" value="显示段落内容" onclick="showText()">
	</form>

	<!-- 控制类名(className) -->
	<p>className属性设置或返回元素的class属性。语法:object.className=className
		作用:1.获取元素的class属性;2.为网页内的某个元素指定一个css样式来更改该元素的外观。</p>
	<p id="cn" class="one">JavaScript</p>
	<form>
		<input type="button" value="点我更改" onclick="modifyclass()" />
	</form>
	<p id="p3">JavaScript使网页显示动态效果并实现与用户交互功能。</p>
	<input type="button" value="添加样式" onclick="add()">
	<p id="p4" class="three">JavaScript使网页显示动态效果并实现与用户交互功能。</p>
	<input type="button" value="更改外观" onclick="modify()">
	<hr />

	<h4>第4章 编程挑战</h4>
	<h2>JavaScript课程</H2>
	<div id="txt">
		<h5>JavaScript为网页添加动态效果并实现与用户交互的功能。</h5>
		<p>1. JavaScript入门篇，让不懂JS的你，快速了解JS。</p>
		<p>2. JavaScript进阶篇，让你掌握JS的基础语法、函数、数组、事件、内置对象、BOM浏览器、DOM操作。</p>
		<p>3.
			学完以上两门基础课后，在深入学习JavaScript的变量作用域、事件、对象、运动、cookie、正则表达式、ajax等课程。</p>
	</div>
	<form>
		<input type="button" value="改变颜色" onclick="dcolor()"> <input
			type="button" value="改变宽高" onclick="dwh()"> <input
			type="button" value="隐藏内容" onclick="dh()"> <input
			type="button" value="显示内容" onclick="ds()"> <input
			type="button" value="取消设置" onclick="dclear()">
	</form>
</body>
</html>

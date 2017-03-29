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

//给变量取个名字(变量命名)
规则
1.必须以字母、下划线或美元符号开头,和面可以跟字母、下划线、美元符号和数字
2.变量名区分大小写
3.不允许使用JavaScript关键字和保留字做变量名(java... var delete in typeof | java... export native const goto transient debugger volatile)

//确定你的存在(变量声明)
声明变量语法: var 变量名;
注意:变量也可以不声明,直接使用,但为了规范,需要先声明,后使用

//多样化的我(变量赋值)
可以把任何类型存储在变量里(数值、字符串、布尔值等)

//表达出你的想法(表达式)
表达式与数学中的定义相似,表达式是指具有一定的值、用操作符把常熟和变量连接起来的代数式。一个表达式可以包含常数或变量

//我还有其它用途(+号操作符)
操作符是用于在JavaScript中指定一定动作的符号(算术操作符(+、-、*、/) | 比较操作符(<、>、>=、<=) | 逻辑操作符(&&、||、!))
在JavaScript中,'+'不止代表加法,还可以连接两个字符串

//自加,自减(++和--)
//较量较量(比较操作符)
//我与你同在(逻辑与操作符&&)
//我和你都可以(逻辑或操作符||)
//是非颠倒(逻辑非操作符!)

    </pre>
</body>
</html>

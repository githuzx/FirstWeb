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
<title>如何用CSS进行网页布局</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
li {
	margin: 10px;
	font-size: 16px;
}

a {
	color: blue;
	font-size: 18px;
	padding: 10px;
}

ul {
	list-style: none;
}
</style>
</head>

<body>
	<!-- Test -->
	<li>Test:
		<ol>
			<li><a title="一列布局" target="_blank"
				href="page/layoutbasic/test/column1.jsp">column1.jsp</a>
			</li>
			<li><a title="二列布局" target="_blank"
				href="page/layoutbasic/test/column2.jsp">column2.jsp</a>
			</li>
			<li><a title="三列布局" target="_blank"
				href="page/layoutbasic/test/column3.jsp">column3.jsp</a>
			</li>
			<li><a title="混合布局" target="_blank"
				href="page/layoutbasic/test/mixed.jsp">mixed.jsp</a>
			</li>
		</ol>
	</li>


	<h4>第1章 内容简介</h4>
	<pre>
//内容简介
布局 → 又称版式布局,是网页UI设计师将有限的视觉元素进行有机的排列组合
网页设计的特点 → 网页可以自适应宽度 | 网页的长度理论上没有限制
分栏 → 又称为分列,常见的布局分为一列布局、二列布局、三列布局、混合布局     
CSS(浮动、定位等) → UI
前端工程师就是将艺术与技术一个完美融合的关键岗位
     </pre>

	<h4>第2章 用HTML+CSS实现最简单的网页布局效果:一列布局</h4>
	<pre>
//一列布局     
一般都是固定宽度的     
     
//练习题     
     
//编程练习     
     </pre>

	<h4>第3章 自适应宽度及固定宽度的二列布局的实现</h4>
	<pre>
//二列布局     
     
//评测题目     

//编程练习
     </pre>

	<h4>第4章 用position定位方法实现自适应效果的三列布局</h4>
	<pre>
//三列布局     
     
//编程练习     
     </pre>

	<h4>第5章 用HTML+CSS实现复杂结构的混合布局</h4>
	<pre>
//混合布局     
     
//实战题

//编程挑战     
     </pre>
</body>
</html>

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
<title>网页布局基础</title>
</head>
<body>
	<!-- 课程简介 -->
	<h4>第1章 课程简介</h4>
	<pre>
//网页布局-课程简介
1.掌握三大布局技巧:流式布局、浮动布局、绝对定位布局
2.精通标准文档流、盒子模型、float属性、position属性

案例:
         自动居中一列布局案例 ----盒子模型的使用方法
         浮动布局案例 ----float属性、解决浮动影响的方法
         绝对定位布局案例 ----绝对定位实现横向两列或多列布局   
       
//练习题
    </pre>
    
    <!-- 自动居中一列布局 -->
    <h4>第2章 自动居中一列布局</h4>
    <pre>
//网页布局相关知识点讲解————标准文档流、块级及行级元素等
W3C标准
由万维网联盟制定的一系列标准,包括:
    结构化标准语言(HTML和XML)
    表现标准语言(CSS)
    行为标准语言(DOM和ECMAScript)
倡导结构、样式、行为分离

CSS中,存在3种的定位机制:
    1.标准文档流(Normal flow)
               特点:从上到下,从左到右,输出文档内容
                         由块级元素(从左到右撑满页面,独占一行;触碰到页面边缘时,会自动换行;div、ul、li、dl、dt、p...)和行级元素组成(能在同一行内显示,不会改变HTML文档结构;span、strong、img、input...)  
                         块级元素和行级元素都是盒子模型
    2.浮动(Floats)
    3.绝对定位(Absolute positioning)
    
//盒子模型
网页布局中的基石,由4部分组成:
边框(border)
外边距(margin)
内边距(padding)
盒子中的内容(content)

盒子3D模型
border           -> 1
content+padding  -> 2
background-image -> 3
background-color -> 4
margin           -> 5

//编程练习

//自动居中一列布局
三个技能点:
1.标准文档流
2.块级元素
3.margin属性(#wrap{width:770px;margin:0 auto;})
           //auto会根据浏览器的宽度自动的设置两边的外边距。原理:(浏览器的宽度-外包含层的宽度)/2=外边距
           //如果想让页面自动居中,当设置margin属性为auto的时候,不能再设置浮动或绝对定位属性
           
//练习题

//练习题

//网页布局编程练习题
    </pre>
</body>
</html>

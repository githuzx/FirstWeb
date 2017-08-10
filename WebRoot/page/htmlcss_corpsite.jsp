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
<title>企业网站综合布局实战</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<h4>第1章 网站分析与展示</h4>
	<pre>
//网站分析与展示    
提升品牌形象、增加销售机会、改善售后服务、提高企业竞争力
头部Logo区、导航区、内容展示区、底部版权区    
头部/导航区¦信息展示区¦页脚区    
    </pre>

	<h4>第2章 必备基础知识</h4>
	<pre>
//盒子模型    
width/height/border/margin/padding

盒子模型:用这种思想来"盛放"网页中的各种元素
在网页设计上,内容常指文字、图片等元素,但是也可以是小盒子(DIV嵌套)。填充只有宽度属性,可以理解为生活中盒子里的抗震辅料厚度,而边框有大小、线型和颜色之分,我们又可以理解为生活中缩减盒子的厚度以及这个盒子是用什么颜色材料做成的,边界就是该盒子与其它盒子要保留多大距离
填充、边框、边距分为上、右、下、左四个方向,均可单独设置    

在CSS中,width和height指的是内容区域的宽度和高度。增加内部局、边框和外边距不会影响内容区域的尺寸,但是会增加元素框的总尺寸

//练习题

//编程练习

//浮动 float
浮动的框可以向左或向右移动,直到它的外边缘碰到包含框或另一个浮动框的边框为止。由于浮动框不在标准文档流中,所以标准文档流中的块框表现得就像浮动框不存在一样
屏幕宽度>box1+box2¦漂浮(停靠)

清除浮动clear
clear属性规定元素的哪一侧不允许其他浮动元素(浏览器在解释的时候:它的左侧不存在浮动元素,按照标准文档流显示)

//练习题

//编程练习
    </pre>

	<h4>第3章 首页制作</h4>
	<pre>
//首页布局分析
①顶部区
②页面主体区
 Logo区、导航区、大图广告区、信息展示区(新闻中心、课程中心、媒体聚焦)
③底部版权区

//页面头部制作(一)
    
//页面头部制作(二)    

//导航部分制作(一)

//导航部分制作(二)

//练习题

//编程练习

//焦点图制作
一种网站内容的展现方式,有一定的视觉吸引性

焦点图的分类
JS/FLASH/CSS/JQ

overflow:hidden; //溢出这个div之后就给隐藏掉

小巧却高效强大,使用简单的焦点图插件
myFocus:专注于焦点图制作的js库
使用步骤
step 1:在html的标签内引入相关文件
step 2:创建myFocus标准的html结构,并填充你的内容
step 3:在head标签结束前调用

//信息展示区制作

//新闻中心制作(一)

//新闻中心制作(二)

//新闻中心制作(三)

//练习题

//编程练习

//课程中心制作

//侧边栏制作

//底部版权区制作

//编程练习
    </pre>
</body>
</html>

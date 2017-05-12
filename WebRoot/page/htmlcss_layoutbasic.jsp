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

	<!-- 横向两列布局 -->
	<h4>第3章 横向两列布局</h4>
	<pre>
//浮动布局简介及float属性
float属性
1.left——左浮动
2.right——右浮动
3.none——不浮动
特点:元素会左移,或右移,直接触碰到容器为止  //磁铁
设置了浮动的元素,仍旧处于标准文档流中

当元素没有设置宽度值,而设置了浮动属性,元素的宽度随内容的变化而变化
当元素设置浮动属性后,会对相邻的元素产生影响,相邻元素特指紧邻后面的元素

//清除浮动的常用方法——对受到浮动影响的元素设置
1.clear属性——常用clear:both;clear:left;或者clear:right
2.同时设置width:100%(或固定宽度) + overflow:hidden;
br空标签无意义,不建议使用此方法清除浮动

//横向两列布局
网页布局最常见的方法之一
主要应用技能
1.float属性——使纵向排列的块级元素,横向排列
2.margin属性——设置两列之间的间距

div块的高度一般不需要设置

//练习题

//编程练习
备注:
dl——用来创建一个普通的列表;dt——用来创建列表中的上层项目;dd——用来创建列表中最下层项目
    </pre>

	<!-- 绝对定位布局 -->
	<h4>第4章 绝对定位布局</h4>
	<pre>
//绝对定位布局简介
通过设置position属性实现
CSS中规定的第三种定位机制    
能够实现横向多列布局及较为复杂的定位

position属性
拥有3种定为形式:1.静态定位 2.相对定位 3.绝对定位    
可设置4个属性值:
static(静态定位)    
relative(相对定位)
absolute(绝对定位) 
fixed(固定定位) 
 
//相对定位
特点:
相对于自身原有位置进行偏移
仍处于标准文档流中
随即拥有偏移属性和z-index属性

//绝对定位
特点:
建立了以包含块为基准的定位
完全脱离了标准文档流
随即拥有偏移属性和z-index属性

未设置偏移量
特点:
无论是否存在已定位祖先元素,都保持在元素初始位置
脱离了标准文档流

设置偏移量
偏移参照基准:
无已定位祖先元素,以html为偏移参照基准
有已定位祖先元素,以距其最近的已定位祖先元素为偏移参照基准

当一个元素设置绝对定位,没有设置宽度时,元素的宽度根据内容进行调节

//使用绝对定位实现横向两列布局
使用绝对定位实现横向两列布局,应用比较少
使用absolute实现横向两列布局
      ——常用与一列固定宽度,另一列宽度自适应的情况
主要应用技能:
      relative——父元素相对定位
      absolute——自适应宽度元素绝对定位
      注意:固定宽度列的高度>自适应宽度的列

//练习题

//编程练习
    </pre>

	<!-- 挑战编程-->
	<h4>第5章 挑战编程</h4>
	<pre>
//网页布局-编程挑战    
    </pre>
</body>
</html>

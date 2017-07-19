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
<title>征服CSS3选择器(上)</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
li {
	margin: 10px;
}

a {
	color: blue;
	font-size: 14px;
	margin: 10px;
}

/*属性选择器*/
a[href $=pdf] {
	background: orange;
	color: fff;
}

a[class ^=icon] {
	background: green;
	color: #fff;
}

a[title *=more] {
	background: blue;
	color: #fff;
}

a[class ^=column] {
	background: red;
}

a[href $=doc] {
	background: green;
}

a[title *=box] {
	background: blue;
}
/*结构性为类选择器——root*/
:root {
	background: white;
}
/*结构性伪类选择器——not*/
form {
	width: 200px;
	margin: 20px;
}

div {
	margin-bottom: 10px;
}

/* input:not ([type="submit"] ){
	border: 1px solid red;
} */
#header,#page,#footer {
	padding: 10px 20px;
	min-height: 50px;
	border: 1px solid #ccc;
}

/* div:not ([id="footer"] ){
	width: 200px;
} */

/*结构性伪类选择器——empty*/
p {
	background: orange;
	min-height: 30px;
}

p:empty {
	display: none;
}

div:empty {
	border: 1px solid green;
}

/*结构性伪类选择器——target*/
#brand:target {
	background: orange;
	color: #fff;
}

#jake:target {
	background: blue;
	color: #fff;
}

#aron:target {
	background: red;
	color: #fff;
}

/*结构性伪类选择器——first-child*/
ol>li:first-child {
	color: red;
}

ul>li:first-child {
	color: red;
}

/*结构性伪类选择器——last-child*/
.post {
	padding: 10px;
	border: 1px solid #ccc;
	width: 200px;
	margin: 20px;
}

.post p {
	margin: 0 0 15px 0;
}

.post p:last-child {
	margin-bottom: 0;
}

.post_practise {
	border: 1px solid #ccc;
	list-style: none outside none;
	width: 220px;
	margin: 20px;
	padding: 0;
}

.post_practise li {
	list-style: none outside none;
	margin: 0;
	padding: 10px;
	border: 3px solid #ccc;
}

.post_practise li:last-child {
	border-bottom: none;
}

/*结构性伪类选择器nth-child(n)*/
.po_nth {
	width: 200px;
}

.po_nth li:nth-child(2n) {
	background: orange;
}

/*结构性伪类选择器nth-last-child(n)*/
.po_nth_last {
	width: 200px;
}

.po_nth_last li:nth-last-child(5) {
	background: orange;
}

/*first-of-type选择器*/
.wrapper_firstoftype,.wrapper_nthoftype,.wrapper_lastoftype,.wrapper_nthlastoftype,.wrapper_onlyoftype
	{
	width: 500px;
	margin: 20px;
	padding: 10px;
	border: 1px solid #ccc;
}

.wrapper_firstoftype>div {
	background: green;
	color: #fff;
}

.wrapper_firstoftype>p {
	background: blue;
	color: #fff;
}

.wrapper_firstoftype>p:first-of-type {
	background: orange;
}

/*nth-of-type(n)选择器*/
.wrapper_nthoftype>p:nth-of-type(2n) {
	background: orange;
}

/*last-of-type选择器*/
.wrapper_lastoftype>p:last-of-type {
	background: orange;
}

/*nth-last-of-type(n)选择器*/
.wrapper_nthlastoftype>p:nth-last-of-type(3) {
	background: orange;
}

/*only-child选择器*/
.post p {
	background: green;
	color: #fff;
	padding: 10px;
}

.post p:only-child {
	background: orange;
}

/*only-of-type选择器*/
.wrapper_onlyoftype>div:only-of-type {
	background: orange;
}
</style>
</head>

<body>
	<ol>
		<!-- 属性选择器 -->
		<li><a href="#">属性选择器</a> <br> <a href="xxx.pdf">我链接的是PDF文件</a>
			<a href="#" class="icon">我类名是icon</a> <a href="#"
			title="我的title是more">我的title是more</a> <br> <a href="##"
			class="columnNews">我的背景想变成红色</a> <a href="##" class="columnVideo">我的背景想变成红色</a>
			<a href="##" class="columnAboutUs">我的背景想变成红色</a> <br> <a
			href="1.doc">我的背景想变成绿色</a> <a href="2.doc">我的背景想变成绿色</a> <br> <a
			href="##" title="this is a box">我的背景想变成蓝色</a> <a href="##"
			title="box1">我的背景想变成蓝色</a> <a href="##" title="there is two boxs">我的背景想变成蓝色</a>
		</li>

		<!-- 结构性伪类选择器——root -->
		<li><a href="#">结构性伪类选择器—root</a><br>
			<div>:root选择器的演示</div></li>

		<!-- 结构性伪类选择器——not -->
		<li><a href="#">结构性伪类选择器—not</a><br>
			<form action="#">
				<div>
					<label for="name">Text Input:</label> <input type="text"
						name="name" id="name" placeholder="Steve Jobs" />
				</div>
				<div>
					<label for="name">Password Input:</label> <input type="text"
						name="name" id="name" placeholder="Steve Jobs" />
				</div>
				<div>
					<input type="submit" value="Submit" />
				</div>
			</form>
			<div id="header">页头</div>
			<div id="page">页体</div>
			<div id="footer">页脚</div></li>

		<!-- 结构性伪类选择器——empty -->
		<li><a href="#">结构性伪类选择器—empty</a><br>
			<p>我是一个段落</p>
			<p>&nbsp;</p>
			<p></p>
			<div>我这里有内容</div>
			<div>&nbsp;</div>
			<div style="min-height: 30px"></div>
		</li>

		<!-- 结构性选择器——target -->
		<li><a href="#">结构性选择器—target</a><br>
			<h2>
				<a href="#brand">Brand</a>
			</h2>
			<div class="menuSection" id="brand">content for Brand</div>
			<h2>
				<a href="#jake">Brand</a>
			</h2>
			<div class="menuSection" id="jake">content for jake</div>
			<h2>
				<a href="#aron">Brand</a>
			</h2>
			<div class="menuSection" id="aron">content for aron</div></li>

		<!-- 结构性伪类选择器——first-child -->
		<li><a href="#">结构性伪类选择器—first-child</a><br>
			<ol>
				<li><a href="#">Link1</a></li>
				<li><a href="#">Link2</a></li>
				<li><a href="#">Link3</a></li>
			</ol>
			<ul>
				<li><a href="##">Link4</a></li>
				<li><a href="##">Link5</a></li>
				<li><a href="##">Link6</a></li>
			</ul>
		</li>

		<!-- 结构性伪类选择器——last-child -->
		<li><a href="#">结构性伪类选择器—last-child</a><br>
			<div class="post">
				<p>第一段落</p>
				<p>第二段落</p>
				<p>第三段落</p>
				<p>第四段落</p>
				<p>第五段落</p>
			</div>
			<ul class="post_practise">
				<li>Item1</li>
				<li>Item2</li>
				<li>Item3</li>
				<li>Item5</li>
				<li>Item6</li>
			</ul>
		</li>

		<!-- 结构性伪类选择器——nth-child(n) -->
		<li><a href="#">结构性伪类选择器—nth-child(n)</a><br>
			<ol class="po_nth">
				<li>item 1</li>
				<li>item 2</li>
				<li>item 3</li>
				<li>item 4</li>
				<li>item 5</li>
				<li>item 6</li>
				<li>item 7</li>
				<li>item 8</li>
				<li>item 9</li>
				<li>item 10</li>
			</ol>
		</li>

		<!-- 结构性伪类选择器——nth-last-child(n) -->
		<li><a href="#">结构性伪类选择器—nth-last-child(n)</a><br>
			<ol class="po_nth_last">
				<li>item 1</li>
				<li>item 2</li>
				<li>item 3</li>
				<li>item 4</li>
				<li>item 5</li>
				<li>item 6</li>
				<li>item 7</li>
				<li>item 8</li>
				<li>item 9</li>
				<li>item 10</li>
				<li>item 11</li>
				<li>item 12</li>
				<li>item 13</li>
				<li>item 14</li>
				<li>item 15</li>
			</ol>
		</li>

		<!-- first-of-type选择器 -->
		<li><a href="#">first-of-type选择器</a>
			<div class="wrapper_firstoftype">
				<div>我是一个块元素,我是.wrapper的第一个子元素</div>
				<p>我是一个段落元素,我不是.wrapper的第一个子元素,但是它的第一个段落元素</p>
				<p>我是一个段落元素</p>
				<div>我是一个块元素</div>
			</div>
		</li>

		<!-- nth-of-type(n)选择器 -->
		<li><a href="#">nth-of-type(n)</a>
			<div class="wrapper_nthoftype">
				<div>我是一个div</div>
				<p>我是一个段落</p>
				<div>我是一个div</div>
				<p>我是一个段落</p>
				<div>我是一个div</div>
				<p>我是一个段落</p>
				<div>我是一个div</div>
				<p>我是一个段落</p>
			</div></li>

		<!-- last-of-type选择器 -->
		<li><a href="#">last-of-type</a>
			<div class="wrapper_lastoftype">
				<p>我是第一个段落</p>
				<p>我是第二个段落</p>
				<p>我是第三个段落</p>
				<div>我是第一个div</div>
				<div>我是第二个div</div>
				<div>我是第三个div</div>
			</div></li>

		<!-- nth-last-of-type(n)选择器 -->
		<li><a href="#">nth-last-of-type(n)选择器</a>
			<div class="wrapper_nthlastoftype">
				<p>我是第一个段落</p>
				<p>我是第二个段落</p>
				<p>我是第三个段落</p>
				<p>我是第四个段落</p>
				<p>我是第五个段落</p>
				<div>我是一个Div元素</div>
				<p>我是第六个段落</p>
				<p>我是第七个段落</p>
			</div></li>

		<!-- only-child选择器 -->
		<li><a href="#">only-child选择器</a>
			<div class="post">
				<p>我是一个段落</p>
				<p>我是一个段落</p>
			</div>
			<div class="post">
				<p>我是一个段落</p>
			</div>
		</li>

		<!-- only-of-type选择器 -->
		<li><a href="#">only-of-type选择器</a>
			<div class="wrapper_onlyoftype">
				<p>我是一个段落</p>
				<p>我是一个段落</p>
				<p>我是一个段落</p>
				<div>我是一个div元素</div>
			</div>
			<div class="wrapper_onlyoftype">
				<div>我是一个div</div>
				<ul>
					<li>我是一个列表项</li>
				</ul>
				<p>我是一个段落</p>
			</div>
		</li>
	</ol>
</body>
</html>

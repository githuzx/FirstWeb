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
<title>征服CSS3选择器(下)</title>
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

/*enabled选择器*/
.form_enabled div {
	margin: 20px;
}

.form_enabled input[type="text"]:enabled {
	background: #ccc;
	border: 2px solid red;
}

/*disabled选择器*/
.form_disabled {
	margin: 50px;
}

.form_disabled div {
	margin-bottom: 20px;
}

.form_disabled input {
	background: #fff;
	padding: 10px;
	border: 1px solid orange;
	border-radius: 3px;
}

.form_disabled input[type="text"]:disabled {
	background: rgba(0, 0, 0, .15);
	border: 1px solid rgba(0, 0, 0, .15);
	color: rgba(0, 0, 0, .15);
}

/*checked选择器*/
.form_checked {
	border: 1px solid #ccc;
	padding: 20px;
	width: 300px;
	margin: 30px;
}

.wrapper_checked {
	margin-bottom: 10px;
}

.box_checked {
	display: inline-block;
	width: 20px;
	height: 20px;
	margin-right: 10px;
	position: relative;
	border: 2px solid orange;
	vertical-align: middle;
}

.box_checked input {
	opacity: 0;
	position: absolute;
	top: 0;
	left: 0;
}

.box_checked span {
	position: absolute;
	top: -10px;
	right: 3px;
	font-size: 30px;
	font-weight: bold;
	font-family: Arial;
	-webkit-transform: rotate(30deg);
	transform: rotate(30deg);
	color: orange;
}

input[type="checkbox"]+span {
	opacity: 0;
}

input[type="checkbox"]:checked+span {
	opacity: 1;
}

/*selection选择器*/
::-moz-selection {
	background: red;
	color: green;
}

::selection {
	background: red;
	color: green;
}

/*read-only选择器 | read-write选择器*/
.form_readonly {
	width: 300px;
	padding: 10px;
	border: 1px solid #ccc;
	margin: 50px;
}

.form_readonly div {
	margin-bottom: 10px;
}

.form_readonly input {
	border: 1px solid orange;
	padding: 5px;
	background: #fff;
	border-radius: 5px;
}

.form_readonly input:-moz-read-only {
	border-color: #ccc;
}

.form_readonly input:read-only {
	border-color: #ccc;
}

.form_readonly input:-moz-read-write {
	border-color: #f36;
}

.form_readonly input:read-write {
	border-color: #f36;
}
/*切换背景图像综合练习题*/
</style>
</head>

<body>
	<ol>
		<!-- enabled选择器 -->
		<li><a href="#">enabled选择器</a>
			<form action="#" class="form_enabled">
				<div>
					<label for="name">Text Input:</label> <input type="text"
						name="name" id="name" placeholder="可用输入框" />
				</div>
				<div>
					<label for="name">Text Input:</label> <input type="text"
						name="name" id="name" placeholder="禁用输入框" disabled="disabled" />
				</div>
			</form>
		</li>

		<!-- disabled选择器 -->
		<li><a href="#">disabled选择器</a>
			<form action="#" class="form_disabled">
				<div>
					<input type="text" name="name" id="name" placeholder="我是可用输入框" />
				</div>
				<div>
					<input type="text" name="name" id="name" placeholder="我是不可用输入框"
						disabled>
				</div>
			</form></li>

		<!-- checked选择器 -->
		<li><a href="#">checked选择器</a>
			<form action="#" class="form_checked">
				<div class="wrapper_checked">
					<div class="box_checked">
						<input type="checkbox" checked="checked" id="usename" /><span>√</span>
					</div>
					<lable for="usename">我是选中状态</lable>
				</div>

				<div class="wrapper_checked">
					<div class="box_checked">
						<input type="checkbox" id="usepwd" /><span>√</span>
					</div>
					<label for="usepwd">我是未选中状态</label>
				</div>
			</form>
		</li>

		<!-- selection选择器 -->
		<li><a href="#">selection选择器</a><br> <br>
			<p>"::selection"伪元素是用来匹配突出显示的文本。浏览器默认情况下,选择网站位版本是深蓝的背景,白色的字体</p></li>

		<!-- read-only选择器 | read-write选择器-->
		<li><a href="#">read-only选择器 | read-write选择器</a>
			<form action="#" class="form_readonly">
				<div>
					<label for="name">姓名:</label> <input type="text" name="name"
						id="name" placeholder="大漠" />
				</div>
				<div>
					<label for="address">地址:</label> <input type="text" name="address"
						id="address" placeholder="中国上海" readonly="readonly" />
				</div>
			</form></li>

		<!-- 切换背景图像综合练习题 -->
		<li><a href="#">切换背景图像综合练习题</a>
		<div class="slider">
			<ul class="clearfix">
				<li><a href="#bg1">Hipster Fashion Haircut </a></li>
				<li><a href="#bg2">Cloud Computing Services &amp; Consulting</a></li>
				<li><a href="#bg3">My haire is sooo fantastic!</a></li>
				<li><a href="#bg4">Eat healthy &amp; excersice!</a></li>
				<li><a href="#bg5">Lips so kissable I could die ...</a></li>
			</ul>
		</div>
		<img src="http://www.w3cplus.com/demo/css3/CSS3Fullbackground/bg1.jpg" alt="" class="bgslideLeft" id="bg1" />
		<img src="http://www.w3cplus.com/demo/css3/CSS3Fullbackground/bg2.jpg" alt="" class="bgslideBottom" id="bg2" />
		<img src="http://www.w3cplus.com/demo/css3/CSS3Fullbackground/bg3.jpg" alt="" class="bgzoomIn" id="bg3" />
		<img src="http://www.w3cplus.com/demo/css3/CSS3Fullbackground/bg4.jpg" alt="" class="bgzoomOut" id="bg4" />
		<img src="http://www.w3cplus.com/demo/css3/CSS3Fullbackground/bg5.jpg" alt="" class="bg rotate" id="bg5" />
		</li>
	</ol>
</body>
</html>

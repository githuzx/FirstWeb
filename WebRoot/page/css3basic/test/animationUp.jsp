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
<title>CSS3中的变形与动画(上)</title>
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

/*旋转 rotate()*/
.wrapper_rotate {
	width: 200px;
	height: 200px;
	border: 1px dotted red;
	margin: 60px;
}

.wrapper_rotate div {
	width: 200px;
	height: 200px;
	background: orange;
	-webkit-transform: rotate(45deg);
	transform: rotate(45deg);
}

.wrapper_rotate1 {
	width: 300px;
	height: 200px;
	border: 2px dotted blue;
	margin: 60px;
}

.wrapper_rotate1 div {
	width: 300px;
	height: 200px;
	line-height: 200px;
	text-align: center;
	background: green;
	color: #fff;
	-webkit-transform: rotate(-20deg);
	-moz-transform: rotate(-20deg);
	transform: rotate(-20deg);
}

.wrapper_rotate1 span {
	display: block;
	-webkit-transform: rotate(20deg);
	-moz-transform: rotate(20deg);
	transform: rotate(20deg);
}

/*扭曲 skew()*/
.wrapper_skew {
	width: 300px;
	height: 100px;
	border: 2px dotted red;
	margin: 30px;
}

.wrapper_skew div {
	width: 300px;
	height: 100px;
	line-height: 100px;
	text-align: center;
	color: #fff;
	background: orange;
	-webkit-transform: skew(45deg);
	-moz-transform: skew(45deg);
	transform: skew(45deg);
}

.wrapper_skew span {
	display: block;
	-webkit-transform: skew(-45deg);
	-moz-transform: skew(-45deg);
	transform: skew(-45deg);
}

/*缩放 scale()*/
.wrapper_scale {
	width: 200px;
	height: 200px;
	border: 2px dashed red;
	margin: 100px;
}

.wrapper_scale div {
	width: 200px;
	height: 200px;
	line-height: 200px;
	background: orange;
	text-align: center;
	color: #fff;
}

.wrapper_scale div:hover {
	opacity: .5;
	-webkit-transform: scale(1.5);
	-moz-transform: scale(1.5);
	transform: scale(1.5);
}

/*位移 translate()*/
.wrapper_translate {
	width: 200px;
	height: 200px;
	border: 2px dotted red;
	margin: 20px;
}

.wrapper_translate div {
	width: 200px;
	height: 200px;
	line-height: 200px;
	text-align: center;
	background: orange;
	color: #fff;
	-webkit-transform: translate(50px, 50px);
	-moz-transform: translate(50px, 50px);
	transform: translate(50px, 50px);
}

/*矩阵 matrix()*/
.wrapper_matrix {
	width: 300px;
	height: 200px;
	border: 2px dotted red;
	margin: 40px;
}

.wrapper_matrix div {
	width: 300px;
	height: 200px;
	background: orange;
	-webkit-transform: matrix(1, 0, 0, 1, 50, 50);
	-moz-transform: matrix(1, 0, 0, 1, 50, 50);
	transform: matrix(1, 0, 0, 1, 50, 50);
}

/*原点 transform-origin*/
.wrapper_transform {
	width: 200px;
	height: 200px;
	float: left;
	margin: 100px;
	border: 2px dotted red;
	line-height: 200px;
	text-align: center;
}

.wrapper_transform div {
	background: orange;
	-webkit-transform: rotate(45deg);
	transform: rotate(45deg);
}

.wrapper_transformorigin div {
	-webkit-transform-origin: left top;
	transform-origin: left top;
}

/*过渡属性 transition-property*/
.wrapper_transitionproperty {
	width: 200px;
	height: 200px;
	background-color: red;
	margin: 20px;
	-webkit-transition: background-color .5s ease .1s;
	transition: background-color .5s ease .1s;
}

.wrapper_transitionproperty:hover {
	background-color: orange;
}

.wrapper_transitionproperty1 {
	width: 200px;
	height: 200px;
	background: red;
	margin: 20px;
	-webkit-transition-property: width;
	transition-property: width;
	-webkit-transition-duration: .5s;
	transition-duration: .5s;
	-webkit-transition-timing-function: ease-in;
	transition-timing-function: ease-in;
	-webkit-transition-delay: .18s;
	transition-delay: .18s;
}

.wrapper_transitionproperty1:hover {
	width: 400px;
}

/*过渡所需时间 transition-duration*/
.wrapper_transitionduration {
	width: 200px;
	height: 200px;
	background-color: green;
	margin: 20px;
	-webkit-transition-property: -webkit-border-radius;
	transition-property: border-radius;
	-webkit-transition-duration: .5s;
	transition-duration: .5s;
	-webkit-transition-timing-function: ease-in-out;
	transition-timing-function: ease-in-out;
	-webkit-transition-delay: .2s;
	transition-delay: .2s;
}

.wrapper_transitionduration:hover {
	border-radius: 100%;
}

/*过渡延迟时间 transition-delay*/
.wrapper_transitiondelay {
	width: 250px;
	height: 250px;
	margin: 20px;
	border: 1px solid #ccc;
}

.wrapper_transitiondelay div {
	width: 100px;
	height: 100px;
	background-color: orange;
	-webkit-transition: all .28s ease-in .1s;
	transition: all .28s ease-in .1s;
	font-size: 12px;
}

.wrapper_transitiondelay div:hover {
	width: 200px;
	height: 200px;
	background-color: red;
}
</style>
</head>

<body>
	<ol>
		<!-- 旋转 rotate() -->
		<li><a href="#">旋转 rotate()</a>
			<div class="wrapper_rotate">
				<div></div>
			</div>
			<div class="wrapper_rotate1">
				<div>
					<span> 我不想旋转(^_^) </span>
				</div>
			</div></li>

		<!-- 扭曲 skew() -->
		<li><a href="#">扭曲 skew()</a>
			<div class="wrapper_skew">
				<div>
					<span>我不想被扭曲(^_^)</span>
				</div>
			</div></li>

		<!-- 缩放 scale() -->
		<li><a href="#">缩放 scale()</a>
			<div class="wrapper_scale">
				<div>我将放大1.5倍</div>
			</div>
		</li>

		<!-- 位移 translate() -->
		<li><a href="#">位移 translate()</a>
			<div class="wrapper_translate">
				<div>我向右向下移动</div>
			</div></li>

		<!-- 矩阵 matrix() -->
		<li><a href="#">矩阵 matrix()</a>
			<div class="wrapper_matrix">
				<div></div>
			</div></li>

		<!-- 原点 transform-origin -->
		<li><a href="#">原点 transform-origin</a>
			<div>
				<div class="wrapper_transform">
					<div>原点在默认位置处</div>
				</div>
				<div class="wrapper_transform wrapper_transformorigin">
					<div>原点重置到左上角</div>
				</div>
			</div>
		</li>

		<!-- 过渡属性 transition-property -->
		<li><a href="#">过渡属性 transition-property</a>
			<div class="wrapper_transitionproperty"></div>
			<div class="wrapper_transitionproperty1"></div></li>

		<!-- 过渡所需时间 transition-duration -->
		<li><a href="#">过渡所需时间 transition-duration</a>
			<div class="wrapper_transitionduration"></div></li>

		<!-- 过渡延迟时间 transition-delay -->
		<li><a href="#">过渡延迟时间 transition-delay</a>
			<div class="wrapper_transitiondelay">
				<div>鼠标放这儿</div>
			</div>
		</li>
	</ol>
</body>
</html>

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
<title>微博用户发言信息列表制作</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	color: #666;
}

/*初级*/
.demo1 {
	width: 620px;
	position: relative;
	overflow: hidden;
	margin-top: 1px;
}

.demo1 .left {
	width: 120px;
	float: left;
}

.demo1 .left img {
	margin-left: 20px;
}

.demo1 .right {
	width: 458px;
	float: right;
	border: 1px solid #ccc;
	background: #9cf;
	padding: 20px;
}

.demo1 .right p {
	font-size: 12px;
	line-height: 25px;
}

.demo1 .right span {
	position: absolute;
	right: 20px;
	top: 10px;
	font-size: 12px;
}

/*中级*/
.demo2 {
	width: 620px;
	position: relative;
	overflow: hidden;
}

.demo2 img {
	float: left;
	margin-left: 20px;
}

.demo2 .right {
	width: 458px;
	float: right;
	border: 1px solid #ccc;
	background: #9cf;
	padding: 20px;
}

.demo2 .right p {
	font-size: 12px;
	line-height: 25px;
}

.demo2 .right span {
	position: absolute;
	right: 20px;
	top: 10px;
	font-size: 12px;
}

/*高级*/
.demo3 {
	width: 458px;
	border: 1px solid #ccc;
	background: #9cf;
	padding: 20px;
	margin-left: 120px;
	position: relative;
}

.demo3 img {
	float: left;
	margin: -20px 0 0 -120px;
}

.demo3 p {
	font-size: 12px;
	line-height: 25px;
}

.demo3 span {
	position: absolute;
	right: 20px;
	top: 10px;
	font-size: 12px;
}
</style>
</head>

<body>

	<!-- 初级 -->
	<div class="demo1">
		<div class="left">
			<img src="resource/images/art/zty.jpg" width="69" height="85" />
		</div>
		<div class="right">
			<h6>樱桃小丸子</h6>
			<p>在网页制作当中，结构与表现分离的思想，不仅仅是将html、css分别写在不同文件当中这么简单，要从更深层次上去进行理解。本课程通过3个案例，分别从不同角度，对结构和表现分离的思想进行了展示和分析。</p>
			<span>10分钟之前</span>
		</div>
	</div>

	<br />
	<br />

	<!-- 中级 -->
	<div class="demo2">
		<img src="resource/images/art/zty_7.jpg" width="85" height="128" />
		<div class="right">
			<h6>樱桃小丸子</h6>
			<p>在网页制作当中，结构与表现分离的思想，不仅仅是将html、css分别写在不同文件当中这么简单，要从更深层次上去进行理解。本课程通过3个案例，分别从不同角度，对结构和表现分离的思想进行了展示和分析。</p>
			<span>10分钟之前</span>
		</div>
	</div>

	<br />
	<br />

	<!-- 高级 -->
	<div class="demo3">
		<img src="resource/images/art/zty.jpg" width="69" height="85" />
		<h6>樱桃小丸子</h6>
		<p>在网页制作当中，结构与表现分离的思想，不仅仅是将html、css分别写在不同文件当中这么简单，要从更深层次上去进行理解。本课程通过3个案例，分别从不同角度，对结构和表现分离的思想进行了展示和分析。</p>
		<span>10分钟之前</span>
	</div>
</body>
</html>

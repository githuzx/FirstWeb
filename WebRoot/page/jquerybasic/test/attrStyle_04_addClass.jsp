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
<title>.addClass()</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
<style type="text/css">
.up,.down {
	height: 80px;
}

.up div,.down div {
	width: 70px;
	height: 70px;
	padding: 5px;
	margin: 5px;
	float: left;
	text-align: center;
}

.up div {
	border: 1px dotted red;
	color: #ccc;
}

.down div {
	border: 1px dashed blue;
	color: #57D452;
}

.upAdd0 {
	background: #eee;
}

.upAdd1 {
	background: #57D452;
}

.downAdd0 {
	background: pink;
}

.downAdd1 {
	background: #ddd;
}
</style>
</head>

<body>
	<h3>.addClass()</h3>
	<div class="up">
		<div>
			<p>p:1st</p>
		</div>
		<div>
			<p>p:2nd</p>
		</div>
	</div>
	<h3></h3>
	<div class="down">
		<div class="aa bb org">
			<p>p:3rd</p>
		</div>
		<div class="bb cc org">
			<p>p:4th</p>
		</div>
	</div>
	<script type="text/javascript">
		$('.up div:first').addClass('upAdd0');
		$('.up div:last').addClass('upAdd1');
		$("div").addClass(function(index, className) {
			if (className.indexOf('aa') != -1) {
				$(this).addClass('downAdd0');
			}
		});
		$("div").addClass(function(index, className) {
			if (className.indexOf('cc') != -1) {
				$(this).addClass('downAdd1');
			}
		});
	</script>
</body>
</html>

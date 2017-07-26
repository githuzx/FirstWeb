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
<title>三列布局</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
body {
	margin: 0;
	padding: 0;
}

div {
	text-align: center;
	font-weight: bold;
	line-height: 50px;
	font-size: 30px;
}

.wrapper {
	border: 1px solid #ccc;
	margin-bottom: 98px;
}

.left {
	width: 200px;
	height: 600px;
	background: #ccc;
	position: absolute;
	left: 0;
	top: 0
}

.middle {
	height: 600px;
	margin: 0 310px 0 210px;
	background: #9CF;
}

.right {
	height: 600px;
	width: 300px;
	right: 0;
	top: 0;
	position: absolute;
	background: #FCC;
}

.left_unfixed {
	width: 20%;
	top: 700px;
}

.middle_unfixed {
	margin: 0 20%;
}

.right_unfixed {
	width: 20%;
	top: 700px;
}

.left_lrFixed {
	width: 240px;
	top: 1400px;
}

.middle_lrFixed {
	margin: 0 240px;
}

.right_lrFixed {
	width: 240px;
	top: 1400px;
}
</style>
</head>

<body>
	<div class="wrapper">
		<div class="left">left</div>
		<div class="middle">middle</div>
		<div class="right">right</div>
	</div>

	<div class="wrapper">
		<div class="left_unfixed left">left</div>
		<div class="middle_unfixed middle">middle</div>
		<div class="right_unfixed right">right</div>
	</div>

	<div class="wrapper">
		<div class="left_lrFixed left">left</div>
		<div class="middle_lrFixed middle">middle</div>
		<div class="right_lrFixed right">right</div>
	</div>
</body>
</html>

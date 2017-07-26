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
<title>二列布局</title>
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
	font-size: 30px;
	font-weight: bold;
	line-height: 50px;
}

h4 {
	text-align: center;
	color: blue;
	font-size: 24px;
	font-weight: normal;
}

.main {
	width: 960px;
	height: 600px;
	margin: 0 auto;
}

.left {
	width: 300px;
	height: 600px;
	float: left;
	background: #ccc;
}

.right {
	width: 660px;
	height: 600px;
	float: right;
	background: #FCC;
}

.main_centerUnfixed {
	width: 80%;
}

.left_centerUnfixed {
	width: 20%;
}

.right_centerUnfixed {
	width: 80%;
}

.left_unfixed {
	width: 20%;
}

.right_unfixed {
	width: 80%;
}
</style>
</head>

<body>
	<h4>—practice—</h4>
	<div class="main">
		<div class="left">left</div>
		<div class="right">right</div>
	</div>

	<h4>—center unfixed—</h4>
	<div class="main_centerUnfixed main">
		<div class="left_centerUnfixed left">left</div>
		<div class="right_centerUnfixed right">right</div>
	</div>

	<h4>—unfixed—</h4>
	<div class="left_unfixed left">left</div>
	<div class="right_unfixed right">right</div>
</body>
</html>

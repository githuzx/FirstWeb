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
<title>混合布局</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	font-size: 30px;
}

div {
	text-align: center;
	font-weight: bold;
}

h4 {
	font-size: 24px;
	color: blue;
	font-weight: normal;
	text-align: center;
}

.head {
	height: 100px;
	background: #9CF;
}

.left {
	width: 20%;
	height: 600px;
	background: #ccc;
	float: left;
}

.right {
	width: 80%;
	height: 600px;
	background: #FCC;
	float: right;
}

.footer {
	height: 50px;
	background: #9F9;
	clear: both;
}

.head_fixed,.main_fixed,.footer_fixed {
	width: 960px;
	margin: 0 auto;
}

.left_fixed {
	width: 240px;
}

.right_fixed {
	width: 720px;
}

.r_sub_left {
	width: 520px;
	height: 600px;
	background: #9C3;
	float: left;
}

.r_sub_right {
	width: 200px;
	height: 600px;
	background: #9FC;
	float: right;
}

/*unfixed*/
.unfixed_left,.unfixed_right {
	width: 20%;
}

.unfixed_main {
	margin: 0 20%;
	height: 600px;
	background: #9CC;
}
</style>
</head>

<body>
	<h4>—01—</h4>
	<div class="head">head</div>
	<div class="left">left</div>
	<div class="right">right</div>

	<h4>—02—</h4>
	<div class="head_fixed head">head</div>
	<div class="main_fixed">
		<div class="left_fixed left">left</div>
		<div class="right_fixed right">right</div>
	</div>
	<div class="footer_fixed footer">footer</div>

	<h4>—03—</h4>
	<div class="head_fixed head">head</div>
	<div class="main_fixed">
		<div class="left_fixed left">left</div>
		<div class="right_fixed right">
			<div class="r_sub_left">sub_left</div>
			<div class="r_sub_right">sub_right</div>
		</div>
	</div>
	<div class="footer_fixed footer">footer</div>

	<h4>—04—</h4>
	<div class="head_unfixed head">head</div>
	<div class="main_fixed">
		<div class="left_fixed left">left</div>
		<div class="right_fixed right">
			<div class="r_sub_left">sub_left</div>
			<div class="r_sub_right">sub_right</div>
		</div>
	</div>
	<div class="footer_unfixed footer">footer</div>

	<h4>—自适应—</h4>
	<div class="head">head</div>
	<div class="unfixed_left left">left</div>
	<div class="unfixed_right right">right</div>
	<div class="unfixed_main">main</div>
	<div class="footer">footer</div>
</body>
</html>

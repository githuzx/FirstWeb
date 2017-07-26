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
<title>一列布局</title>
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
	text-align: center;
}

div {
	font-weight: bold;
}

h4 {
	color: blue;
	font-size: 24px;
	font-weight: normal;
}

.main,.footer {
	width: 960px;
	margin: 0 auto;
}

.head {
	width: 100%;
	height: 100px;
	background: #ccc;
}

.main {
	height: 600px;
	background: #FCC;
}

.footer {
	height: 50px;
	background: #9CF;
}

.head_fixed,.main_fixed,.footer_fixed {
	width: 960px;
	margin: 0 auto;
}

.head_unfixed,.main_unfixed,.footer_unfixed {
	width: 80%;
	margin: 0 auto;
}
</style>
</head>

<body>
	<h4>—practice—</h4>
	<div class="head">head</div>
	<div class="main">main</div>
	<div class="footer">footer</div>

	<h4>—fixed—</h4>
	<div class="head_fixed head">head</div>
	<div class="main_fixed main">main</div>
	<div class="footer_fixed footer">footer</div>

	<h4>—unfixed—</h4>
	<div class="head_unfixed head">head</div>
	<div class="main_unfixed main">main</div>
	<div class="footer_unfixed footer">footer</div>
</body>
</html>

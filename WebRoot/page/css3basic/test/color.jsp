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
<title>颜色</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
/*rgba*/
div {
	background: url(http://static.mukewang.com/static/img/logo_index.png);
	padding: 20px;
	margin-bottom: 20px;
}

.p1 {
	font-size: 42px;
	text-align: center;
	font-weight: bold;
	background: rgba(255, 255, 255, 0.5);
}

.p2 {
	width: 400;
	height: 150px;
	line-height: 150px;
	font-size: 42px;
	text-align: center;
	font-weight: bold;
	margin: 0 auto;
	color: #000;
	background-image: linear-gradient(to left top, red, green, blue);
	font-size: 24px;
	height: 150px;
	color: #000;
}
</style>
</head>

<body>
	<!-- rgba -->
	<div>
		<p class="p1">背景半透明的?</p>
	</div>

	<!-- gradient -->
	<p class="p2">右下角向左上角的线性渐变背景</p>
</body>
</html>

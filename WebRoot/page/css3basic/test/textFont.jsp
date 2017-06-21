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
<title>文字与字体</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
div {
	margin: 20px;
}

/*text-overflow*/
.test_overflow {
	width: 200px;
	background: #ccc;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
}

/*font-face*/
@font-face {
	font-family: "MOOC Font";
	src: url("http://www.imooc.com/Amaranth-BoldItalic.otf");
}

.text_face {
	width: 340px;
	padding: 30px;
	color: #566F89;
	background: #000;
	font-size: 58px;
	font-family: "MOOC Font";
}

/*text-shadow*/
.test_shadow {
	width: 340px;
	padding: 30px;
	font: bold 55px/100% "微软雅黑";
	background: #C5DFF8;
	text-shadow: 2px 2px 0 red;
}
</style>
</head>

<body>
	<!-- text-overflow -->
	<div class="test_overflow">超酷的IT技术学习平台（我是省略号）</div>

	<!-- font-face -->
	<div class="text_face">IMOOC</div>

	<!-- text-shadow -->
	<div class="test_shadow">IMOOC</div>
</body>
</html>

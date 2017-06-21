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

<title>边框</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<style type="text/css">
div {
	text-align: center;
	font-family: sans-serif;
	font-size: 14px;
	margin: 20px;
}

/*圆角*/
.circle {
	height: 100px;
	width: 100px;
	background: #33CC00;
	border-radius: 50px;
}

.semi-circle {
	height: 100px;
	width: 50px;
	background: #33CC00;
	border-radius: 50px 0 0 50px;
}

/*阴影 red:#f00 green:#33CC00*/
.boxshadow_outset {
	width: 100px;
	height: 100px;
	box-shadow: 4px 4px 6px #666;
}

.boxshadow_inset {
	width: 100px;
	height: 100px;
	box-shadow: 4px 4px 6px #666 inset;
}

.boxshadow_multi {
	width: 100px;
	height: 100px;
	box-shadow: -4px -2px 6px #000, /*black*/                           
	                           4px 2px 6px #f00, /*red*/    
		                       
	                           0px 0px 12px 5px #33cc00 inset; /*green*/
}

/*边框图片*/
.border_image {
	width: 450px;
	height: 100px;
	margin: 0 auto;
	line-height: 100px;
	text-align: center;
	font-size: 30px;
	border: 15px solid #ccc;
	border-image: url(http://img.mukewang.com/52e22a1c0001406e03040221.jpg)
		15 repeat;
}
</style>

</head>

<body>
	<!-- 圆角 -->
	<div class="circle">圆</div>
	<div class="semi-circle">左半圆</div>

	<!-- 阴影 -->
	<div class="boxshadow_outset">外阴影</div>
	<div class="boxshadow_inset">内阴影</div>
	<div class="boxshadow_multi">多阴影</div>

	<!-- 边框图片 -->
	<div class="border_image">请为我镶嵌上漂亮的画框吧</div>
</body>
</html>

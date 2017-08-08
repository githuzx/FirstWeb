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
<title>.css()与.addClass()设置样式的区别</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
<style type="text/css">
.left div {
	width: 80px;
	height: 80px;
	margin: 5px;
	padding: 5px;
	font-size: 12px;
	float: left;
}

a {
	display: block;
	line-height: 24px;
}

.bg-eee {
	background: #eee;
}

.addBorderBlue {
	border: 1px dashed blue;
}

.addBorderRed {
	border: 1px dotted red;
}
</style>
</head>

<body>
	<h2>.css()与.addClass()区别</h2>
	<div class="left">
		<div class="up">
			<a>css>addClass</a> <a>1.addClass(bg)</a> <a>2.css(bg)</a>
		</div>
		<div class="down">
			<a>Google</a> <a>Facebook</a> <a>Alibaba</a>
		</div>
	</div>
	<script type="text/javascript">
		$('.up,.down').addClass('bg-eee');

		$('.up').addClass('addBorderBlue');
		$('.up').css("color", "#57D452");

		$('.down').addClass('addBorderRed');
		$('.down').css("color", "#ccc");
	</script>
</body>
</html>

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
<title>id选择器</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
div {
	width: 100px;
	height: 90px;
	float: left;
	padding: 5px;
	margin: 5px;
	background: #EEE;
}
</style>
<script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
</head>

<body>
	<div id="aaron">
		<p>id="aaron"</p>
		<p>选中</p>
	</div>
	<div id="imooc">
		<p>id="imooc"</p>
		<p>jQuery选中</p>
	</div>
	<div id="imooc">
		<p>id="imooc"</p>
		<p>jQuery未选中</p>
	</div>

	<!-- 通过原生方法处理 -->
	<script type="text/javascript">
		var div = document.getElementById('aaron');
		div.style.border = "3px solid blue";
	</script>

	<!-- 通过jQuery直接传入id -->
	<script type="text/javascript">
		$("#imooc").css("border", "3px solid red");
	</script>
</body>
</html>

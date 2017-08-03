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
<title></title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
<style type="text/css">
div {
	width: 100px;
	height: 90px;
	float: left;
	margin: 5px;
	padding: 5px;
	background: #eee;
}
</style>
</head>

<body>
	<div class="aaron">
		<p>class="aaron"</p>
		<p>选中</p>
	</div>
	<div class="aaron">
		<p>class="aaron"</p>
		<p>选中</p>
	</div>
	<div class="imooc">
		<p>class="imooc"</p>
		<p>jQuery选中</p>
	</div>
	<div class="imooc">
		<p>class="imooc"</p>
		<p>jQuery选中</p>
	</div>

	<!-- 通过原生方法处理 -->
	<script type="text/javascript">
		var divs = document.getElementsByTagName('div');
		for ( var i = 0; i < divs.length; i++) {
			divs[i].style.border = "3px solid blue";
		}
	</script>

	<!-- 通过jQuery直接传入标签名p -->
	<script type="text/javascript">
		$("p").css("border", "3px solid red");
	</script>
</body>
</html>

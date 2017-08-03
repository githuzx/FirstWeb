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

	<!-- 原生方法 -->
	<script type="text/javascript">
		var elements1 = document.getElementsByTagName('*');
	</script>

	<!-- jQuery -->
	<script type="text/javascript">
		var elements2 = $("*");
		if (elements1.length === elements2.length) {
			$("*").css("border", "1px solid red");
		}
	</script>
</body>
</html>

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
<title>可见性筛选选择器</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
<style type="text/css">
a {
	color: blue;
	padding: 10px;
}

.left div {
	width: 120px;
	height: 120px;
	margin: 5px;
	padding: 5px;
	float: left;
	background: #eee;
	border: 1px solid #ccc;
	font-size: 12px;
}
</style>
</head>

<body>
	<h2>可见性筛选选择器</h2>
	<h3>:visible/:hidden</h3>
	<div class="left">
		<div class="div">
			<a href="#">display</a>
			<p id="p1" style="display:none">标签p</p>
		</div>
		<div class="div">
			<a href="#">width=height=0</a>
			<p id="p2" style="width:0;height:0;">标签p</p>
		</div>
		<div class="div">
			<a href="#">visibility|opacity</a>
			<p id="p3" style="visibility:hidden;opacity:0;">标签p</p>
		</div>
	</div>
	<p id="show"></p>

	<script type="text/javascript">
		function show(ele) {
			if (ele instanceof jQuery)
				$("#show").html("元素的长度=" + ele.length);
			else
				alert(ele + "不是jQuery对象");
		}

		show($('#p1:visible'));
	</script>
</body>
</html>
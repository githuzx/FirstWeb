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
<title>基本筛选选择器</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
<style type="text/css">
.left {
	height: 120px;
}

.left div {
	width: 70px;
	height: 70px;
	padding: 5px;
	margin: 5px;
	float: left;
	background: #eee;
	border: 1px solid #ccc;
}
</style>
</head>

<body>
	<h2>基本筛选器</h2>
	<h3>:first/:last/:even/:odd</h3>
	<div class="left">
		<div class="div">
			<p>:even</p>
			<p>div:first</p>
		</div>
		<div class="div">
			<p>:odd</p>
		</div>
		<div class="div">
			<p>:even</p>
		</div>
		<div class="div">
			<p>:odd</p>
		</div>
		<div class="div">
			<p>:even</p>
		</div>
		<div class="div">
			<p>:odd</p>
			<p>div:last</p>
		</div>
	</div>
	<script type="text/javascript">
		$(".div:first").css("color", "#ccc");
		$(".div:last").css("color", "#57D452");
		$(".div:even").css("border", "1px dotted red");
		$(".div:odd").css("border", "1px dashed blue");
	</script>

	<h3>:eq/:gt/:lt</h3>
	<div class="left">
		<div class="aaron">
			<p>0</p>
			<p>:lt(3)</p>
		</div>
		<div class="aaron">
			<p>1</p>
			<p>:lt(3)</p>
		</div>
		<div class="aaron">
			<p>2</p>
			<p>:eq(2)</p>
		</div>
		<div class="aaron">
			<p>3</p>
		</div>
		<div class="aaron">
			<p>4</p>
			<p>:gt(3)</p>
		</div>
		<div class="aaron">
			<p>5</p>
			<p>:gt(3)</p>
		</div>
	</div>
	<script type="text/javascript">
		$(".aaron:eq(2)").css("border", "1px dotted #57D452");
		$(".aaron:gt(3)").css("border", "1px dashed blue");
		$(".aaron:lt(2)").css("border", "1px dotted red");
		$(".aaron:lt(2)").css("color", "#ccc");
		$(".aaron:gt(3)").css("color", "#aaa");
	</script>

	<h3>:not</h3>
	<div class="left">
		<div>
			<input type="checkbox" name="g" />
			<p>Google</p>
		</div>
		<div>
			<input type="checkbox" name="a" />
			<p>Alibaba</p>
		</div>
		<div>
			<input type="checkbox" name="f" checked />
			<p>Facebook</p>
		</div>
	</div>
	<script type="text/javascript">
		$("input:not(:checked)+p").css("background-color", "#57D452");
		$("input:not(:checked)+p").css("border", "1px dashed blue");
	</script>
</body>
</html>

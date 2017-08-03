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
<title>内容筛选选择器</title>
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
	margin: 5px;
	padding: 5px;
	float: left;
	background: #eee;
	border: 1px solid #ccc;
}
</style>
</head>

<body>
	<h2>内容筛选选择器</h2>
	<h3>:contains/:has</h3>
	<div class="left">
		<div class="div">
			<p>:contains</p>
		</div>
		<div class="div">
			<p>:contains</p>
		</div>
		<div class="div">
			<p>
				<span>:has</span>
			</p>
		</div>
		<div class="div">
			<p>
				<span>:has</span>
			</p>
		</div>
	</div>
	<script type="text/javascript">
		$(".div:contains(':contains')").css("border", "1px dotted red");
		$(".div:has(span)").css("border", "1px dashed blue");
		$(".div:contains(':contains')").css("color", "#aaa");
		$(".div:has(span)").css("color", "#57D452");
	</script>

	<h3>:parent/:empty</h3>
	<div class="left">
		<div class="aaron">
			<a>:parent</a>
		</div>
		<div class="aaron">
			<a></a>
		</div>
		<div class="aaron">
			<a></a>
		</div>
		<div class="aaron">
			<a></a>
		</div>
	</div>
	<script type="text/javascript">
		$("a:parent").css("border", "1px dotted #57D452");
		$("a:empty").text(":empty").css("border", "1px dashed blue");
	</script>
</body>
</html>
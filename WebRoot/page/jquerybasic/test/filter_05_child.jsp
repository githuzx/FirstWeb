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
<title>子元素筛选选择器</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
<style type="text/css">
a {
	display: block;
	margin-bottom: 5px;
}

.left {
	height: 120px;
}

.left div {
	width: 100px;
	height: 100px;
	padding: 5px;
	margin: 5px;
	float: left;
	background: #eee;
	border: 1px solid #ccc;
}
</style>
</head>

<body>
	<h2>子元素筛选选择器</h2>
	<h3>:first-child/:last-child/:only-child</h3>
	<div class="left first-div">
		<div class="div">
			<a>1st</a> <a>2nd</a> <a>3rd</a>
		</div>
		<div class="div">
			<a>1st</a>
		</div>
		<div class="div">
			<a>1st</a> <a>2nd</a> <a>3rd</a>
		</div>
	</div>
	<script type="text/javascript">
		$('.first-div a:first-child').css("border", "1px dotted red");
		$('.first-div a:last-child').css("border", "1px dashed blue");
		$('.first-div a:last-child').css("background", "#57D452");
		$('.first-div a:only-child').css("border", "1px solid lime");
	</script>


	<h3>:nth-child/:nth-last-child</h3>
	<div class="left last-div">
		<div class="div">
			<a>1st</a> <a>2nd</a> <a>3rd</a> <a>4th</a>
		</div>
		<div class="div">
			<a>1st</a> <a>2nd</a>
		</div>
		<div class="div">
			<a>1st</a> <a>2nd</a> <a>3rd</a> <a>4th</a>
		</div>
	</div>
	<script type="text/javascript">
		$('.last-div a:nth-child(2)').css("border", "1px dotted red");
		$('.last-div a:nth-last-child(2)').css("border", "1px dashed blue");
		$('.last-div a:nth-last-child(2)').css("background", "#57D452");
	</script>
</body>
</html>

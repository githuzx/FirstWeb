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
<title>html()及.text()</title>
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
	width: 100px;
	height: 100px;
	margin: 5px;
	padding: 5px;
	float: left;
	background: #eee;
	border: 1px solid #ccc;
}

a,p {
	display: block;
	color: #ccc;
	margin-bottom: 5px;
}
</style>
</head>

<body>
	<h3>.html及.text()</h3>
	<div class="left">
		<div class="div">
			<a>1st</a> <a>2nd</a> <a>3rd</a>
		</div>
		<div class="div">
			<a>.1st</a> <a>.2nd</a> <a>.3rd</a>
		</div>
	</div>
	<h4>显示通过html方法获取到的内容</h4>
	<p></p>
	<h4>显示通过text方法获取到的内容</h4>
	<p></p>
	<script type="text/javascript">
		$('p:first').html($(".left").html());
		$('p:last').text($(".left").text());
		$('.left a:first').text('text');
		$('.left div:last').html('整个div的子节点都被替换了');
		$('.left a:eq(1)').text(function(index, text) {
			return 'pj ' + text
		});
	</script>
</body>
</html>

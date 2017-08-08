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
<title>表单元素选择器</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
<style type="text/css">
input {
	display: block;
	margin: 10px;
	padding: 10px;
}
</style>
</head>

<body>
	<h2>表单元素选择器</h2>
	<h3>input/text/password/radio/checkbox/submit/image/reset/button/file</h3>
	<div class="left">
		<form>
			<input type="text" value="text类型" /> <input type="password"
				value="password" /> <input type="radio" /> <input type="checkbox" />
			<input type="submit" /> <input type="image"
				src="resource/images/art/zty_7.jpg" width="85px" height="128px" />
			<input type="reset" /> <input type="button" value="Button" /> <input
				type="file" />
		</form>
	</div>
	<script type="text/javascript">
		$(':input').css("border", "1px solid #ccc");

		$('input:text').css("background", "#57D452");
		$('input:password').css("background", "yellow");
		$('input:radio').attr('checked', 'true');
		$('input:checkbox').attr('checked', 'true');
		$('input:submit').css("background", "#C6E2FF");
		$('input:image').css("background", "#fff");
		$('input:reset').css("background", "#aaa");
		$('input:button').css("background", "red");
		$('input:file').css("background", "purple");
	</script>
</body>
</html>

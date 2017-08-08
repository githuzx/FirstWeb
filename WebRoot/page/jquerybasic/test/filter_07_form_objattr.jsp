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
<title>表单对象属性筛选选择器</title>
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
	<h2>表单对象属性筛选选择器</h2>
	<h3>enabled/disabled</h3>
	<form>
		<input type="text" value="未设置disabled" /> <input type="text"
			value="设置disabled" disabled="disabled" />
	</form>
	<script type="text/javascript">
		$('input:enabled').css("border", "1px dotted red");
		$('input:disabled').css("border", "1px dashed blue");
	</script>

	<h3>checked/selected</h3>
	<form>
		<input type="checkbox" checked="checked" /> <input type="checkbox" /><input
			type="radio" checked="checked" /> <input type="radio" /><select
			name="marketValue" multiple="multiple">
			<option>Mac</option>
			<option selected="selected">Google</option>
			<option>Microsoft</option>
			<option>Am</option>
			<option selected="selected">Facebook</option>
			<option selected="selected">Alibaba</option>
		</select>
	</form>
	<script type="text/javascript">
		$('input:checked').css("border", "1px dashed #57D452");
		$('option:selected').css("border", "1px dashed #57D452");
	</script>
</body>
</html>

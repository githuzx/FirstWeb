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
<title>.val()</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
<style type="text/css">
select,input,p {
	margin: 20px;
	display: block;
}
</style>
</head>

<body>
	<h3>.val()</h3>
	<select id="single">
		<option>Google</option>
		<option>Facebook</option>
		<option>Alibaba</option>
	</select>
	<select id="multiple" multiple="multiple">
		<option selected="selected">Google</option>
		<option>Facebook</option>
		<option selected="selected">Alibaba</option>
	</select>
	<input type="text" value="click a button" />
	<p></p>
	<p></p>
	<script type="text/javascript">
		$("p:first").text($("#single").val());
		$("p:last").text($("#multiple").val());
		$("input[type='text']").val('modify');
	</script>
</body>
</html>

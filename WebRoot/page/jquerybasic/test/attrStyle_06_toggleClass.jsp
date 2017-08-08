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
<title>toggleClass()</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
<style type="text/css">
table {
	width: 20%;
	border: 1px dashed #ccc;
}

td {
	font-size: 12px;
	line-height: 24px;
}

.odd {
	background: #57D452;
}
</style>
</head>

<body>
	<h3>.toggleClass()</h3>
	<table id="table">
		<tr>
			<td>第1行,第1列</td>
			<td>第1行,第2列</td>
		</tr>
		<tr>
			<td>第2行,第1列</td>
			<td>第2行,第2列</td>
		</tr>
		<tr>
			<td>第3行,第1列</td>
			<td>第3行,第2列</td>
		</tr>
		<tr>
			<td>第4行,第1列</td>
			<td>第4行,第2列</td>
		</tr>
		<tr>
			<td>第5行,第1列</td>
			<td>第5行,第2列</td>
		</tr>
	</table>
	<script type="text/javascript">
		$("#table tr").toggleClass("odd");
		$("#table tr:odd").toggleClass("odd");
		$("#table tr:even").toggleClass("odd", true);
	</script>
</body>
</html>

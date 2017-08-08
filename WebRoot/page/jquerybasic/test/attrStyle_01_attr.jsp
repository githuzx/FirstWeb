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
<title>.attr()与removeAttr()</title>
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
	background: #eee;
	border: 1px solid #ccc;
	width: 200px;
}
</style>
</head>

<body>
	<h3>.attr()与.removeAttr()</h3>
	<form>
		<input type="text" value="set" /> <input type="text" value="get" />
		<input type="text" value="callback pj" /> <input type="text"
			value="del" />
	</form>
	<script type="text/javascript">
		$("input:first").attr('value', '新value');
		$("input:eq(1)").attr('value');
		$("input:eq(2)").attr('value', function(i, val) {
			return '通过function设置' + val;
		});
		$("input:eq(3)").removeAttr('value');
	</script>
</body>
</html>

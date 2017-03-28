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
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>dev</title>
<style type="text/css">
</style>
</head>

<body>
	<a href="page/html.jsp" target="_blank" title="Html标签">html.jsp</a>
	<a href="page/style.jsp" target="_blank" title="Cascading Style Sheets">css.jsp</a>
	<a href="page/script.jsp" target="_blank" title="JavaScript入门篇">script.jsp</a>
	<a href="page/mysql.jsp" target="_blank" title="与MySQL的零距离接触">mysql.jsp</a>
</body>
</html>
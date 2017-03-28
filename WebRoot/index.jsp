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
<title>develop</title>
<style type="text/css">
body {
	margin: 20px;
}

li {
	margin: 10px;
}

a {
	color: blue;
	font-size: 18px;
	padding: 10px;
}
</style>
</head>

<body>
	<ul>
		<!-- HTML -->
		<li>HTML/CSS:
			<ol>
				<li><a href="page/html.jsp" target="_blank"
					title="HTML+CSS基础课程">html.jsp</a>
				</li>
				<li><a href="page/style.jsp" target="_blank"
					title="HTML+CSS基础课程">style.jsp</a>
				</li>
			</ol>
		</li>


		<!-- JavaScript -->
		<li>JavaScript:
			<ol>
				<li><a href="page/script.jsp" target="_blank"
					title="JavaScript入门篇">script.jsp</a>
				</li>
				<li><a href="page/script_advanced.jsp" target="_blank"
					title="JavaScript进阶篇">advanced.jsp</a></li>
			</ol>
		</li>


		<!-- MySQL -->
		<li>MySQL:
			<ol>
				<li><a href="page/mysql.jsp" target="_blank"
					title="与MySQL的零距离接触">mysql.jsp</a>
				</li>
			</ol>
		</li>
	</ul>
</body>
</html>
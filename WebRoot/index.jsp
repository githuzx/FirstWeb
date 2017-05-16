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
				<li><a href="page/htmlcss_html.jsp" target="_blank"
					title="HTML+CSS基础课程">html.jsp</a>
				</li>
				<li><a href="page/htmlcss_style.jsp" target="_blank"
					title="HTML+CSS基础课程">style.jsp</a>
				</li>
				<li><a href="page/htmlcss_layoutbasic.jsp" target="_blank"
					title="网页布局基础">layoutbasic.jsp</a> <!-- practice --> <a
					href="page/layoutbasic/jimmysBooks.jsp" target="_blank"
					title="幾米的书">①jimmysBooks.jsp</a> <a
					href="page/layoutbasic/tencentSoftware.jsp" target="_blank"
					title="腾讯软件中心">②tencentSoftware.jsp</a> <a
					href="page/layoutbasic/webDevCourse.jsp" target="_blank"
					title="前端开发教程">③webDevCourse.jsp</a> <a
					href="page/layoutbasic/iCIBA.jsp" target="_blank" title="爱词霸">④iCIBA.jsp</a>
				</li>
			</ol>
		</li>

		<!-- JavaScript -->
		<li>JavaScript:
			<ol>
				<li><a href="page/javascript_basic.jsp" target="_blank"
					title="JavaScript入门篇">basic.jsp</a>
				</li>
				<li><a href="page/javascript_advanced.jsp" target="_blank"
					title="JavaScript进阶篇">advanced.jsp</a></li>
			</ol>
		</li>


		<!-- MySQL -->
		<li>DB:
			<ol>
				<li><a href="page/db_mysql.jsp" target="_blank"
					title="与MySQL的零距离接触">mysql.jsp</a>
				</li>
			</ol>
		</li>

		<!-- WebTool -->
		<li>WebTool:
			<ol>
				<li><a href="page/webtool_dw.jsp" target="_target"
					title="前端开发工具技巧介绍——DW篇">dw.jsp</a>
				</li>
			</ol></li>
	</ul>
</body>
</html>
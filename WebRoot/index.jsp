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
	font-size: 16px;
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
		<!-- HTML/CSS -->
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
				<li><a href="page/htmlcss_layout.jsp" target="_blank"
					title="如何用CSS进行网页布局">layout.jsp</a>
				</li>
				<li><a href="page/htmlcss_art.jsp" target="_blank"
					title="网页简单布局之结构与表现原则">art.jsp</a>
				</li>
				<li><a href="page/htmlcss_corpsite.jsp" target="_blank"
					title="企业网站综合布局实战">corpsite.jsp</a> <!-- practice -->
					&nbsp;&nbsp;&nbsp;<a href="page/layoutbasic/corpsite/index.jsp"
					target="_blank" title="慕课网">①imooc.jsp</a>
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
				<li><a href="page/javascript_profoundsimp.jsp" target="_blank"
					title="JavaScript深入浅出">profoundsimp.jsp</a></li>
			</ol>
		</li>

		<!-- jQuery -->
		<li>jQuery:
			<ol>
				<li><a href="page/jquery_basic_style.jsp" target="_blank"
					title="jQuery基础(一)——样式篇">style.jsp</a></li>
			</ol>
		</li>

		<!-- DB -->
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
				<li><a href="page/webtool_ps.jsp" target="_blank"
					title="前端工程师必备的PS技巧——切图篇">ps.jsp</a></li>
				<li><a href="page/webtool_sublime.jsp" target="_blank"
					title="前端开发工具技巧介绍——Sublime篇">sublime.jsp </a></li>
				<li><a href="page/webtool_git.jsp" target="_blank"
					title="版本控制入门——搬进Github">git.jsp </a></li>
			</ol></li>

		<!-- CSS3 -->
		<li>CSS3:
			<ol>
				<li><a href="page/css3_basic.jsp" target="_blank"
					title="十天精通CSS3">basic.jsp</a> <!-- practice --> <a
					href="page/css3basic/helloCSS3.jsp" target="_blank"
					title="Hello CSS3">①helloCSS3.jsp</a> <a
					href="page/css3basic/doraemon.jsp" target="_blank" title="哆啦A梦">②doraemon.jsp</a>
					<a href="page/css3basic/icFba.jsp" target="_blank" title="制作3D旋转导航">③icFba.jsp</a>
					<a href="page/css3basic/videoShow.jsp" target="_blank"
					title="制作3D旋转视频展示区">④videoShow.jsp</a>
				</li>
			</ol>
		</li>

		<!-- HTML5 -->
		<li>HTML5:
			<ol>
				<li><a href="page/html5_basic.jsp" target="_blank"
					title="HTML5之元素与标签结构">basic.jsp</a>
				</li>
			</ol>
		</li>
	</ul>
</body>
</html>
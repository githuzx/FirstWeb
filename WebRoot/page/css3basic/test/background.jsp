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

<title>背景</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
div {
	margin-bottom: 20px;
}

/*background-origin | background-clip*/
.wrap {
	width: 220px;
	border: 20px dashed #000;
	padding: 20px;
	font-weight: bold;
	color: #000;
	background: #ccc
		url(http://static.mukewang.com/static/img/logo_index.png) no-repeat;
	background-origin: content-box;
	position: relative;
}

.wrap span {
	position: absolute;
	left: 0;
	top: 0;
}

.content {
	height: 80px;
	border: 1px solid #333;
}

/*background-size*/
.demo_size {
	background: url(http://static.mukewang.com/static/img/logo_index.png)
		no-repeat;
	width: 300px;
	height: 140px;
	border: 1px solid #999;
	background-size: contain;
}

/*multiple backgrounds*/
.poker {
	width: 300px;
	height: 140px;
	border: 1px solid #ccc;
	background-image:
		url(http://img.mukewang.com/54cf2365000140e600740095.jpg),
		url(http://img.mukewang.com/54cf238a0001728d00740095.jpg),
		url(http://img.mukewang.com/54cf23b60001fd9700740096.jpg);
	background-position: left top, 100px 0, 200px 0;
	background-repeat: no-repeat, no-repeat, no-repeat;
	margin: 0 0 20px 0;
}

/*practise*/
.nav {
	width: 560px;
	height: 50px;
	font: bold 0/50px Arial;
	text-align: center;
	margin: 40px auto 0;
	background: #f65f57;
	/*制作导航圆角*/
	border-radius: 8px;
	/*制作导航立体效果*/
	box-shadow: 0 7px 0 #ba4a45;
}

.nav li {
	position: relative;
	display: inline-block;
	padding: 0 16px;
	font-size: 13px;
	text-shadow: 1px 2px 4px rgba(0, 0, 0, .5);
	list-style: none outside none;
}

.nav a {
	display: inline-block;
	-webkit-transition: all 0.2s ease-in;
	-moz-transition: all 0.2s ease-in;
	-o-transition: all 0.2s ease-in;
	-ms-transition: all 0.2s ease-in;
	transition: all 0.2s ease-in;
}

.nav a:hover {
	-webkit-transform: rotate(10deg);
	-moz-transform: rotate(10deg);
	-o-transform: rotate(10deg);
	-ms-transform: rotate(10deg);
	transform: rotate(10deg);
}

/*制作导航分隔线效果*/
.nav li::before,.nav li::after {
	content: "";
	position: absolute;
	top: 14px;
	height: 25px;
	width: 1px;
}

.nav li::after {
	right: 0;
	background: -moz-linear-gradient(top, rgba(255, 255, 255, 0),
		rgba(255, 255, 255, .2) 50%, rgba(255, 255, 255, 0) );
	background: -webkit-linear-gradient(top, rgba(255, 255, 255, 0),
		rgba(255, 255, 255, .2) 50%, rgba(255, 255, 255, 0) );
	background: -o-linear-gradient(top, rgba(255, 255, 255, 0),
		rgba(255, 255, 255, .2) 50%, rgba(255, 255, 255, 0) );
	background: -ms-linear-gradient(top, rgba(255, 255, 255, 0),
		rgba(255, 255, 255, .2) 50%, rgba(255, 255, 255, 0) );
	background: linear-gradient(top, rgba(255, 255, 255, 0),
		rgba(255, 255, 255, .2) 50%, rgba(255, 255, 255, 0) );
}

.nav li::before {
	left: 0;
	background: -moz-linear-gradient(top, #ff625a, #9e3e3a 50%, #ff625a);
	background: -webkit-linear-gradient(top, #ff625a, #9e3e3a 50%, #ff625a);
	background: -o-linear-gradient(top, #ff625a, #9e3e3a 50%, #ff625a);
	background: -ms-linear-gradient(top, #ff625a, #9e3e3a 50%, #ff625a);
	background: linear-gradient(top, #ff625a, #9e3e3a 50%, #ff625a);
}
/*删除导航第一个导航项左边的分隔线*/
.nav li:first-child::before {
	background: none;
}
/*删除导航最后一个导航右边的分隔线*/
.nav li:last-child::after {
	background: none;
}

.nav a,.nav a:hover {
	color: #fff;
	text-decoration: none;
}
</style>
</head>
<body>
	<!-- background-origin | background-clip -->
	<div class="wrap">
		<span>padding</span>
		<div class="content">content</div>
	</div>

	<!-- background-size -->
	<div class="demo_size"></div>

	<!-- multiple backgrounds -->
	<div class="poker"></div>

	<!-- practise -->
	<ul class="nav">
		<li><a href="">Home</a>
		</li>
		<li><a href="">About Me</a>
		</li>
		<li><a href="">Portfolio</a>
		</li>
		<li><a href="">Blog</a>
		</li>
		<li><a href="">Resources</a>
		</li>
		<li><a href="">Contact Me</a>
		</li>
	</ul>
</body>
</html>

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
<title>JavaScript进阶篇</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<!-- 系好安全带,准备启航 -->
	<h4>第1章 系好安全带,准备启航</h4>
	<pre>
.JavaScript能做什么?
 1.增强页面动态效果(如:下拉菜单、图片轮播、信息滚动等)
 2.实现页面与用户之间的实时、动态交互(如:用户注册、登录验证等)
 
.JS进阶篇学习什么?
 在JavaScript入门篇中,我们学习了如何插入JS、输出内容及简单的DOM操作,JavaScript进阶篇让您进一步的了解JS的变量、数组、函数、语法、对象、时间、DOM操作,制作简单的网页动态效果
    </pre>

</body>
</html>

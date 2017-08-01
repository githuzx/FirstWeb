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
<title>网页简单布局之结构与表现原则</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
li {
	margin: 10px;
	font-size: 16px;
}

a {
	color: blue;
	font-size: 18px;
	padding: 10px;
}

ul {
	list-style: none;
}

/*practice*/
body {
	margin: 0;
}

div {
	background: #460E29;
	width: 700px;
	padding: 20px
}

img {
	width: 95px;
	height: 95px;
	background: url(http://img.mukewang.com/5385ac820001905201440133.jpg);
	margin: 10px;
	padding: 1px 20px 37px 30px;
}
</style>
</head>

<body>
	<!-- Test -->
	<li>Test:
		<ol>
			<li><a title="微博用户发言信息列表制作" target="_blank"
				href="page/layoutbasic/test/art_blog.jsp">blog.jsp</a></li>
		</ol></li>


	<h4>第1章 结构与表现相关内容简介</h4>
	<pre>
//内容简介    
HTML → 结构(合理、简洁)、语义化    
CSS → 表现    
JavaScript → 行为
是一种思想,是随着技术发展|网页制作实际需要逐渐形成

//练习题
    </pre>

	<h4>第2章 结构与表现相分离的思想</h4>
	<pre>
//微博用户发言信息列表制作
不同的制作者对页面的结构和样式不同理解,根据对结构和表现理解深度不同
①初级人员思路及制作方法:2个浮动的div
②中级人员思路及制作方法:简化
③高级人员思路及制作方法:先按结构和语义编写代码;然后进行CSS样式设置;减少HTML与CSS契合度
  
//电话号码布局制作
text-indent:585px(文本缩进) 简洁、有效

//排行榜制作
margin:-(负值)
当拿到一张网页设计图时,先考虑设计图中的文字内容和内容模块之间的关系,重点放在编写html结构和语义化,然后考虑布局和表现形式。力求在不改变现有结构的基础上去完成设计图要求的视觉效果
  
//练习题  
    </pre>

	<h4>第3章 网页换肤及总结</h4>
	<pre>
//网页换肤及总结    
相同HTML结构,不同CSS样式(切换不同的CSS样式)。掌握制作思想,提高制作水平
  
//练习题

//编程挑战    
    </pre>

	<!-- practice -->
	<div>
		<img src="http://img.mukewang.com/5385acb000013b0d00950095.jpg" /><img
			src="http://img.mukewang.com/5385acb000013b0d00950095.jpg" /><img
			src="http://img.mukewang.com/5385acb000013b0d00950095.jpg" /><img
			src="http://img.mukewang.com/5385acb000013b0d00950095.jpg" />
	</div>
</body>
</html>

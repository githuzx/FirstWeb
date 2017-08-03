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
<title>层级选择器</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
<style type="text/css">
/*子选择器与后代选择器*/
.up,.down {
	width: 300px;
	height: 120px;
}

.up div,.down div {
	width: 100px;
	height: 90px;
	margin: 5px;
	padding: 5px;
	float: left;
	background: #bbffaa;
	border: 1px solid #ccc;
}

/*相邻兄弟选择器与一般兄弟选择器*/
.bottom {
	width: 800px;
}

.bottom div,.bottom span {
	display: block;
	width: 80px;
	height: 80px;
	margin: 5px;
	background: #bbffaa;
	float: left;
	font-size: 14px;
}

.bottom .small {
	width: 60px;
	height: 25px;
	font-size: 12px;
	background: #fab;
}
</style>
</head>

<body>
	<!--子选择器与后代选择器-->
	<h2>子选择器与后代选择器</h2>
	<div class="up">
		<div class="aaron">
			<p>div下的第一个p元素</p>
		</div>
		<div class="aaron">
			<p>div下的第一个p元素</p>
		</div>
	</div>
	<div class="down">
		<div class="imooc">
			<article>
			<p>div下的article下的p元素</p>
			</article>
		</div>
		<div class="imooc">
			<article>
			<p>div下的article下的p元素</p>
			</article>
		</div>
	</div>
	<script type="text/javascript">
	<!--子选择器-->
		$('div > p').css("border", "1px groove red");
	</script>

	<script type="text/javascript">
	<!--后代选择器-->
		$('div p').css("border", "1px groove red");
	</script>


	<!-- 相邻兄弟选择器与一般兄弟选择器 -->
	<h2>相邻兄弟选择器与一般兄弟选择器</h2>
	<div class="bottom">
		<div>兄弟节点div, +~选择器不能向前选择</div>
		<span class="prev">选择器span元素</span>
		<div>span后第一个兄弟节点div</div>
		<div>
			兄弟节点div
			<div class="small">子元素div</div>
		</div>
		<span>兄弟节点span,不可选</span>
		<div>兄弟节点div</div>
	</div>

	<script type="text/javascript">
	<!-- 相邻兄弟选择器(选取prev后面的第一个的div兄弟节点)-->
		$(".prev + div").css("border", "3px groove blue");
	</script>

	<script type="text/javascript">
	<!-- 一般相邻选择器(选取prev后面的所有的div兄弟节点)-->
		$(".prev ~ div").css("border", "3px groove blue");
	</script>
</body>
</html>

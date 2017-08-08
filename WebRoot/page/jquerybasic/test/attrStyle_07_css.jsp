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
<title>.css()</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
<style type="text/css">
p {
	margin: 0 0 10px 0;
	padding: 0px;
}

.left {
	height: 120px;
}

.left div {
	width: 70px;
	height: 70px;
	padding: 5px;
	margin: 5px;
	float: left;
	border: 1px solid #ccc;
	font-size: 12px;
}

.first {
	background-color: lightSkyBlue;
}

.second {
	color: red;
	font-size: 1.2em;
	background-color: #ccc;
}

.third {
	background-color: yellow;
}

.sixth {
	background-color: #40E0D0;
}
</style>
</head>

<body>
	<h3>获取css属性</h3>
	<div class="left">
		<div class="first">
			<p>bg-color</p>
			<p></p>
		</div>
		<div class="second">
			<p>font-size</p>
			<p></p>
		</div>
		<div class="third">
			<p>width-height</p>
			<p></p>
		</div>
	</div>
	<script type="text/javascript">
		$('.first p:last').text($('.first').css("background-color"));
		$('.second p:last').text($('.second').css("font-size"));
		var value = $('.third').css([ 'width', 'height' ]);
		$('.third p:last').text('w:' + value.width + ' h:' + value.height);
	</script>

	<h3>设置css属性</h3>
	<div class="left">
		<div class="fourth">bg-color、font-size</div>
		<div class="fifth">bg-color、font-size</div>
		<div class="sixth">width</div>
		<div class="seventh">font-size、bg-color、border</div>
	</div>
	<script type="text/javascript">
		$('.fourth').css("background-color", "red");
		$('.fourth').css("font-size", "13px");

		$('.fifth').css("background-color", "#57D452");
		$('.fifth').css("font-size", "0.6em");

		$('.sixth').css("width", function(index, value) {
			value = value.split('px');
			return (Number(value[0]) + 10) + value[1];
		})
		$('.sixth').css("height", function(index, value) {
			value = value.split('px');
			return (Number(value[0]) + 10) + value[1];
		})
		$('.seventh').css({
			'font-size' : "14px",
			"color" : "#57D452",
			"background-color" : "#eee",
			"border" : "1px dashed blue"
		});
	</script>
</body>
</html>

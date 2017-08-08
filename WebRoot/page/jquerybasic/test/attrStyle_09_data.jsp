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
<title>元素的数据存储</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
<style type="text/css">
p {
	margin: 0 0 10px 0;
	padding: 0;
	font-size: 12px;
}

span {
	font-size: 12px;
	color: #ccc;
	line-height: 24px;
}

.left,.right {
	height: 120px;
}

.left div,.right div {
	width: 80px;
	height: 80px;
	margin: 5px;
	padding: 5px;
	float: left;
	border: 1px solid #eee;
	background: #eee;
}
</style>
</head>

<body>
	<h3>jQuery.data()静态方法</h3>
	<div class="left">
		<div class="aaron">
			<p>jQuery.data</p>
			<p>点击查看结果</p>
		</div>
		<div>
			<span></span>
		</div>
	</div>
	<script type="text/javascript">
		$('.left').click(
				function() {
					var ele = $(this);

					//set
					$.data(ele, 'language', 'Java');
					$.data(ele, 'country', {
						name : "America"
					})

					//get
					var reset = $.data(ele, "language") + "</br>"
							+ $.data(ele, "country").name;
					ele.find('span').append(reset);
				})
	</script>

	<h3>.data()实例方法</h3>
	<div class="right">
		<div class="aaron">
			<p>.data</p>
			<p>点击查看结果</p>
		</div>
		<div>
			<span></span>
		</div>
	</div>
	<script type="text/javascript">
		$('.right').click(
				function() {
					var ele = $(this);

					//set
					ele.data("first", "Google");
					ele.data("second", "Facebook");
					ele.data("third", {
						name : "Alibaba"
					})

					//get
					var reset = ele.data("first") + "<br/>"
							+ ele.data("second") + "<br/>"
							+ ele.data("third").name;
					ele.find('span').append(reset);
				})
	</script>
</body>
</html>

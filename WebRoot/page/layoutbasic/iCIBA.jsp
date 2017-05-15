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
<title>爱词霸</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

#wrap {
	width: 870px;
	margin: 0 auto;
}

#mainbody {
	width: 100%;
	margin-top: 15px;
	position: relative;
}

#left {
	float: left;
	width: 110px;
	margin-right: 13px;
	border: 1px solid #999;
}

#mid {
	float: left;
	width: 650px;
	border: 1px solid #999;
}

#right {
	position: absolute;
	border: 1px solid #999;
	margin-left: 790px;
}
</style>
</head>

<body>
	<div id="wrap">
		<div id="header">
			<img src="http://img.mukewang.com/5369cd6e0001a15b09700088.jpg"
				width="970" height="88" />
		</div>
		<div id="mainbody">
			<div id="left">
				<img src="http://img.mukewang.com/5369cd0e00011e3901090487.jpg"
					width="109" height="487" />
			</div>
			<div id="mid">
				<img src="http://img.mukewang.com/5369cd3c00013e9e06490439.jpg"
					width="649" height="439" />
			</div>
			<div id="right">
				<p>欢迎使用金山软件出品的爱词霸，在线查询你英语词汇、句子释义</p>
				<img src="http://img.mukewang.com/5369cd540001d8e101770329.jpg"
					width="177" height="329" />
			</div>
		</div>
	</div>
</body>
</html>

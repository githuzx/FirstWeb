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
<title>属性筛选选择器</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
<style type="text/css">
a {
	font-size: 14px;
	color: blue;
}

.left {
	height: 120px;
}

.left div {
	width: 100px;
	height: 100px;
	padding: 5px;
	margin: 5px;
	float: left;
	background: #eee;
	border: 1px solid #ccc;
}
</style>
</head>

<body>
	<h2>属性筛选选择器</h2>
	<h3>[att=val]/[att]/[att|=val]/[att~=val]</h3>
	<div class="left" testattr="true">
		<div class="div" testattr="true" name="p1">
			<a>[att = val]</a>
		</div>
		<div class="div" testattr="true" p2>
			<a>[att]</a>
		</div>
		<div class="div" testattr="true" name="-">
			<a>[att |= val]</a>
		</div>
		<div class="div" testattr="true" name="a b">
			<a>[att ~= val]</a>
		</div>
	</div>
	<script type="text/javascript">
		$('div[name=p1]').css("border", "1px solid red");
		$('div[p2]').css("border", "1px solid #57D452");
		$('div[name|="-"]').css("border", "1px solid blue");
		$('div[name~="a"]').css("border", "1px solid orange");
	</script>

	<h3>[att^=val]/[att$=val]/[att*=val]/[att!=val]</h3>
	<div class="left" testattr="true">
		<div class="div" testattr="true" name="imooc-aaron">
			<a>[att ^= val]</a>
		</div>
		<div class="div" testattr="true" name="aaron-imooc">
			<a>[att $= val]</a>
		</div>
		<div class="div" testattr="true" name="attr-test-selector">
			<a>[att *= val]</a>
		</div>
		<div class="div" name="a b">
			<a>[att != val]</a>
		</div>
	</div>
	<script type="text/javascript">
		$('div[name^="imooc"]').css("border", "1px dashed red");
		$('div[name$="imooc"]').css("border", "1px dashed #57D452");
		$('div[name*="test"]').css("border", "1px dashed blue");
		$('div[testattr!="true"]').css("border", "1px dashed orange");
	</script>
</body>
</html>

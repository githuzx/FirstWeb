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
<title>布局样式相关</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
li {
	margin: 10px;
}

a {
	color: blue;
	font-size: 14px;
	margin: 10px;
}

/*CSS3多列布局 - Columns*/
.columns {
	width: 900px;
	margin: 20px;
	padding: 5px;
	border: 1px solid green;
	
	-webkit-column-count:3;
	-moz-column-count:3;
	-o-column-count:3;
	column-count:3;
	
	-webkit-column-gap: 2em;
	-moz-column-gap: 2em;
	-o-column-gap: 2em;
	column-gap: 2em;
	
	-webkit-column-rule:3px gray solid;
	-moz-column-rule:3px gray solid;
	-o-column-rule:3px gray solid;
	column-rule:3px gray solid;
}

.columns h2{
  background: green;
  padding: 10px;
  color: #fff;
}

.columns h2,p:nth-child(2n){
	-webkit-column-span:all;
	-moz-column-span:all;
	-o-column-span:all;
	column-span:all;
}

</style>
</head>

<body>
	<ol>
		<!-- CSS3多列布局 - Columns -->
		<li><a href="#">CSS3多列布局 - Columns</a>
			<div class="columns">
				<h2>我要分列显示</h2>
				<p>为了能在Web页面中方便实现类似报纸、杂志那种多列排版的布局，W3C特意给CSS3增加了一个多列布局模块（CSS
					Multi Column Layout
					Module）。它主要应用在文本的多列布局方面。对于文本的多列布局，我想大家并不陌生，因为报纸和杂志上我们随处可见，这种布局在报纸和杂志上都使用了几十年了，但需要在Web页面上实现文本的多列布局，正如下图所示。</p>
				<p>为了能在Web页面中方便实现类似报纸、杂志那种多列排版的布局，W3C特意给CSS3增加了一个多列布局模块（CSS
					Multi Column Layout
					Module）。它主要应用在文本的多列布局方面。对于文本的多列布局，我想大家并不陌生，因为报纸和杂志上我们随处可见，这种布局在报纸和杂志上都使用了几十年了，但需要在Web页面上实现文本的多列布局，正如下图所示。</p>
				<p>为了能在Web页面中方便实现类似报纸、杂志那种多列排版的布局，W3C特意给CSS3增加了一个多列布局模块（CSS
					Multi Column Layout
					Module）。它主要应用在文本的多列布局方面。对于文本的多列布局，我想大家并不陌生，因为报纸和杂志上我们随处可见，这种布局在报纸和杂志上都使用了几十年了，但需要在Web页面上实现文本的多列布局，正如下图所示。</p>
				<p>为了能在Web页面中方便实现类似报纸、杂志那种多列排版的布局，W3C特意给CSS3增加了一个多列布局模块（CSS
					Multi Column Layout
					Module）。它主要应用在文本的多列布局方面。对于文本的多列布局，我想大家并不陌生，因为报纸和杂志上我们随处可见，这种布局在报纸和杂志上都使用了几十年了，但需要在Web页面上实现文本的多列布局，正如下图所示。</p>
				<p>为了能在Web页面中方便实现类似报纸、杂志那种多列排版的布局，W3C特意给CSS3增加了一个多列布局模块（CSS
					Multi Column Layout
					Module）。它主要应用在文本的多列布局方面。对于文本的多列布局，我想大家并不陌生，因为报纸和杂志上我们随处可见，这种布局在报纸和杂志上都使用了几十年了，但需要在Web页面上实现文本的多列布局，正如下图所示。</p>
				<p>为了能在Web页面中方便实现类似报纸、杂志那种多列排版的布局，W3C特意给CSS3增加了一个多列布局模块（CSS
					Multi Column Layout
					Module）。它主要应用在文本的多列布局方面。对于文本的多列布局，我想大家并不陌生，因为报纸和杂志上我们随处可见，这种布局在报纸和杂志上都使用了几十年了，但需要在Web页面上实现文本的多列布局，正如下图所示。</p>
			</div>
		</li>

	</ol>
</body>
</html>

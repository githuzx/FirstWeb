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
<title>浮动布局--横向两列</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css"
	href="resource/css/style_tencentsoftware.css">
</head>

<body>
	<div id="wrap">
		<div id="header">
			<div class="logo">
				<h1>
					<a href="#">腾讯软件中心</a>
				</h1>
				<dl>
					<dt>腾讯软件中心，腾讯精品软件展示平台</dt>
					<dd>我们会不断提升产品的性能和体验，为您提供最好用的软件！</dd>
				</dl>
			</div>
			<div id="nav">
				<ul>
					<li class="current"><a href="#">首页</a></li>
					<li><a href="#">PC产品大全</a></li>
					<li><a href="#">Mac产品大全</a></li>
					<li><a href="#">无线产品大全</a></li>
					<li><a href="#">企业产品大全</a></li>
					<li class="qq_lab"><a href="#">QQ实验室</a></li>
				</ul>
			</div>
		</div>
		<div id="mainbody">
			<div class="content">
				<img src="resource/images/tencentsoftware/banner.png" width="600"
					height="200" class="margin_btm_15" />
				<div class="box">
					<h2>
						<a href="#">腾讯软件</a><span><a href="#">更多>></a> </span>
					</h2>
					<ul class="softwarelist">
						<li>
							<dl class="software_1">
								<dt>
									<a href="#">QQ 5.2</a>更新日期：2014-03-17
								</dt>
								<dd>免费的即时通讯平台，带来更多沟通乐趣</dd>
							</dl> <span><a href="#" class="download">下载</a> | <a href="#">官方网站</a>
						</span>
						</li>
						<li>
							<dl class="software_2">
								<dt>
									<a href="#" class="new">腾讯电脑管家</a>更新日期：2014-01-15
								</dt>
								<dd>专业的免费杀毒软件，全面便捷管理电脑</dd>
							</dl> <span><a href="#" class="download">下载</a> | <a href="#">官方网站</a>
						</span>
						</li>
						<li>
							<dl class="software_3">
								<dt>
									<a href="#">软件管理</a>更新日期：2014-03-19
								</dt>
								<dd>下载软件，就用软件管理</dd>
							</dl> <span><a href="#" class="download">下载</a> | <a href="#">官方网站</a>
						</span>
						</li>
						<li>
							<dl class="software_4">
								<dt>
									<a href="#" class="new">QQ音乐2014贺岁版</a>更新日期：2014-01-24
								</dt>
								<dd>全新界面设计，视野更开阔，操作更简单</dd>
							</dl> <span><a href="#" class="download">下载</a> | <a href="#">官方网站</a>
						</span>
						</li>
						<li>
							<dl class="software_5">
								<dt>
									<a href="#">QQ浏览器</a>更新日期：2014-03-13
								</dt>
								<dd>全新设计，简约轻快，精巧易用</dd>
							</dl> <span><a href="#" class="download">下载</a> | <a href="#">官方网站</a>
						</span>
						</li>
						<li>
							<dl class="software_6">
								<dt>
									<a href="#">QQ影像</a>更新日期：2013-01-24
								</dt>
								<dd>管理、浏览、编辑、上传一站体验</dd>
							</dl> <span><a href="#" class="download">下载</a> | <a href="#">官方网站</a>
						</span>
						</li>
					</ul>
				</div>
			</div>
			<div class="sidebar">
				<div class="box">
					<h2>最新动态</h2>
					<ul class="newslist">
						<li>&middot; <a href="#">腾讯电脑管家8.0正式版发布</a></li>
						<li>&middot; <a href="#">腾讯游戏平台首推强加速、LOL助手永久免费</a></li>
						<li>&middot; <a href="#">微云2.0六大终端全新出击，超强收藏功能</a></li>
						<li>&middot; <a href="#">腾讯手机管家(PC版)2.0新版 只为用户更好体验</a></li>
						<li>&middot; <a href="#">QQ影音3.7发布，提升转码速度</a></li>
						<li>&middot; <a href="#">QQ2012 Beta2(Q+)：全新Q+，更快更便捷</a></li>
						<li>&middot; <a href="#">Foxmail 7发布新版本，支持繁、简、英多语言</a></li>
					</ul>
				</div>
				<div class="box">
					<h2>
						<a href="#">更多推荐</a> <span><a href="#">更多>></a> </span>
					</h2>
					<ul class="downlist">
						<li class="soft_r_1"><a href="#">QQ旋风</a><span><a
								href="#" class="download">下载</a> </span></li>
						<li class="soft_r_2"><a href="#">腾讯视频播放器</a><span><a
								href="#" class="download">下载</a> </span></li>
						<li class="soft_r_3"><a href="#">QQ影音</a><span><a
								href="#" class="download">下载</a> </span></li>
						<li class="soft_r_4"><a href="#">小Q书桌</a><span><a
								href="#" class="download">下载</a> </span></li>
						<li class="soft_r_5"><a href="#">Foxmail</a><span><a
								href="#" class="download">下载</a> </span></li>
						<li class="soft_r_6"><a href="#">顽固木马克星</a><span><a
								href="#" class="download">下载</a> </span></li>
					</ul>
				</div>
				<div class="box">
					<h2>合作伙伴</h2>
					<div class="fri_link">
						<a href="#">腾讯软件管理</a> <a href="#">腾讯网下载</a> <a href="#">下载吧</a> <a
							href="#">IT168</a><a href="#">东坡下载</a> <a href="#">完美下载</a> <a
							href="#">腾牛网</a> <a href="#">PC6下载站</a> <a href="#">乡巴佬下载</a>
					</div>
				</div>
			</div>
		</div>
		<div id="footer">
			<ul>
				<li>Copyright © 1998 - 2012 Tencent. All Rights Reserved.</li>
				<li>腾讯公司 版权所有</li>
			</ul>
		</div>
	</div>
</body>
</html>

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
<title>幾米的书</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet"
	href="resource/css/jimmysbooks_style.css" />
</head>

<body>
	<div id="wrap">
		<div id="header">
			<a href="#">联系我们</a>|<a href="#">站点地图</a>
		</div>
		<div id="mainbody">
			<div class="content profile">
				<h2>:: 关于幾米 ::</h2>
				<p>幾米，一位用画笔描绘梦想、吸引无数读者画迷为之疯狂，知名度迅速窜升的当红绘本作家，同时却也是一个腼腆善良的中年男子，偏好简单的居家生活，低调而淡泊。</p>
				<p>幾米的个性害羞内向，不擅长用言语表达，他用敏锐细腻的心去感受周遭的人与事，将情感、思绪藉由「绘画」传达他对大千世界的看法，作品风貌多变，创作力源源不绝，因此看幾米的作品，就像是走入他的内在，幾米的故事引领着每一位欣赏他作品的人看到并相信世界上的美与善，同时也反应了现代人生活中的点点滴滴，因此每个人都能在他的故事找到一个映照和寄托，或许这就是幾米作品的迷人之处。</p>
				<p>幾米，绘本作家，文化大学美术系毕业，曾在广告公司工作十二年，后来为报纸、杂志等各种出版品画插画
					。1998年开始创作，发表《森林里的秘密》和《微笑的鱼》，拿下当年度中国时报开卷最佳童书、民生报好书大家读年度最佳童书，以及联合报读书人最佳童书奖。
					1999年出版《向左走．向右走》，开创出成人绘本的新型式，兴起一股绘本创作风潮。本书获选为1999年金石堂十大最具影响力的书，并已改编成电影、电视剧。之后陆续推出《听幾米唱歌》、《月亮忘记了》、《森林唱游》、《我的心中每天开出一朵花》等作品，展现惊人的创作力和多变的叙事风格。
					2001年出版《地下铁》，获选2002年金鼎奖推荐优良图书，并改编成音乐剧和电影。次年《照相本子》、《1.2.3.木头人》和《我只能为你画一张小卡片》获选2002年行政院新闻局推介中小学生优良课外读物图书类推荐读物。2002年《布瓜的世界》甫上市便登上各大书店畅销排行榜第一名。
					2003、2004年陆续出版《幸运儿》、《你们我们他们》、《又寂寞又美好》、《履历表》、《遗失了一只猫》等作品，内容风格上更形突破。2005年的《小蝴蝶小披风》和《失乐园》开始经营角色，多变的故事节奏有不同于以往的阅读趣味。
					作品风靡两岸三地，美、法、德、希腊、韩、日、泰等国皆有译本。学界和媒体多次以「幾米现象」为主题分析评论。 2003年Studio
					Voice杂志选为亚洲最有创意的五十五人之一。</p>
			</div>
			<div class="content book">
				<a href="#"><img src="resource/images/jimmysbooks/book1.jpg"
					width="80" height="80" /> </a> <a href="#"><img
					src="resource/images/jimmysbooks/book2.jpg" width="80" height="80" />
				</a> <a href="#"><img src="resource/images/jimmysbooks/book3.jpg"
					width="80" height="80" /> </a> <a href="#"><img
					src="resource/images/jimmysbooks/book4.jpg" width="80" height="80" />
				</a> <a href="#"><img src="resource/images/jimmysbooks/book5.jpg"
					width="80" height="80" /> </a> <a href="#"><img
					src="resource/images/jimmysbooks/book6.jpg" width="80" height="80" />
				</a>
			</div>
		</div>
		<div id="footer">copyright © 2004-2012 Jimmyspa.com All Rights
			Reserved.</div>
	</div>
</body>
</html>

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
<title>慕课网</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="resource/css/corpsite/index.css" rel="stylesheet"
	type="text/css" />
<script src="resource/js/corpsite/setHomeSetFav.js"
	type="text/javascript" charset="gb2312"></script>
<script src="resource/ref/myfocus-2.0.1.min.js" type="text/javascript"></script>
<script src="resource/ref/mf-pattern/mF_fancy.js" type="text/javascript"></script>
<link href="resource/ref/mf-pattern/mF_fancy.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript">
	myFocus.set({
		id : 'picBox'
	})
</script>
</head>

<body>
	<div class="top">
		<div class="top_content">
			<ul>
				<li><a href="#">联系我们</a>
				</li>
				<li><a href="#"
					onclick="AddFavorite(window.location,document.title)">加入收藏</a>
				</li>
				<li><a href="#" onclick="SetHome(window.location)">设为首页</a>
				</li>
			</ul>
		</div>
	</div>
	<!--top结束-->

	<div class="wrap">
		<div class="logo">
			<div class="logo_left">
				<img src="resource/images/corpsite/logo.jpg" alt="慕课网" />
			</div>
			<div class="logo_right">
				<img src="resource/images/corpsite/tel.jpg" alt="服务热线" />24小时服务热线:<span
					class="tel">123-456-7890</span>
			</div>
		</div>
		<!--logo结束-->

		<div class="nav">
			<div class="nav_left"></div>
			<div class="nav_mid">
				<div class="nav_mid_left">
					<ul>
						<li><a href="#">首页</a>
						</li>
						<li><a href="list.html">关于慕课</a>
						</li>
						<li><a href="list.html">新闻动态</a>
						</li>
						<li><a href="list.html">课程中心</a>
						</li>
						<li><a href="list.html">在线课程</a>
						</li>
						<li><a href="list.html">人才招聘</a>
						</li>
					</ul>
				</div>
				<div class="nav_mid_right">
					<form action="" method="post">
						<input type="text" class="search_text" />
					</form>
				</div>
			</div>
			<!--nav_mid结束-->
			<div class="nav_right"></div>
		</div>
		<!--nav结束-->

		<div class="ad" id="picBox">
			<div class="loading">
				<img src="resource/images/corpsite/loading.gif" alt="图片加载中" />
			</div>
			<div class="pic">
				<ul>
					<li><img src="resource/images/corpsite/ad2.jpg" />
					</li>
					<li><img src="resource/images/corpsite/ad3.jpg" />
					</li>
					<li><img src="resource/images/corpsite/ad4.jpg" />
					</li>
				</ul>
			</div>
		</div>
		<!--ad结束-->

		<div class="main">
			<div class="news">
				<div class="title">
					<h2 class="title_left">新闻中心</h2>
					<span class="title_right"> <a href="news.html">More&gt;&gt;</a>
					</span>
				</div>
				<!--title结束-->

				<div class="pic_news">
					<img src="resource/images/corpsite/news.jpg" />
					<h2>
						<a href="news.html">520 慕女神喊你来表白!</a>
					</h2>
					<p>
						活动时间:5月20日——5月25日<br />获奖公布时间:5月26日<br /> <a href="news.html">Learn
							More&gt;&gt;</a>
					</p>
				</div>
				<!--pic_news结束-->

				<div class="news_list">
					<ul>
						<li><span>2014-06-01</span><a href="news.html">【慕客访谈
								用户篇】“有为屌丝”在路上</a>
						</li>
						<li><span>2014-06-01</span><a href="news.html">【有奖活动】给父亲的三行书信</a>
						</li>
						<li><span>2014-05-30</span><a href="news.html">《程序猿,请晒出你的童年》活动获奖公告</a>
						</li>
						<li><span>2014-05-28</span><a href="news.html">【慕课访谈】破茧成蝶——美女程序员的蜕变史</a>
						</li>
					</ul>
				</div>
				<!--news_list结束-->
			</div>
			<!--news结束-->

			<div class="course">
				<div class="title">
					<h2 class="title_left">课程中心</h2>
					<span class="title_right"> <a href="news.html">More&gt;&gt;</a>
					</span>
				</div>
				<!--title结束-->

				<div class="course_pic">
					<img src="resource/images/corpsite/css.jpg" />
					<h2>
						<a href="news.html">CSS圆角进化论</a>
					</h2>
					<p>CSS圆角的实现,经历了三大发展阶段,背景图片方式、CSS2.0+HTML标签模拟、CSS3.0圆角属性。本案例详细讲解每一种的实现方式,并对实现的优缺点进行对比分析。</p>
				</div>
				<!--course_pic结束-->

				<div class="course_type">
					<ul>
						<li>PHP开发</li>
						<li>前端开发</li>
						<li>JAVA开发</li>
						<li>Android开发</li>
					</ul>
				</div>
				<!--course_type结束-->
			</div>
			<!--course结束-->

			<div class="sidebar">
				<div class="video">
					<div class="title">
						<h2 class="title_left">媒体聚焦</h2>
						<!--   <span class="title_right">
            <a href="news.html">More&gt;&gt;</a>
          </span>-->
					</div>
					<div class="video_content">
						<embed
							src="https://imgcache.qq.com/tencentvideo_v1/playerv3/TPout.swf?max_age=86400&v=20161117&vid=b0024zkv4ab&auto=1"
							allowFullScreen="true" quality="high" width="230" height="140"
							align="middle" allowScriptAccess="always"
							type="application/x-shockwave-flash"></embed>
					</div>
				</div>
				<!--video结束-->

				<div class="sidebar_ad">
					<img src="resource/images/corpsite/app.jpg" />
				</div>
				<!--sidebar_ad结束-->
			</div>
			<!--sidebar结束-->
		</div>
		<!--main结束-->
	</div>
	<!--wrap结束-->

	<div class="copyright">
		<div class="copyright_content">
			<ul>
				<li class="type"><a href="#">关于</a>
					<ul>
						<li><a href="#">品牌故事</a>
						</li>
						<li><a href="#">联系我们</a>
						</li>
						<li><a href="#">加入我们</a>
						</li>
						<li><a href="#">版权声明</a>
						</li>
					</ul></li>
				<li class="type"><a href="#">课程</a>
					<ul>
						<li><a href="#">PHP开发</a>
						</li>
						<li><a href="#">前端开发</a>
						</li>
						<li><a href="#">JAVA开发</a>
						</li>
						<li><a href="#">Android开发</a>
						</li>
					</ul></li>
				<li class="type"><a href="#">关注</a>
					<ul>
						<li><a href="#">新浪微博</a>
						</li>
						<li><a href="#">腾讯微博</a>
						</li>
						<li><a href="#">企业微信</a>
						</li>
						<li><a href="#">QQ空间</a>
						</li>
					</ul></li>
				<li class="type"><a href="#">留言</a>
					<ul>
						<li><a href="#">意见反馈</a>
						</li>
						<li><a href="#">问题留言</a>
						</li>
						<li><a href="#">媒体联络</a>
						</li>
						<li><a href="#">在线客服</a>
						</li>
					</ul></li>
				<li class="type"><a href="#"><img
						src="resource/images/corpsite/weixin.png" />微信关注</a>
					<ul>
						<li><img src="resource/images/corpsite/qrcode.jpg" />
						</li>
					</ul></li>
			</ul>
		</div>
	</div>
	<!--copyright结束-->
</body>
</html>
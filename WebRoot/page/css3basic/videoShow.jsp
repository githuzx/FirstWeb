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
<title>制作3D旋转视频展示区</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style>
body {
	margin-top: 5em;
	text-align: center;
	color: #414142;
	background: rgb(246, 241, 232);
	/*任务一、制作多背景*/
	background-image: -ms-radial-gradient(farthest-side ellipse at center, rgba(246, 241, 232,
		.85) 39%, rgba(212, 204, 186, .5) 100% ),
		url("http://fs0.139js.com/file/s_jpg_857b081bjw1du3kveu19sj.jpg");
	background-image: -webkit-radial-gradient(farthest-side ellipse at center, rgba(246, 241,
		232, .85) 39%, rgba(212, 204, 186, .5) 100% ),
		url("http://fs0.139js.com/file/s_jpg_857b081bjw1du3kveu19sj.jpg");
	background-image: radial-gradient(farthest-side ellipse at center, rgba(246, 241, 232, .85
		) 39%, rgba(212, 204, 186, .5) 100% ),
		url("http://fs0.139js.com/file/s_jpg_857b081bjw1du3kveu19sj.jpg");
	/*任务二、控制背景图像尺寸*/
	background-size: cover;
}

h1,em,#information {
	display: block;
	font-size: 25px;
	font-weight: normal;
	margin: 2em auto;
}

a {
	color: #414142;
	font-style: normal;
	text-decoration: none;
	font-size: 20px;
}

a:hover {
	text-decoration: underline;
}

#container {
	margin: 0 auto;
	width: 1024px;
}

.wrapper {
	display: inline-block;
	width: 310px;
	height: 100px;
	vertical-align: top;
	margin: 1em 1.5em 2em 0;
	cursor: pointer;
	position: relative;
	font-family: Tahoma, Arial;
	-webkit-perspective: 4000px;
	-moz-perspective: 4000px;
	-ms-perspective: 4000px;
	-o-perspective: 4000px;
	perspective: 4000px;
}

.item {
	height: 100px;
	-webkit-transform-style: preserve-3d;
	-moz-transform-style: preserve-3d;
	-ms-transform-style: preserve-3d;
	-o-transform-style: preserve-3d;
	transform-style: preserve-3d;
	/*任务三、给每个列表项添加过渡动画效果*/
	-webkit-transition: -webkit-transform .6s;
	-moz-transition: -moz-transform .6s;
	-ms-transition: -ms-transform .6s;
	-o-transition: -o-transform .6s;
	transition: transform .6s;
}

.item:hover { /*任务四、悬浮状态改变每个列表项的transform效果*/
	-webkit-transform: translateZ(-50px) rotateX(95deg);
	-moz-transform: translateZ(-50px) rotateX(95deg);
	-ms-transform: translateZ(-50px) rotateX(95deg);
	-o-transform: translateZ(-50px) rotateX(95deg);
	transform: translateZ(-50px) rotateX(95deg);
}

.itemimg {
	display: block;
	position: absolute;
	top: 0;
	/*任务五、设置列表项图片的圆角和阴影效果*/
	border-radius: 3px;
	box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.3);
	-webkit-transform: translateZ(50px);
	-moz-transform: translateZ(50px);
	-ms-transform: translateZ(50px);
	-o-transform: translateZ(50px);
	transform: translateZ(50px);
	-webkit-transition: all .6s;
	-moz-transition: all .6s;
	-ms-transition: all .6s;
	-o-transition: all .6s;
	transition: all .6s;
	width: 310px;
	height: 100px;
}

.item .information {
	display: block;
	position: absolute;
	top: 0;
	height: 80px;
	width: 290px;
	text-align: left;
	border-radius: 15px;
	padding: 10px;
	font-size: 12px;
	text-shadow: 1px 1px1pxrgba(255, 255, 255, 0.5 );
	box-shadow: none;
	background: rgb(236, 241, 244);
	/*任务六、给底层显示文本的层级设置渐变效果*/
	background: -webkit-linear-gradient(to bottom, rgba(236, 241, 244, 1) 0%,
		rgba(190, 202, 217, 1) 100% );
	background: -ms-linear-gradient(to bottom, rgba(236, 241, 244, 1) 0%,
		rgba(190, 202, 217, 1) 100% );
	background: linear-gradient(to bottom, rgba(236, 241, 244, 1) 0%,
		rgba(190, 202, 217, 1) 100% );
	-webkit-transform: rotateX(-90deg) translateZ(50px);
	-moz-transform: rotateX(-90deg) translateZ(50px);
	-ms-transform: rotateX(-90deg) translateZ(50px);
	-o-transform: rotateX(-90deg) translateZ(50px);
	transform: rotateX(-90deg) translateZ(50px);
	-webkit-transition: all .6s;
	-moz-transition: all .6s;
	-ms-transition: all .6s;
	-o-transition: all .6s;
	transition: all .6s;
}

.information strong {
	display: block;
	margin: .2em 0 .5em 0;
	font-size: 20px;
	font-family: "Oleo Script";
}

.item:hoverimg { /*任务七、列表项悬浮状态时，去掉图片的阴影效果*/
	box-shadow: none;
	border-radius: 15px;
}

.item:hover .information {
	box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.3);
	border-radius: 3px;
}
</style>
</head>
<body>
	<div id="container">
		<h1>CSS3 3D变形制作视频展示区</h1>

		<div class="wrapper">
			<div class="item">
				<img
					src="http://pic2.qiyipic.com/image/20140415/4e/32/5f/v_105669963_m_601_180_101.jpg" />
				<span class="information"> <strong>澳门风云</strong>闻名中外，曾担任美国赌场保安总顾问的魔术手石一坚，终回流澳门退休，更宴请各方朋友到来庆祝生日宴.
				</span>
			</div>
		</div>

		<div class="wrapper">
			<div class="item">
				<img
					src="http://pic4.qiyipic.com/image/20140417/b5/01/81/a_100003950_m_601_m2_180_101.jpg" />
				<span class="information"> <strong>改过迁善</strong>该剧讲述了金明民饰演的律师在失忆后回顾自己以往的所作所为心生忏悔，为弥补自己犯下的错误而与自己曾经工作过的律师事务所对簿公堂的故事。
				</span>
			</div>
		</div>

		<div class="wrapper">
			<div class="item">
				<img
					src="http://pic1.qiyipic.com/common/lego/20140521/4515581d06cc4d5b8ab320da2cf3778d.jpg" />
				<span class="information"> <strong>父子刑警</strong>本剧改编自雫井修介小说《Bitter
					Blood》。剧中，新晋刑警•佐原夏辉（佐藤健饰）被分配到银座警察 </span>
			</div>
		</div>

		<div class="wrapper">
			<div class="item">
				<img
					src="http://pic5.qiyipic.com/image/20140319/7a/8d/4f/a_100003478_m_601_m1_180_101.jpg" />
				<span class="information"> <strong>果宝特攻3</strong>果宝特攻3,顾名思义是果宝特攻的第二部续集,已在国家广播电影电视总局备案.暂定剧情为:菠萝吹雪偶然间穿越到了古代的水果世界
				</span>
			</div>
		</div>
		<div class="wrapper">
			<div class="item">
				<img
					src="http://pic0.qiyipic.com/image/20140517/ce/e8/42/v_106167752_m_601_180_101.jpg" />
				<span class="information"> <strong>红眼</strong>1988年7月16日，从汉城始发的列车发生了一起严重的交通事故，造成100多人死亡。
				</span>
			</div>
		</div>
		<div class="wrapper">
			<div class="item">
				<img
					src="http://pic6.qiyipic.com/image/20140303/da/e9/aa/v_105073913_m_601_180_101.jpg" />
				<span class="information"> <strong>熊出没之夺宝熊兵</strong>一场漆黑雨夜的意外事故，一段笑料十足的误打误撞，将两个外表相似却内容各异的箱子调换。
				</span>
			</div>
		</div>
	</div>
</body>
</html>

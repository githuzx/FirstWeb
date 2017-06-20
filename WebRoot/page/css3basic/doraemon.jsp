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
<!-- 基链接标记:为页面上的所有链接规定默认地址或默认目标 -->
<base href="<%=basePath%>">

<title>哆啦A梦</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css"
	href="resource/css/css3/style_doraemon.css">
</head>

<body>

	<div id="stage">
		<div id="doraemon">
			<div id="face">
				<div id="head_light"></div>
				<div id="eyes">
					<div class="eye eye_left"></div>
					<div class="black_eye black_left"></div>

					<div class="eye eye_right"></div>
					<div class="black_eye black_right"></div>
				</div>
				<div id="base">
					<div id="base_white"></div>
					<div id="nose">
						<div id="nose_light"></div>
					</div>
					<div id="nose_line"></div>
					<div id="mouth"></div>
					<div id="mouth_rewrite"></div>
					<div id="firefox_mouth"></div>

					<div class="whiskers whi_right_top rotate160"></div>
					<div class="whiskers whi_right"></div>
					<div class="whiskers whi_right_bottom rotate20"></div>

					<div class="whiskers whi_left_top rotate20"></div>
					<div class="whiskers whi_left"></div>
					<div class="whiskers whi_left_bottom rotate160"></div>
				</div>
			</div>
			<div id="choker">
				<div id="belt"></div>
				<div id="bell">
					<div id="bell_line"></div>
					<div id="bell_circle"></div>
					<div id="bell_under"></div>
					<div id="bell_light"></div>
				</div>
			</div>
			<div id="body">
				<div id="doutai"></div>
				<div class="base_white2 doutai_center"></div>
				<div id="pocket">
					<div id="circle"></div>
					<div id="circle_rewrite"></div>
				</div>
			</div>
			<div id="hand_right">
				<div id="arm_right"></div>
				<div class="hand_circle hand_right"></div>
				<div class="arm_rewrite_right"></div>
			</div>
			<div id="hand_left">
				<div id="arm_left"></div>
				<div class="hand_circle hand_left"></div>
				<div class="arm_rewrite_left"></div>
			</div>
			<div id="foot">
				<div id="foot_left"></div>
				<div id="foot_right"></div>
				<div id="foot_rewrite"></div>
			</div>
			<div id="shadow_doutai_arm"></div>
			<div id="shadow_doutai_left"></div>
			<div id="shadow_doutai_right"></div>
			<div id="shadow_belt"></div>
		</div>
	</div>
</body>
</html>

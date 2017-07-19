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
<title>CSS3中的变形与动画(下)</title>
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

/*Keyframes介绍*/
@keyframes wobble {
  0% {
    margin-left: 100px;
    background:green;
  }
  40% {
    margin-left:150px;
    background:orange;
  }
  60% {
    margin-left: 75px;
    background: blue;
  }
  100% {
    margin-left: 100px;
    background: red;
  }
}

.wrapper_keyframes{
   width: 100px;
   height: 100px;
   background: red;
   color: #fff;
   margin: 20px;
}
.wrapper_keyframes:hover{
   animation:wobble 5s ease .1s;
}

/*CSS3中调用动画*/
@keyframes around{
  0% {
    transform: translateX(0);
  }
  25%{
    transform: translateX(180px);
  }
  50%{
     transform: translate(180px, 180px); 
  }
  75%{
    transform:translate(0,180px);
  }
  100%{
    transform: translateY(0);
  }
}

.wrapper_animname{
   width: 200px;
   height: 200px;
   border: 1px solid red;
   margin: 20px;
}
.wrapper_animname span {
  display: inline-block;
  width: 20px;
  height: 20px;
  background: orange;
  border-radius: 100%;
  animation-name:around;
  animation-duration: 10s;
  animation-timing-function: ease;
  animation-delay: 1s;
  animation-iteration-count:infinite;
}

/*CSS3中设置动画播放时间*/
@Keyframes toradius{
  from {
    border-raius:0;
  }
  to{
    border-radius:100%;
  }
}

.wrapper_animduration{
   width: 200px;
   height: 200px;
   line-height: 200px;
   text-align: center;
   color: #fff;
   background: green;
   margin: 20px;
}

.wrapper_animduration:hover{
   animation-name:toradius;
   animation-duration:2s;
   animation-timing-function:ease-in-out;
   animation-delay:.1s;
}

/*CSS3中设置动画播放方式*/
@keyframes move {
  0%{
    transform: translate(0);
  }
  15%{
    transform: translate(100px,180px);
  }
  30%{
    transform: translate(150px,0);
  }
  45%{
    transform: translate(250px,180px);
  }
  60%{
    transform:translate(300px,0);
  }
  75%{
    transform: translate(450px,180px);
  }
  100%{
    transfrom: translate(480px,0);
  }
}

.wrapper_animtimingfunction{
   width: 500px;
   height: 200px;
   border: 1px solid red;
   margin: 20px;
}

.wrapper_animtimingfunction span{
  display: inline-block;
  width: 20px;
  height: 20px;
  background: green;
  border-radius:100%;
  animation-name:move;
  animation-duration:10s;
  animation-timing-function:ease;
  animation-delay:3s;
  animation-iteration-count:infinite;
  animation-direction:alternate;
}

/*CSS3中设置动画时间外属性*/
@keyframes redToBlue{
  from{
    background: red;
  }
  20%{
      background:green;
  }
  40%{
      background:lime;
  }
  60%{
      background:yellow;
  }
  to{
    background:blue;
  }
}
.wrapper_animfillmode{
  width: 200px;
  height: 200px;
  background: red;
  margin:20px;
  animation-name:redToBlue;
  animation-duration:20s;
  animation-timing-function:ease;
  animation-delay:1s;
  ainimation-fill-mode:both;
}
</style>
</head>

<body>
	<ol>
		<!-- Keyframes介绍 -->
		<li><a href="#">Keyframes介绍</a>
			<div class="wrapper_keyframes">鼠标放这</div>
		</li>

        <!-- CSS3中调用动画 -->
        <li><a href="#">CSS3中调用动画</a>
             <div class="wrapper_animname">
             <span></span>
             </div>
        </li>
        
        <!-- CSS3中设置动画播放时间 -->
		<li><a href="#">CSS3设置动画播放时间</a>
			<div class="wrapper_animduration">Hover Me</div>
		</li>

        <!-- CSS3中设置动画播放方式 -->
		<li><a href="#">CSS3设置动画播放方式</a>
			<div class="wrapper_animtimingfunction">
				<span></span>
			</div>
		</li>
		
		<!-- CSS3中设置动画开始播放的时间 -->
		<li><a href="#">CSS3中设置动画开始播放的时间</a>
		</li>
		
		<!-- CSS3中设置动画时间外属性 -->
		<li><a href="#">CSS3中设置动画时间外属性</a>
			<div class="wrapper_animfillmode"></div>
		</li>
	</ol>
</body>
</html>

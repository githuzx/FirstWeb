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
<title>十天精通CSS3</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<h4>第1章 初识CSS3</h4>
	<pre>
//什么是CSS3
chrome、safari、firefox、opera、IE10
在编写CSS3样式时,不同的浏览器可能需要不同的前缀
      前缀                      浏览器
-webkit   chrome和safari
-moz      firefox
-ms       IE
-o        opera

//CSS3能做什么
代替图片和脚本
圆角、图片边框、文字阴影和盒阴影,过渡、动画
css3简化了前端开发工作人员的设计过程,加快页面载入速度

强大功能
①选择器:可以减少在标签中的class和ID的数量更方便的维护样式表、更好的实现结构与表现的分离
②圆角效果:以前做圆角通常使用背景图片,或繁琐的元素拼接,现在很简单了border-radius帮你轻松搞定
③块阴影与文字阴影:可以对任意DIV和文字增加投影效果
④色彩:css3支持更多的颜色和更广泛的颜色定义。支持HSL,CMYK,HSLA and RGBA
⑤渐变效果:以前只能用Photoshop做出的图片渐变效果,现在可以用CSS写出来了。IE中的滤镜也可以实现
⑥个性化字体:网页上的字体太单一?使用@Font-Face轻松实现定制字体
⑦多背景图:一个元素上添加多层背景图片
⑧边框背景图:边框应用背景图片
⑨变形处理:你可以对HTML元素进行旋转、缩放、倾斜、移动、甚至以前只能用JavaScript实现的强大动画
⑩多栏布局:可以让你不用使用多个div标签就能实现多栏布局。浏览器解释这个属性并生成多栏,让文本实现一个仿报纸的多栏结构
⑪媒体查询:针对不同屏幕分辨率,应用不同的样式

很神奇吧!css3使代码更简洁、更高效。可以更大的提高工作效率,打造更高级的用户体验。使web应用的界面设计进入一个新的台阶

    </pre>
</body>
</html>

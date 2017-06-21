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
<style type="text/css">
li {
	margin: 10px;
	font-size: 16px;
}

a {
	color: blue;
	font-size: 18px;
	padding: 10px;
}
</style>
</head>

<body>
	<ul>
		<!-- Test -->
		<li>Test:
			<ol>
				<li><a title="边框" target="_blank"
					href="page/css3basic/test/frame.jsp">frame.jsp</a></li>
				<li><a title="颜色" target="_blank"
					href="page/css3basic/test/color.jsp">color.jsp</a></li>
				<li><a title="文字与字体" target="_blank"
					href="page/css3basic/test/textFont.jsp">textFont.jsp</a></li>
				<li><a title="背景" target="_blank"
					href="page/css3basic/test/background.jsp">background.jsp</a></li>
			</ol></li>
	</ul>

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

	<h4>第2章 边框</h4>
	<pre>
//css3边框 圆角效果 border-radius
向元素添加圆角边框(左上 -> 右上 -> 右下 ->左下)
①实心上半圆
div{
    height:50px;
    width:100px;
    background:#9da;
    border-radius:50px 50px 0 0;
}
②实心圆
div{
    height:100px;
    width:100px;
    background:#9da;
    border-radius:50px;
}
   
//css3边框 阴影 box-shadow(一)
向盒子添加阴影。支持添加一个或者多个
box-shadow:x轴偏移量 y轴偏移量 [阴影模糊半径] [阴影扩展半径] [阴影颜色] [投影方式(inset-内部阴影方式,如省略为外阴影方式。可以写在参数的第一个或最后一个,其它位置是无效的)];
①外阴影
.box_shadow{
    box-shadow:4px 2px 6px #333;
}
②内阴影
.box_shadow{
    box-shadow:4px 2px 6px #333 inset;
}
③添加多个阴影(逗号隔开)
.box_shadow{
    box-shadow:4px 2px 6px #foo,  //red
               -4px -2px 6px #000, //black
               0px 0px 12px 5px #33CC00 inset; //green
}

//css3边框 阴影 box-shadow(二)
①阴影模糊半径vs阴影扩展半径
阴影模糊半径:此参可选,其值只能为正,如值为0时,表示阴影不具有模糊效果,其值越大阴影的边缘就越模糊
阴影扩展半径:此参可选,其值可负,如值为正,则整个阴影都延展扩大,反之值为负时,则缩小
②x轴偏移量和y轴偏移量可负

//css3边框 为边框应用图片 border-image
比背景图复杂一些
border-image:url(boder.png) 70 70 70 70 repeat(图片延伸方式round -> 平铺;repeat -> 重复;stretch -> 拉伸)
#border-image{
    background:#F4FFFA;
    width:210px;
    height:210px;
    border:70px solid #ddd;
    border-image:url(border.png) 70 repeat
}                                      

①Round:可以理解为圆满的铺满。为了实现圆满所以会压缩或拉伸
②Stretch:很好理解就是拉伸,有多长拉多长。有多远"滚"多远
注意:Chrome下,中间部分也会被拉伸,webkit浏览器对于round属性和repeat属性似乎没有区分,显示效果是一样的
    </pre>

	<h4>第3章 颜色相关</h4>
	<pre>
//css3颜色 颜色之RGBA    
color:rgba(R,G,B,A)

//css3颜色 渐变色彩
css3 Gradient分为线性渐变(linear)和径向渐变(radial)。由于不同的渲染引擎实现渐变的语法不同,这里我们只针对线性渐变的W3C标准语法来分析其用法,
其余大家可以查阅相关资料。W3C语法已经得到了IE10+、Firefox19.0+、Chrome26.0+和opera12.1+等浏览器的支持
linear-gradient(to bottom[=180deg],#fff,#999)
渐变方向:to top | to right | to bottom | to left | to top left | to top right
       0deg     90deg      180deg      270deg    270deg        270deg
渐变颜色:
       background-image:linear-gradient(to left,red,orange,yellow,green,blue,indigo,violet)
    </pre>

	<h4>第4章 文字与字体</h4>
	<pre>
//css3文字与字体 text-overflow与word-wrap
text-overflow用来设置是否使用一个省略标记(...)标示对象文本的溢出

white-space:nowrap; //强制文本在一行内显示
overflow:hidden; //溢出内容为隐藏
text-overflow:ellipsis;
word-wrap:normal | break-word; //设置文本行为,当前行超过指定容器的边界时是否断开换行

//css3文字与字体 嵌入字体@font-face
@font-face能够加载服务器端的字体文件,让浏览器端可以显示用户电脑里没有安装的字体
@font-face{
    font-family:字体名称;
    src:字体文件在服务器上的相对或绝对地址;
}
p{
    font-size:12px;
    font-family:"My Font";
}

//css3文字与字体 文本阴影text-shadow
text-shadow:x-offset y-offset blur(阴影的模糊程度) color;
text-shadow:0 1px 1px #fff;
    </pre>

	<h4>第5章 与背景相关的样式</h4>
	<pre>
//css3背景 background-origin
设置元素背景图片的原始起始位置
background-origin:border-box 
                | padding-box 
                | content-box;
参数分别表示背景图片是从边框,还是内边距(默认值),或者是内容区域开始显示
注意:若背景不是no-repeat,这个属性无效,它会从边框开始显示

//css3背景 background-clip
用来将背景图片做适当的裁剪以适应实际需要
background-clip:border-box 
              | padding-box
              | content-box
              | no-clip

//css3背景 background-size
设置背景图片的大小,以长度值或百分比显示,还可以通过cover和contain来对图片进行伸缩
background-size:auto  //默认值,不改变背景图片的原始宽高
              | 长度值    //成对出现如200px 50px
              | 百分比    //0%~100%之间的任何值
              | cover //将背景图片等比缩放以填满整个容器 ↘
              | contain //将背景图片等比缩放至某一边紧贴容器边缘为止 

//css3背景 multiple backgrounds
多重背景,也就是CSS2里background的属性外加origin、clip和size组成的新background的多次叠加,缩写时为用逗号隔开的每组值;
用分解写法时,如果有多个背景图片,而其他属性只有一个(例如background-repeat只有一个),表明所有背景图片应用该属性值
background:[background-color]
         | [background-image]
         | [background-position] //'/'
         | [background-size]
         | [background-repeat]
         | [background-attachment]
         | [background-clip]
         | [background-origin]

//css3背景 制作导航菜单综合练习题
    </pre>

	<h4>第6章 征服CSS3选择器(上)</h4>
	<pre>
//



	</pre>
</body>
</html>

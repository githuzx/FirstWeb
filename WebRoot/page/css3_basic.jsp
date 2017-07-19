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

ul {
	list-style: none;
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
				<li>&nbsp;selector
					<ul>
						<li>5.1 <a title="征服CSS3选择器(上)" target="_blank"
							href="page/css3basic/test/selectorUp.jsp">selectorUp.jsp</a></li>
						<li>5.2 <a title="征服CSS3选择器(下)" target="_blank"
							href="page/css3basic/test/selectorDown.jsp">selectorDown.jsp</a>
						</li>
					</ul>
				</li>
				<li>&nbsp;animation
					<ul>
						<li>6.1 <a title="CSS3中的变形与动画(上)" target="_blank"
							href="page/css3basic/test/animationUp.jsp">animationUp.jsp</a></li>
						<li>6.2 <a title="CSS3中的变形与动画(下)" target="_blank"
							href="page/css3basic/test/animationDown.jsp">animationDown.jsp</a>
						</li>
					</ul>
				</li>
				<li><a title="布局样式相关" target="_blank"
					href="page/css3basic/test/layout.jsp">layout.jsp</a>
				</li>
			</ol>
		</li>
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
//css3选择器 属性选择器
E[att^="val"] -> 匹配属性值以val开头的任何字符串
E[att$="val"] -> 匹配属性值以val结尾的任何字符串
E[att*="val"] -> 匹配属性值任意位置包含val

//css3结构性伪类选择器—root
:root选择器,从字面上我们就可以很清楚的理解是根选择器,他的意思就是匹配元素E所在文档的根元素。在HTML文档中,根元素始终是html
:root选择器等同于html元素,简单点说:root{background:orange;} = html{background:orange;}

//css3结构性伪类选择器—not
:not选择器称为否定选择器,和jQuery中的:not选择器一模一样,可以选择除某个元素之外的所有元素。
就拿form元素来说,比如说你想给表单中除submit按钮之外的input元素添加红色边框

//css3结构性伪类选择器—empty
:empty选择器表示的就是空。用来选择没有任何内容的元素,这里没有内容指的是一点内容都没有,哪怕是一个空格

//css3结构性伪类选择器—target
:target选择器称为目标选择器,用来匹配文档(页面)的url的某个标志符的目标元素
①具体来说,触发元素的URL中的标识符通常包含一个#号,后面带有一个标识符名称
②:target就是用来匹配id为“brand”的元素

//css3结构性伪类选择器—first-child
:first-child选择器表示的是选择父元素的第一个子元素的元素E。简单点理解就是选择元素中的第一个子元素,记住是子元素,而不是后代元素。

//css3结构性伪类选择器——last-child
:last-child选择器选择的是元素的最后一个子元素

//css3结构性伪类选择器——nth-child(n)
:nth-child(n)选择器用来定位某个父元素的一个或多个特定的子元素。其中'n'是其参数,而且可以是整数值(1,2,3,4),
也可以是表达式(2n+1、-n+5)和关键词(odd、even),但参数n的起始值始终是1,而不是0.也就是说,参数n的值为0时,选择器将选择不到任何匹配的元素。
经验与技巧:当'nth-child(n)'选择器中为一个表达式时,其中n是从0开始计算,当表达式的值为0或小于0的时候,不选择任何匹配的元素。

//css3结构性伪类选择器——nth-last-child(n)
:nth-last-child(n)从某父元素的最后一个子元素开始计算,来选择特定的元素

//css3 first-of-type选择器
:first-of-type选择器类似于:first-child选择器,不同之处就是指定了元素的类型,其主要用来定位一个父元素下的某个类型的第一个子元素

//css3 nth-of-type(n)选择器
:nth-of-type(n)选择器和:nth-child(n)选择器非常类似,不同的是它只计算父元素中指定的某种类型的子元素。当某个元素中的子元素不单单是同一种类型的子元素时,使用:nth-of-type(n)选择器来定位父元素中某种类型的子元素非常方便和有用的

//css3 last-of-type选择器
:last-of-type选择器和:first-of-type选择器功能一样,不同的是它选择是父元素下的某个类型的最后一个子元素

//css3 nth-last-of-type(n)选择器
:nth-last-of-type(n)

//css3 only-child选择器
:only-child选择器选择的是父元素中只有一个子元素,而且只有唯一的一个子元素。也就是说,匹配的元素的父元素中仅有一个子元素,而且是一个唯一的子元素

//css3 only-of-type
:only-of-type选择器用来选择一个元素是它的父元素的唯一一个相同类型的子元素。表示一个元素它有很多个子元素,而其中只有一种类型的子元素是唯一的,使用:only-of-type选择器就可以选中这个元素的唯一一个类型子元素
	</pre>

	<h4>第7章 征服CSS3选择器(下)</h4>
	<pre>
//enabled选择器	
在Web的表单中,有些表单元素有可用和不可用状态,比如输入框,密码框,复选框等。在默认情况之下,这些表单元素都处在可用状态。那么我们可以通过伪选择器:enabled对这些表单元素设置样式

//disabled选择器
通过:disabled选择器,给不可用输入框设置明显的样式

//checked选择器
:checked表示的是选中状态,通过:checked状态来自定义复选框效果

//selection选择器
:selection伪元素是用来匹配突出显示的文本(用鼠标选择文本时的文本)。浏览器默认情况下,用鼠标选择网页文本是以'深蓝的背景,白色的字体'显示的

//read-only选择器
:read-only伪类选择器用来指定处于只读状态元素的样式。简单点理解就是,元素中设置了'readonly=readonly'

//read-write选择器
:read-write选择器来设置不是只读控件的文本框样式

//before和after
::before和::after这两个主要用来给元素的前面或后面插入内容,这两个常和'content'配合使用,使用的场景最多的就是清除浮动

//切换背景图像综合练习题
根据所学知识,使用CSS3知识,实现背景图片的切换效果(不依赖js,点击小图切换大的背景图)
	</pre>

	<h4>第8章 CSS3中的变形与动画(上)</h4>
	<pre>
//旋转 rotate()
旋转rotate()函数通过指定的角度参数使元素相对原点进行旋转。它主要在二维空间内进行操作,设置一个角度值,用来指定旋转的幅度。如果这个值为正值,元素相对原点顺时针旋转;如果这个值为负值,元素相对原点中心逆时针旋转。

//扭曲 skew()
扭曲skew()函数能够让元素倾斜显示。它可以将一个对象以其中心位置围绕着X轴和Y轴按照一定的角度倾斜。这与rotate()函数的旋转不同,rotate()函数只是旋转,而不会改变元素的状态。skew()函数不会旋转,而只会改变元素的状态。
Skew()具有三种情况:
①skew(x,y)使元素在水平和垂直方向同时扭曲(X轴和Y轴同时按一定的角度值进行扭曲变形);如果第二个参数未提供,则值为0,也就是Y轴方向上无斜切
②skewX(x)仅使元素在水平方向扭曲变形(X轴扭曲变形)
③skewY(y)仅使元素在垂直方向扭曲变形(Y轴扭曲变形)

//缩放 scale()
缩放scale()函数让元素根据中心原点对对象进行缩放
缩放scale具有三种情况:	
①scale(x,y)使元素水平方向和垂直方向同时缩放,注意:y是一个可选参数,如果没有设置y值,则表示x,y两个方向的缩放倍数是一样的
②scaleX(x)元素仅水平方向缩放
③scaleY(y)元素仅垂直方向缩放

//位移 translate()
translate()函数可以将元素向指定的方向移动,类似于position中的relative。或以简单的理解为,使用translate()函数,可以把元素从原来的位置移动,而不影响在X、Y轴上的任何Web组件
translate我们分为三种情况:
①translate(x,y)水平方向和垂直方向同时移动
②translateX(x)仅水平方向移动
③translateY(y)仅垂直方向移动

//矩阵 matrix()
matrix()是一个含六个值的(a,b,c,d,e,f)变换矩阵,用来指定一个2D变换,相当于直接应用一个[a b c d e f]变换矩阵。就是基于水平方向(X轴)和垂直方向(Y轴)重新定位元素,此属性值使用涉及到数学中的矩阵,我在这里只是简单的说一下CSS3中的transform有这么一个属性值,如果需要深入了解,需要对数学矩阵有一定的知识。

//原点 transform-origin
任何一个元素都有一个中心点,默认情况下,其中心点是居于元素X轴和Y轴的50%处。在没有重置transform-origin改变元素原点位置的情况下,CSS进行的旋转、位移、缩放、扭曲等操作都是以元素自己中心位置进行变形。但很多时候,我们可以通过transform-origin来对元素进行原点位置改变,使元素原点不在元素的中心位置,以达到需要的原点位置

//过渡属性 transition-property
早期在Web中要实现动画效果,都是依赖于JavaScript或Flash来完成。但在CSS3中新增了一个新的模块transition,它可以通过一些简单的CSS事件来触发元素的外观变化,让效果显得更加细腻。简单点说,就是通过鼠标的单击、获得焦点、被点击或对元素任何改变中触发,并平滑地以动画效果改变CSS的属性值
在CSS中创建简单的过渡效果可以从以下几个步骤来实现:
①在默认的样式中声明元素的初始状态样式
②声明过渡元素最终状态样式,比如悬浮状态
③在默认样式中通过添加过渡函数,添加一些不同的样式
CSS3的过渡transition属性是一个复合属性,主要包括以下几个属性:
•transition-property:指定过渡或动态模拟的CSS属性
•transition-duration:指定完成过渡所需的时间
•transition-timing-function:指定过渡函数
•transition-delay:指定开始出现的延迟时间

//过渡所需时间 transition-duration
transition-duration属性主要用来设置一个属性过渡到另一个属性所需的时间,也就是从旧属性过渡到新属性花费的时间长度,俗称持续时间

//过渡函数 transition-timing-function
transition-timing-function属性指的是过渡的"缓动函数"。主要用来指定浏览器的过渡速度,以及过渡期间的操作进展情况

//过渡延迟时间 transition-delay
transition-delay属性和transition-duration极其类似,不同的是transition-duration是用来设置过渡动画的持续时间,而transition-delay主要用来指定一个动画开始执行的时间,也就是说当改变元素属性值后多长时间开始执行
	</pre>

	<h4>第9章 CSS3中的变形与动画(下)</h4>
	<pre>
//Keyframes介绍
Keyframes被称为关键帧,其类似于Flash中的关键帧。在CSS3中其主要'@keyframes'开头,后面紧跟着是动画名称加上一对花括号,括号中就是一些不同时间段样式规则

//CSS3中调用动画
animation-name属性主要是用来调用@Keyframes定义好的动画
animation-name:none | IDENT[,none|DENT]

//CSS3中设置动画播放时间
animation-duration主要用来设置CSS3动画播放时间,其使用方法和transition-duration类似,是用来指定元素播放动画所持续的时间长,单位s
取值time为数值,单位为秒,其默认值为0,这意味着动画周期为0,也就是没有动画效果,如果值为负值会被视为0

//CSS3中设置动画播放方式
animation-timing-function属性主要用来设置动画播放方式。主要让元素根据时间的推进来改变属性值的变换速率,简单点说就是动画的播放方式
在调用move动画播放中,让元素样式从初始状态到终止状态时,先加速再减速,也就是渐显渐隐效果

//CSS3中设置动画开始播放的时间
animation-delay属性用来定义动画开始播放的时间,用来触发动画播放的时间点。和transition-delay属性一样,用于定义在浏览器开始执行动画之前等待的时间

//CSS3中设置动画播放次数
animation-iteration-count属性主要用来定义动画的播放次数
其值经常为整数,但也可以使用带有小数的数字,其默认值为1,这意味着动画将从开始到结束只播放一次;如果取值为infinite,动画将会无限次的播放

//CSS3中设置动画播放方向
animation-direction属性主要用来设置动画播放方向,其语法规则如下:
animation-direction:normal | alternate
①normal是默认值,如果设置为normal时,动画的每次循环都是向前播放
②alternate,他的作用是,动画播放在第偶次向前播放,第奇次向反方向播放

//CSS3中设置动画的播放状态
animation-play-state属性主要用来控制元素动画的播放状态
①running是其默认值,主要作用就是类似于音乐播放器一样,可以通过paused将正在播放的动画停下来
②paused将暂停的动画重新播放,这里的重新播放不一定是从元素动画的开始播放,而是从暂停的那个位置开始播放

//CSS3中设置动画时间外属性
animation-fill-mode属性定义在动画开始之前和结束之后发生的操作。主要具有四个属性值:none、forwards、backwords和both
①none默认值,表示动画将按预期进行和结束,在动画完成其最后一帧时,动画会反转到初始帧处
②forwards表示动画在结束后继续应用最后的关键帧的位置
③backwards会在向元素应用动画样式时迅速应用动画的初始帧
④both元素动画同时具有forwards和backwards效果
在默认情况下,动画不会影响它的关键帧之外的属性,使用animation-fill-mode属性可以修改动画的默认行为。简单的说就是告诉动画在第一帧上等待动画开始,或者在动画结束时停在最后一个关键帧上而不回到动画的第一帧上。或者同时具有这两个效果。
例如:让动画停在第一帧处 animation-fill-mode:forwards

//制作3D旋转导航综合练习题
    </pre>

	<h4>第10章 布局样式相关</h4>
	<pre>
//CSS3多列布局 — columns
为了能在Web页面中方便类似报纸、杂志那种多列排版的布局,W3C特意给CSS3增加了一个多列布局模型(CSS Multi Column Layout Module)。
它主要应用在文本的多列布局方面,这种布局在报纸和杂志上都实用了几十年了,但要在Web页面上实现这样的效果还是有相当大的难度,庆幸的是,CSS3的多列布局可以轻松实现
columns:column-width || column-count
columns:200px 2;
到目前为止大部分主流浏览器都对其支持,不过还是需要添加各浏览器的私有前缀。如-moz,-webkit,-ms和-o等

//CSS3多列布局 - column-width
column-width的使用和CSS中的width属性一样,不过不同的是,column-width属性在定义元素列宽的时候,即可以单独使用,也可以和多列属性中其他属性配合使用.
column-width:auto(如果column-width设置值为auto或者没有显式的设置值时,元素多列的列宽将由其他属性来决定,比如前面的示例就是由列数column-count来决定) | length(使用固定值来设置元素列的宽度,其主要是由数值和长度单位组成,不过其值只能是正值,不能为负值)

//CSS3多列布局 - column-count
column-count属性主要用来给元素指定想要的列数和允许的最大列数
column-count:auto(此值为column-count的默认值,表示元素只有一列,其主要依靠浏览器计算自动设置) | integer(此值为正整数,主要用来定义元素的列数,取值为大于0的整数,负值无效)

//CSS3列间距 - column-gap
column-gap:normal(默认值,默认值为1em如果你的字号是px,其默认值为你的font-size值) || length(此值用来设置列与列之间的距离,其可以使用px,em单位的任何整数值,但不能是负值)
column-count:3;column-gap:2em;

//CSS3列表边框 - column-rule
column-rule主要是用来定义列与列之间的边框宽度、边框样式和边框颜色。简单点说,就有点类似于常用的border属性。但column-rule是不占用任何空间位置的,在列与列之间改变其宽度不会改变任何列的位置
语法规则:column-rule:
①column-rule-width:类似于border-width属性,主要用来定义列边框的宽度,其默认值为'medium',column-rule-width属性接受任意浮点数,但不接收负值。但也像border-width属性一样,可以使用关键词:medium、thick和thin
②column-rule-style:类似于border-style属性,主要用来定义列边框样式,其默认值为'none'。column-rule-style属性值与border-style属性相同,包括none、hidden、dotted、dashed、solid、double、groove、ridge、inset、outset
③column-rule-color:类似于border-color属性,主要用来定义列边框颜色,其默认值为前景色color的值,使用时相当于border-color。column-rule-color接受所有的颜色。如果不希望显示颜色,也可以将其设置为transparent
column-rule:2px dotted green;

//CSS3跨列设置 - column-span
column-span主要用来定义一个分列元素中的子元素能跨列多少。column-width、column-count等属性能让一元素分成多列,不管里面元素如何排放顺序,他们都是从左到右的放置内容,但有时我们需要其中一段内容或一个标题不进行分列,也就是横跨所有列,此时column-span就可以轻松实现
column-span:none | all

//CSS3 盒子模型
CSS中有一种基础设计模式叫盒模型,

    </pre>
</body>
</html>

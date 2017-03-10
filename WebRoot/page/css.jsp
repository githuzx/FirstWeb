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
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>层叠样式表</title>

<style type="text/css">
/* p {
	font-size: 16px; 
	color: black; 
	font-weight: normal; 
}

span {
	color: red;
} */
</style>

<link href="resource/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<!-- 认识CSS样式 -->
	<p>CSS全称为'层叠样式表'(Cascading Style
		Sheets),它主要是用于定义HTML内容在浏览器内的显示样式,如文字大小、颜色、字体加粗等。使用CSS样式的一个好处是通过定义某个样式,可以让不同网页位置的文字有着统一的字体、字号或者颜色等。</p>
	<p>慕课网，超酷的互联网、IT技术免费学习平台，创新的网络一站式学习、实践体验；服务及时贴心，内容专业、有趣易学。专注服务互联网工程师快速成为技术高手！</p>

	<!-- CSS样式的优势 -->
	<p>为什么使用css样式来设置网页的外观样式呢？右边编辑器是一段文字,我们想把'超酷的互联网'、'服务及时贴心'、'有趣易学'这三个短语的文本颜色设置为红色,这时就可以通过设置样式来设置,而且只需要编写一条css样式语句。</p>
	<p>
		慕课网，<span>超酷的互联网</span>、IT技术免费学习平台，创新的网络一站式学习、实践体验；<span>服务及时贴心</span>，内容专业、<span>有趣易学</span>。专注服务互联网工程师快速成为技术高手！
	</p>

	<!-- CSS代码语法|CSS注释代码 -->
	<p>css样式&nbsp;选择符{声明(属性:值)}组成;选择符：又称选择器,指明网页中要应用样式规则的元素;声明:在英文{}中的就是声明,属性和值之间用英文冒号分割,当有多条声明时,中间可以英文分号分割。</p>

	<!-- 一、内联式 
	            二、嵌入式 
	            三、外部式
	     ↑三种方法的优先级
	-->
	<p>直接写在现有的HTML标签中。CSS样式可以写在哪些地方呢?从CSS样式代码插入的形式来看基本可以分为以下3中:内联式、嵌入式和外部式三种。内联式css样式表就是把css代码直接写在现有的HTML标签中。</p>
	<p>写在当前的文件中。现在有一任务,把右侧编辑器中的'超酷的互联网'、'服务技师贴心'、'有趣易学'这三个短语文字字号修改为18px。如果用上节课我们学习的内联式css样式的方法进行设置将是一件很头疼的事情(为每一个span标签加入style=font-size:18px语句),本小节讲解一种新的方法嵌入式css样式来实现这个任务。嵌入式css样式必须写在style标签之间,并且一般情况下嵌入式css样式写在head标签之间。</p>
	<p>写在一个单独的文件中。也可称为外联式,就是把css代码写在一个单独的外部未见中,这个css样式文件以.css为扩展名,(在head标签内不在style标签内)使用link标签将css样式文件链接到HTML文件内;注意:css样式文件名称以有意义的英文字母命名;rel=stylesheet&nbsp;type=text/css是固定写法不可修改;link标签未知一般写在head标签之内。</p>
	<p>
		内联-粉,嵌入-红,外部-蓝。但<span style="color: pink;">最终</span>你可以观察到''这个短词的文本被设置为了粉色。内联式>嵌入式>外部式,但是嵌入式>外部式有一个前提：嵌入式css样式的位置一定在外部式的后面。其实总结来说就是就近原则(离被设置元素越近优先级别越高)。但注意上面所说的优先级是有一个前提：内联式、嵌入式、外部式样式表中css样式是在的相同权值的情况下。
	</p>
	<hr />

	<!-- 选择器
                       一、标签选择器:每一条css样式声明(定义)由两部分组成,选择器{样式;},选择器指明了{}中的样式的作用对象
                       二、类选择器:.name{;}。1.使用合适的标签把要修饰的内容标记起来;2.使用class="name"为标签设置一个类;3.设置类选择器css样式。
                       三、ID选择器:#name{;}。1.为标签设置id="name";2.ID选择符的前面是#。
                               区别:1.ID选择器只能在文档中使用一次;2.可以使用类选择器词列表方法为一个元素同时设置多个样式class="stress bigsize";
                       四、子选择器:.name>标签{;}。>用于选择指定标签元素的第一代子元素。child selector仅是指它的直接后代。
                       五、包含(后代)选择器:.first span{;}。即加入空格,用于选择指定元素下的后辈元素。作用于所有子后代元素。
                       六、通用选择器:*{;}。功能最强大的选择器,它的作用是匹配html中所有标签元素。
                       七、伪类选择符:a:hover{;}它允许给不存在的标签(标签的某种状态)设置样式,比如说我们给html中一个标签元素的鼠标滑过的状态来设置字体颜色。
                       八、分组选择器:标签一,标签二{;}。当你想为html中多个标签元素设置同一个样式时,可以使用分组选择符。
	 -->
	<h1>勇气</h1>
	<p>三年级时，我还是一个胆小如鼠的小女孩，上课从来不敢回答老师提出的问题，生怕回答错了老师会批评我。就一直没有这个勇气来回答老师提出的问题。学校举办的活动我也没勇气参加。</p>
	<p>到了三年级下学期时，我们班上了一节公开课，老师提出了一个很简单的问题，班里很多同学都举手了，甚至成绩比我差很多的，也举手了，还说着："我来，我来。"我环顾了四周，就我没有举手。</p>
	<img alt="" src="http://img.mukewang.com/52b4113500018cf102000200.jpg"
		title="">
	<hr />

	<h1>勇气</h1>
	<p>
		三年级时，我还是一个<span class="stress">胆小如鼠</span>的小女孩，上课从来不敢回答老师提出的问题，生怕回答错了老师会批评我。就一直没有这个<span
			class="stress">勇气</span>来回答老师提出的问题。学校举办的活动我也没勇气参加。
	</p>
	<p>
		到了三年级下学期时，我们班上了一节<span class="setGreen">公开课</span>，老师提出了一个很简单的问题，班里很多同学都举手了，甚至成绩比我差很多的，也举手了，还说着："我来，我来。"我环顾了四周，就我没有举手。
	</p>
	<img alt="" src="http://img.mukewang.com/52b4113500018cf102000200.jpg"
		title="">
	<hr />

	<h1>勇气</h1>
	<p>
		三年级时，我还是一个<span id="stress">胆小如鼠</span>的小女孩，上课从来不敢回答老师提出的问题，生怕回答错了老师会批评我。就一直没有这个勇气来回答老师提出的问题。学校举办的活动我也没勇气参加。
	</p>
	<p>
		到了三年级下学期时，我们班上了一节<span id="setGreen">公开课</span>，老师提出了一个很简单的问题，班里很多同学都举手了，甚至成绩比我差很多的，也举手了，还说着："我来，我来。"我环顾了四周，就我没有举手。
	</p>
	<img alt="" src="http://img.mukewang.com/52b4113500018cf102000200.jpg"
		title="">
	<hr />

	<p>
		到了<span class="stress bigsize">三年级</span>下学期时，我们班上了一节公开课，老师提出了一个很简单的问题，班里很多同学都举手了，甚至成绩比我差很多的，也举手了，还说着："我来，我来。"我环顾了四周，就我没有举手。
	</p>
	<p>
		到了<span id="stress bigsize">三年级</span>下学期时，我们班上了一节公开课，老师提出了一个很简单的问题，班里很多同学都举手了，甚至成绩比我差很多的，也举手了，还说着："我来，我来。"我环顾了四周，就我没有举手。
	</p>
	<hr />

	<p class="first">
		三年级时，<span>我还是一个胆小如鼠的小女孩</span>，上课从来不敢回答老师提出的问题，生怕回答错了老师会批评我。就一直没有这个勇气来回答老师提出的问题。学校举办的活动我也没勇气参加。
	</p>
	<h1>食物</h1>
	<ul class="food">
		<li>水果
			<ul>
				<li>香蕉</li>
				<li>苹果</li>
				<li>梨</li>
			</ul></li>
		<li>蔬菜
			<ul>
				<li>白菜</li>
				<li>油菜</li>
				<li>卷心菜</li>
			</ul>
		</li>
	</ul>
	<hr />

	<p class="first1">
		三年级时，我还是一个<span>胆小如鼠</span>的小女孩<span>，</span>上课从来不敢回答老师提出的问题，生怕回答错了老师会批评我。就一直没有这个勇气来回答老师提出的问题。学校举办的活动我也没勇气参加。
	</p>
	<ul class="food1">
		<li>水果
			<ul>
				<li>香蕉</li>
				<li>苹果</li>
				<li>梨</li>
			</ul>
		</li>
		<li>蔬菜
			<ul>
				<li>白菜</li>
				<li>油菜</li>
				<li>卷心菜</li>
			</ul></li>
	</ul>
	<hr />

	<h1>勇气</h1>
	<p>
		三年级时，我还是一个<a href="http://www.imooc.com" target="_blank">胆小如鼠</a>的小女孩，上课从来不敢回答老师提出的问题，生怕回答错了老师会批评我。就一直没有这个勇气来回答老师提出的问题。学校举办的活动我也没勇气参加
	</p>
	<p>到了三年级下学期时，我们班上了一节公开课，老师提出了一个很简单的问题，班里很多同学都举手了，甚至成绩比我差很多的，也举手了，还说着："我来，我来。"我环顾了四周，就我没有举手</p>
	<img alt="" src="http://img.mukewang.com/52b4113500018cf102000200.jpg"
		title="">
	<hr />

	<h1>勇气</h1>
	<p class="first">
		三年级时，我还是一个<span>胆小如鼠</span>的小女孩，上课从来不敢回答老师提出的问题，生怕回答错了老师会批评我。就一直没有这个勇气来回答老师提出的问题。学校举办的活动我也没勇气参加。
	</p>
	<p id="second">
		到了三年级下学期时，我们班上了一节公开课，老师提出了一个很<span>简单</span>的问题，班里很多同学都举手了，甚至成绩比我差很多的，也举手了，还说着："我来，我来。"我环顾了四周，就我没有举手
	</p>
	<img src="http://img.mukewang.com/52b4113500018cf102000200.jpg">
	<hr />

	<!-- CSS的
                      一、继承:CSS的某些样式是具有继承性的,继承是一种规则,它允许样式不仅应用于某个特定html标签元素,而且应用于其后代(子元素文本)。但注意有一些css样式是不具有集成型的(如border)。
                      二、特殊性:有时候我们为同一个元素设置了不同的CSS样式代码,那么元素会启用哪一个CSS样式呢?浏览器会根据权值来判断使用哪种css样式。
                                           标签-1;类选择符-10;ID选择符-100。
                      三、层叠:就是html文件中对于同一个元素可以有多个css样式存在,当有相同权重的样式存在时,会根据这些css样式的前后顺序来决定,处于最后面的css样式会被应用。后面的样式会覆盖前面的样式。所以前面的css样式样式优先级就不难理解了:内联样式表>嵌入式样式表>外部样式表。
                      四、重要性:!important。注意：!important要写在分号的前面。我们在做网页代码的时,有些特殊的情况需要为某些样式设置具有最高权值。
     -->
	权值的规则:
	<pre>
     p{color:red;}/*权值为1*/
     p span{color:green;}/*权值为1+1=2*/
     .waring{color:white;}/*权值为10*/
     p span .warning{color:purple;}/*权值为1+1+10=12*/
     #footer .note p{color:yellow;} /*权值为100+10+1=111*/    
     </pre>
	<p>注意:还有一个权值比较特殊--继承也有权值但很低,有的文献提出它只有0.1,所以可以理解为集成的全职最低。</p>
	<h1>勇气</h1>
	<p class="firstP">
		三年级时，我还是一个<span>胆小如鼠</span>的小女孩，上课从来不敢回答老师提出的问题，生怕回答错了老师会批评我。就一直没有这个勇气来回答老师提出的问题。学校举办的活动我也没勇气参加。
	</p>
	<p>到了三年级下学期时，我们班上了一节公开课，老师提出了一个很简单的问题，班里很多同学都举手了，甚至成绩比我差很多的，也举手了，还说着："我来，我来。"我环顾了四周，就我没有举手</p>
	<hr />

	<p>css的重要性,这里注意当网页制作者不设置css样式时,浏览器会按照袭击的一套样式来显示网页。并且用户也可以在浏览器中设置自己习惯的样式,比如有的用户习惯把字号设置为大一些,使其查看网页的文本更加清楚。这时注意样式优先级为:用户自己设置的样式>网页制作着样式>浏览器默认的样式,但记住!important优先级央视是个例外,权值高于用户自己设置的样式。</p>
	<hr />

	<!-- CSS格式化排版
                      一、文字排版
            1.字体(font-family:"Microsoft Yahei")
            2.字号、颜色
            3.粗体(font-weight:bold;)
            4.斜体(font-style:italic;)
            5.下划线(text-decoration:underline;)
            6.删除线(text-decoration:line-through;)
                      二、段落排版
            1.缩进(text-indent:2em;)
            2.行间距(行高)(line-height:1.5em;)
            3.中文字间距、字母间距(letter-spacing:50px;word-spacing:50px;)
            4.对齐(text-align:center;)
     -->
	<h2>CSS格式化排版</h2>
	<h4>文字排版</h4>
	<p>
		1.字体。这里注意不要设置不常用的字体,因为如果用户本地电脑上如果没有安装你设置的字体,就会显示浏览器默认的字体。(因为用户是否可以看到你设置的字体样式取决于用户本地电脑上是否安装你设置的字体。)现在一般网页喜欢设置微软雅黑Microsoft
		Yahei,英文兼容性更好一些。因为这种字体既美观又可以在客户端安全的显示出来(用户本地一般都是默认安装的)。<br />
		2.字号、颜色。<br />
		3.粗体。在这里大家可以看到,如果想为文字设置粗体是有单独的css样式来实现的,再不用为了实现粗体样式二使用h1-h6或strong标签了。<br />
		4.斜体。<br /> 5.下划线。有些情况下想为文字设置为下划线样式,这样就可以在视觉上强调文字。<br />
		6.删除线。这个样式在电商网站上常会见到,原价:<span class="oldPrice">300</span>元&nbsp;现价:230元
	</p>
	<h4>段落排版</h4>
	<p>
		1.缩进。中文文字中的段落前习惯空两个文字的空白,注意:2em的意思就是文字的2倍大小。<br /> 2.行间距(行高)。<br />
		3.中文字间距、字母间距。如果想在网页排版中设置文字间距或字母间距就可以使用间距来实现,注意:这个样式使用在英文单词前,是设置字母与字母之间的间距。<br />
		4.对齐。想为块状元素中的文本、图片设置居中样式吗?可以使用对齐样式。
	</p>
	<div>
		<img src="http://img.mukewang.com/52b4113500018cf102000200.jpg" />
	</div>
	<hr />

	<!-- CSS盒模型
	            一、元素分类
	       1.块级元素(div;h1...h6;p;ul;ol;table;form;blockquote;address)
	       2.内联元素(a;lable;span;strong;q;code)
	       3.内联块状元素(img;input)
	            二、盒模型
	       1.边框  ⑴. ⑵.
	       2.宽度和高度
	       3.填充
	       4.边界
	 -->
	<h2>CSS盒模型</h2>
	<h4>元素分类</h4>
	<p>
		1.元素分类。在讲解css布局之前,我们需要提前知道一些知识,在css中,html中的标签元素大体被分为三种不同的类型:块状元素、内联元素(行内元素)、内联块状元素。<br />
		常用的块状元素有:<br />
		div&nbsp;h1...h6&nbsp;p&nbsp;ol&nbsp;ul&nbsp;table&nbsp;address&nbsp;blockquote&nbsp;form<br />
		常用的内联元素有:<br />
		label&nbsp;a&nbsp;span&nbsp;strong&nbsp;q&nbsp;code&nbsp;br&nbsp;var&nbsp;cite&nbsp;i&nbsp;em<br />
		常用的内联块状元素有:<br /> img&nbsp;input<br />
		2.块级元素。设置display:block就是将元素显示为块级元素。如下代码就是将内联元素a转换为块状元素,从而使a元素具有块状元素特点。
		<code>a{display:block;}</code>
		。块级元素特点:<br /> &nbsp;⑴.每个块级元素都从新的一行开始,并且其后的元素也另起一行;<br />
		&nbsp;⑵.元素的高度、宽度、行高以及顶和底边距都可设置;<br />
		&nbsp;⑶.元素宽度在不设置的情况下,是它本身父容器的100%。<br />
		3.内联元素。当然块状元素也可以通过代码display:inline将元素设置为内联元素。如下代码就是将块状元素div转换为内联元素,从而使div元素具有内联元素特点。
		<code>div{display:inline;}</code>
		。内联元素特点:<br /> &nbsp;⑴.和其它元素都在一行上;<br />
		&nbsp;⑵.元素的高度、宽度及顶部和底部边距不可设置;<br /> &nbsp;⑶.元素的宽度就是它包含的文字或图片的宽度,不可改变。<br />
		&nbsp;小伙伴们你们观察一下右侧代码段,有没有发现一个问题,内联元素之间有一个间距问题。<br />
		4.内联块状元素。就是同时具备内联元素、块状元素的特点,代码display:inline-block就是将元素设置为内联块状元素。inline-block元素的特点：<br />
		&nbsp;⑴.和其它元素都在一行上;<br /> &nbsp;⑵.元素的高度、宽度、行高以及顶和底边距都可设置。<br />
	</p>
	<div class="block">div1</div>
	<div class="block">div2</div>
	<p class="block">段落一段落一段落一段落一段落一</p>
	<a class="inline" href="http://www.baidu.com">百度</a>
	<a class="inline" href="http://www.imooc.com">慕课网</a>
	<span class="inline">33333</span>
	<span class="inline">44444</span>
	<em class="inline">555555</em>
	<br />
	<a class="inline_block">1</a>
	<a class="inline_block">2</a>
	<a class="inline_block">3</a>
	<a class="inline_block">4</a>
	<h4>盒模型</h4>
	<p>
		1.盒模型(块级元素都具备盒子模型特征)。五仁月饼-(div>lable),内填充、外边距、边框都有四个方向。<br />
		2.边框一。盒子模型的边框就是围绕着内容及补白的线,这条线你可以设置它的粗细、样式和颜色。注意：1.border-style:dashed|dotted|solid;2.border-color:十六进制颜色;3.border-width:px|thin|medium|thick;<br />
		3.边框二。现在有一个问题,如果有想为p标签单独设置下边框,而其它三遍都不设置边框样式怎么办?css样式中允许只为一个方向的边框设置样式.<br />
		4.宽度和高度。css内定义的宽和高,指的是填充以里内容范围。因此一个元素实际宽度(盒子的宽度)=左边界+左边框+左填充+内容宽度+右填充+右边框+右边界。<br />
		5.填充。元素内容与边框之间是可以设置距离的,称之为'填充'。填充也可分为上、右、下、左。<br />
		6.边界。元素与其它元素之间的距离可以使用边界来设置。边界也可分为上、右、下、左。padding在边框内,margin在边框外。
	</p>

	<h1>勇气</h1>
	<p class="border1">三年级时，我还是一个胆小如鼠的小女孩，上课从来不敢回答老师提出的问题，生怕回答错了老师会批评我。就一直没有这个勇气来回答老师提出的问题。学校举办的活动我也没勇气参加。</p>
	<p class="border1">到了三年级下学期时，我们班上了一节公开课，老师提出了一个很简单的问题，班里很多同学都举手了，甚至成绩比我差很多的，也举手了，还说着："我来，我来。"我环顾了四周，就我没有举手。</p>
	<ul class="border2">
		<li>别让不会说话害了你</li>
		<li>二十七八岁就应该有的见识</li>
		<li>别让不好意思害了你</li>
	</ul>
	<ul class="wh">
		<li>别让不会说话害了你</li>
		<li>二十七八岁就应该有的见识</li>
		<li>别让不好意思害了你</li>
	</ul>
	<div class="padding">盒子一</div>
	<div class="box margin">box1</div>
	<div class="box">box2</div>
	<hr />

	<!-- CSS布局模型
	            一、流动模型(Flow):⑴. ⑵.
	            二、浮动模型(Float)
	            三、层模型(Layer)
	        1.绝对定位
	        2.相对定位
	        3.固定定位
	 -->
	<h2>CSS布局模型</h2>
	<p>清楚了CSS盒模型的基本概念、盒模型类型,我们就可以深入探讨网页布局的基本模型了。布局模型与盒模型一样都是CSS最基本、最核心的概念。但布局模型是建立在盒模型基础之上,又不同于我们常说的CSS布局样式或CSS布局模板。如果是布局模板是本,那么CSS布局模板就是末了,是外在的表现形式。CSS包含3种基本的布局模型,用英文概括为:Flow、Layer和Float。</p>
	<h4>流动模型</h4>
	<p>流动(Flow)是默认的网页布局模式。也就是说网页在默认状态下的HTML网页元素都是根据流动模型来分布网页内容的。流动布局模型具有2个比较典型的特征：第一点,块状元素都会在所处的包含元素内自上而下按顺序垂直延伸布局,因为在默认状态下,块状元素的宽度都为100%。实际上,块状元素都会以行的形式占据位置。第二点,在流动模型下,内联元素都会在所处的包含元素内从左到右水平分布显示。(内联元素可不像块状元素这么霸道独占一行)</p>
	<h4>浮动模型</h4>
	<p>两个块状元素并排显示,怎么办呢?不要着急,设置元素浮动可以实现这一愿望。任何元素在默认情况下是不能浮动的,但可以用CSS定义为浮动,如div、p、table、img等元素都可以被定义为浮动。</p>
	<h4>层模型</h4>
	<p>
		层布局模型就像是图像软件PS中非常流行的图层编辑功能一样,每个图层能够精确定位操作,但在网页设计领域,由于网页大小的活动性,层布局没能受到热捧。但在网页上局部使用层布局还是有其方便之处的。<br />
		1.绝对定位(position:absolute):这条语句的作用将元素从文档中拖出来,然后使用left、right、top、bottom属性相对于其最接近的一个具有定位属性的父包含块进行绝对定位。如果不存在这样的包含块,则相对于body元素,即相对于浏览器窗口。<br />
		2.相对定位(position:relative);通过left、right、top、bottom属性确定元素在正常文档流中的偏移位置。相对定位完成的过程是首先按static(float)方式生成一个元素(并且元素像层一样浮动了起来),然后相对于以前的位置移动,移动的方向和幅度有left、right、top、bottom属性确定,偏移前的位置保留不动。<br />
		3.固定定位(position:fixed)。固定定位的元素会始终位于浏览器窗口内视图的某个位置,不会受文档流动影响,这与background-attachment:fixed;属性功能相同。以下代码可以实现相对于浏览器视图向右移动100px,向下移动50px。并且拖动滚动条时位置固定不变。<br />
		4.Relative和Absolute组合使用。小伙伴们学习了12-6小节的绝对定位的方法：使用position:absolute可以实现被设置元素相对于浏览器(body)设置定位以后,大家有没有想过可不可以相对于其他元素进行定位呢?答案是肯定的,当然可以。使用position:relative来帮忙,但是必须遵守下面规范:<br />
		&nbsp;1.参照定位的元素必须是相对定位元素的前辈元素(父元素)box1-参照定位的元素;box2-相对定位元素<br />
		&nbsp;2.参照定位的元素必须加入position:relative(父元素)<br />
		&nbsp;3.定位元素加入position:absolute,便可以使用top、bottom、left、right来进行偏移定位了。
	</p>

	<div class="flow1">box2</div>
	<h1 class="flow1">标题</h1>
	<p class="flow1">文本段文本段文本段文本段文本段文本段文本段文本段文本段文本段文本段文本段文本段文本段文本段文本段文本段。</p>
	<div class="flow1 wh">box1</div>
	<a href="http://www.imooc.com">www.imooc.com</a>
	<span>强调</span>
	<em>重点</em>
	<strong>强调</strong>
	<br />
	<div class="float float_left">浮动模型-左</div>
	<div class="float float_right">浮动模型-右</div>
	<div class="layer_absolute1">层模型-绝对定位-左</div>
	<div class="layer_absolute2">层模型-绝对定位-右</div>
	<div class="layer_relative">层模型-相对定位</div>
	<span>偏移前的位置还保留不动，覆盖不了前面的div没有偏移前的位置</span>
	<div class="layer_fixed">层模型-固定定位</div>

	<div id="layer_comb01">
		<div id="layer_comb02">相对参照元素进行定位</div>
	</div>
	<h1>下面是任务部分</h1>
	<div id="layer_comb11">
		<img src="http://img.mukewang.com/541a7d8a00018cf102000200.jpg" />
		<div id="layer_comb12">当我还是三年级的学生时是一个害羞的小女生。</div>
	</div>
	<hr />

	<!-- CSS代码缩写
	     1.盒模型代码简写
	     2.颜色值缩写
	     3.字体缩写
	 -->
	<h2>CSS代码缩写,占用更少的带宽</h2>
	<p>
		1.盒模型代码简写。还记得在讲盒模型时margin、padding、border设置上下左右四个方向的编剧是按照顺时针方向设置的:上右下左。<br />
		2.颜色值缩写。关于颜色的css的样式也是可以所写的,当你设置的颜色是16进制的颜色值时,如果每两位的值相同,可以缩写一半。<br />
		3.字体缩写。网页中的字体css样式代码也有他自己的缩写方式。注意:⑴.使用这一简写方式你至少要制定font-size和font-family属性,其它的属性如未指定将自动使用默认值。
		⑵.在缩写时font-size与line-height中间澳加入斜杠。
	</p>
	<p class="box_ab">文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本。</p>
	<div class="font_ab">
		<p>Littering a dark and dreary road lay the past relics of
			browser-specific tags, incompatible DOMs, broken CSS support, and
			abandoned browsers.</p>
		<p>We must clear the mind of the past. Web enlightenment has been
			achieved thanks to the tireless efforts of folk like the W3C, WaSP,
			and the major browser creators.</p>
		<p>The CSS Zen Garden invites you to relax and meditate on the
			important lessons of the masters. Begin to see with clarity. Learn to
			use the time-honored techniques in new and invigorating fashion.
			Become one with the web.</p>
	</div>
	<hr />

	<!-- 单位和值
	     1.颜色值
	     2.单位值
	 -->
	<h2>单位和值</h2>
	<p>
		1.颜色值。⑴.英文命令颜色(color:red);⑵.RGB颜色(color:rgb(20%,33%,25%));⑶.十六进制颜色:普遍使用的方法,其原理其实也是RGB设置。<br />
		2.单位值。⑴.像素(像素为什么是相对单位呢？因为像素指的是显示器上的小点。);⑵.em(就是本元素给定字体的font-size值,如果元素的font-size为14排序,那么1em=14px;如果元素的font-size=18px,那么1em=18px。);⑶.百分比(130%)。
	</p>
	<hr />

	<!-- css样式设置小技巧
	            一、水平居中
	        1.设置 
	                        ⑴.行内元素;
	                        ⑵.块状元素;
	            ①.定宽块状元素
	            ②.不定宽块状元素
	        2.总结
	            二、垂直居中
	            三、隐性改变display类型
	 -->
	<h2>css样式设置小技巧</h2>
	<h4>水平居中</h4>
	<p>
		1.设置:我们在实际工作中常会遇到需要设置水平居中的场景,比如为了美观,文章的标题一般都是水平居中显示的。<br>
		&nbsp;&nbsp;&nbsp;⑴.行内元素。如果被设置元素为文本、图片等行内元素时,水平居中是通过给父元素设置text-align:center来实现的。div是'...'这个文本的父元素。<br />
		&nbsp;&nbsp;&nbsp;⑵.块状元素。<br />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;①.定宽块状元素(块状元素的宽度width为固定值)。满足定宽和块状两个条件的元素是可以通过设置'左右margin值为auto'来实现居中。<br />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;②.不定宽块状元素。<br />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在实际工作中我们会遇到需要为'不定宽度的块状元素'设置居中,比如网页上的分页导航,因为分页的数量是不确定的,所以我们不能通过设置宽度来限制它的弹性。不定宽度的块状元素<br />
		有三种方法居中(这三种方法目前使用的都很多):<br />
		1.加入table标签;利用table标签的长度自适应性--即不定义其长度也不默认父元素body的长度(table其长度根据其内文本长度决定),因此可看做一个定宽块状元素,然后再利用定宽块状居中的
		margin的方法,使其水平居中。step one:为需要设置的居中的元素外面加入一个table标签(包括tbody、tr、td);step
		two:为这个table设置'左右margin居中'<br />
		2.设置display:inline方法:与第一种类似,显示类型设为行内元素,进行不定宽元素的属性设置;改变元素的display类型为行内元素,利用其属性(text-align:center)直接设置。改变块级元素的display为inline类型(设置为行内元素显示),然后使用text-align:centre来实现居中效果。这种方法相比第一种方法的优势是不用增加无欲以标签,这种方法相比第一种方法的优势是不用增加无语义标签,但也存在着一些问题:它将块状元素的display类型改为inline,变成了行内元素,所以少了一些功能,比如设定长度值。<br />
		3.设置position:relative和left:50%
		利用相对定位的方式,将元素向左偏移50%,即达到居中的目的;设置浮动和相对定位来实现。通过给父元素设置float,然后给父元素设置position:relative和left:50%,子元素设置position:relative和left:-50%来实现水平居中。<br />
	</p>
	<h4>垂直居中</h4>
	<p>
		1.父元素高度确定的单行文本;通过设置父元素的height和line-height高度一致来实现的。(height:该元素的高度,line-height:顾名思义,行高(行间距),指在文本中,行与行之间的基准线的距离)。
		line-height与font-size的计算值之差,在CSS中成为"行间距"。分为两半,分别加到一个文本行内容的顶部和底部。这种文字行高与块高一致带来了一个弊端:当文字内容的长度大于块的宽时,就有内容脱离了块。
		<br /> 2.父元素高度确定的多行文本;<br />
		方法一:使用插入table(包括tbody、tr、td)标签,同时设置vertical-align:middle。css中有一个用于竖直居中的属性vertical-align,
		在父元素设置此样式时,会对inline-block类型的子元素都有用。因为td标签默认情况下就默认设置了vertical-align为middle,所以我们不需要显示地设置了。<br />
		方法二:除了上一节讲到的插入table标签,可以使父元素高度确定的多行文本垂直居中之外,本节介绍另外一种实现这种效果的方法。但这种方法兼容性比较差,只是提供学习参考。
		在chrome、firefox及IE8以上的浏览器下可设置会计元素的display为table-cell(设置为表格单元显示),激活vertical-align属性,但注意IE6、7并不支持这个样式,兼容性比较差。
		这种方法的好处是不用添加多余的无意义的标签,但缺点也很明显,它的兼容性不是很好,不兼容IE6、7而且这样修改display的block变成了table-cell，破坏了原有的块状元素的性质。
		<br />
	</p>
	<h4>隐性改变display类型</h4>
	<p>有一个有趣的现象就是当为元素(不论之前是什么类型元素,display:none除外)设置以下2个句之一:
		1.position:absolute;2.float:left或float:right简单来说,只要html代码中出现以上两句之一,元素的display显示类型
		就会自动变为以display:inline-block(块状元素)的方式显示,当然就可以设置元素的width和height了,且默认宽度不沾满元素。
		如下面的代码,小伙伴都知道a标签是行内元素,所以设置它的width是没有效果的,但是设置为position:absolute以后,就可以了。
	</p>
	<div class="text_align">我是文本,哈哈,我想要在父容器中水平居中显示。</div>
	<div class="text_align">
		<img src="http://img.mukewang.com/52da54ed0001ecfa04120172.jpg" />
	</div>
	<div class="fixed_block">我是定宽块状元素，哈哈，我要水平居中显示。</div>
	<table class="unfixed_block_table">
		<tbody>
			<tr>
				<td>
					<ul>
						<li style="float:left;display: inline;margin-right: 8px;"><a
							href="#">1</a></li>
						<li style="float:left;display: inline;margin-right: 8px;"><a
							href="#">2</a></li>
						<li style="float:left;display: inline;margin-right: 8px;"><a
							href="#">3</a></li>
					</ul>
				</td>
			</tr>
		</tbody>
	</table>
	<div style="background: #ccc;margin:0 auto;">设置我所在的div容器水平居中</div>
	<div class="unfixed_block_display">
		<ul>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
		</ul>
	</div>
	<div class="unfixed_block_position">
		<ul>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
		</ul>
	</div>
	<div>
		<div class="unfixed_block_un">我们来学习一下这种方法。</div>
	</div>
	<div class="parent_height_fixed_single">
		<h2>hi,imooc!</h2>
	</div>
	<table>
		<tbody>
			<tr>
				<td class="parent_height_fixed_multi1">
					<div>
						<p>看我是否可以居中。</p>
						<p>看我是否可以居中。</p>
						<p>看我是否可以居中。</p>
						<p>看我是否可以居中。</p>
						<p>看我是否可以居中。</p>
					</div></td>
			</tr>
		</tbody>
	</table>
	<table>
		<tbody>
			<tr>
				<td>
					<div>
						<img src="http://img.mukewang.com/52b4113500018cf102000200.jpg"
							title="害羞的小女生">
					</div></td>
			</tr>
		</tbody>
	</table>
	<div class="parent_height_fixed_multi2">
		<p>看我是否可以居中。</p>
		<p>看我是否可以居中。</p>
		<p>看我是否可以居中。</p>
		<p>看我是否可以居中。</p>
		<p>看我是否可以居中。</p>
	</div>
	<div class="parent_height_fixed_multi2">
		<img src="http://img.mukewang.com/54ffac56000169c001840181.jpg"
			title="害羞的小女生" />
	</div>
	<div class="recessivity_change_display">
		<a href="#">进入课程请点击这里</a>
	</div>
</body>
</html>

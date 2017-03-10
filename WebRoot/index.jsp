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
<title>标签元素</title>
<style type="text/css">
/* h1 {
	font-size: 12px;
	color: #930;
	text-align: center;
} */
span {
	color: blue;
}

table tr,td,th {
	border: 1px solid #000;
}
</style>
</head>

<body>
    <a href="page/css.jsp" target="_blank" title="Cascading Style Sheets">css.jsp</a>

	<!-- web开发基础技术需要掌握:
         1.HTML是网页内容的载体。
         2.CSS样式是表现。
         3.JavaScript是用来实现网页上的特效效果。 (动画、交互)
    -->
	<h1>Hello World</h1>

	<!-- 语义化 -->
	<p>明白每个标签的用途(在什么情况下使用此标签合理)、标签在浏览器中的默认样式;语义化好处:1.更容易被搜索引擎收录。2.更容易让屏幕阅读器独处网页内容</p>

	<!-- html的代码注释-方便多人合作开发网页代码-->
	<!-- 在线咨询begin -->
	<p>
		一站式报名咨询、助学答疑服务，无论是报名、选课、学习、做作业、考试、写论文，毕业，这里都有专业老师为你答疑解惑！<a href="#">向报名顾问咨询</a>
	</p>
	<!-- 在线咨询end -->

	<!-- 认识标签 -->
	<h1>勇气</h1>
	<p>三年级时，我还是一个胆小如鼠的小女孩，上课从来不敢回答老师提出的问题，生怕回答错了老师会批评我。就一直没有这个勇气来回答老师提出的问题。学校举办的活动我也没勇气参加。</p>
	<p>到了三年级下学期时，我们班上了一节公开课，老师提出了一个很简单的问题，班里很多同学都举手了，甚至成绩比我差很多的，也举手了，还说着："我来，我来。"我环顾了四周，就我没有举手。</p>
	<img alt="" src="http://img.mukewang.com/52b4113500018cf102000200.jpg">

	<!-- 标签的语法1.<>;2.成对出现;3.可以嵌套;4.建议小写 -->
	<h1>在本教程中，你将学习如何使用 HTML来创建站点</h1>
	<p>当特殊的样式需要应用到个别元素时，就可以使用内联样式。</p>

	<!-- 认识html文件基本结构 
         1.<html>...<html/>
         2.<head>...</head> (<script> <meta> <title> <style> <link>)
         3.<body>...</body> (<h1> <p> <a> <img>)
	-->
	<h1>在本小节中，你将学会认识html文件基本结构</h1>

	<!-- head标签 -->
	<h1>欢迎来到慕课网</h1>

	<!-- body标签 -->
	<p>在网页上要展示出来的页面内容一定要放在body标签中</p>

	<!-- p标签 -->
	<p>想在网页上显示文章,这时就需要p标签,把文章的段落放到p标签中。p标签的默认样式,可以在上图中看出来,段前段后都会有空白,如果不喜欢这个空白,可以用css样式来删除或改变它。</p>
	<p>我的第一个段落。</p>
	<p>我的第二个段落。</p>

	<!-- hx标签 -->
	<p>标题标签一共有6个,h1,h2,h3,h4,h5,h6分别为一级标题、二级标题、三级标题并且依据重要性递减。注意：因为h1标签在网页中比较重要,所以一般h1标签被用在网站名称上。</p>
	<h1>一级标题</h1>
	<h2>二级标题</h2>
	<h3>三级标题</h3>
	<h4>四级标题</h4>
	<h5>五级标题</h5>
	<h6>六级标题</h6>

	<!-- 强调语气 -->
	<p>有了段落又有了标题,现在如果想在一段话中特别强调某几个文字,这时候就可以用到em或strong标签。但两者在强调的语气上有区别:strong表示更强烈的强调。并在浏览器中em默认用斜体表示,strong用粗体表示。两个标签相比,目前国内前端程序员更喜欢使用strong标签表示强调。</p>
	<div class="p-price">
		<em>抢购价:</em> <strong>￥219.00</strong>
	</div>

	<!-- span标签 -->
	<p>使用span标签为文字设置单独样式,span标签是没有语义的,它的作用就是为了设置单独的样式用的。</p>
	<p>
		1922年的春天，一个想要成名名叫尼克•卡拉威（托比•马奎尔Tobey Maguire
		饰）的作家，离开了美国中西部，来到了纽约。那是一个道德感渐失，爵士乐流行，走私为王，股票飞涨的时代。为了追寻他的<span>美国梦</span>，他搬入纽约附近一海湾居住。
	</p>
	<p>菲茨杰拉德，二十世纪美国文学巨擘之一，兼具作家和编剧双重身份。他以诗人的敏感和戏剧家的想象为"爵士乐时代"吟唱华丽挽歌，其诗人和梦想家的气质亦为那个奢靡年代的不二注解。</p>

	<!-- q标签 -->
	<p>短文本引用。想在你的html中加一段引用吗?比如在你的网页的文章里想引起某个作家的一句诗,这样会使你的文章更加出彩,那么q标签是你所需要的。注意要引用的文本不用加双引号,浏览器会对q标签自动添加双引号。注意这里用q标签的真正关键点不是它的默认样式双引号,而是它的语义:引用别人的话。</p>
	<p>
		最初知道庄子，是从一首诗<q>庄生晓梦迷蝴蝶,望帝春心托杜鹃。</q>开始的。虽然当时不知道是什么意思，只是觉得诗句挺特别。后来才明白这个典故出自是庄子的《逍遥游》，《逍遥游》代表了庄子思想的最高境界，是对世俗社会的功名利禄及自己的舍弃。
	</p>

	<!-- blockquote标签 -->
	<p>是对长文本的引用,如在文章中引入大段某知名作家的文字,这时需要这个标签。浏览器对blockquote标签的解析是缩进样式。</p>
	<h2>心似桂花开</h2>
	<p>大家都在忙于自认为最重要的事情，却没能享受到人生的乐趣，反而要吞下苦果？</p>
	<blockquote>暗淡轻黄体性柔，情疏迹远只香留。何须浅碧深红色，自是花中第一流。</blockquote>
	<p>这是李清照《咏桂》中的词句，在李清照看来，桂花暗淡青黄，性情温柔，淡泊自适，远比那些大红大紫争奇斗艳花值得称道。</p>

	<!-- br标签 -->
	<p>对于上一小节的例子,我们想让那首诗显示的更美观些,相当于word文档中的回车。与以前我们学过的标签不一样,br标签是一个空标签,没有HTML内容的标签就是空标签,这样的标签还有hr、img。</p>
	<h2>《咏桂》</h2>
	<p>
		暗淡轻黄体性柔，<br /> 情疏迹远只香留。<br /> 何须浅碧深红色，<br /> 自是花中第一流。
	</p>

	<!-- &nbsp; -->
	<h1>感悟梦想</h1>
	<p>来源：作文网&nbsp;&nbsp;作者：为梦想而飞</p>

	<!-- hr标签 -->
	<p>添加水平横线,在信息展示时,有时会需要加一些用于分割的横线,这样会使文章看起来整齐些。</p>
	<p>火车飞驰过暗夜里的村庄，月光，总是太容易让思念寂寞，太容易让人觉得孤独。</p>
	<hr />
	<p>每一枚被风吹起的蒲公英，都载满了一双眼睛的深情告别与一个目光的依依不舍。那天，我拿着行李，带上一个背影的祝福与惆怅，挥手告别了这片土地。我不知道，我何时会回来。</p>

	<!-- address标签 -->
	<p>为网页加入地址信息,一般网页中会有一些网站的联系地址信息需要在网页中展示出来，如公司地址、电子邮件地址、签名、文档的作者身份。在浏览器上显示的样式为斜体</p>
	<h2>慕课网</h2>
	<p>超酷的互联网、IT技术免费学习平台，创新的网络一站式学习、实践体验；服务及时贴心，内容专业、有趣易学。专注服务互联网工程师快速成为技术高手!公司地址：</p>
	<address>北京市西城区德外大街10号</address>

	<!-- code标签 -->
	<p>在介绍语言技术的网站中,避免不了在网页中显示一些计算机专业的编程代码,当代码为一行代码时,你就可以使用code标签了,注意:在文章中一般如果要插入多行代码时不能使用code标签了。注：如果是多行代码,可以使用pre标签。</p>
	<p>
		我们可能知道水平渐变的实现，类似这样：
		<code>{background-image:linear-gradient(left, red 100px, yellow
			200px);}</code>
	</p>

	<!-- pre标签 -->
	<p>在上节中介绍加入一行代码的标签为code，但是在大多数情况下是需要加入大段代码的,这时候就需要使用pre标签。pre标签的主要作用:预格式化的文本。被包围在pre元素中的文本通常会保留空格和换行符。注意：pre标签不只是为显示计算机的源代码时用的,在你需要在网页中预显示格式时都可以使用它,只是pre标签的一个常见因公就是用来显示计算机的源代码。</p>
	<pre>
var message="欢迎";
for(var i=1;i<=10;i++)
{
    alert(message); 
}
   </pre>

	<!-- ul-li标签 -->
	<p>在浏览网页时,你会发现网页上有很多信息的列表,如新闻列表、图片列表。这些列表就可以使用ul-li标签来完成。ul-li是没有前后顺序的信息列表。ul-li在网页中显示的默认样式一般为：每项li前都自带一个圆点。</p>
	<ul>
		<li>精彩少年</li>
		<li>美丽突然出现</li>
		<li>触动心灵的旋律</li>
	</ul>

	<!-- ol-li标签 -->
	<p>添加图书销量排行榜,如果想在网页中展示有前后顺序的信息列表,怎么办呢？如,当当网上的书籍热卖排行榜,如下图所示。这类信息展示就可以使用ol标签来制作有序列表来展示。ol-li在网页中显示的默认样式一般为:每项li前都自带一个序号,序号默认从1开始。</p>
	<h3>热点课程下载排行榜:</h3>
	<ol>
		<li>前端开发面试心法</li>
		<li>零基础学习html</li>
		<li>javascript全攻略</li>
	</ol>

	<!-- div标签 -->
	<p>在网页制作过程中,可以把一些独立的逻辑部分划分出来,放在一个div标签中,这个div标签的作用就相当于一个容器。什么是逻辑部分？它是页面上相互关联的一组元素。如网页中的独立的栏目版块,就是一个典型的逻辑部分。</p>
	<div id="hotList">
		<h2>热门课程排行榜</h2>
		<ol>
			<li>前端开发面试心法</li>
			<li>零基础学习html</li>
			<li>javascript全攻略</li>
		</ol>
	</div>
	<div id="learningInstructed">
		<h2>最新课程排行</h2>
		<ol>
			<li>版本管理工具介绍-Git篇</li>
			<li>Canvas绘图详解</li>
			<li>QQ5.0侧滑菜单</li>
		</ol>
	</div>
	<p>给div命名,使逻辑更加清晰。在上一小节中,我们把一些标签放进div里,划分出一个独立的逻辑部分。为了使逻辑更加清晰,我们可以为这一独立的逻辑部分设置一个名称,这个就像我们每个人都有一个身份证号,这个身份证号是唯一标识我们的身份的,也是必须唯一的。</p>

	<!-- table标签 -->
	<p>有时候我们需要在网页上展示一些数据,如某公司想在网页上展示公司的库存清单。创建表格的四个元素:table、tbody、tr、th、td。tbody:当表格内容非常多时,表格会下载一点显示一点,但如果加上tbody标签后,这个表格就要等表格内容全部下载完才会显示。th:表格的头部的一个单元格,表格表头。表格中列的个数,取决于一行中数据单元格的个数。table表格在没有添加css样式之前,在浏览器中显示是没有表格线的;表头,也就是th标签中的文本默认为粗体并且居中显示。</p>
	<table>
		<tr>
			<th>产品名称</th>
			<th>品牌</th>
			<th>库存量(个)</th>
			<th>入库时间</th>
		</tr>
		<tr>
			<td>耳机</td>
			<td>联想</td>
			<td>500</td>
			<td>2013-1-2</td>
		</tr>
		<tr>
			<td>U盘</td>
			<td>金士顿</td>
			<td>120</td>
			<td>2013-8-10</td>
		</tr>
		<tr>
			<td>U盘</td>
			<td>爱国者</td>
			<td>133</td>
			<td>2013-3-25</td>
		</tr>
	</table>
	<p>用css样式,为表格加入边框。Table表格在没有添加css样式之前,是没有边框的。这样不便于我们后期合并单元格知识点的讲解,所以在这一节中我们为表格添加一些样式,为它添加边框。</p>

	<!-- caption标签 -->
	<p>为表格添加标题和摘要,表格还是需要添加一些标签进行优化,可以添加标题和摘要。摘要的内容是不会在浏览器中显示出来的。它的作用是增加表格的可读性(语义化),使搜索引擎更好的读懂表格内容,还可以使屏幕阅读器更好的帮助用户读取表格内容。标题用以描述表格内容,标题的显示位置：表格上方。</p>
	<table summary="这个表格描述怡安街小学三年级数学平均成绩表,一到3班,三个班级的数学平均成绩。">
		<caption>怡安街小学三年级数学平均成绩表</caption>
		<tr>
			<th>班级</th>
			<th>学生数</th>
			<th>平均成绩</th>
		</tr>
		<tr>
			<td>一班</td>
			<td>30</td>
			<td>89</td>
		</tr>
		<tr>
			<td>二班</td>
			<td>35</td>
			<td>85</td>
		</tr>
		<tr>
			<td>三班</td>
			<td>32</td>
			<td>80</td>
		</tr>
	</table>

	<!-- a标签 -->
	<p>使用a标签可实现超链接,它在网页制作中可以说是无处不在,只要有链接的地方,就会有这个标签。语法:title属性的作用,鼠标滑过链接文字时会显示这个属性的文本内容。这个属性在实际网页开发中作用很大,主要方便搜索引擎了解链接地址的内容(语义化更友好)。注意：还有一个有趣的现象不知道小伙伴发现了没有,只要为文本加入a标签后,文字的颜色就会自动变为蓝色(被点击过的文本颜色为紫色),颜色很难看吧,不过没有关系后面我们学习css样子就可以
		设置过来,后面会详细讲解。在新建浏览器窗口中打开链接,a标签在默认情况下,链接的网页是在当前浏览器窗口中打开,有时我们需要在新的浏览器窗口中打开。target="_blank"</p>
	<ul>
		<li><a href="#" title="前端开发面试心法">前端开发面试心法</a></li>
		<li><a href="#" title="零基础学习html">零基础学习html</a></li>
		<li><a href="#" title="JavaScript全攻略">JavaScript全攻略</a></li>
	</ul>
	<p>
		1922年的春天，一个想要成名名叫尼克•卡拉威（<a href="http://www.m1905.com/mdb/star/3316/"
			title="" target="_blank">托比•马奎尔Tobey Maguire</a>
		饰）的作家，离开了美国中西部，来到了纽约。那是一个道德感渐失，爵士乐流行，走私为王，股票飞涨的时代。为了追寻他的美国梦，他搬入纽约附近一海湾居住。
	</p>
	<p>菲茨杰拉德，二十世纪美国文学巨擘之一，兼具作家和编剧双重身份。他以诗人的敏感和戏剧家的想象为"爵士乐时代"吟唱华丽挽歌，其诗人和梦想家的气质亦为那个奢靡年代的不二注解。</p>

	<!-- mailto标签 -->
	<p>a标签还有一个作用是可以链接Email地址,使用mailto能让访问者便捷向网站管理员发送邮件。我们还可以利用mailto做许多事情。注意：如果mailto后面同时有多个参数的话,第一个参数必须以?开头,后面的参数每一个都以&分割。</p>
	<a
		href="mailto:yy@imooc.com?cc=xiaoming@imooc.com&bcc=xiaoyu@imooc.com&subject=主题&body=邮件内容">发送</a>
	<p>1922年的春天，一个想要成名名叫卡拉威（马奎尔Tobey Maguire
		饰）的作家，离开了美国中西部，来到了纽约。那是一个道德感渐失，爵士乐流行，走私为王，股票飞涨的时代。为了追寻他的美国梦，他搬入纽约附近一海湾居住。</p>
	<p>菲茨杰拉德，二十世纪美国文学巨擘之一，兼具作家和编剧双重身份。他以诗人的敏感和戏剧家的想象为"爵士乐时代"吟唱华丽挽歌，其诗人和梦想家的气质亦为那个奢靡年代的不二注解。</p>
	<a href="mailto:yy@imooc.com?subject=观了不起的盖茨有感。&body=你好,对此评论有些想法。">对此影评有何感想，发送邮件给我</a>

	<!-- img标签 -->
	<p>在网页的制作中为使网页绚丽美观,肯定是缺少不了图片,可以使用img标签来插入图片。讲解:src标志图像的未知;alt指定图像的描述性文本,当图像不可见时(下载不成功时),可看到该属性指定的文本;title提供在图像可见时对图像的描述(鼠标滑过图片时显示的文本);图像可以是GIF、PNG、JPEG格式的图像文件。</p>
	<p>
		1922年的春天，一个想要成名名叫尼克•卡拉威（<a href="http://www.m1905.com/mdb/star/3316/"
			target="_blank">托比•马奎尔Tobey Maguire</a>
		饰）的作家，离开了美国中西部，来到了纽约。那是一个道德感渐失，爵士乐流行，走私为王，股票飞涨的时代。为了追寻他的美国梦，他搬入纽约附近一海湾居住
	</p>
	<p>菲茨杰拉德，二十世纪美国文学巨擘之一，兼具作家和编剧双重身份。他以诗人的敏感和戏剧家的想象为"爵士乐时代"吟唱华丽挽歌，其诗人和梦想家的气质亦为那个奢靡年代的不二注解。</p>
	<img alt="菲茨杰拉德"
		src="http://img.mukewang.com/52da54ed0001ecfa04120172.jpg"
		title="电影介绍">

	<!-- form标签 -->
	<p>网站怎么与用户进行交互?答案是使用表单form。表单时可以把浏览器输入的数据传送到服务器端,这样服务器端程序就可以处理表单传过来的数据。action浏览器输入的数据被传送到的地方,method数据传送的方式。所有表单控件(文本框、文本域、按钮、单选框、复选框等)都必须放在form标签之间(否则用户输入的信息可提交不到服务器上哦!)。method:post/get的区别这一部分内容属于后端程序员考虑的问题。</p>
	<form method="post" action="#">
		姓名: <input type="text" name="myName" /> <br /> 密码: <input
			type="password" name="pass" />
	</form>

	<!-- textarea -->
	<p>支持多行文本输入,当用户需要在表单中输入一大段文字时,需要用到文本输入域。cols多行输入域的列数;rows多行输入域的行数。注意这两个属性可用css样式的width和height来代替</p>
	<form method="post" action="#">
		联系我们
		<textarea rows="10" cols="50">在这里输入内容</textarea>
	</form>

	<!-- 单选、复选框 -->
	<p>在使用表单设计调查表时,为了减少用户的操作,使用选择框是一个好主意。type="radio/checkbox";value提交数据到服务器的值;name为控件命名,以备后台程序ASP、PHP使用;checked。</p>
	<form name="iForm" method="post" action="#">
		你是否喜欢旅游?请选择:<br /> <input type="radio" value="1" name="radioLove"
			checked="checked" />喜欢 <input type="radio" value="2"
			name="radioLove" />不喜欢 <input type="radio" value="3"
			name="radioLove" />无所谓 <br /> <br />您对哪些运动感兴趣,请选择:<br /> <input
			type="checkbox" value="1" name="checkbox1" />跑步 <input
			type="checkbox" value="2" name="checkbox2" checked="checked" />打球 <input
			type="checkbox" value="3" name="checkbox3" checked="checked" />登山 <input
			type="checkbox" value="4" name="checkbox4" />健美
	</form>

	<!-- select-option -->
	<p>使用下拉列表框,节省空间。下拉列表在网页中也常会用到,它可以有效地节省网页空间。既可以多选、又可以多选。value向服务器提交的值;selected</p>
	<form name="iForm" method="post" action="#">
		爱好: <select multiple="multiple">
			<option value="1">读书</option>
			<option value="2">运动</option>
			<option value="3">音乐</option>
			<option value="4">旅游</option>
			<option value="5" selected="selected">购物</option>
		</select>
	</form>
	<p>使用下拉列表框进行多选,下拉列表框也可以进行多选操作,在select标签中设置multiple=multiple属性,就可以实现多选功能,在windows操作系统下,进行多选时按下ctr键同时进行单击,可以选择多个选项。</p>

	<!-- submit -->
	<p>使用提交按钮,提交数据。在表单中有两种按钮可以使用,分别为:提交按钮、重置。这一小节讲解提交按钮:当用户需要提交表单信息到服务器时,需要用到提交按钮。type=submit;value按钮上显示的文字。</p>
	<form name="iForm" method="post" action="save.php">
		姓名: <input type="text" name="myName" /> <input type="submit"
			name="submitBtn" value="提交">
	</form>
	<p>使用重置按钮,重置表单信息。当用户需要重置表单信息到初始化的状态时,比如用户输入'用户名'后,发现书写有误,可以使用重置按钮使输入框恢复到初始状态。只需要把type设置为reset就可以。</p>
	<form name="iForm" method="post" action="save.php">
		爱好: <select>
			<option>看书</option>
			<option selected="selected">旅游</option>
			<option>运动</option>
			<option>购物</option>
		</select> <input type="submit" value="确定" /> <input type="reset" value="重置" />
	</form>

	<!-- lable标签 -->
	<p>lable标签不会向用户呈现任何特殊效果,它的作用是为鼠标用户改进了可用性。如果你在lable标签内点击文本,就会触发此控件。就是说,当用户单击选中该lable标签时,浏览器就会自动将焦点转到和标签相关的表单控件上(就自动选中和该lable标签相关连的表单控件上)。注意:标签的for属性中的值应当与相关控件的id属性值一定要相同。</p>
	<form name="iForm" action="#" method="post">
		<label for="male">男</label> <input type="radio" value="1"
			name="gender" id="male" /><br /> <label for="female">女</label> <input
			type="radio" value="2" name="gender" id="female" /><br /> <label
			for="email">输入你的邮箱地址</label> <input type="text" name="" id="email"
			placeholder="Enter email" />
	</form>
</body>
</html>
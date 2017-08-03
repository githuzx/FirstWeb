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
<title>jQuery基础(一)——样式篇</title>
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
				<li><a title="环境搭建" target="_blank"
					href="page/jquerybasic/test/envrmt.jsp">envrmt.jsp</a>
				</li>
				<li><a title="Hello World" target="_blank"
					href="page/jquerybasic/test/helloWorld.jsp">helloWorld.jsp</a>
				</li>
				<li>&nbsp;selector
					<ul>
						<li>3.1<a title="id选择器" target="_blank"
							href="page/jquerybasic/test/selector_01_id.jsp">id.jsp</a>
						</li>
						<li>3.2<a title="类选择器" target="_blank"
							href="page/jquerybasic/test/selector_02_class.jsp">class.jsp</a>
						</li>
						<li>3.3<a title="元素选择器" target="_blank"
							href="page/jquerybasic/test/selector_03_element.jsp">element.jsp</a>
						</li>
						<li>3.4<a title="*选择器" target="_blank"
							href="page/jquerybasic/test/selector_04_all.jsp">*.jsp</a>
						</li>
						<li>3.5<a title="层级选择器" target="_blank"
							href="page/jquerybasic/test/selector_05_layer.jsp">layer.jsp</a>
						</li>
						<li>¦</li>
						<li>3.1<a title="基本筛选选择器" target="_blank"
							href="page/jquerybasic/test/filter_01_basic.jsp">basic.jsp</a>
						</li>
						<li>3.2<a title="内容筛选选择器" target="_blank"
							href="page/jquerybasic/test/filter_02_content.jsp">content.jsp</a>
						</li>
						<li>3.3<a title="可见性筛选选择器" target="_blank"
							href="page/jquerybasic/test/filter_03_visibility.jsp">visibility.jsp</a>
						</li>
						<li>3.4<a title="属性筛选选择器" target="_blank"
							href="page/jquerybasic/test/filter_04_attr.jsp">attr.jsp</a>
						</li>
					</ul>
				</li>
			</ol>
		</li>
	</ul>


	<h4>第1章 初始jQuery</h4>
	<pre>
//课程介绍
轻量级的JavaScript库
核心依然是JavaScript
不仅兼容了CSS3,还兼容各种浏览器(IE、Firefox、Chrome)

优势(设计目标):
简化客户端编程、编写减量代码、节约开发时间
易上手、强大的选择器、解决浏览器的兼容、完善的事件机制、出色的Ajax封装、丰富的UI
链式操作、回调函数、迭代器、延迟对象、队列

样式篇 | DOM篇 | 事件篇 |动画篇

//环境搭建
http://jquery.com/download/

jQuery分2个系列版本
①1.x
②2.x:不再兼容IE6、7/8浏览器,这样做的目的时为了兼容移动端开发。由于减少了一些代码,使得该版本比1.x更小、更快

jQuery每一个版本系列分为:compressed(项目上线发布,压缩版本体积更小效率更快) | development(开发过程中使用,便于代码修改及调试)
jQuery是一个javaScript脚本库,不需要特别安装,只需要我们在页面head标签内,通过script标签引入jQuery库即可

//jQueryHelloWorld体验
$(document).ready的作用是等页面的文档中的节点都加载完毕后,再执行后续的代码,因为我们在执行代码的时候,可能会依赖页面的某一个元素,我们要确保这个元素真正的被加载完毕后才能正确的使用

//jQuery对象与DOM对象
jQuery对象与DOM对象是不一样的

通过原生DOM模型提供的document.getElementById方法获取的DOM元素就是一个DOM对象,再通过innerHTML与style属性处理文本与颜色

jQuery的处理:
var $p=$('#imooc');
$p.html('您好！通过慕课网学习jQuery才是最佳的途径').css('color','red');
通过$('#imooc')方法会得到一个$p的jQuery对象,$p是一个类数组对象,这个对象里面包含了DOM对象的信息,然后封装了很多操作方法,调用自己的方法html与css,得到的效果与标准的JavaScript处理结果是一致的

对比:
①通过jQuery方法包装后的对象,是一个类数组对象。它与DOM对象完全不同,唯一相似的是它们都能操作DOM
②通过jQuery处理DOM的操作,可以让开发者更专注业务逻辑的开发,而不需要我们具体指导哪个DOM节点有哪些方法,也不需要关心不同浏览器的兼容性问题,我们通过jQuery提供的API进行开发,代码也会更加精短

//jQuery对象转化成DOM对象
jQuery库本质上还是JavaScript代码,它只是对JavaScript语言进行包装处理,为的是提供更好更方便快捷的DOM处理与开发中经常使用的功能。我们使用jQuery的同时也能混合JavaScript原生代码一起使用。在很多场景中,我们需要jQuery与DOM能够相互的转换,它们都是可以操作的DOM元素,jQuery是一个类数组对象,而DOM对象就是一个单独的DOM元素

①利用数组下标的方式读取到jQuery中的DOM对象
div*3

JavaScript代码:
var $div=$('div'); //jQuery对象
var div=$div[0]; //转化成DOM对象
div.style.color='red'; //操作dom对象的属性

用jQuery找到所有的div元素,因为jQuery对象也是一个数组结构,可以通过数组下标缩印找到第一个div元素,通过返回的div对象,调用它的style属性修改第一个div元素的颜色。这里需要注意的一点是,数组的索引是从0开始的,也就是第一个元素下标是0
    
②通过jQuery自带的get()方法    
jQuery对象自身提供一个.get()方法允许我们直接访问jQuery中相关的DOM节点,get方法中提供一个元素的索引:

var $div=$('dv'); //jQuery对象
var div=$div.get(0); //通过get方法,转化成DOM对象
div.style.color='red' //操作dom对象的属性
  
其实我们翻开源码,看看就知道,get方法就是利用的第一种方式处理的,只是包装成一个get让开发者更直接方便的使用

//DOM对象转化成jQuery对象
相比较jQuery转化成DOM,开发中更多的情况是把一个dom对象加工成jQuery对象。$(参数)是一个多功能的方法,通过传递不同的参数而产生不同的作用
如果传递给$(DOM)函数的参数是一个DOM对象,jQuery方法会把这个DOM对象给包装成一个新的jQuery
div*3

JavaScript代码:
var div=document.getElementsByTagName('div'); //dom对象
var $div=$(div); //jQuery对象
var $first=$div.first(); //找到第一个div元素
$first.css('color','red'); //给第一个元素设置颜色
    
通过getElementsByTagName获取到所有div节点的元素,结果是一个dom合集对象,不过这个对象是一个数组合集(3个div元素)。通过$(div)方法转化成jQuery对象,通过调用jQuery对象中的first与css方法查找第一个元素并且改变其颜色
    </pre>

	<h4>第2章 jQuery选择器</h4>
	<pre>
//id选择器    
页面的任何操作都需要节点的支撑,开发者如何快速高效的找到指定的节点也是前端开发中的一个重点。jQuery提供了一系列的选择器帮助开发者达到这一目的,让开发者可以更少的处理复杂选择过程与性能优化,更多专注业务逻辑的编写    

$("#id")
id选择器也是基本的选择器,jQuery内部使用JavaScript函数document.getElementById来处理ID的获取。元剩余法的支持总是非常高效的,所以在操作DOM的获取上,如果能采用id的话尽量考虑用这个选择器

注意:
id是唯一的,每个id值在一个页面中只能使用一次。如果多个元素分配了相同的id,将只匹配该id选择集合的第一个DOM元素。但这种行为不应该发生;有超过一个元素的页面使用相同的id是无效的

//类选择器
$(".class")
类选择器,相对id选择器来说,效率相对会低一点,但是优势就是可以多选
同样的jQuery在实现上,对于类选择器,如果浏览器支持,jQuery使用JavaScript的原生getElementsByClassName函数来实现的
jQuery除了选择上的简单,而且没有再次使用循环处理
不难想到$(".imooc").css()方法内部肯定是带了一个隐式的循环处理

//元素选择器
$("element")
搜索指定元素标签名的所有节点,这个是一个合集的操作。同样的也有原生方法getElementsByTagName函数支持

//*选择器
通配符*意味着给所有的元素设置默认的特性

$("*")
抛开jQuery,如果要获取文档中所有的元素,通过document.getElementsByTagName中传递*同样可以获取到

兼容性问题:
①IE会将注释节点实现为元素,所以在IE中调用getElementByTagName里面会包含注释节点,这个通常是不应该的
②getElementById的参数在IE8及较低的版本不区分大小写
③IE7及较低的版本中，表单元素中，如果表单A的name属性名用了另一个元素B的ID名并且A在B之前，那么getElementById会选中A
④IE8及较低的版本,浏览器不支持getElementsByClassName
 
//层级选择器
①$("parent > child"):子选择器[选择所有指定parent元素中指定的child的直接子元素]
②$("ancestor descendant"):后代选择器[选择给定的祖先元素的所有后代元素,一个元素的后代可能是该元素的一个孩子,孙子,曾孙等]
③$("prev + next"):相邻兄弟选择器[选择所有紧接在prev元素后的next元素]
④$("prev ~ siblings"):一般兄弟选择器[匹配prev元素之后的所有兄弟元素。具有相同的父元素,并匹配过滤siblings选择器]

比较:
①层级选择器都有一个参考节点
②后代选择器包含子选择器的选择内容
③一般兄弟选择器包含相邻兄弟选择的内容
④相邻兄弟选择器和一般兄弟选择器所选择到的元素,必须在同一个元素下    

//练习题

¦

//基本筛选选择器
筛选选择器很多都不是CSS的规范,而是jQuery自己为了开发者的便利延展出来的选择器
筛选选择器的用法与CSS中的伪元素相似,选择器用冒号:开头
①$(":first"):匹配第一个元素
②$(":last"):匹配最后一个元素
③$(":not(selector)"):一个用来过滤的选择器,选择所有元素去除不匹配给定的选择器元素
④$(":eq(index)"):在匹配的集合中选择索引值为index的元素
⑤$(":gt(index)"):选择匹配集合中所有大于给定index的元素
⑥$(":event"):选择索引值为偶数的元素,从0开始计数
⑦$(":odd"):选择索引值为奇数的元素,从0开始计数
⑧$(":lt(index)"):选择匹配集合中所有索引值小于给定index参数的元素
⑨$(":header"):选择多有标题元素,像h1,h2,h3等
⑩$(":lang(language)"):选择指定语言的所有元素
⑪$(":root"):选择该文档的根元素
⑫$(":animated"):选择所有正在执行动画效果的元素

注意事项:
①:eq() :lt() :gt() :even :odd用来筛选他们前面的匹配表达式的集合元素,根据之前匹配的元素在进一步筛选,注意jQuery合集都是从0开始索引
②gt是一个段落筛选,从指定索引的下一个开始gt(1)实际从2开始

//内容筛选选择器
节本筛选选择器针对的都是元素DOM节点,如果我们要通过内容来过滤,jQuery也提供了一组内容筛选选择器,当然其规则也会天线在它所包含的子元素或者文本内容上
①$(":contains(text)"):选择所有包含指定文本的元素
②$(":parent"):选择所有含有子元素或者文本的元素
③$(":empty"):选择所有没有子元素的元素(包含文本节点)
④$(":has(selector)"):选择元素中至少包含指定选择器的元素

注意事项:
①:contains与:has都有查找的意思,但是contains查找包含'指定文本'的元素,has查找包含'指定元素'的元素
②如果:contains匹配的文本包含在元素的子元素中,同样认为是符合条件的
③:parent与:empty是相反的,两者所涉及的子元素,包括文本节点

//可见性筛选选择器
元素有显示状态与隐藏状态,jQuery根据元素的状态扩展了可见性筛选选择器
①$(":visible"):选择所有显示的元素
②$(":hidden"):选择所有隐藏的元素

隐藏一个元素方式:
①CSS display的值是none
②type="hidden"的表单元素
③宽度和高度都显式设置为0
④一个祖先元素是隐藏的,该元素是不会在页面上显式
⑤CSS visibility的值是hidden
⑥CSS opacity的值是0

注意事项:
这2个选择器都是jQuery延伸出来的,看起来比较简单,但是元素可见性依赖于适用的样式
:hidden选择器,不仅仅包含样式时display="none"的元素,还包括隐藏菜单、visibility等等
如果元素中占据文档中一定的空间,元素被认为是可见的。可见元素的宽度或高度,是大于零/元素的visibility:hidden或opacity:0被认为是可见的,因为他们仍然占用空间布局
不在文档中的元素是被认为是不可见的,如果当他们被插入到文档中,jQuery没有办法知道他们是否是可见的,因为元素可见性依赖于适用的样式

//属性筛选选择器
属性选择器让你可以基于属性来定位一个元素。可以只指定该元素的某个属性,这样所有使用该属性而不管它的值,这个元素都将被定位,也可以更加明确并定位在这些属性上使用特定值的元素,这就是属性选择器展示他们的威力的地方
①$("[attribute |= 'value']"):选择指定属性值等于给定字符串或以该文字串为前缀(该字符串后跟一个连字符'-')的元素
②$("[attribute *= 'value']"):选择指定属性具有包含一个给定的子字符串的元素(选择给定的属性是以包含某些值的元素)
③$("[attribute ~= 'value']"):选择指定属性用空格分隔的值中包含一个给定值的元素
④$("[attribute  = 'value']"):选择指定属性是给定值的元素
⑤$("[attribute != 'value']"):选择不存在指定属性,或者指定的属性值不等于给定值的元素
⑥$("[attribute ^= 'value']"):选择指定属性是给定字符串开始的元素
⑦$("[attribute $= 'value']"):选择指定属性是以给定值结尾的元素,这个比较是区分大小写的
⑧$("[attribute]"):选择所有具有指定属性的元素,该属性可以是任何值
⑨$("[attributeFilter1][attributeFilterN]"):选择匹配所有指定的属性筛选器的元素

浏览器支持:
•[att=val]、[att]、[att|=val]、[att~=val]属于CSS2.1规范
•[ns|attr]、[att^=val]、[att*=val]、[att$=val]属于CSS3规范
•[name!="value"]属于jQuery扩展的选择器
CSS选择器无论CSS2.1版本还是CSS3版本,IE7和IE8都支持,webkit、Gecko核心及Opera也都支持,只有IE6以下浏览器才不支持

在这么多属性选择器中[attr="value"]和[attr*="value"]是最实用的
①[attr="value"]能帮我们定位不同类型的元素,特别是表单form元素的操作,比如说input[type="text"],input[type="checkbox"]等
②[attr*="value"]能在网站中帮助我们匹配不同类型的文件

//子元素筛选选择器

  
    </pre>
</body>
</html>





































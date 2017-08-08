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
						<li>3.5<a title="子元素筛选选择器" target="_blank"
							href="page/jquerybasic/test/filter_05_child.jsp">child.jsp</a>
						</li>
						<li>3.6<a title="表单元素选择器" target="_blank"
							href="page/jquerybasic/test/filter_06_form.jsp">form.jsp</a>
						</li>
						<li>3.7<a title="表单对象属性筛选选择器" target="_blank"
							href="page/jquerybasic/test/filter_07_form_objattr.jsp">form_objattr.jsp</a>
						</li>
					</ul>
				</li>
				<li>&nbsp;attr ¦ style
					<ul>
						<li>4.1<a title=".attr()与removeAttr()" target="_blank"
							href="page/jquerybasic/test/attrStyle_01_attr.jsp">attr.jsp</a></li>
						<li>4.2<a title="html()及.text()" target="_blank"
							href="page/jquerybasic/test/attrStyle_02_html_text.jsp">html_text.jsp</a>
						</li>
						<li>4.3<a title=".val()" target="_blank"
							href="page/jquerybasic/test/attrStyle_03_val.jsp">val.jsp</a>
						</li>
						<li>4.4<a title=".addClass()" target="_blank"
							href="page/jquerybasic/test/attrStyle_04_addClass.jsp">addClass.jsp</a>
						</li>
						<li>4.5<a title=".removeClass()" target="_blank"
							href="page/jquerybasic/test/attrStyle_05_removeClass.jsp">removeClass.jsp</a>
						</li>
						<li>4.6<a title=".toggleClass()" target="_blank"
							href="page/jquerybasic/test/attrStyle_06_toggleClass.jsp">toggleClass.jsp</a>
						</li>
						<li>4.7<a title=".css()" target="_blank"
							href="page/jquerybasic/test/attrStyle_07_css.jsp">css.jsp</a>
						</li>
						<li>4.8<a title=".css()与.addClass()设置样式的区别" target="_blank"
							href="page/jquerybasic/test/attrStyle_08_cssVsAddClass.jsp">css_vs_addClass.jsp</a>
						</li>
						<li>4.9<a title="元素的数据存储" target="_blank"
							href="page/jquerybasic/test/attrStyle_09_data.jsp">data.jsp</a>
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
不常使用,其筛选规则比其它的选择器稍微要复杂些
①$(":first-child"):选择所有父级元素下的第一个子元素
②$(":last-child"):选择所有父级元素下的最后一个子元素
③$(":only-child"):如果某个元素是其父元素的唯一子元素,那么它就会被选中
④$(":nth-child"):选择的他们所有父元素的第n个子元素
⑤$(":nth-last-child"):选择所有他们父元素的第n个子元素。计数从最后一个元素开始到第一个

注意事项:
①:first只匹配一个单独的元素,但是:first-child选择器可以匹配多个:即为每个父级元素匹配第一个子元素,这就相当于:nth-child()
②:last只匹配一个单独的元素,:last-child选择器可以匹配多个元素:即,为每个富集元素匹配最后一个子元素
③如果子元素只有一个的话,:first-child与:last-child是同一个
④:only-child匹配某个元素的父级元素中唯一的子元素,就是说当前子元素是父元素中唯一的元素,则匹配
⑤jQuery实现:nth-child(n)是严格来自CSS规范,所以n值是'索引',也就是说,从1开始计数,:nth-child(index)从1开始的,而eq(index)是从0开始的
⑥nth-child(n)与:nth-last-child(n)的区别前者从前往后计算,后者从后往前计算

//表单元素选择器
无论是提交还是传递数据,表单元素在动态交互页面的作用是非常重要的。jQuery中专门加入了表单选择器,从而能够极其方便地获取到某个类型的表单元素
①$(":input"):选择所有input,textarea,select和button元素
②$(":text"):匹配所有文本框
③$(":password"):匹配所有密码框
④$(":radio"):匹配所有单选按钮
⑤$(":checkbox"):匹配所有复选框
⑥$(":submit"):匹配所有提交按钮
⑦$(":image"):匹配所有图像域
⑧$(":reset"):匹配所偶有重置按钮
⑨$(":button"):匹配所有按钮
⑩$(":file"):匹配所有文件域

注意事项:
除了input筛选选择器,几乎每个表单类别筛选器都对应一个input元素的type值。大部分表单类别筛选器可以使用属性筛选器替换。比如$(':password')==$('[type=password]')

//表单对象属性筛选选择器
除了表单元素选择器外,表单对象属性筛选选择器也是专门针对表单元素的选择器,可以附加在其他选择器的后面,主要功能是对所选择的的表单元素进行筛选
①$(":enabled"):选取可用的表单元素
②$(":disabled"):选取不可用的表单元素
③$(":checked"):选取被选中的input元素
④$(":selected"):选取被选中的option元素

//注意事项
①选择器适用于复选框和单选框,对于下拉框元素,使用:selected选择器  
②在某些浏览器中,选择器:checked可能会错误选渠道option元素,所以保险起见换用选择器input:checked,确保只会选取input元素  
  
//练习题  

¦

//特殊选择器this
this是JavaScript中的关键字,指的是当前的上下文对象,简单的说就是方法/属性的所有者
var imooc={
    name:"慕课网",
    getName:function(){
        return this.name; //this → imooc对象
    }
}
imooc.getName();
imooc是一个对象,拥有name属性与getName方法

在JavaScript中this是动态的,也就是说这个上下文对象都是可以被动态改变的(通过call,apply等方法)
在DOM中this就是指向了这个html元素的对象,因为this就是DOM元素本身的一个引用

给p元素绑定一个事件↓
p.addEventListener(){
    //this===p
    //以下两者的修改都是等价的
    this.style.color="red";
    p.style.color="red";
},false);
通过addEventListener绑定的事件回调中,this指向的是当前的dom对象,所以再次修改这个对象的样式,只需要通过this获取到引用即可

jQuery做法↓
$('p').click(function(){
    //把p元素转化成jQuery的对象
    var $this=$(this)
    $this.css('color','red');
})

总体:
this,表示当前的上下文对象是一个html对象,可以调用html对象所拥有的属性和方法
$(this),代表的上下文对象是一个jquery的上下文对象,可以调用jQuery的方法和属性值

//综合案例
    </pre>

	<h3>jQuery的属性与样式</h3>
	<pre>
//.attr()与.removeAttr()
每个元素都有一个或者多个特性,这些特性的用途就是给出相应元素或这其内容的附加信息。如:在img元素中,src就是元素的特性,用来标记图片的地址   
操作特性的DOM方法主要有3个,getAttribute、setAttribute、removeAttribute方法,就算如此在实际操作中还是会存在很多问题,这里先不说。而在jQuery中用一个attr()与removeAttr()就可以全部搞定了,包括兼容问题
jQuery中用attr()方法来获取和设置元素属性,attr是attribute的缩写,在jQuery DOM操作中会经常用到attr()

attr()有4个表达式↓   
①attr(传入属性名):获取属性的值
②attr(属性名,属性值):设置属性的值
③attr(属性名,函数值):设置属性的函数值
④attr(attributes):给指定元素设置多个属性值{属性名一:属性值一,属性名二:属性值二,... ...}

removeAttr()删除方法
.removeAttr(attributeName):为匹配的元素集合中的每个元素中移除一个属性(attribute)
    
优点:
attr、removeAttr都是jQuery为了属性操作封装的,直接在一个jQuery对象上调用该方法,很容易对属性进行操作,也不需要去特意的理解浏览器的属性名不同的问题

注意事项:
dom中有个概念的区分:Attribute和Property翻译出来都是属性,'js高级程序设计'数学中翻译为'特性'和'苏醒'。简单理解,Attribute就是dom节点自带的属性
例如:html中常用的id、class、title、align等
而Property是这个DOM元素作为对象,其附加的内容,例如,tagName,nodeName,nodeType,defaultChecked和defaultSelected使用.prop()方法进行取值或赋值等

//html()及.text()
读取、修改元素的html结构或者元素的文本内容是常见的DOM操作,jQuery针对这样的处理提供了2个便捷的方法.html()与.text()

.html()方法
获取集合中第一个匹配元素的HTML内容或设置每一个匹配元素的html内容,具体有3中用法:
①.html()不传入值,就是获取集合中第一个匹配元素的HTML内容
②.html(htmlString)设置每一个匹配元素的html内容
③.html(fucntion(index,oldhtml))用来返回设置HTML内容的一个函数

注意事项:
.html()方法内部使用的是DOM的innerHTML属性来处理的,所以在设置与获取上需要注意的一个最重要的问题,这个操作是针对整个HTML内容(不仅仅只是文本内容)

.text()方法
得到匹配元素集合中每个元素的文本内容结合,包括他们的后代,或设置匹配元素集合中每个元素的文本内容为指定的文本内容。具体有3种用法:
①.text()得到匹配元素集合中每个元素的合并文本,包括他们的后代
②.text(textString)用于设置匹配元素内容的文本
③.text(function(index,text))用来返回设置文本内容的一个函数

注意事项:
.text()结果返回一个字符串,包含所有匹配元素的合并文本

.html与.text的异同:
①.html与.text的方法操作是一样,只是在具体针对处理对象不同
②.html处理的是元素内容,.text处理的是文本内容
③.html只能使用在HTML文档中,.text在XMl和HTML文档中都能使用
④如果处理的对象只有一个子文本节点,那么html处理的结果与text是一样的
⑤火狐不支持innerText属性,用了类似的textContent属性,.text()方法综合了2个属性的支持,所以可以兼容所由浏览器
    
//.val()
jQuery中有一个.val()方法主要是用于处理表单元素的值,比如input,select和textarea

.val()方法
①.val()无参,获取匹配的元素集合中第一个元素的当前值
②.val(value),设置匹配的元素集合中每个元素的值
③.val(function),一个用来返回设置值的函数

注意事项:
①通过.val()处理select元素,当没有选择项被选中,返回null
②.val()方法多用来设置表单的字段的值
③.如果select元素有multiple属性,并且至少一个选择项被选中,.val()方法返回一个数组,这个数组包含每个选中选择项的值
    
.html()/.text()/.val()的差异总结:
①.html()/.text()/.val()三种方法都是用来读取选定元素的内容;
 只不过.html()是用来读取元素的html内容,
 .text()用来读取元素的纯文本内容,包括其后代元素,
 .val()是用来读取表单元素的value值。
 其中.html()和.text()方法不能使用在表单元素上,而.val()只能使用在表单元素上;
 另外.html()方法使用在多个元素元素上时,只读取第一个元素;.val()方法和.html()相同,如果其应用在多个元素上时,只能读取第一个表单元素的value值,但是.text()和他们不一样,如果.text()应用在多个元素上时,将会读取所有选中元素的文本内容
②.html(htmlString)/.text(textString)/.val(value)三种方法都是用来替换选中元素的内容,如果三个方法通过时运用在多个元素上时,那么将会替换所有选中元素的内容
③.html()/.text()/.val()都可以使用回调函数的返回值来动态的改变多个元素的内容

//增加样式.addClass()
通过动态改变类名,可以让其修改元素呈现出不同的效果。在HTML结构中,多个class以空格分隔,当一个节点(或称一个标签)含有多个class时,DOM元素响应的className属性获取的不是class操作变得很麻烦。同样的jQuery开发者也考虑到这种情况,增加了一个.addClass()方法,用于动态增加class类名
   
.addClass(className)方法
①.addClass(className):为每个匹配元素所要增加的一个或者多个样式名
②.addClass(function(index,currentClass)):这个函数返回一个或更多用空格隔开的要增加的样式名

注意事项:
.addClass()方法不会替换一个样式类名。它只是简单的添加一个样式类名到元素上

//删除样式.removeClass()
如果需要样式之间的切换,同样jQuery提供了一个很方便的.removeClass(),它的作用是从匹配的元素中删除全部或指定的class

.removeClass()方法
①.removeClass([className]):每个匹配元素移除的一个或多个用空格隔开的样式名
②.removeClass(function(index,class)):一个函数,返回一个或多个将要被移除的样式名

注意事项:
如果一个样式名作为一个参数,只有这样式类会被从匹配的元素集合中删除。如果没有样式名作为参数,那么所有的样式类会被移除

//切换样式.toggleClass()
在做某些效果的时候,可能会针对同一节点的某一个样式不断的切换,也就是addClass与removeClass的互斥切换,比如隔行换色效果
jQuery提供一个toggleClass方法用于简化这种互斥的逻辑,通过toggleClass方法动态添加删除Class,一次执行相当于addClass,再次执行相当于removeClass

.toggleClass()方法
在匹配的元素集合中的每个元素上添加或删除一个或多个样式类,取决于这个样式类是否存在或值切换属性。即:如果存在(不存在)就删除(添加)一个类
①.toggleClass(className):在匹配的元素集合中的每个元素上用来切换的一个或多个样式名称
②.toggleClass(className,switch):一个boolean值,用于判断样式是否应该被添加或移除
③.toggleClass([switch]):一个用来判断样式类添加还是移除的布尔值
④.toggleClass(function(index,class,switch)[switch]):用来返回在匹配的元素集合中的每个元素上用来切换的样式类名的一个函数。接受元素的索引位置和元素就得样式作为参数

注意事项:
①toggleClass是一个互斥的逻辑,也就是通过判断对应的元素上是否存在指定的Class名,如果有就删除,没有就增加
②toggleClass会保留原有的Class名后新增,通过空格隔开

//样式操作.css()
.css()方法:获取元素样式属性的计算值或者设置元素的css属性

获取:
①.css(propertyName):获取匹配元素集合中的第一个元素的样式属性的计算值
②.css(propertyNames):传递一组数组,返回一个对象结果

设置：
①.css(propertyName,value):设置CSS
②.css(propertyName,function):可以传入一个回调函数,返回取到对应的值进行处理
③.css(properties):可以传入一个对象,同时设置多个样式

注意事项:
①浏览器属性获取方式不同,在获取某些值的时候都jQuery采用统一的处理,比如颜色采用RBG,尺寸采用px
②.css()方法支持驼峰写法与大小写混搭的写法,内容做了容错的处理
③当一个数只被作为值(value)的时候,jQuery会将其转换为一个字符串,并添在字符串的结尾处添加px,例如.css("width",50)与.css("width","50px")一样

//.css()与.addClass()设置样式的区别
①可维护性
.addClass()的本质是通过定义个class类的样式规则,给元素添加一个或多个类。css方法是通过JavaScript大量代码进行改变元素的样式
通过.addClass()我们可以批量的给相同的元素设置统一规则,变动起来比较方便,可以通过已修改删除。如果通过.css()方法就需要制定每一个元素的是一一的修改,如后维护也要一一的修改,比较麻烦

②灵活性
通过.css()方式可以很容易动态的去改变一个样式的属性,不需要在去繁琐的定义个class类的规则。一般来说在不确定开始布局规则,通过动态生成的HTML代码结构中,都是通过.css()方法处理的

③样式值
.addClass()本质只是针对class的类的增加删除,不能获取带指定样式的属性的值,.css()可以获取到指定的样式值

④样式的优先级
css的样式是有优先级的,当外部样式、内部样式和内联样式同一样式规则同时应用于同一个元素的时候,优先级如下
内联样式>内部样式>外部样式
•.addClass()方法是通过增加class名的方式,那么这个样式是在外部文件或者内部样式中先定义好的,等到需要的时候在附加到元素上
•通过.css()方法处理的是内联样式,直接通过元素的style属性附加到元素上的
通过.css方法设置的样式属性优先级要高于.addClass方法

⑤总结
.addClass与.css方法各有利弊,一般是静态的结构,都确定了布局的规则,可以用addClass的方法,增加统一的类规则
如果是动态的HTML结构,在不确定规则,或者经常变化的情况下,一般多考虑.css()方式

//元素的数据存储
html5 dataset是新的HTML5标准,允许你在普通的元素标签里嵌入类似data-*的属性,来实现一些简单数据的存取。它的数量不受限制,并且也能由JavaScript动态修改,也支持CSS选择器进行样式设置。
这使得data属性特别灵活,也非常强大。有了这样的属性我们能够更加有序直观的进行数据与蛇或存储。那么在不支持HTML5标准的浏览器中,我们如何实现数据存取?jQuery就提供了一个.data()的方法来处理这个问题

使用jQuery初学者一般不是很关心data方式,这个方法是jQuery内部预用的,可以用来做性能优化,比如sizzle选择中可以用来魂村部分结果集等等。当然这个也是非常重要的一个API了,常常用于我们存放临时的一些数据,因为它是直接跟DOM元素对象绑定在一起的

jQuery提供的存储接口
jQuery.data(ele,key,value) //静态接口,存数据
jQuery.data(ele,key) //静态接口,取数据
.data(key,value) //实例接口,存数据
.data(key) //实例接口,存数据
jQuery.removeData(ele [,name])
.removeData([name])

2个方法在使用上存取都是通一个接口,传递元素,键值数据。在jQuery的官方文档中,建议用.data()方法来代替
    </pre>
</body>
</html>
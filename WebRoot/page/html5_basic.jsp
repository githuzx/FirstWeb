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
<title>HTML5之元素与标签结构</title>
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
				<li><a title="HTML5语法" target="_blank"
					href="page/html5basic/test/grammar.html">grammar.html</a></li>
			</ol>
		</li>
	</ul>


	<h4>第1章 HTML5语法</h4>
	<pre>
//HTML5语法	
※HTML5语法
 沿用了HTML的语法,更简洁,更人性化
 •DOCTYPE及字符编码
 •大小写都可以 → 小写
 •布尔值
 •省略引号 → 双引号
 •可以进行省略的标签
  ①不允许写结束符的标签:area、basebr、col、command、embed、hr、img、input、keygen、link、meta、param、source、track、wbr
  ②可以省略结束符的标签:li、dt、dd、p、rt、optgroup、option、colgroup、thred、tbody、tr、td、th
  ③可以完全省略的标签:html、head、body、colgroup、tbody
※新增及删除标签
※新增及废除属性
※全局属性
※语义化标签综合案例

//练习题	
	</pre>

	<h4>第2章 新增及删除标签</h4>
	<pre>
//HTML5新增及删除标签
•结构标签
 ①section标签:表示页面中的一个内容区块比如章节、页眉、页脚或页面的其他部分。可以和h1、h2...等标签结合起来使用,表示文档结构
 ②article标签:表示页面中一块与上下文不相关的独立内容
 ③aside标签:表示article标签内容之外的、与article标签内容相关的辅助信息
 ④header标签:表示页面中一个内容区块或整个页面的标题
 ⑤hgroup标签:表示对整个页面或页面中的一个内容区块的标题进行组合
 ⑥footer标签:表示整个页面或页面中一个内容区块的脚注。一般来说,她会包含创作者的姓名、创作日期以及创作者的联系信息
 ⑦nav标签:表示页面中导航链接的部分
 ⑧figure标签:表示一段独立的流内容,一般表示文档主体流内容中的一个独立单元。
•表单标签
 ①email
 ②url
 ③number
 ④range
 ⑤Date Pickers:拥有多个可供选取日期和时间的新输入类型:date|month|week|time|datetime|datetime-local
 ⑥search
 ⑦color
•媒体标签
 ①video标签:定义视频。'video src="movie.ogg" control="controls"'video标签
 ②audio标签:定义音频。'audio src="someaudio.wav"'audio标签
 ③embed标签:用来嵌入内容(包括各种媒体)。格式可以是Midi、Wav、AU、MP3、flash等。'embed src="flash.swf"'
•其他功能标签
 mark:凸出标注
 command
 progress:进度条
 details
 time:pubdate
 datalist:选择列表
 ruby:
 keygen
 rt
 output
 wbr:软换行
 source
 canvas
 menu
 
•可以用css代替的标签
•不在使用frame
•只有个别浏览器支持的标签
•其他不常用的标签    
    </pre>

	<h4>第3章 新增及废除属性</h4>
	<pre>
//HTML5新增及废除属性
•表单属性
 link rel="icon" href="demo_icon.gif" type="image/gif" sizes="16x16" 
 base href="http://localhost/" target="_blank"
 
 script defer src="http://code.jquery.com/jquery-1.10.1.min.js" onload="alert('a')" //推迟加载
 script async src="http://code.jquery.com/jquery-migrate-1.2.1.min.js" onload="alert('b')" //异步加载
•链接属性
 a media="handheld" href="#" 手持
 a media="tv" href="#" 电视
 a href="http://www.imooc.com/" hreflang="zh" ref="external"
•其他属性
 ol start="50" reversed
     li Coffee  //50
     li Tea     //49
     li Milk    //48
 menu type="contextmenu | list | toolbar" label="Menu"
     li input type="checkbox" Red
     li input type="checkbox" blue
     
•可以用css代替的属性
•多余属性
•其他属性   
    </pre>

	<h4>第4章 全局属性</h4>
	<pre>
//HTML5全局属性
•data-yourvalue:data-type="comment"
•hidden
•Spellcheck:语法纠错
•tabindex:tab键
•contenteditable
•desginMode:on / off 
    </pre>

	<h4>第5章 语义化标签综合案例</h4>
	<pre>
//HTML5语义化标签综合案例    
    </pre>
</body>
</html>

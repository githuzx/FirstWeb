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
<title>版本控制入门——搬进Github</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<h4>第1章 Github课程介绍</h4>
	<pre>
//课程介绍    
Linux/Git --Linus(Build software better,together.|git commands)   
体现了一种互联网上开源文化,重复造轮子的时代就不复存在
github.com 2008/client(一套最简单的版本控制思路)
    </pre>

	<h4>第2章 浏览器中使用Github</h4>
	<pre>
//浏览器中使用Github
    </pre>

	<h4>第3章 Github客户端的使用</h4>
	<pre>
//客户端的使用    
windows.github.com  
①add:本地已经有一个项目
②create:根本就没有这个项目(网上创建操作类似)
③clone

ide← →client :选定一个文件,代码区默认都是蓝色(表示被选中,这部分修改会被做到下一个版本之中),点一下变成绿色表示取消选中
撤销:history → 选中 → changes → undo[只适合Unsynced的操作]
    </pre>

	<h4>第4章 简单分支操作</h4>
	<pre>
//简单分支操作    
在底层这个的实现是非常巧妙的,就是又创建一个新的idea指针,跟master指向同一个版本,根本没有拷贝历史线[gitbeijing.com]
git最核心的操作对象是版本(commit),最核心的操作技巧就是分支,master默认的主分支。实际工程项目中会认为的给它一个重要的使命,存放稳定代码。就像github公司倡导的master分支上的所有代码都应该是可以部署的
想象一下历史线上有很多节,每个版本就是一节。一个分支相当于一根竹子,但是实际上在底层并不是每个分支都拷贝出自己独立的一条历史线。master本身只是一个指针,指向master分支上最新的一个版本。    
    </pre>

	<h4>第5章 分支合并</h4>
	<pre>
//合并分支(上) 
让idea分支的代码并入master

//合并分支(下)
合并远端分支、解决代码冲突的问题(冲突标识符:=======冲突分隔符)   
    </pre>

	<h4>第6章 团队协作流程</h4>
	<pre>
//团队协作流程(上)     
Github Flow是一个非常轻便的,基于分支的工作流。非常适合代码部署非常频繁的团队和项目     
①创建一个分支
②添加新版本(不断做新功能出来)
③开启一个Pull Request
④讨论和代码审核
⑤合并分支,然后部署
•团队内部合作
 settings → Collaborators

//团队协作流程(下)
conversation commit file-changes
     </pre>

	<h4>第7章 开源项目贡献流程</h4>
	<pre>
//开源项目贡献流程   
开源项目的贡献者它的人数众多,而且都是陌生人
①Fork:做一个拷贝
②Clone in Desktop
③fix
④original:Graphs → NetWork
⑤self:Pull requests → New pull request
⑥original:Create pull request
⑦owner:Merge pull request → thx Comment
⑧self:Settings → Delete this repository

Quick Pull Requests↓     
①owner:edit
...

贡献开源项目可以有机会和老司机进行交流,是一个非常好的学习编程的方式
     </pre>

	<h4>第8章 Github Issues</h4>
	<pre>
//Issues
每一个项目都会有3套配套的基础设施,来辅助项目
①github pages这种机制来搭建,免费服务
②Wiki
③Issues:事物卡片,需要事先讨论 New Issue → Assignee(布置任务) → @who 你有什么好的想法?

Markdown supported↓
是一种简单的标记性语言,可以通过很简单的标注就能生成很漂亮的格式。很适合用来写评论及沟通和交流
①# h1
②* first *second *third //无序列表
③> 你有什么好的想法? | 选中question 快捷键R //快速回复
④click commented time → 得到的这个链接就直接可以指向这一条特定的评论 //引用以前已经写过的内容

评论框中直接插入代码↓
```js
alert("hello");
```
```html
  
```
     </pre>

	<h4>第9章 Github Pages 搭建网站</h4>
	<pre>
//Github Pages 搭建网站	
pages.github.com
User or organization site | Project site	

①Create a gh-pages branch //公开访问
②一步一步放网页就ok了 
③githuzx.github.io/test/ //访问域名
	</pre>

	<h4>第10章 Github 的秘密机关</h4>
	<pre>
//Github 的秘密机关	
最核心的功能:走一个协作开发的流程
	
①Github是一个功能相当强大的网站,但同时又是一个追求界面极其简约的site!
 快捷键T → search
②social coding site //创意早期把代码托管功能 + Facebook Twitter → 形成的社交化编程功能 
③Follow老司机,跟着他们学习 //Linux之父Linus Torvalds[Star数量|更新频繁度]
	</pre>

	<h4>第11章 Until Next Time,Goodbye!</h4>
	<pre>
//Until Next Time,Goodbye!	
图形化界面只能解决常见的问题,稍微高要求脚本化、自动化必须了解Git学会在命令行下怎么使用,学习资源首推PRO GIT书
	</pre>
</body>
</html>

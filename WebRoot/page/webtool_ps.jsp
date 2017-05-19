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

<title>前端工程师必备的PS技能——切图篇</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<h4>第1章 课程简介</h4>
	<pre>
//PS切图课程介绍
课程介绍
Photoshop界面设置
Photoshop基本操作
Photoshop传统切图
Photoshop精准切图
扩展知识介绍
课程总结

学习目标
1.能够自己使用Photoshop从网页设计师提供的psd中获取前端开发过程中所需要的资源
2.对简单的Photoshop操作有一个基本的了解
3.可以做一些简单地图片处理和调整
4.提高自己的审美及其美感的培养
    </pre>

	<h4>第2章 界面设置</h4>
	<pre>
//Photoshop界面设置
新建设置
介绍网页设计中的初始化尺寸参数以及一些相关的快捷键(自定->1920像素->72像素/英寸->rgb 8位->透明)

移动工具设置
介绍移动工具针对网站前端的设置属性及其快捷操作

视图设置
介绍针对前端在视图方面的设置以及设置中的技巧和优势(视图->智能参考线/标尺;窗口->信息[面板->rgb、像素、文档尺寸]/字符;图层/历史记录;编辑->首选项->单位和标尺->像素)
    </pre>

	<h4>第3章 Photoshop基本操作</h4>
	<pre>
Photoshop基本操作
简单工具操作
✔介绍Photoshop最基本的工具操作及其技巧

图层的原理及其操作
✔介绍Photoshop中图层的基本原理以及结合工具的操作技巧

参考线及其辅助
✔介绍如何灵活运用参考线做辅助操作

//PS简单工具操作(1)
t1:菜单栏  t2:属性栏  l:工具栏  r:面板(信息|字符|图层|历史记录)

工具栏:
1.移动工具(V)
2.矩形选框工具(M)
  工具的操作都是针对选取的内部
  属性栏:①.新建选取 ②.添加到选区(+) ③.从选区减去(-)  ④.与选区交叉(x)
  扩展:
    ①.矩形选框(shift->正方形 放开:鼠标 shift)
    ②.椭圆选框 (圆心->alt+shif)
    ③.单行选框
    ④.单列选框
  小技巧:
    ①.shift默认增加选区|alt默认减去选区
    ②.选取工具快捷键M|shift+M会在扩展当中轮流切换|ctrl+放大|ctrl-缩小
3.套索工具(L) 
  空格+鼠标拖动->鼠标左键不停走->shift+|alt- 
  扩展:
    ①.套索
    ②.多边形套索(点->go->点->go->点闭合|任性->在最后一个锚点双击)
    ③.磁性套索(会根据颜色进行一定的判断,对抠不规则图形比较方便)
4.快速选择工具(W)
 单击->相同颜色的选择出来|快速拉选取区域->‘[’画笔缩小,‘]’画笔放大
    ①.快速选择
    ②.魔棒
5.裁剪工具(C)    
  小技巧:图层->ctrl、点击->选中选区->裁剪工具->enter->enter->alt+眼睛(隐藏其他图层)  
6.吸管工具(I)            
    
//PS简单工具操作(2)
1.污点修复画笔工具(J)
 照片处理
 扩展:
    ①.污点修复画笔 ②.修复画笔 ③.修补 ④.内容感知移动 ⑤.红眼
2.画笔工具(B)
扩展:
    ①.画笔 ②.铅笔 ③.颜色替换 ④.混合器画笔
3.仿制图章工具(S)
扩展:
    ①.仿制图章 ②.图案图章
4.历史记录画笔工具(Y)
扩展:
    ①.历史记录画笔(滤镜->模糊->高斯模糊->历史记录(选中高斯模糊,回到最初))
    ②.历史记录艺术画笔
5.橡皮擦工具(E)
扩展:
    ①.橡皮擦 ②.背景橡皮擦 ③.魔术橡皮擦
6.渐变工具(G)
扩展:
    ①.渐变 ②.油漆桶 ③.3D材质拖放
7.模糊工具
扩展:
    ①.模糊 ②.锐化 ③.涂抹
8.减淡工具
扩展:
    ①.减淡 ②.加深 ③.海绵
    
//PS简单工具操作(3)
1.钢笔工具(P)
扩展:
    ①.钢笔  ②.自由钢笔  ③.添加锚点  ④.删除锚点  ⑤.转换点
2.横排文字工具(T)    
扩展:
    ①.横排文字  ②.直排文字  ③.横排文字蒙版  ④.直排文字蒙版
3.路径选择工具(A)
扩展:    
    ①.路径选择   ②.直接选择
4.矩形工具(U)
扩展:    
    ①.矩形   ②.圆角矩形  ③.椭圆  ④.多边形   ⑤.直线  ⑥自定义形状  
5.抓手工具(H)    
扩展:
    ①.抓手   ②.旋转视图(R)
6.缩放工具(Z)    
  alt|H+鼠标(松H键->缩小|都松->放大)|alt+del前景色填充|ctrl+del背景色填充
  
//PS图层的原理及其操作
五环旗:
新建画布(ctrl+N)->800/600 白色->
shift+椭圆选区->alt+del前景填充->选区工具->右键'变换选区'->alt+shift(缩小一点点)->✔->
del删除内心圆背景色->ctrl+T(shift变小)->
移动工具->alt键 拖动->ctrl图层缩略图->
选择图层快捷键(ctr/鼠标拖动)
图居中(shift选中x图层,ctrl/鼠标拖动)
手拉手心连心->ctrl+blue缩略图->矩形选区工具->yellow->alt-右下->del->ok

//PS参考线及其辅助
ctrl+N新建画布默认没有参考线(视图->新建参考线|ctrl+R->ctrl+鼠标左键可以拖出一条参考线来|拉下来一条->alt就会变成竖线)
alt->菜单快捷键|V->视图|E-新建参考线(alt+V+E)
隐藏参考线(ctrl+;)
    </pre>
    
    <h4>第4章 传统切图</h4>
    <pre>
//PS传统切图
1.切图与切片
切图与切片的基本概念和区别

2.切片的基本操作及其技巧
介绍切片工具及其操作
介绍切片时候的一些技巧(图片四周添加参考线->基于参考线的切片->鼠标右键删除切片)

3.导出操作
文件->导出->存储为Web所用格式(alt+shift+ctrl+S)->预设(PNG-24)
    </pre>
    
    <h4>第5章 精准切图</h4>
    <pre>
//PS精准切图
改进切图流程
✔介绍如何利用Photoshop的脚本,进行一种更加快捷精准的切图方法
✔自动化切图,省时省力
✔计算机自动计算,尺寸更精确
文件->脚本->将图层导出到文件->PNG-2(透明区域|交错|裁剪图层)
    </pre>
    
    <h4>第6章 扩展知识介绍</h4>
    <pre>
//PS扩展知识介绍
自动切图
✔使用Photoshop CC版本开始集成的新功能实现自动切图
✔介绍SVG和WebP格式的到导出技巧
编辑->首选项->增效工具->启用生成器
文件->生成->图像
图层->logo改成logo.png(Ios->200%logo @2x.jpg | .jpg8——80%品质)
SVG——矢量图(logo.svg)

抽出资源
✔介绍Photoshop CC2014版本开始的导出svg的办法
文件->抽出资源

复制CSS
✔介绍用Photoshop CC自动生成CSS的方法
图层->复制CSS

图层管理
✔介绍如何对psd中的大量图层进行分类管理
右侧图层->名称
    </pre>   
    
    <h4>第7章 总结</h4>
    <pre>
//PS切图课程总结
✔学习和理解了一些基本的Photoshop操作
✔重点结合前端的需求对Photoshop的操作做了展开
✔结合实际的例子,学习从PSD入手到获取所需资源的实际实现形式
    </pre>
</body>
</html>
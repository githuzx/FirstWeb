/*输出内容*/
document.write("开启JS之旅!");

/* 警告 */
function contxt() {// 定义函数
	alert("哈哈，调用函数了!");
}

function rec() {
	var mychar = "I love JavaScript";
	alert(mychar);
}

/* 确认 */
function love() {
	var mymessage = confirm("你喜欢JavaScript吗?");
	if (mymessage == true)
		document.write("很好,加油!");
	else
		document.write("JS功能强大,要学习噢!");
}

function gender() {
	var mymessage = confirm("你是女士吗?");
	if (mymessage == true)
		document.write("你是女士");
	else
		document.write("你是男士");
}

/* 提问 */
function name() {
	var myname = prompt("请输入你的姓名:");
	if (myname != null)
		alert("你好" + myname);
	else
		alert("你好 my friend.");
}

function score() {
	var score = prompt("你的分数是多少?");
	if (score >= 90)
		document.write("你很棒!");
	else if (score >= 75)
		document.write("不错吆!");
	else if (score >= 60)
		document.write("要加油!");
	else
		document.write("要努力了!");
}

/* 打开新窗口 */
function wopen() {
	window.open('http://www.imooc.com', '_blank',
			'width=600,height=400,top=100,left=0');
}

/* 关闭窗口 */
function wclose() {
	var mywin = window.open('http://www.imooc.com');/* 将新打开的窗口对象,存储在变量mywin中 */
	mywin.close();
}

function practise() {
	if (confirm("确认打开新窗口吗?")) {
		var url = prompt("请输入一个网址", "http://www.imooc.com/");
		window.open(url, "_blank",
				"width=400,height=400,menubar=no,toolbar=no,scrollbar=yes");
	}
}

/* 显示和隐藏(display属性) */
function hideText() {
	document.getElementById("disCon").style.display = "none";
}

function showText() {
	document.getElementById("disCon").style.display = "block";
}

/* 控制类名(className属性) */
function modifyclass() {
	var mychar = document.getElementById("cn");
	mychar.className = "two";// 改变className
}

function add() {
	var p3 = document.getElementById("p3");
	p3.className = "three";
}

function modify() {
	var p4 = document.getElementById("p4");
	p4.className = "four";
}

/* 编程挑战 */
function dcolor() {
	var mychar = document.getElementById("txt");
	mychar.style.color = "red";
	mychar.style.background = "#ccc";
}
function dwh() {
	var mychar = document.getElementById("txt");
	mychar.style.width = "400px";
	mychar.style.height = "200px";
}
function dh() {
	var mychar = document.getElementById("txt");
	mychar.style.display = "none";
}
function ds() {
	var mychar = document.getElementById("txt");
	mychar.style.display = "block";
}
function dclear() {
	if (confirm("是否取消设置?")) {
		var mychar = document.getElementById("txt");
		mychar.style.color = "#000";
		mychar.style.background = "#fff";
		mychar.style.width = "600px";
		mychar.style.height = "400px";
		mychar.style.display = "block";
	}
}
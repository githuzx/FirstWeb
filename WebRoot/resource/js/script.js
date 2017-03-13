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

/*关闭窗口*/


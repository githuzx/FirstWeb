function clock() {
	var time = new Date();
	document.getElementById("clock").value = time;
}

var i = setInterval("clock()", 100);// 每隔100毫秒调用clock函数,并将返回值赋值给i

function stop() {
	clearInterval(i);
}

function tinfo() {
	setTimeout("alert('hello')", 3000);
}

var num = 0, i;
function numCount() {
	document.getElementById("txt").value = num;
	num = num + 1;
	i = setTimeout("numCount()", 1000);
}

function stopCount() {
	clearTimeout(i);
}

function validB() {
	var u_agent = navigator.userAgent;
	var B_name = "Failed to identify the browser";
	if (u_agent.indexOf("Firefox") > -1) {
		B_name = "Firefox";
	} else if (u_agent.indexOf("Chrome") > -1) {
		B_name = "Chrome";
	} else if (u_agent.indexOf("MSIE") > -1 && u_agent.indexOf("Trident") > -1) {
		B_name = "IE(8-10)";
	}
	document.write("B_name:" + B_name + "<br>");
	document.write("u_agent:" + u_agent + "<br>");
}

/**
 * DOM
 */
function getElements(){
	var mynode=document.getElementsByName("alink");
	alert(mynode.length);
}

function hattr(){
	var hnode=document.getElementById("h1");
	var attr1=hnode.getAttribute("id");
	var attr2=hnode.getAttribute("title");
	document.write("h1标签的ID:"+attr1+"<br>");
	document.write("h1标签的title:"+attr2);
}
































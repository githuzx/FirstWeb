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

<title>JavaScript深入浅出</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<h4>第1章 数据类型</h4>
	<pre>
//JavaScript深入浅出课程介绍
课程大纲
一、数据类型  
二、表达式和运算符  
三、语句                
四、对象     
五、数组                          
六、函数          
七、this       
八、闭包和作用域  
九、OOP  
十、正则与模式匹配

学习方法
《JavaScript权威指南》
MDN:https://developer.mozilla.org/zh-CN/learn/javascript
多动手实践+参与讨论

//JavaScript六种数据类型
弱类型特征
var num=32;
num="this is a string";
32+32    //64
"32"+32  //"3232"
"32"-32  //0

数据类型
原始类型:number string boolean null undefined object(对象:Function Array Date ...)

//[JavaScript]隐式转换
+和-
var x='The answer is'+42;
var y=42+'is the answer';
"37"-7  //30
"37"+7  //377

巧用+/-规则转换类型
num-0  ->number
num+'' ->string


"1.23" == 1.23  //尝试着将字符串->number
0 == false
null == undefined
new Object() == new Object()
[1,2] ==[1,2]

a === b
类型不同,返回false
类型相同:
    null === null
    undefined === undefined
    NaN ≠ NaN
    new Object ≠ new Object  //'引用'比较
    
a == b   
类型相同,同===
类型不同,尝试类型转换和比较:
    null == undefined  //相等
    number == string(->number)   //1 == "1.0" true
    boolean(->number) == ?       //1 == true  true (true->1|false->0)
    object(尝试对象转为基本类型) == number|string  //new String('hi') == 'hi' true
          其它:false
          
//[JavaScript]包装对象
chrome[krəʊm] console的用法:
1.f12打开       左上|console.clear()
2.console.log
  %s->字符;%d|%i->整数;%f->浮点;%o->对象
          
var a="string";
console.log(a.length); //6  new String("string") 输出之后的这个临时对象会被销毁掉
a.t=3;    
console.log(a.t);  //undefined

//[JavaScript]类型检测
/*适合基本类型及function检测,遇到null失效(返回Object)*/
typeof(100[number] | true[boolean] | function[function] | undefined[undefined] | new Object()[object] | [1,2][number] | null[object])

/*适合自定义对象,也可以用来检测原生对象,在不同iframe和window间检测时失效*/
instanceof([1,2] instanceof Array === true | new Object() instanceof Array === false)

/*适合内置对象和基本类型,遇到null和undefined失效(IE678等返回[object Object])*/
Object.prototype.toString .apply([][object Array] | function(){}[object Function] | null[object Null] | undefined[object Undefined])

constructor
duck type

//编程练习
    </pre>
    
    <h4>第2章 表达式和运算符</h4>
    <pre>
//[JavaScript]表达式
表达式是指能计算出值得任何可用程序单元。——Wiki
表达式是一种JS短语,可使JS解释器用来产生一个值。——《JS权威指南》
                      常量、直接量   3.14,"test"
原始表达式 -  关键字         null,this,true
                             变量           i,k,j

数组、对象的初始化表达式
[1,2]       →new Array(1,2);
[1,,,4]     →[1,undefined,undefined,4]
{x:1,y:2}   →var o=new Object(); o.x=1;o.y=2;

函数表达式
var fe=function(){};
(function(){console.log('hello world');})();

属性访问表达式
var o={x:1};
o.x | o['x']

调用表达式
func();

对象创建表达式
new Func(1,2);
new Object;

//[JavaScript]运算符
一元 +num
二元 a+b
三元 c?a:b

赋值     x+=1
比较     a==b
算术     a-b
位         a|b
逻辑     exp1&&exp2
字符串 "a"+"b"
特殊     delete obj.x

c?a:b //var val=true?1:2 //val=1
a,b   //var val=(1,2,3); //val=3
delete obj.x;  //var obj={x:1}; obj.x; delete obj.x; ->undefined
var obj={};
Object.defineProperty(obj,'x',{
   configurable:false;
   value:1
});
delete obj.x;//false
obj.x;       //1
window.x=1; 'x' in window;//true
{} instanceof Object //true;
typeof 100 ==='number'//true
function Foo(){}
Foo.prototype.x=1;
var obj=new Foo();
obj.x;  //1
obj.hasOwnProperty('x');//false
obj._proto_.hasOwnProperty('x');//true
this;//window(浏览器)
var obj={
    func:function(){return this;}
};
obj.func();//obj
void 0 //undefined
void(0) //undefined
    </pre>
    
    <h4>第3章 语句</h4>
    <pre>
//[JavaScript]block语句、var语句    
语句Statement
JavaScript程序由语句组成,语句遵守特定的语法规则。例如:if语句,while语句,with语句等等

block break continue empty if...else switch try-catch var function return do...while for for...in while debugger label with

block
块语句常用于组合0~多个语句。块语句用一对花括号定义。
语法:
{
    语句1;
    语句2;
  ...
   语句n;
}
{
    var str='hi';
    console.log(str);
}
if(true){
    console.log('hi');
}
{a:1,b:2} //SyntaxError:Unexpected token
var o={a:1,b:2} //ok

var
funtion foo(){
    var a=b=1;
}
foo();
console.log(typeof a);//'undefined'->局部变量
console.log(typeof b);//'number'->全局变量
var a=1,b=1;

//[JavaScript]try-catch语句
try{
    try{
        throw new Error("oops");
    }finally{
        console.log("finally");
    }
}catch(ex){
    console.error("outer",ex.message);
}
print:
"finally"
"outer" "oops"

//[JavaScript]函数、switch、循环
function
function fd(){//函数声明前调用  fd();->true
    //do sth.
    return true;
}
var fe=function(){//函数表达式前调用  fe();->TypeError
    //do sth.
};

for...in
var p;
var obj={x:1,y:2}
for(p in obj){//1.顺序不确定->依赖于引擎的实现 2.enumerable为false时不会出现 3.for in对象属性时受原型链影响
}

whith
修改当前作用域
with({x:1}){
    console.log(x);
}
with(document.forms[0]){//.让JS引擎优化更难 .可读性差 .可被变量定义代替 .严格模式下禁用
    console.log(name.value);
}
var form=document.forms[0];
console.log(form.name.value);

//[JavaScript]严格模式
严格模式是一种特殊的执行模式,它修复了部分语言上的不足,提供更强的错误检查,并增强安全性。=>向上兼容
function func(){
    'use strict';
}
'use strict'
function func(){
}

不允许用with //SytaxError(语法错误)
不允许未声明的变量被赋值 //ReferenceError
arguments变为参数的静态副本
!function(a){//100 1=>100 不传=>undefined
    arguments[0]=100;
    console.log(a);
}(1);
!funtion(a){//1
    'use strict';
     arguments[0]=100;
     console.log(a);  
}(1);
!function(a){//100
    'use strict';
    arguments[0].x=100;
    console.log(a.x);
}(x:1);
delete参数、函数名报错  //SyntaxError
delete不可配置的属性报错 //TypeError
对象字面量重复属性名报错  //SyntaxError
禁止八进制字面量  //SyntaxError
eval,arguments变为关键字,不能作为变量、函数名  //SytaxError
eval独立作用域
一般函数调用时(不是对象的方法调用,也不使用apply/call/bind等修改this)this指向null,而不是全局对象
若使用apply/call,当传入null或undefined时,this将指向null或undefined,而不是全局对象
试图修改不可写属性(writable=false),在不可扩展对象添加属性时报TypeError,而不是忽略
arguments.caller,arguments.callee被禁用
    </pre>
    
    <h4>第4章 对象</h4>
    <pre>
//[JavaScript]对象描述    
对象中包含一系列属性,这些属性是无序的。每个属性都有一个字符串key和对应的value。    
var obj={x:1,y:2};
obj.x;//1
obj.y;//2    

var obj={};
obj[1]=1;
obj['1']=2;
obj;//Object{1:2}

obj[{}]=true;
obj[{x:1}]=true;
obj;//Object{1:2,[object Object]:true}

对象结构
var obj={};
obj.y=2;
obj.x=1;//writable enumerable configurable value get/set

function foo(){}
foo.prototype.z=3;
var obj=new foo();
[[proto]] [[class]] [[extensible]]

//[JavaScript]创建对象、原型链
var obj1={x:1,y:2};
var obj2={x:1,y:2,o:{z:3,n:4}};
var obj=Object.create({x:1});//obj的原型指向参数
obj.x //1
typeof obj.toString //"function"
obj.hasOwnProperty('x');//false  从原型链上继承的,而不是这个对象本身的属性
var obj=Object.create(null);
obj.toString //undefined
obj -> {x:1} -> Object.prototype -> null

//[JavaScript]属性操作
属性读写
var obj={x1:1,x2:2};
var i=1,n=2;
for(;i<=n;i++){
    console.log(obj['x'+i]);//输出:1,2
}
var p;
for(p in obj){
    console.log(obj[p]);
}

属性读写-异常
var obj={x:1}
obj.y //undefined
var yz=obj.y.z; //TypeError:Cannot read property 'z' of undefined
obj.y.z; //TypeError:Cannot set property 'z' of undefined
var yz=obj && obj.y && obj.y.z;

属性删除
var person={age:28,title:'fe'}
delete person.age //true
delete person['title'] //true
person.age //undefined
delete person.age //true

delete Object.prototype //false

var descriptor=Object.getOwnPropertyDescriptor(Object,'prototype')
descriptor.configurable  //false(不可配置)

var globalVal=1; 
delete globalVal //false

(function(){
    var localVal=1;
    return delete localVal;
}()); //false

function fd(){}
delete fd; //false

(function(){
    function fd(){};
    delete fd;
}());//false

ohNo=1;
window.ohNo; //1
delete ohNo; //true

属性检测
var cat=new Object;
cat.legs=4;
cat.name='Kitty';
'legs' in cat //true
'abc' in cat //false
'toString' in cat //true
cat.hasOwnProperty('legs') //true
cat.hasOwnProperty('toString') //false
cat.propertyIsEnumerable('legs') //true
cat.propertyIsEnumerable('toString') //false

Object.definedProperty(cat,'price',{enumerable:false,value:1000})
cat.propertyIsEnumerable('price') //false
cat.hasOwnProperty('price') //true
if(cat && cat.legs){
    cat.legs *= 2;
}
if(cat.legs != undefined){
    //!==undefined,or,!==null
}
if(cat.legs !== undefined){
    //only if cat.legs is not undefined
}

属性枚举
var o={x:1,y:2,z:3}
'toString' in o //true
o.propertyIsEnumerable('toString') //false
var key
for(key in o){
    console.log(key);//x,y,z
}
var obj=Object.create(o)
obj.a=4
var key
for(key in obj){
    console.log(key) //a,x,y,z
}
var obj=Object.create(o)
obj.a=4;
var key
for(key in obj){
    if(obj.hasOwnProperty(key)){
        console.log(key) //a
    }
}

//[JavaScript]get/set方法
var man={
    name:'Bosn',
    weibo:'@Bosn',
    get age(){
        return new Date().getFullYear()-1988;
    },
    set age(val){
        console.log('Age can\'t be set to'+val);
    }
}
console.log(man.age) //27
man.age=100 //Age can't be set to 100
console.log(man.age) //still 27
    
var man={
    weibo:'@Bosn',
    $age:null;
    get age(){
        if(this.$age == undefined){
            return new Date().getFullYear()-1988;
        }else{
            return this.$age;
        }
    }
    set age(val){
        val = +val;
        if(!isNaN(val)&&val>0 && val <150){
            this.$age = +val;
        }else{
            throw new Error('Incorrect val='+val);
        }
    }
}
console.log(man.age) //27
man.age=100 
console.log(man.age) //100
man.age='abc' //error:Incorrect val=NaN

function foo(){}
Object.defineProperty(foo.prototype,'z',{get:function(){return 1;}})
var obj=new foo(){}
obj.z //1
obj.z=10
obj.z //still 1

Object.defineProperty(obj,'z',{value:100,configurable:true})
obj.z //100
delete obj.z
obj.z //back to 1

var o={}
Object.defineProperty(o,'x',{value:1}) //writable=false,configurable=false
var obj=Object.create(o)
obj.x //1
obj.x=200
obj.x //still 1,can't change it

Object.defineProperty(obj,'x',{writable:true,configurable:true,value:100})
obj.x //100
obj.x=500
obj.x //500

//[JavaScript]属性标签
Object.getOwnPropertyDescriptor({pro:true},'pro')
//Object{value:true,writable:true,enumerable:true,configurable:true}
Object.getOwnPropertyDescriptor({pro:true,'a'}) //undefined

var person={}    
Object.defineProperty(person,'name',{
    configurable:false;
    writable:false;
    enumerable:true;
    value:"Bosn Ma"
})
person.name //Bosn Ma
person.name=1
person.name //still Bosn Ma
delete person.name //false
Object.defineProperty(person,'type',{
    configurable:true;
    writable:true;
    enumerable:false;
    value:"Object"
})
Object.keys(person) //["name"]

Object.defineProperties(person,{
    title:{value:'fe',enumerable:true},
    corp:{value:'BABA',enumerable:true},
    salary:{value:50000,enumerable:true,writable:true}
})
Object.getOwnPropertyDescriptor(person,'salary')
//Object{value:50000,writable:true,enumerable:true,configurable:false}
Object.getOwnPropertyDescriptor(person,'corp')
//Object{value:'BABA',writable:false,enumerable:true,configurable:false}

Object.defineProperties(person,{
    title:{value:'fe',enumerable:true},
    corp:{value:'BABA',enumerable:true},
    salary:{value:50000,enumerable:true,writable:true},
    luck:{
        get:function(){
            return Math.random()>0.5?'good':'bad';
        }
    },
    promote:{
        set:function(level){
            this.salary *= 1+level*0.1;
        }
    }
});
Object.getOwnPropertyDescriptor(person,'salary')
Object.getOwnPropertyDescriptor(person,'corp')
person.salary //50000
person.promote=2
person.salary //60000

//[JavaScript]对象标签、对象序列化
[[proto]] [[class]] [[extensible]]

[[class]]
var toString=Object.prototype.toString;
function getType(o){
    return toString.call(o).slice(8,-1)
}
toString.call(null);//"[object Null]"
getType(null) //"Null"
getType(undefined) //"Undefined"
getType(1) //"Number"
getType(new Number(1)) //"Number"
typeof new Number(1) //"object"
getType(true) //"Boolean"
getType(new Boolean(true)) //"Boolean"

[[extensible]]
var obj={x:1,y:2}
Object.isExtensible(obj) //true
Object.preventExtensible(obj)
Object.isExtensible(obj) //false
obj.z=1
obj.z //undefined,add new property failed
Object.getOwnPropertyDescriptor(obj,'x')

Object.seal(obj) //封
Object.getOwnPropertyDescriptor(obj,'x') //configurable->false
Object.isSealed(obj) //true

Object.freeze(obj) //冻结
Object.getOwnPropertyDescriptor(obj,'x') //writable->false
Object.isFrozen(obj) //true
//[caution]not effects prototype chain!!!

序列化、其它对象方法
var obj={x:1,y:true,z:[1,2,3],nullVal:null}
JSON.stringify(obj) //"{"x":1,"y":true,"z":[1,2,3],"nullVal":null}"

obj={val:undefined,a:NaN,b:Infinity,c:new Date()}
JSON.stringify(obj); //"{"a":null,"b":null,"c":"2017-05-24T 16:12:46.666Z"}"

obj=JSON.parse('{"x":1}')
obj.x //1

var obj={
    x:1,
    y:2,
    o:{
        o1:1,
        o2:2;
        toJSON:function(){
            return this.o1 + this.o2;
        }
    }
}
JSON.stringify(obj) //"{"x":1,"y":2,"o":3}"

var obj={x:1,y:2}
obj.toString(); //"[object Object]"
obj.toString=function(){
    return this.x+this.y;
}
"Result"+obj //"Result 3",by toString
+obj //3,from toString    
    
obj.valueOf=function(){
    return this.x+this.y+100;
}
+obj; //103,from valueOf

"Result"+obj;//still "Result 103"
    </pre>
    
    <h4>第5章 数组</h4>
    <pre>
//[JavaScript]创建数组、数组操作
数组是值的有序集合。每个值叫做元素,每个元素在数组中都有数字位置编号,也就是索引。JS中的数组是弱类型的,数组中可以含有不同类型的元素。数组元素甚至可以是对象或其它数组。
var arr=[1,true,null,undefined,{x:1},[1,2,3]];

创建数组-字面量
var BAT=['Alibaba','Tencent','Baidu'];
var students=[{name:'Bosn',age:27},{name:'Nunnly',age:3}];
var arr=['Nummly','is','big','keng','B',123,true,null];
var arrInArr=[[1,2],[3,4,5]];

var commasArr1=[1,,2];//1,undefined,2
var commasArr2=[,,];//undefined*2
//size from 0 to (2^23-1)

创建数组-new Array
var arr=new Array();
var arrWithLength=new Array(100);//undefined*100
var arrLikesLiteral=new Array(true,false,null,1,2,"hi");//等价于[true,false,null,1,2,"hi"]

数组元素读写
var arr=[1,2,3,4,5];
arr[1];//2
arr.length;//5
arr[5]=6;
arr.length;//6
delete arr[0];
arr[0];//undefined

数组元素增删→动态的,无需指定大小
var arr=[];
arr[0]=1;
arr[1]=2;
arr.push(3);
arr;//[1,2,3]

arr[arr.length]=4;//equal to arr.push(4);
arr;//[1,2,3,4]

arr.unshift(0);
arr;//[0,1,2,3,4]

delete arr[2];
arr;//[0,1,undefined,3,4] 
arr.length;//5
2 in arr;//false

arr.length -=1
arr;//[0,1,undefined,3],4 is removed

arr.pop();//3 returned by pop
arr;//[0,1,undefined],3 is removed

arr.shift();//0 returned by shift
arr;//[1,undefined]

数组迭代
for / for...in

//[JavaScript]二维数组、稀疏数组
二维数组
var arr=[[0,1],[2,3],[4,5]]; //result:
var i=0,j=0;                 //row 0
var row;                     //0
<!-- for(;i<arr.length;i++){ //1
    row=arr[i];              //row 1
    console.log('row'+i);    //2
    for(;j<row.length;j++){  //3
        console.log(row[j]); //row 2
    }                        //4
} -->                        //5

稀疏数组
稀疏数组并不含有从0开始的连续索引。一般length属性值比实际元素个头大。
var arr1=[undefined];
var arr2=new Array(1);
0 in arr1;//true
0 in arr2;//false
arr1.length=100;
arr1[99]=123;
99 in arr1;//true
98 in arr1;//false
var arr=[,,];
0 in arr;//false

//[JavaScript]数组方法(上)
{} => Object.prototype
[] => Array.prototype

Array.prototype.join
Array.prototype.reverse
Array.prototype.sort
Array.prototype.contact
Array.prototype.slice //切片
Array.prototype.splice //胶接
Array.prototype.forEach(ES5)
Array.prototype.map(ES5)
Array.prototype.filter(ES5)
Array.prototype.every(ES5)
Array.prototype.some(ES5)
Array.prototype.reduce/reduceRight(ES5)
Array.prototype.indexOf/lastIndexOf(ES5)
Array.isArray(ES5)

join 将数组转为字符串
var arr=[1,2,3];
arr.join();//"1,2,3"
arr.join("_");//"1_2_3"

function repeatString(n,str){
    return new Array(n+1).join(str);
}
repeatString(3,"a");//"aaa"
repeatString(5,"Hi");//"HiHiHiHiHi"

reverse 将数组逆序
var arr=[1,2,3];
arr.reverse();//[3,2,1]
arr;//[3,2,1]

sort 排序
var arr=["a","d","c","b"];
arr.sort();//["a","b","c","d"]

arr=[13,24,51,3];
arr.sort();//[13,24,3,51]
arr;//[13,24,3,51]
arr.sort(function(a,b){
    return a-b;
})

arr=[{age:25},{age:39},{age:99}];
arr.sort(function(a,b){
    return a.age-b.age;
})
arr.forEach(function(item){
    console.log('age',item.age);
})

concat 数组合并
var arr=[1,2,3]
arr.concat(4,5)//[1,2,3,4,5]
arr;//[1,2,3]
arr.concat([10,11],13)//[1,2,3,10,11,13]
arr.concat([1,[2,3]])//[1,2,3,1,[2,3]]

slice 返回部分数组[)
var arr=[1,2,3,4,5]
arr.slice(1,3) //[2,3]
arr.slice(1) //[2,3,4,5]
arr.slice(1,-1) //[2,3,4]
arr.slice(-4,-3) //[2]

splice 数组拼接
var arr=[1,2,3,4,5]
arr.splice(2) //returns[3,4,5]
arr;//[1,2]
arr=[1,2,3,4,5]
arr.splice(2,2) //returns[3,4]
arr;//[1,2,5]
arr=[1,2,3,4,5]
arr.splice(1,1,'a','b')//returns[2]
arr;//[1,'a','b',3,4,5]

//[JavaScript]数组方法下
forEach 数组遍历
var arr=[1,2,3,4,5]
arr.forEach(function(x,index,a){
    console.log(x+'|'+index+'|'+(a===arr))
})
//1|0|true 2|1|true 3|2|true 4|3|true 5|4|true

map 数组映射
var arr=[1,2,3]
arr.map(function(x){
    return x+10;
})//[11,12,13]
arr//[1,2,3]

filter 数组过滤
var arr=[1,2,3,4,5,6,7,8,9,10]
arr.filter(function(x,index){
    return index%3===0||x>=8
})//returns [1,4,7,8,9,10]
arr//[1,2,3,4,5,6,7,8,9,10]

every&some 数组判断
var arr=[1,2,3,4,5]
arr.every(function(x){
    return x<10;
})//true
arr.every(function(x){
    return x<3;
})//false

var arr=[1,2,3,4,5]
arr.some(function(x){
    return x===3;
})//true
arr.some(function(x){
    return x===100;
})//false

reduce
var arr=[1,2,3]
var sum=arr.reduce(function(x,y){
    return x+y;
},0)//6
arr//[1,2,3]

arr=[3,9,6]
var max=arr.reduce(function(x,y){
    console.log(x+"|"+y);
    return x>y?x:y;
})//3|9 9|6
max//9

reduceRight 从右开始遍历
max=arr.reduceRight(function(x,y){
    console.log(x+"|"+y);
    return x>y?x:y;
})//6|9 9|3
max//9

indexOf 数组检索
Array.isArray([]) 判断是否为数组

//[JavaScript]数组小结
数组 VS 一般对象
相同:
都可以继承
数组是对象,对象不一定是数组
都可以当做对象添加删除属性
不同:
数组自动更新length
按索引访问数组常常比访问一般对象属性明显迅速
数组对象继承Array.prototype上的大量数组操作方法

字符串 VS 数组
var str="hello world"
str.charAt(0);//"h"
str[1];//e
Array.prototype.join.call(str,"_")
//"h_e_l_l_o__w_o_r_l_d"
    </pre>
    
    <h4>第6章 函数和作用域(函数、this)</h4>
    <pre>
//[JavaScript]函数概述
函数是一块JavaScript代码,被定义一次,可执行和调用多次。JS中的函数也是对象,所以JS函数可以像其它对象那样操作和传递所以我们也常叫JS中的函数为函数对象
重点:
this,arguments,作用域,不同调用方式,不同创建方法
不同的调用方式:
foo() //直接调用
o.method() //对象方法
new Foo() //构造器
func.call(o) //call/apply/bind

//[JavaScript]函数声明与表达式
    </pre>
</body>
</html>

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
<title>与MySQL的零距离接触</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<!-- 初涉MySQL -->
	<h4>第1章 初涉MySQL</h4>
	<pre>
.MySQL基础
.安装MySQL
.配置MySQL
.使用MySQL

//MySQL基础
.由瑞典MySQL AB公司开发,目前属于Oracle公司
.是一个开源的关系型数据库管理系统
.分为社区版和企业版

//安装MySQL
.MSI安装(Windows Installer)
 Typical(MySQL服务器、客户端)
 Custom
 Complete
.ZIP安装

//配置MySQL
.Detailed Configuration
.Standard Configuration(标准配置)
 net [start|stop] mysql 

//使用MySQL
mysql 参数
      -V,--version        //输出版本信息并退出
	  -h,--host=name      //服务器名称
	  -D,--database=name  //打开指定数据库
	  -P,--port=#	       //端口号
      -u,--user=name      //用户名
	  -p,--password=name  //密码
	  --delimiter=name    //指定分隔符
      --prompt=name       //设置提示符
.MySQL登录/退出
 mysql -V
 mysql -uroot -p -P3306 -h127.0.0.1
 mysql >exit;
        quit;
		\q;
.修改MySQL提示符
 连接客户端时通过参数指定
 shell>mysql -uroot -phuzx5211314 --prompt \h  //服务器名称
                                           \D  //完整的日期
                                           \d  //当前数据库
                                           \u  //当前用户			
                                           mysql>prompt \u@\h \d> 										   
 连接上客户端后,通过prompt命令来实现
 mysql>prompt 提示符
 localhostprompt mysql>
.MySQL常用命令以及语法规范 
 SELECT VERSION();
 SELECT NOW();
 SELECT USER();
 
 关键字与函数名称全部大写
 数据库名称、表名称、字段名称全部小写
 SQL语句必须以分号结尾
 
.数据库操作
 CREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name [DEFAULT] CHARACTER SET [=] character_name 
 SHOW {DATABASE | SCHEMA} [LIKE 'pattern' | WHERE expr]
 information_schema
 mysql
 performance_schema
 test
 CREATE DATABASE IF　NOT EXISTS t2 CHARACTER SET gbk;
 SHOW CREATE　DATABASE t2;
 ALTER DATABASE t2 CHARACTER SET = utf8; 
 DROP DATABASE IF EXISTS t2; 
    </pre>

	<!-- 数据类型与操作数据表 -->
	<h4>第2章 数据类型与操作数据表</h4>
	<pre>
.整型
  数据类型是指列、存储过程参数、表达式和局部变量的数据特征,它决定了数据的存储格式,代表了不同的信息类型。
 tinyint、smallint、mediumint、int、bigint  
.浮点型
 float、double
.日期时间型
 year、time、date、datetime、timestamp
.字符型
 char、varchar、tinytext、text、mediumtext、longtext、enum、set
.创建数据表
 create table [if not exists] table_name(
   column_name data_type,
   ...
 )  
.查看数据表
 show tables [from db_name]
 [like 'pattern' | where expr]
.查看数据表结构
 show columns from tbl_name
.记录的插入和查找
 insert [into] tbl_name[(col_name,...)] values(val,...)
 select expr,... from tbl_name
.空值和非空
 null
 not null
.自动编号
 auto_increment
  自动编号,且必须与主键组合使用
  默认情况下,起始值为1,每次的增量为1
.初涉主键约束
  每张数据表只能存在一个主键
  主键保证记录的唯一性
  主键自动为not null 
.初涉唯一约束
 unique key
   唯一约束可以保证记录的唯一性
   唯一约束的字段可以为空值(NULL)
   每张数据表可以存在多个唯一约束
.初涉默认约束
   当插入记录时,结果没有明确为字段赋值,则自动赋予默认值
.总结
	</pre>
	
	<!--  -->
	<h4></h4>
</body>
</html>

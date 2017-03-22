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
	
	<!-- 约束以及修改数据表 -->
	<h4>第3章 约束以及修改数据表</h4>
	<pre>
.外键约束的要求解析
   约束保证数据的完整性和一致性
   约束分为表级约束和列级约束
   约束类型包括(not null、primary key、unique key、default、foreign key)
 
   外键约束
   保证数据一致性,完整性
   实现一对一或一对多关系
   
   要求
   父表和子表必须使用相同的存储引擎,而且禁止使用临时表
   数据表的存储引擎只能为InnoDB
   外键列和参照列必须具有相似的数据类型。其中数字的长度或是否有符号位必须相同;二字符的长度则可以不同
   外键列和参照列必须创建索引。如果外键列不存在索引的话,MySQL将自动创建索引
   
   编辑数据表的默认存储引擎(MySQL配置文件default-storage-engine=InnoDB)
 CREATE TABLE province(
                      id SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
                      pname VARCHAR(20) NOT NULL
                      );
 CREATE TABLE users(
                    id SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
                    username VARCHAR(10) NOT NULL,
                    pid SMALLINT UNSIGNED,
                    FOREIGN KEY (pid) REFERENCES province (id) ON DELETE CASCADE
                   );
.外键约束的参照操作
 cascade:从父表删除或更新且自动删除或更新子表中匹配的行(ON DELETE CASCADE)         
 set null:从父表删除或更新行,并设置子表中的外键列为null。如果使用该选项,必须保证子表列没有指定not null
 restrict:拒绝对父表的删除或更新操作
 no action:标准SQL的关键字,在MySQL中与restrict相同
.表级约束与列级约束
   对一个数据列建立的约束,称为列级约束
   对多个数据列建立的约束,称为表级约束
   列级约束既可以在列定义时声明,也可以在列定义以后声明
   表级约束只能在列定以后声明
.修改数据表-添加/删除列
 ALTER TABLE tbl_name ADD [COLUMN] col_name column_definition [FIRST | AFTER col_name] //添加单列
 ALTER TABLE tbl_name ADD [COLUMN] (col_name col_definition,...) //添加多列
 ALTER TABLE tbl_name DROP [COLUMN] col_name //删除列
.修改数据表-添加约束
 ALTER TABLE tbl_name ADD [CONSTRAINT [SYMBOL]] PRIMARY KEY [index_type] (index_col_name,...) //添加主键约束
 ALTER TABLE tbl_name ADD [CONSTRAINT [SYMBOL]] UNIQUE  KEY [index|key] [index_name] [index_type] (index_col_name,...) //添加唯一约束
 ALTER TABLE tbl_name ADD [CONSTRAINT [SYMBOL]] FOREIGN KEY [index_name] (index_col_name,...) reference_definition //添加外键约束
 ALTER TABLE tbl_name ALTER [COLUMN] col_name {SET DEFAULT literal | DROP DEFAULT} //添加/删除默认约束
.修改数据表-删除约束
 ALTER TABLE tbl_name DROP PRIMARY KEY //删除主键约束
 ALTER TABLE tbl_name DROP {index|key} index_name //删除唯一约束
 ALTER TABLE tbl_name DROP FOREIGN KEY fk_symbol //删除外键约束 
.修改数据表-修改列定义和更名数据表
 ALTER TABLE tbl_name MODIFY [COLUMN] col_name col_definition [FIRST|AFTER COL_NAME] //修改列定义
 ALTER TABLE tbl_name CHANGE [COLUMN] old_col_name new_col_name col_definition [FIRST|AFTER COL_NAME] //修改列名称
 ALTER TABLE tbl_name RENAME [TO|AS] new_tbl_name //数据表更名
 RENAME TABLE tbl_name TO new_tbl_name //数据表更名
.小结
	</pre>
	
	<!-- 操作数据表中的记录 -->
	<h4>第4章 操作数据表中的记录</h4>
	<pre>
.插入记录INSERT
 INSERT [INTO] tbl_name [(col_name,...)] {VALUES|VALUE} ({expr|DEFAULT},...),(...),...
.插入记录INSERT SET-SELECT
 INSERT [INTO] tbl_name SET col_name={expr|DEFAULT},... //与第一种方式的区别在于,此方法可以使用子查询(SubQuery)
 INSERT [INTO] tbl_name [(col_name,...)] SELECT... //此方法可以将查询结果插入到指定数据表
.单表更新记录UPDATE
 UPDATE [LOW_PRIORITY] [IGNORE] table_reference SET col_name1={expr1|DEFAULT} [,col_name2={expr2|DEFAULT}]... [WHERE where_condition]
.单表删除记录DELETE
 DELETE FROM tbl_name [WHERE where_condition]
.查询表达式解析
 SELECT select_expr[,select_expr...]
 [
  FROM table_references
  [WHERE where_condition]
  [GROUP BY {col_name|position} [ASC|DESC],...]
  [HAVING where_condition]
  [ORDER BY {col_name|expr|position} [ASC|DESC],...]
  [LIMIT {[offset,] row_count | row_count OFFSET offset}]  
 ]

 select_expr
  每一个表达式表示想要的一列,必须有至少一个
  每个列之间以英文逗号分隔
  星号(*)表示所有列。tbl_name.*可以表示命名表的所有列
  查询表达式可以使用[AS] alias_name为其赋予别名
  别名可用于GROUP BY,ORDER BY或HAVING子句
.where语句进行条件查询
  条件表达式
  对记录进行过滤,如果没有指定WHERE子句,则显示所有记录
  在WHERE表达式中,可以使用MySQL支持的函数或运算符
.group by语句对查询结果分组
.having语句设置分组条件
.order by语句对查询结果排序
.limit语句限制查询数量
.小结
	</pre>
	
	<!-- 子查询与连接 -->
	<h4>第5章 子查询与连接</h4>
	<pre>
.数据准备
.MySQL子查询简介
 Subquery是指出现在其他SQL语句内的SELECT子句
 SELECT * FROM t1 WHERE col1=(SELECT col2 FROM t2);
  其中SELECT * FROM t1,称为Outer Query/Outer Statement
 SELECT col2 FROM t2,称为SubQuery
 
  子查询指嵌套在查询内部,且必须始终出现在圆括号内
  子查询可以包括多个关键字或条件,如DISTINCT、GROUP BY、ORDER BY、LIMIT、函数等
  子查询的外层查询可以是:SELECT,INSERT,UPDATE,SET或DO
  子查询可以返回标量、一行、一列或子查询 
.由比较运算符引发的子查询
 =、>、<、>=、<=、<>、!=、<=>
 operand comparison_operator subquery
 06:20
.由[NOT]IN/EXISTS引发的子查询
.使用INSERT...SELECT插入记录
.多表更新
.多表更新之一步到位
.连接的语法结构
.内连接INNER JOIN
.外连接OUTER JOIN
.多表连接
.关于连接的几点说明
.无限级分类表设计
.多表删除
	</pre>
</body>
</html>

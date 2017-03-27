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
 
  用ANY、SOME或ALL修饰的比较运算符
 operand comparison_operator ANY(subquery)
 operand comparison_operator SOME(subquery)
 operand comparison_operator ALL(subquery)
           ANY           SOME           ALL 
 >、>=     最小值                         最小值                         最大值
 <、<=     最大值                         最大值                         最小值
 =         任意值                        任意值
 <>、!=                                 任意值
.由[NOT]IN/EXISTS引发的子查询
 operand comparison_operator [NOT] IN(subquery)
 =ANY运算符与IN等效
 !=ALL或<>ALL运算符与NOT IN等效
.使用INSERT...SELECT插入记录
 INSERT [INTO] tbl_name [(col_name,...)] SELECT... //将查询结果写入数据表 
.多表更新
 UPDATE table_references SET col_name1={expr1|DEFAULT}[,col_names={expr2|DEFAULT}]... [WHERE where_condition]
 UPDATE tdb_goods INNER JOIN tdb_goods_cates ON goods_cate=cate_name SET goods_cate=cate_id;
.多表更新之一步到位
 CREATE TABLE [IF NOT EXISTS] tbl_name [(create_definition,...)] select_statement //创建数据表同时将查询结果写入到数据表
 CREATE TABLE tdb_goods_brands(brand_id SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,brand_name VARCHAR(40) NOT NULL) SELECT brand_name FROM tdb_goods GROUP BY brand_name;
 UPDATE tdb_goods AS g INNER JOIN tdb_goods_brands AS b ON g.brand_name=b.brand_name SET g.brand_name=b.brand_id;
 ALTER TABLE tdb_goods CHANGE goods_cate cate_id SMALLINT UNSIGNED NOT NULL,CHANGE brand_name brand_id UNSIGNED NOT NULL;
.连接的语法结构
 MySQL在SELECT语句、多表更新、多表删除语句中支持JOIN操作
 table_reference
 {[INNER|CROSS] JOIN | {LEFT|RIGHT} [OUTER] JOIN}
 table_reference
 ON conditional_expr
 
 table_reference
 tbl_name [[AS] alias]|table_subquery [AS] alias
   数据表可以使用tbl_name AS alias_name 或tbl_name alias_name 赋予别名
 table_subquery可以作为子查询使用在FROM子句中,这样的子查询必须为其赋予别名 
.内连接INNER JOIN
  在MySQL中,JOIN、CROSS JOIN和INNER JOIN是等价的
  LEFT [OUTER] JOIN,左外连接  
  RIGHT [OUTER] JOIN,右外连接
  
  使用ON关键字来设定连接条件,也可以使用WHERE来代替
  通常使用ON关键字来设定连接条件,
  使用WHERE关键字进行结果集记录的过滤

  显示左表及右表符合连接条件的记录 //内连接
 SELECT goods_id,goods_name,cate_name FROM tdb_goods INNER JOIN tdb_goods_cates ON tdb_goods.cate_id=tdb_goods_cates.cate_id;
.外连接OUTER JOIN
  显示左表的全部记录及右表符合连接条件的记录 //左外连接
  显示右表的全部记录及左表符合连接条件的记录 //右外连接 
.多表连接
 SELECT goods_id,goods_name,cate_name,brand_name,goods_price FROM tdb_goods 
 INNER JOIN tdb_goods_cates ON tdb_goods.cate_id=tdb_goods_cates.cate_id
 INNER JOIN tdb_goods_brands ON tdb_goods.brand_id=tdb_goods_brands.brand_id;
.关于连接的几点说明
  外连接
 a LEFT JOIN b join_condition
  数据表B的结果集以来数据表A
  数据表A的结果集根据做连接条件以来所有数据表(B表除外)
  左外连接条件决定如何检索数据表B(在没有指定WHERE条件的情况下)
  如果数据表A的某条记录符合WHERE条件,但是在数据表B不存在符合条件的记录,将生成一个所有列为空的额外的B行
  如果使用内连接查找的记录在连接数据表中不存在,并且在WHERE子句中尝试以下操作：col_namd IS NULL时,如果col_name被定义为NOT NULL,MySQL将在找到符合连执着条件的记录后停止搜索更多的行
.无限级分类表设计
 CREATE TABLE tdb_goods_types(type_id SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,type_name varchar(20) NOT NULL,parent_id SMALLINT UNSIGNED NOT NULL DEFAULT 0);
  同一个数据表对其自身进行连接 //自身连接
.多表删除
 DELETE tbl_name[.*][,tbl_name[.*]]... FROM table_references [WHERE where_condition] 
 DELETE t1 FROM tdb_goods AS t1 LEFT JOIN(SELECT goods_id,goods_name FROM tdb_goods GROUP BY goods_name HAVING COUNT(goods_name>=2)) 
 tdb_goods AS t2 ON t1.goods_name=t2.goods_name WHERE t1.goods_id>t2.goods_id;
	</pre>
	
    <!-- 运算符和函数 -->
    <h4>运算符和函数</h4>
    <pre>
.回顾和概述 
.字符函数
 CONCAT()    //字符连接
 CONCAT_WS() //使用指定的分隔符进行字符连接
 FORMAT()    //数字格式化
 LOWER()     //转换成小写字母
 UPPER()     //转换成大写字母
 LEFT()      //获取左侧字符
 RIGHT()     //获取右侧字符
 LENGTH()    //获取字符串长度
 LTRIM()     //删除前导空格
 RTRIM()     //删除后续空格
 TRIM()      //删除前导和后续空格
 SUBSTRING() //字符串截取
 [NOT] LIKE()//模式匹配
 REPLACE()   //字符串替换

 SELECT CONCAT('first_name','last_name') AS fullyname FROM test;
 SELECT CONCAT_WS('-','imooc','MySQL','Functions');
 SELECT FORMAT(12560.75,0); //千分位
 SELECT LOWER('MySQL');
 SELECT UPPER('mysql');
 SELECT UPPER(LEFT('MySQL',2));
 SELECT LOWER(RIGHT('MySQL',3));
 SELECT LENGTH('My SQL');
 SELECT LENGTH(LTRIM('  MySQL    '));
 SELECT LENGTH(RTRIM('  MySQL    '));
 SELECT LENGTH(TRIM('  MySQL    '));
 SELECT TRIM(LEADING '?' FROM '??MySQL???'); //前导
 SELECT TRIM(TRAILING '?' FROM '??MySQL???'); //后导
 SELECT TRIM(BOTH '?' FROM '??MySQL???');
 SELECT SUBSTRING('MySQL',1,2);
 SELECT 'MySQL' LIKE 'M%';
 SELECT * FROM test WHERE username LIKE '%o%';
 SELECT REPLACE('??MySQL','?','');
 SELECT * FROM test WHERE first_name LIKE '%1%%' ESCAPE '1';
.数值运算符和函数
 CEIL()     //进一取整
 FLOOR()    //舍一取整
 DIV()      //整数除法
 MOD()      //取余数(取模)
 POWER()    //幂运算
 ROUND()    //四舍五入
 TRUNCATE() //数字截取
  
 SELECT CEIL(3.01);
 SELECT FLOOR(3.01);
 SELECT 3 DIV 4; //0
 SELECT 5 MOD 3; //2
 SELECT POWER(3,3);
 SELECT ROUND(3.652,0);
 SELECT TRUNCATE(125.89,-1); //120
.比较运算符和函数
 [NOT] BETWEEN...AND... //[不]在范围之内
 [NOT] IN()             //[不]在列出值范围内(数轴上的点)
 IS [NOT] NULL          //[不]为空

 SELECT 15 BETWEEN 1 AND 22;
 SELECT 10 IN(5,10,15,20);
 SELECT * FROM test WHERE first_name IS NULL;
.日期时间函数
 NOW()         //当前日期和时间
 CURDATE()     //当前日期
 CURTIME()     //当前时间
 DATE_ADD()    //日期变化
 DATEDIFF()    //日期差值
 DATE_FORMAT() //日期格式化
 
 SELECT NOW();
 SELECT CURDATE();
 SELECT CURTIME();
 SELECT DATE_ADD('2017-3-27',INTERVAL 370 DAY); //YEAR、WEEK
 SELECT DATEDIFF('2017-3-27','2018-4-1');
 SELECT DATE_FORMAT('2017-3-27','%m/%d/%Y'); 
.信息函数
 CONNECTION_ID() //连接ID
 DATABASE()      //当前数据库
 LAST_INERT_ID() //最后插入记录的ID号
 USER()          //当前用户
 SERSION()       //版本信息
 
 SELECT CONNECTION_ID();
 SELECT DATABASE();
 SELECT LAST_INSERT_ID();
 SELECT USER();
 SELECT VERSION();
.聚合函数
 AVG()   //平均值
 COUNT() //计数
 MAX()   //最大值
 MIN()   //最小值
 SUM()   //求和
 
 SELECT ROUND(AVG(goods_price),2) AS avg_price FROM tdb_goods;
 SELECT COUNT(goods_id) AS counts FROM tdb_goods;
 SELECT ROUND(MAX(goods_price),2) FROM tdb_goods;
 SELECT ROUND(MIN(goods_price),2) FROM tdb_goods;
 SELECT ROUNT(SUM(goods_price),2) FROM tdb_goods;
.加密函数
 MD5()      //信息摘要算法
 PASSWORD() //密码算法
 
 SELECT MD5('admin');
 SELECT PASSWORD('admin');
 SET PASSWORD=PASSWORD('...');
    </pre>
    
    <!-- 自定义函数 -->
    <h4>第七章 自定义函数</h4>
    <pre>
.回顾和概述 
.自定义函数简介
 用户自定义函数(user-defined function,UDF)是一种对MySQL扩展的途径,其用法与内置函数相同
 自定义函数的两个必要条件1.参数 2.返回值
 函数可以返回任意类型的值,同样可以接受这些类型的参数
  
 CREATE FUNCTION function_name RETURNS {STRING|INTEGER|REAL|DECIMAL} routine_body
 函数体由合法的SQL语句构成
 函数体可以是简单的SELECT或INSERT语句
 函数体如果为复合结构则使用BEGIN...END语句
 复合结构可以包含声明,循环,控制结构 
.创建不带参数的自定义函数
 SELECT DATE_FORMAT(NOW(),'%Y年%m月%d日 %H时:%i分:%s秒');
 CREATE FUNCTION f1() RETURNS VARCHAR(30) RETURN DATE_FORMAT(now(),'%Y年%m月%d日 %H时:%i分:%s秒');
.创建带有参数的自定义函数
 CREATE FUNCTION f2(num1 SMALLINT UNSIGNED,num2 SMALLINT UNSIGNED) RETURNS FLOAT(10,2) UNSIGNED RETURN (num1+num2)/2;
.创建具有复合结构函数体的自定义函数
 delimiter //

 CREATE FUNCTION adduser(username VARCHAR(20))
 returns INT UNSIGNED
 BEGIN
 INSERT test(username) VALUES(username); 
 RETURN last_insert_id();
 END
 //
 
 DROP FUNCTION [IF EXISTS] function_name;
    </pre>
</body>
</html>

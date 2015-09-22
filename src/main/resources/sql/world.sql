select count(*) from city;
select * from country;
select * from countrylanguage;

select * from dept;
select * from emp;

select * from city;

Countryname, indepyear, headofstace, cityname, population


select Name, Population, District from city where CountryCode='KOR'; 


select country.Name, country.IndepYear, country.HeadOfState, city.Name, city.Population from city inner join country where country.Code="usa"&&city.CountryCode="usa";

-- char(10)		255max
-- varchar(10)	255max
-- longvarchar(1000) - oracle ==> long,	mysql ==> text, mediumtext
-- clob				 - oracle ==> clob, mysql ==> longtext

-- numeric(10, 2)
-- decimal(10, 2)

-- Timestamp (날짜, 시간)	 - oracle ==> date, mysql ==> datetime
-- Date (날짜)
-- Time (시간)

-- bLob		- oracle ==> blob, mysql ==> blob, mediumblob, longblob


--
-- dept
--
drop table dept;
create table dept (
	deptno numeric(2) not null,
	dname varchar(14),
	loc varchar(13),
	constraint  pk_dept primary key (deptno)
) engine=InnoDB default charset=utf8;
-- ctrl shift x or y (대문자, 소문자)


--
-- emp
--
drop table emp;
create table emp (
	empno numeric(4) not null,
	ename varchar(10),
	job varchar(9),
	mgr numeric(4),
	hiredate datetime,
	sal numeric(7,2),
	comm numeric(7,2),
	deptno numeric(2),
	constraint pk_emp primary key (empno),
	constraint fk_deptno foreign key (deptno) references dept(deptno)
) engine=InnoDB default charset=utf8;


--
-- bonus
--
drop table bonus;
create table bonus (
	ename varchar(10),
	job varchar(9),
	sal numeric,
	comm numeric
) engine=InnoDB default charset=utf8;

--
-- salgrade
--
drop table salgrade;
create table salgrade ( 
	grade numeric,
	losal numeric,
	hisal numeric 
) engine=InnoDB default charset=utf8;

select * from emp;
select * from dept;
insert into emp
(
	empno,
	ename,
	job
)
values
(
	1000,
	'hong',
	'test'
);

-- totalItem
select count(*) from city;

-- limit start, count ==> start 0, 1, 2,,,,

-- ? start ==> firstItem - 1
-- ? count ==> lastItem - firstItem + 1

-- 1 page 01 ~ 10 ==> 00 ~ 09
select * 
	from city
   limit 0, 10;	-- 앞에는 시작하는 수, 뒤에는 10개 카운트 (10개를 표현한다는 의미)
   
 -- 2 page 11 ~ 20 ==> 10 ~ 19  
select * 
	from city
   limit 10, 10;

create table filelist (
	fname 			varchar(50) primary key,
	flength 		numeric(10),
	flast_modified	datetime,
	image 			longblob
);






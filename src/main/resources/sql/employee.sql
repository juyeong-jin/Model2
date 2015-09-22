
mvn install:install-file -Dfile=ojdbc6.jar -DartifactId=ojdbc6 -DgroupId=com.oracle -Dversion=11.2.0 -Dpackaging=jar


select * from dept;
select * from emp;
select * from BONUS;
select * from SALGRADE;

--
-- Inner Join 1
--
select dept.deptno, dept.dname, emp.ename, emp.hiredate
  from dept inner join emp
  	on dept.deptno = emp.deptno
 order by dept.deptno desc;
 
--
-- Inner Join 2
--
select d.deptno, d.dname, e.ename, e.hiredate
  from dept d, emp e
 where d.deptno = e.deptno
 order by d.deptno desc;
--
-- Left Outer Join
--
 select d.deptno, d.dname, e.ename, e.hiredate
   from dept d left outer join emp e
	 on d.deptno = e.deptno;
	 
-- 1. emp에 직원을 추가하시오
-- 	  empno = 8000 
--    ename = 홍길동
--    job = developer
--    ...
--    empno = 80 
--    dname = 총무부
--    dloc = 서울

-- 2. dpet 정보를 수정하시오	 
--    deptno = 20 
--    dname = 개발부
--    loc = 부산 

-- 3. 직원정보를 삭제하시오
--    empno >= 7300 and empno <= 7800

-- 4. 부서별 직원정보를 출력하시오(단, 모든 부서를 출력하시오)

select * from EMP;
select * from dept;

--1
insert into dept values(80,'총무부','서울'); 
insert into emp(empno,ename,job) values(8000,'홍길동','developer');
insert into emp(empno,ename,job) values(8001,'둘리','developer');
insert into emp(empno,ename,job) values(8002,'마이클','developer');

insert into emp(empno,ename,deptno) select 80, '정민영', deptno
from dept where dname = '총무부' and loc = '서울';

--2
update dept set dname = '개발부',loc = '부산' where deptno = '20';
create table emp_20150714 as select * from emp;	

--3
delete from emp where empno >= 7300 and empno <=7800;

--4
select * from dept d  left outer join emp e on d.deptno = e.deptno;





--------------
select * from emp;
insert into emp
(
	empno,
	ename,
	job,
	mgr,
	hiredate,
	sal,
	deptno
)
values
(
	1000,
	'홍길동2',
	'deve''xxx''',
	7000,
	'2015/09/10',
	300.2,
	10
);




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



drop table city;

create table city (
  id			 numeric(11) 	not null ,
  name 			 char(35) 		default '',
  countrycode	 char(3) 		default '',
  district		 char(20)		default '',
  population 	 numeric(11) 	default 0,
  constraint pk_city primary key(id),
  constraint fk_country foreign key (countrycode) references country(code)
);



/*
 * Country
 */
drop table country;

create table country (
	code 			char(3) 		default '',
 	name 			char(52) 		default '',	
 	continent 		char(20) 		default 'Asia',
 	region 			char(26) 		default '',
  	surfacearea 	numeric(10,2) 	default '0.00',
	indepyear 		numeric(6) 		default null,
 	population 		numeric(11) 	default '0',
 	lifeexpectancy 	numeric(3,1) 	default null,
	gnp 			numeric(10,2)	default null,
	gnpold 			numeric(10,2)	default null,
	localname 		char(45) 		default '',
  	governmentform 	char(45)		default '',
	headofstate 	char(60) 		default null,
 	capital 		numeric(11) 	default null,
	code2 			char(2) 		default '',
	constraint ck_continent check (continent in ('Asia','Europe','North America','Africa','Oceania','Antarctica','South America')), 
	constraint pk_country primary key (code)
);




drop table countrylanguage;
create table countrylanguage (
  countrycode 	char(3) 			default '',
  language 		char(30) 			default '',
  isofficial 	char(1)			 	default 'f',
  percentage 	numeric(4,1) 		default '0.0',
  constraint ck_isofficeal check (isofficial in ('t', 'f')),
  constraint pk_countrylanguage primary key (countrycode, language)
);

create table filelist (
	fname 			varchar(50) primary key,
	flength 		numeric(10),
	flast_modified	date,
	image 			blob
);

select count(*) from filelist;






rollback

commit

-- ASSIGNMENT 2
-- Display all the information of the EMP table?
select * from emp;
-- Display unique Jobs from EMP table?
select job from emp group by job;
-- List the emps in the asc order of their Salaries?
select * from emp order by sal;
-- List the details of the emps in asc order of the Dptnos and desc of Jobs?
select * from emp order by deptno asc,job desc;
-- Display all the unique job groups in the descending order?
select distinct(job) as dj from emp order by dj desc;
-- Display all the details of all ‘Mgrs’
select * from emp where job='manager';
-- List the emps who joined before 1981
select * from emp where year(hiredate)<'1981';
-- List the Empno, Ename, Sal, Daily sal of all emps in the asc order of Annsal
select Empno, Ename, Sal,sal/30 as Dailysal from emp order by sal;
-- Display the Empno, Ename, job, Hiredate, Exp of all Mgrs
select Empno, Ename, job, Hiredate,YEAR(CURDATE()) - YEAR(hiredate) as Exp from emp where job='manager';
-- List the Empno, Ename, Sal, Exp of all emps working for Mgr 7369
select Empno, Ename, Sal,YEAR(CURDATE()) - YEAR(hiredate) as Exp from emp where mgr=7369;
select * from emp;
-- Display all the details of the emps whose Comm Is more than their Sal
select * from emp where comm>sal;
-- List the emps along with their Exp and Daily Sal is more than Rs 100
select *,YEAR(CURDATE()) - YEAR(hiredate) as Exp, sal/30 as dailysal from emp where sal/30>100;
-- List the emps who are either ‘CLERK’ or ‘ANALYST’ in the Desc order
select * from emp where job='clerk' or job='analyst'order by job desc;
-- List the emps who joined on 1-MAY-81,3-DEC-81,17-DEC-81,19-JAN-80 in asc order of seniority
select * from emp
where (year(hiredate)='1980' and month(hiredate)='05' and day(hiredate)='1')
or (year(hiredate)='1981' and month(hiredate)='12' and day(hiredate)='17')
or (year(hiredate)='1981' and month(hiredate)='12' and day(hiredate)='3' )
or (year(hiredate)='1980' and month(hiredate)='01' and day(hiredate)='19') order by exp;
SELECT *,YEAR(CURDATE()) - YEAR(hiredate) as Exp FROM EMP
WHERE HIREDATE IN('1981-01-05','1981-12-03','1981-12-17','1980-01-03')
ORDER BY exp ASC;
-- List the emp who are working for the Deptno 10 or20
select * from emp where deptno=10 or deptno=20 ;
-- List the emps who are joined in the year 81
select * from emp where year(hiredate)='1981';
-- List the emps Who Annual sal ranging from 22000 and 45000
select * ,sal*12 as Annualsalary from emp where sal*12 between 22000 and 45000;
-- List the Enames those are having five characters in their Names
select *from emp where ename like'_____';
-- List the Enames those are starting with ‘S’ and with five characters
select *from emp where ename like 'S____';
-- List the emps those are having four chars and third character must be ‘r’
select * from emp where ename like'__r_';
-- List the Five character names starting with ‘S’ and ending with ‘H’
select * from emp where ename like's___h';
-- List the emps who joined in January
select * from emp where month(hiredate)='01';
-- List the emps whose names having a character set ‘ll’ together
select * from emp where ename like '%ll%';
-- List the emps who does not belong to Deptno 20
select * from emp where deptno <> 20;
-- List all the emps except ‘PRESIDENT’ & ‘MGR” in asc order of Salaries
select * from emp where job <>'PRESIDENT' and job <> 'manager' order by sal;
select * from emp
-- List the emps whose Empno not starting with digit7


-- List the emps who are working under ‘MGR’
select * from emp where job<>'manager' and job<>'president';
-- List the emps who joined in any year but not belongs to the month of March


select * from emp where month(hiredate)<>'03';
-- List all the Clerks of Deptno 20
select * from emp where job='clerk' and deptno=20;
-- List the emps of Deptno 30 or 10 joined in the year 1981
select * from emp where deptno = 30 or deptno=20 and month(hiredate)='1981';
select * from emp;
-- Display the details of SMITH
select * from emp where ename='smith';
-- Display the location of SMITH
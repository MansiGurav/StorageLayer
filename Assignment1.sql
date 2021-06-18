select * from EMP;
-- LIST ALL MANAGER DATA
select * from EMP where JOB='MANAGER';
-- LIST EMP WHO ARE WORKING AS MANAGER OR ANALYST OR CLERK
select * from EMP where JOB in('MANAGER','ANALYST','CLERK');
-- LIST EMP WHO ARE EARNING SAL BETWEEN 3000 AND 5000 (INCLUSIVE OF LIMIT)
select * from EMP WHERE SAL between 3000 and 5000;
select * from emp;
-- LIST EMP WHO ARE WORKING AS MANAGER OR ANALYST OR CLERK AND EARNING SAL BETWEEN 3000 AND 5000
select * from emp where (job in('MANAGER','ANALYST','CLERK') and SAL BETWEEN 3000 and 5000);
-- LIST ALL EMP WHE ARE EARNING COMM
select * from emp where comm>0;
-- LIST ALL EMP WHOSE COMM IS NOT NULL
select * from emp where comm >= 0;
-- LIST ALL EMP WHOSE NAME STARTS WITH S
select * from EMP where ename like 'S%';
-- LIST ALL EMP WHOSE NAME ENDS WITH R
select * from EMP where ename like '%R';
-- LIST ALL EMP WHOSE NAME CONTAINS A
select * from EMP where ename like '%A%';
-- LIST ALL EMP WHOSE NAME CONTAINS A AS SECOND LETTER
select * from EMP where ename like '_A%';
-- LIST ALL EMP WHOSE NAME STARTS WITH EITHER M OR S
select * from EMP where ename like 'M%%' or ename like 'S%';
-- LIST ALL EMP WHOSE NAME STARTS BETWEEN A TO M
select * from EMP where ename like 'A%' and ename like '%M';
select * from emp;
-- LIST ALL EMP WHOSE NAME CONTAINS _
select * from EMP where ename like '%\_%' ;
-- LIST ALL EMP WHO ARE WORKING AS MANAGER IN EITHER DEPT 10 OR 20 AND ALL CLERK FOR DEPT3 30
select * from emp where (mgr in (select deptno from emp where deptno=10 or deptno=20) or (job='clerk' and deptno=30));
select * from emp;
select * from emp where (job='manager' and (deptno=10 or deptno=20)) or (job='clerk' and deptno=30);
-- LIST ENAME, SAL AND BONUS AS 10% OF SALARY
select ename ,sal, 0.01*sal as BONUS from emp;
-- LIST EMP DATA AS PER THE ASCENDING ORDER OF NAME
select * from emp order by ename;
-- LIST ALL AS PER THEIR SALARY HIGHES TO LOWEST
select * from emp order by sal desc;
-- LIST EMP AS PER THEIR DEPT, WITH IN DEPT HIGHEST TO LOWESET SAL
select * from emp order by deptno desc;
-- list top 3 highest paid emp
SELECT *
FROM emp
ORDER BY sal desc limit 3;
-- LIST THE DIFFERNT JOB NAME
select job from emp group by job;
-- LIST TOTAL ORGANIZATION SALARY
select sum(sal) as Total_organisation_salary from emp;
-- LIST DEPTWISE TOTAL SALARY
select sum(sal) as Department_sal from emp group by deptno;
-- LIST JOBWISE EMP COUNT.
select count(empno) as Total_emp from emp group by job;
-- LIST ALL EMP WHO HAVE JOINED IN MONTH OF FEB
use mastek_a;
select * from emp where month(hiredate)='02';
-- LIST EMP COUNT JOINED BETWEEN 1981 AND 1983
select count(empno) from emp where year(hiredate)>'1981' and Year(hiredate)<'1983';
select * from emp;
-- LIST HOW MANY YEARS OF SERVICE COMPLETED BY EACH EMP ARRANGE BASED ON TENURE HIGHEST TO LOWEST
select * from emp;
SELECT *, YEAR(CURDATE()) - YEAR(hiredate) AS TENURE FROM emp order by tenure desc;
-- RETURN SEQUENTIAL NUMBER RETURN RANK BASED ON SPECIFED CRITERIA IF TWO EMP HAVE
-- SAME SALARY THEY BOTH GET SAME NUMBER AND NEXT NUMBER WILL BE SKIPPED

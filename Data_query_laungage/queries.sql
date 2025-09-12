-- COMPLETE SQL QUERIES FOR PRACTICE
-- TABLES: EMP, DEPT
-- EMP TABLE: EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO
-- DEPT TABLE: DEPTNO, DNAME, LOC
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- PROJECTION
--write queries to display the following columns from EMP and DEPT tables

SELECT ENAME 
FROM EMP; 

SELECT SAL 
FROM EMP;

SELECT ENAME,SAL 
FROM EMP;

SELECT JOB 
FROM EMP;

SELECT EMPNO 
FROM EMP;

SELECT HIREDATE, COMM 
FROM EMP;

SELECT DEPTNO, LOC 
FROM DEPT;


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- DISTINCT
-- write queries to display the following columns from EMP and DEPT tables without duplicates

SELECT DISTINCT SAL 
FROM EMP;

SELECT DISTINCT SAL, ENAME 
FROM EMP;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- EXPRESSION
-- write queries to display the following expressions from EMP table

--waqtd annual salary of employees
SELECT SAL*12 
FROM EMP;

--waqtd half yearly salary of employees
SELECT SAL*6 
FROM EMP;

--waqtd salary of employees after 10% increment
SELECT SAL*12+ SAL*12*10/100 
FROM EMP;

--waqtd salary of employees after 15% tax deduction
SELECT SAL*6 - SAL*6*15/100 
FROM EMP;

--waqtd salary of employees after 20% increment
SELECT SAL + SAL*20/100 
FROM EMP;

--waqtd annual salary after 1000 bonus
SELECT SAL*12 +1000 
FROM EMP;

--waqtd salary after 50 deduction
SELECT SAL-50 
FROM EMP;

--waqtd all details of employees along with annual salary
SELECT EMP.* , SAL*12 
FROM EMP;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- SELECTION 
-- write queries to display the following records from EMP table

-- write a query to display all employees working in department number 20
SELECT ENAME 
FROM EMP 
WHERE DEPTNO = 20;

-- write a query to display all employees whose salary is greater than 1000
SELECT * 
FROM EMP 
WHERE SAL > 1000;

-- write a query to display all employees whose name is 'SMITH'
SELECT * 
FROM EMP 
WHERE ENAME = 'SMITH';

-- write a query to display all employees whose hire date is '17-DEC-80'
SELECT * 
FROM EMP 
WHERE HIREDATE = '17-DEC-80';

-- write a query to display all employees whose hire date is before '01-JAN-81'
SELECT * 
FROM EMP 
WHERE HIREDATE < '01-JAN-81';

-- write a query to display the annual salary of employee 'SMITH'
SELECT SAL * 12 AS ANNUAL_SAL 
FROM EMP 
WHERE ENAME = 'SMITH';

-- write a query to display employee name who designation is 'CLERK'
SELECT ENAME 
FROM EMP 
WHERE JOB = 'CLERK';

-- write a query to display salary of employees whose designation is 'SALESMAN'
SELECT SAL 
FROM EMP 
WHERE JOB = 'SALESMAN';

-- write a query to display all details of employees whose salary is greater than 2000
SELECT * 
FROM EMP 
WHERE SAL > 2000;

-- write a query to display all details of employee whose name is 'JAMES'
SELECT * 
FROM EMP 
WHERE ENAME = 'JAMES';

-- write a query to display all details of employees whose hire date is after '01-JAN-81'
SELECT * 
FROM EMP 
WHERE HIREDATE > '01-JAN-81';

-- write a query to display employee name, salary and annual salary of employees whose annual salary is greater than 12000
SELECT ENAME, SAL, SAL * 12 AS ANNUAL_SAL 
FROM EMP 
WHERE SAL * 12 > 12000;

-- write a query to display employee number of employees working in department number 30
SELECT EMPNO 
FROM EMP 
WHERE DEPTNO = 30;

-- write a query to display ename, hiredate of employees whose hire date is before '01-JAN-81'
SELECT ENAME, HIREDATE 
FROM EMP 
WHERE HIREDATE < '01-JAN-81';

-- write a query to display all details of employees whose designation is 'MANAGER'
SELECT * 
FROM EMP 
WHERE JOB = 'MANAGER';

-- write a query to display employee name and salary of employees whose commission is 1400
SELECT ENAME, SAL 
FROM EMP 
WHERE COMM = 1400;

-- write a query to display all details of employees whose commission is greater than salary
SELECT * 
FROM EMP 
WHERE COMM > SAL;

-- write a query to display employee number of employees whose hire date is before '01-JAN-87'
SELECT EMPNO 
FROM EMP 
WHERE HIREDATE < '01-JAN-87';

-- write a query to display all details of employees whose designation is 'ANALYST'
SELECT * 
FROM EMP 
WHERE JOB = 'ANALYST';

-- write a query to display all details of employees whose salary is greater than 2000
SELECT * 
FROM EMP 
WHERE SAL > 2000;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- LOGICAL OPERATOR

--WAQTD employee name of employees working in department number 20 and whose salary is greater than 1000
SELECT ENAME 
FROM EMP 
WHERE DEPTNO=20 AND SAL>1000;

--WAQTD employee name of employees working in department number 20 and whose salary is greater than 1000
SELECT ENAME
FROM EMP
WHERE DEPTNO=20 AND SAL>1000;

--WAQTD all details of employees working in department number 10 or 20
SELECT * 
FROM EMP 
WHERE DEPTNO=10 OR DEPTNO=20;

--WAQTD all details of employees whose designation is not 'CLERK'
SELECT * 
FROM EMP 
WHERE JOB!='CLERK';

--WAQTD all details of employees working in department number 10 or 20 and whose designation is 'CLERK'
SELECT * 
FROM EMP 
WHERE( DEPTNO=10 OR DEPTNO=20 ) AND JOB='CLERK';

--WAQTD all details of employees whose designation is 'CLERK' and salary is less than 1500
SELECT * 
FROM EMP 
WHERE JOB='CLERK' AND SAL<1500;

--WAQTD employee name and hiredate of managers working in department number 30
SELECT ENAME , HIREDATE 
FROM EMP 
WHERE JOB='MANAGER' AND DEPTNO=30;

--WAQTD all details and annual salary of salesmen working in department number 30 whose annual salary is greater than 1400
SELECT EMP.*,SAL*12 AS "ANNUAL SALARY" 
FROM EMP 
WHERE DEPTNO=30 AND JOB='SALESMAN' AND SAL*12 >1400;

--WAQTD all details of employees working in department number 30 or whose designation is 'ANALYST'
SELECT * 
FROM EMP 
WHERE DEPTNO= 30 OR JOB='ANALYST';

--WAQTD employee name of clerks whose salary is less than 1100
SELECT ENAME 
FROM EMP 
WHERE SAL<1100 AND JOB='CLERK'; 

--WAQTD employee name, job, and department number of clerks working in department number 10 or 20
SELECT ENAME,JOB,DEPTNO 
FROM EMP 
WHERE JOB='CLERK' AND(DEPTNO=10 OR DEPTNO=20);

--WAQTD all details of clerks or managers working in department number 10
SELECT * 
FROM EMP 
WHERE (JOB='CLERK' OR JOB='MANAGER') AND DEPTNO=10;

--WAQTD employee name of employees working in department number 10, 20, 30, or 40
SELECT ENAME 
FROM EMP 
WHERE DEPTNO=10 OR DEPTNO=20 OR DEPTNO=30 OR DEPTNO=40;

--WAQTD all details of employees whose employee number is 7902 or 7839
SELECT * 
FROM EMP 
WHERE EMPNO=7902 OR EMPNO=7839;

--WAQTD all details of employees whose designation is 'MANAGER', 'CLERK', or 'SALESMAN'
SELECT * 
FROM EMP 
WHERE JOB='MANAGER' OR JOB='CLERK' OR JOB='SALESMAN';

--WAQTD employee name of employees whose hire date is after '31-DEC-81' and before '01-JAN-87'
SELECT ENAME 
FROM EMP 
WHERE HIREDATE>'31-DEC-81'AND HIREDATE <'01-JAN-87';

--WAQTD all details of employees whose salary is greater than 1250 and less than 3000
SELECT * 
FROM EMP 
WHERE SAL>1250 AND SAL<3000;

--WAQTD employee name of employees whose hire date is after '31-DEC-81' and working in department number 10 or 30
SELECT ENAME 
FROM EMP 
WHERE HIREDATE> '31-DEC-81' AND (DEPTNO=10 OR DEPTNO=30);

--WAQTD employee name and annual salary of managers or clerks working in department number 10 or 20
SELECT ENAME ,SAL*12 
FROM EMP 
WHERE (JOB='MANAGER' OR JOB='CLERK')AND(DEPTNO=10 OR DEPTNO=20);

--WAQTD all details and annual salary of employees whose salary is greater than 1000 and less than 4000 and annual salary is greater than 1500
SELECT EMP.* , SAL*12 AS ANNUAL_SAL 
FROM EMP 
WHERE SAL>1000 AND SAL<4000 AND SAL*12 >1500;

--WAQTD all details of employees not working in department number 10 or 20
SELECT * 
FROM EMP 
WHERE DEPTNO!= 10 AND DEPTNO!= 20;

--WAQTD all details and annual salary of employees whose designation is not 'ANALYST' or 'MANAGER'
SELECT EMP.*, SAL*12 
FROM EMP 
WHERE JOB!='ANALYST' AND JOB!='MANAGER';


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- SPECIAL OPERATOR 

-- IN, NOT IN, BETWEEN, NOT BETWEEN, LIKE, IS NULL, IS NOT NULL


--WAQTD employee details of employees working in department number 10, 20, or 30
SELECT * 
FROM EMP 
WHERE DEPTNO IN (10,20,30);

--WAQTD employee details of clerks or analysts
SELECT * 
FROM EMP 
WHERE JOB IN ('CLERK','ANALYST');

--WAQTD employee details of employees not working in department number 10 or 20
SELECT * 
FROM EMP 
WHERE DEPTNO NOT IN (10,20);

--WAQTD employee details of employees whose salary is between 1000 and 4000
SELECT * 
FROM EMP 
WHERE SAL BETWEEN 1000 AND 4000;

--WAQTD employee details of employees whose salary is between 1000 and 3000
SELECT * 
FROM EMP 
WHERE SAL BETWEEN 1000 AND 3000;

--WAQTD employee details of employees whose commission is between 1000 and 2000
SELECT * 
FROM EMP 
WHERE COMM BETWEEN 1000 AND 2000;

--WAQTD employee details of employees whose hire date is between '01-JAN-81' and '31-DEC-81'
SELECT * 
FROM EMP 
WHERE HIREDATE BETWEEN '01-JAN-1981' AND '31-DEC-81';

--WAQTD employee details of employees whose salary is not between 1000 and 3000
SELECT * 
FROM EMP 
WHERE SAL NOT BETWEEN 1000 AND 3000;

--WAQTD details of employees whose name starts with 'A'
SELECT * 
FROM EMP 
WHERE ENAME LIKE 'A%';

--WAQTD details of employees whose name ends with 'S'
SELECT ENAME 
FROM EMP 
WHERE ENAME LIKE '%S';

--WAQTD details of employees whose name contains 'A'
SELECT ENAME 
FROM EMP 
WHERE ENAME LIKE '%A%';

--WAQTD details of employees whose name starts with 'A' and ends with 'S'
SELECT ENAME
FROM EMP
WHERE ENAME LIKE 'A%S';

--WAQTD details of employees whose hire date contains '81'
SELECT *
FROM EMP
WHERE HIREDATE LIKE '%81';

--WAQTD details of employees whose hire date contains 'JAN'
SELECT *
FROM EMP
WHERE HIREDATE LIKE '%JAN%';

--WAQTD details of employees whose name contains two 'A's
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%A%A%';

--WAQTD details of employees whose name contains 'LL'
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%LL%';

--WAQTD details of employees whose salary ends with '50'
SELECT *
FROM EMP
WHERE SAL LIKE '%50';

--WAQTD details of employees whose name has 'A' as the second character
SELECT *
FROM EMP
WHERE ENAME LIKE '_A%';

--WAQTD details of employees whose name ends with 'E' followed by any character
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%E_';

--WAQTD details of employees whose salary is a four-digit number
SELECT *
FROM EMP
WHERE SAL LIKE '____';

--WAQTD details of employees whose name does not start with 'A'
SELECT ENAME
FROM EMP
WHERE ENAME NOT LIKE 'A%';

--WAQTD details of employees whose name starts with a vowel
SELECT ENAME
FROM EMP
WHERE ENAME LIKE 'A%' OR ENAME LIKE 'E%' OR ENAME LIKE 'I%' OR ENAME LIKE 'O%' OR ENAME LIKE 'U%';

--WAQTD details of employees whose name does not start with a vowel
SELECT ENAME
FROM EMP
WHERE ENAME NOT LIKE 'A%' AND ENAME NOT LIKE 'E%' AND ENAME NOT LIKE 'I%' AND ENAME NOT LIKE 'O%' AND ENAME NOT LIKE 'U%';

--WAQTD details of employees whose commission is NULL
SELECT *
FROM EMP
WHERE COMM IS NULL;

--WAQTD details of employees whose commission is NOT NULL
SELECT *
FROM EMP
WHERE COMM IS NOT NULL;

--WAQTD details of employees working in department number 10 or 20
SELECT *
FROM EMP
WHERE DEPTNO IN (10, 20);

--WAQTD details of employees whose hire date contains '82'
SELECT ENAME
FROM EMP
WHERE HIREDATE LIKE '%82';

--WAQTD details of employees whose commission is NOT NULL, showing name and salary
SELECT ENAME, SAL
FROM EMP
WHERE COMM IS NOT NULL;

--WAQTD details of clerks working in department number 10 or 20 whose name contains 'A'
SELECT *
FROM EMP
WHERE JOB = 'CLERK' AND DEPTNO IN (10, 20) AND ENAME LIKE '%A%';

--WAQTD details of employees whose hire date is between '31-DEC-82' and '01-JAN-87'
SELECT ENAME, HIREDATE
FROM EMP
WHERE HIREDATE BETWEEN '31-DEC-82' AND '01-JAN-87';

--WAQTD details of analysts whose salary is a four-digit number
SELECT *
FROM EMP
WHERE JOB = 'ANALYST' AND SAL LIKE '____';

--WAQTD details of salesmen whose commission is NULL
SELECT *
FROM EMP
WHERE JOB = 'SALESMAN' AND COMM IS NULL;

--WAQTD details of employees whose hire date contains '99' and working in department number 10 or 40, showing name and salary
SELECT ENAME, SAL
FROM EMP
WHERE HIREDATE LIKE '%99' AND DEPTNO IN (10, 40);

--WAQTD details of managers whose name contains two 'L's
SELECT *
FROM EMP
WHERE ENAME LIKE '%L%L%' AND JOB = 'MANAGER';

--WAQTD details of employees whose commission is NOT NULL and salary is NULL
SELECT ENAME
FROM EMP
WHERE COMM IS NOT NULL AND SAL IS NULL;

--WAQTD details of employees whose name starts with 'A', 'J', or 'S'
SELECT ENAME
FROM EMP
WHERE ENAME LIKE 'A%' OR ENAME LIKE 'J%' OR ENAME LIKE 'S%';

--WAQTD details of employees whose name does not have 'A' as the third character
SELECT ENAME
FROM EMP
WHERE ENAME NOT LIKE '__A%';

--WAQTD details of managers whose hire date is after '31-DEC-84' and name contains 'S'
SELECT *
FROM EMP
WHERE JOB = 'MANAGER' AND HIREDATE > '31-DEC-84' AND ENAME LIKE '%S';


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- MULTI-ROW FUNCTION or AGGREGATE FUNCTION

-- functions that operate on a group of rows and return a single value

--WAQTD maximum salary of clerks from EMP table
SELECT MAX(SAL) 
FROM EMP 
WHERE JOB='CLERK';

--WAQTD sum of salary from EMP table
SELECT SUM(SAL)
FROM EMP;

--WAQTD count of employees whose name contains 'A'
SELECT COUNT(*)
FROM EMP
WHERE ENAME LIKE '%A%';

--WAQTD maximum and minimum salary from EMP table
SELECT MAX(SAL), MIN(SAL)
FROM EMP;

--WAQTD count of employees whose salary is greater than 2000 and working in department number 10
SELECT COUNT(*)
FROM EMP
WHERE SAL > 2000 AND DEPTNO = 10;

--WAQTD sum of salary of clerks from EMP table
SELECT SUM(SAL)
FROM EMP
WHERE JOB = 'CLERK';

--WAQTD average salary from EMP table
SELECT AVG(SAL)
FROM EMP;

--WAQTD count of employees whose name starts with 'A'
SELECT COUNT(*)
FROM EMP
WHERE ENAME LIKE 'A%';

--WAQTD count of employees whose designation is 'CLERK' or 'MANAGER'
SELECT COUNT(*)
FROM EMP
WHERE JOB IN ('CLERK', 'MANAGER');

--WAQTD sum of salary of employees whose hire date contains 'FEB'
SELECT SUM(SAL)
FROM EMP
WHERE HIREDATE LIKE '%FEB%';


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- GROUP BY

-- It is used to arrange identical data into groups

--WAQTD count of employees in each department 
SELECT COUNT(*),DEPTNO 
FROM EMP 
GROUP BY DEPTNO;

--WAQTD maximum salary of clerks in each department
SELECT MAX(SAL),DEPTNO 
FROM EMP 
WHERE JOB='CLERK' 
GROUP BY DEPTNO;

--WAQTD count of employees whose name contains 'A' in each department
SELECT COUNT(*), DEPTNO
FROM EMP
WHERE ENAME LIKE '%A%'
GROUP BY DEPTNO;

--WAQTD count of employees whose job is not 'PRESIDENT' in each department
SELECT COUNT(*), DEPTNO
FROM EMP
WHERE JOB != 'PRESIDENT'
GROUP BY DEPTNO;

--WAQTD sum of salary for each job
SELECT SUM(SAL), JOB
FROM EMP
GROUP BY JOB;

--WAQTD count of managers in each department
SELECT COUNT(*)
FROM EMP
WHERE JOB = 'MANAGER'
GROUP BY DEPTNO;

--WAQTD average salary in each department except department 20
SELECT AVG(SAL), DEPTNO
FROM EMP
WHERE DEPTNO != 20
GROUP BY DEPTNO;

--WAQTD count of employees whose name contains 'A' for each job
SELECT COUNT(*), JOB
FROM EMP
WHERE ENAME LIKE '%A%'
GROUP BY JOB;

--WAQTD count and average salary of employees whose salary is greater than 2000 in each department
SELECT COUNT(*), AVG(SAL), DEPTNO
FROM EMP
WHERE SAL > 2000
GROUP BY DEPTNO;

--WAQTD count and maximum salary for each job
SELECT COUNT(*), MAX(SAL), JOB
FROM EMP
GROUP BY JOB;

--WAQTD sum of salary and count of salesmen in each department
SELECT SUM(SAL), COUNT(JOB), DEPTNO
FROM EMP
WHERE JOB = 'SALESMAN'
GROUP BY DEPTNO;

--WAQTD maximum salary in each department
SELECT MAX(SAL), DEPTNO
FROM EMP
GROUP BY DEPTNO;

--WAQTD count of employees for each salary
SELECT COUNT(SAL), SAL
FROM EMP
GROUP BY SAL;


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- HAVING

-- It is used to filter records that work on summarized group data

--WAQTD count of employees in each department having more than 4 employees
SELECT COUNT(*),DEPTNO 
FROM EMP 
GROUP BY DEPTNO 
HAVING COUNT(DEPTNO)>4;

--WAQTD minimum and maximum salary in each department having minimum salary greater than 1000
SELECT MIN(SAL), MAX(SAL), DEPTNO
FROM EMP
GROUP BY DEPTNO
HAVING MIN(SAL) > 1000;

--WAQTD count of employees in each department having count between 2 and 5
SELECT COUNT(*), DEPTNO
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*) BETWEEN 2 AND 5;

--WAQTD count of employees for each hiredate and department having more than 1 employee
SELECT COUNT(*), HIREDATE, DEPTNO
FROM EMP
GROUP BY HIREDATE, DEPTNO
HAVING COUNT(*) > 1;

--WAQTD count of employees for each hiredate and department having more than 2 employees
SELECT COUNT(*), HIREDATE, DEPTNO
FROM EMP
GROUP BY HIREDATE, DEPTNO
HAVING COUNT(*) > 2;

--WAQTD count of employees for each salary and department having more than 2 employees
SELECT COUNT(*), SAL, DEPTNO
FROM EMP
GROUP BY SAL, DEPTNO
HAVING COUNT(*) > 2;

--WAQTD count of employees for each name and department having more than 2 employees
SELECT COUNT(*), ENAME, DEPTNO
FROM EMP
GROUP BY ENAME, DEPTNO
HAVING COUNT(*) > 2;

--WAQTD count of employees for each name, department, and salary having more than 2 employees
SELECT COUNT(*), ENAME, DEPTNO, SAL
FROM EMP
GROUP BY ENAME, DEPTNO, SAL
HAVING COUNT(*) > 2;

--WAQTD count of employees for each salary, department, and hiredate having more than 2 employees
SELECT COUNT(*), SAL, DEPTNO, HIREDATE
FROM EMP
GROUP BY SAL, DEPTNO, HIREDATE
HAVING COUNT(*) > 2;

--WAQTD count of clerks in each department having more than 1 clerk
SELECT DEPTNO, COUNT(*)
FROM EMP
WHERE JOB = 'CLERK'
GROUP BY DEPTNO
HAVING COUNT(*) > 1;

--WAQTD sum of salary in each department having more than 4 employees
SELECT DEPTNO, SUM(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*) > 4;

--WAQTD count and sum of salary for each job where salary > 1200 and sum of salary > 3800
SELECT COUNT(*), JOB, SUM(SAL)
FROM EMP
WHERE SAL > 1200
GROUP BY JOB
HAVING SUM(SAL) > 3800;

--WAQTD count of managers in each department having more than 1 manager
SELECT DEPTNO, COUNT(*)
FROM EMP
WHERE JOB = 'MANAGER'
GROUP BY DEPTNO
HAVING COUNT(*) > 1;

--WAQTD maximum salary for each job having max salary greater than 2800
SELECT JOB, MAX(SAL)
FROM EMP
GROUP BY JOB
HAVING MAX(SAL) > 2800;

--WAQTD count of employees for each salary having more than 1 employee
SELECT SAL, COUNT(*)
FROM EMP
GROUP BY SAL
HAVING COUNT(SAL) > 1;

--WAQTD count of employees for each hiredate having more than 1 employee
SELECT HIREDATE, COUNT(*)
FROM EMP
GROUP BY HIREDATE
HAVING COUNT(*) > 1;

--WAQTD average salary in each department having average salary less than 3000
SELECT AVG(SAL), DEPTNO
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL) < 3000;

--WAQTD department numbers where employee name contains 'A' and 'S' and count is at least 3
SELECT DEPTNO
FROM EMP
WHERE ENAME LIKE '%A%' AND ENAME LIKE '%S%'
GROUP BY DEPTNO
HAVING COUNT(*) >= 3;

--WAQTD minimum and maximum salary for each job having minimum salary greater than 1000 and maximum salary less than 5000
SELECT MIN(SAL), MAX(SAL), JOB
FROM EMP
GROUP BY JOB
HAVING MIN(SAL) > 1000 AND MAX(SAL) < 5000;


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- ORDER BY

-- It is used to sort the result set in ascending or descending order

--WAQTD salary of employees in ascending order
SELECT SAL 
FROM EMP 
ORDER BY SAL ASC;

--WAQTD employee name of employees in descending order
SELECT ENAME 
FROM EMP 
ORDER BY ENAME ASC;

--WAQTD salary of employees in descending order of salary
SELECT SAL 
FROM EMP 
ORDER BY SAL DESC;



-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- SUBQUERY
-- A query within another query is called a subquery or inner query

-- CASE1


--WAQTD employee name of employees whose salary is greater than the salary of 'MILLER'
SELECT ENAME 
FROM EMP 
WHERE SAL > ( 
    SELECT SAL 
    FROM EMP 
    WHERE ENAME='MILLER'
);

--WAQTD all details of employees whose job is same as 'ALLEN'
SELECT *
FROM EMP
WHERE JOB = (
    SELECT JOB
    FROM EMP
    WHERE ENAME = 'ALLEN'
);

--WAQTD all details of employees whose hire date is after 'MILLER'
SELECT *
FROM EMP
WHERE HIREDATE > (
    SELECT HIREDATE
    FROM EMP
    WHERE ENAME = 'MILLER'
);

--WAQTD all details of employees whose salary is greater than 1000 and working in same department as 'JAMES'
SELECT *
FROM EMP
WHERE SAL > 1000
    AND DEPTNO = (
        SELECT DEPTNO
        FROM EMP
        WHERE ENAME = 'JAMES'
    );

--WAQTD all details of employees whose salary is greater than 'SMITH' and less than 'KING'
SELECT *
FROM EMP
WHERE SAL > (
        SELECT SAL
        FROM EMP
        WHERE ENAME = 'SMITH'
    )
    AND SAL < (
        SELECT SAL
        FROM EMP
        WHERE ENAME = 'KING'
    );

--WAQTD employee name of employees whose salary is greater than 'ADAMS'
SELECT ENAME
FROM EMP
WHERE SAL > (
    SELECT SAL
    FROM EMP
    WHERE ENAME = 'ADAMS'
);

--WAQTD employee name and salary of employees whose salary is less than 'KING'
SELECT ENAME, SAL
FROM EMP
WHERE SAL < (
    SELECT SAL
    FROM EMP
    WHERE ENAME = 'KING'
);

--WAQTD employee name and department number of employees working in same department as 'JONES'
SELECT ENAME, DEPTNO
FROM EMP
WHERE DEPTNO = (
    SELECT DEPTNO
    FROM EMP
    WHERE ENAME = 'JONES'
);

--WAQTD employee name and job of employees whose job is same as 'JAMES'
SELECT ENAME, JOB
FROM EMP
WHERE JOB = (
    SELECT JOB
    FROM EMP
    WHERE ENAME = 'JAMES'
);

--WAQTD employee number, name and annual salary of employees whose annual salary is greater than 'WARD'
SELECT EMPNO, ENAME, SAL * 12 AS "ANNUAL SAL"
FROM EMP
WHERE SAL * 12 > (
    SELECT SAL * 12
    FROM EMP
    WHERE ENAME = 'WARD'
);

--WAQTD employee name and hiredate of employees whose hiredate is before 'SCOTT'
SELECT ENAME, HIREDATE
FROM EMP
WHERE HIREDATE < (
    SELECT HIREDATE
    FROM EMP
    WHERE ENAME = 'SCOTT'
);

--WAQTD employee name and hiredate of employees whose hiredate is after the president
SELECT ENAME, HIREDATE
FROM EMP
WHERE HIREDATE > (
    SELECT HIREDATE
    FROM EMP
    WHERE JOB = 'PRESIDENT'
);

--WAQTD employee name and salary of employees whose salary is less than employee number 7839
SELECT ENAME, SAL
FROM EMP
WHERE SAL < (
    SELECT SAL
    FROM EMP
    WHERE EMPNO = 7839
);

--WAQTD all details of employees whose hiredate is before 'MILLER'
SELECT *
FROM EMP
WHERE HIREDATE < (
    SELECT HIREDATE
    FROM EMP
    WHERE ENAME = 'MILLER'
);

--WAQTD employee name and employee number of employees whose salary is greater than 'ALLEN'
SELECT ENAME, EMPNO
FROM EMP
WHERE SAL > (
    SELECT SAL
    FROM EMP
    WHERE ENAME = 'ALLEN'
);

-- CASE2

--WAQTD department name of the department where 'SMITH' works
SELECT DNAME
FROM DEPT
WHERE DEPTNO = (
    SELECT DEPTNO
    FROM EMP
    WHERE ENAME = 'SMITH'
);

--WAQTD location of the department where 'MILLER' works
SELECT LOC
FROM DEPT
WHERE DEPTNO = (
    SELECT DEPTNO
    FROM EMP
    WHERE ENAME = 'MILLER'
);

--WAQTD all details of employees working in the department named 'ACCOUNTING'
SELECT *
FROM EMP
WHERE DEPTNO = (
    SELECT DEPTNO
    FROM DEPT
    WHERE DNAME = 'ACCOUNTING'
);

--WAQTD all details of employees whose hire date is after 'SMITH' and working in department located in 'NEW YORK'
SELECT *
FROM EMP
WHERE HIREDATE > (
        SELECT HIREDATE
        FROM EMP
        WHERE ENAME = 'SMITH'
    )
    AND DEPTNO = (
        SELECT DEPTNO
        FROM DEPT
        WHERE LOC = 'NEW YORK'
    );

--WAQTD department name of the department where 'SMITH' works
SELECT DNAME
FROM DEPT
WHERE DEPTNO = (
    SELECT DEPTNO
    FROM EMP
    WHERE ENAME = 'SMITH'
);

--WAQTD department name and location of the department where 'KING' works
SELECT DNAME, LOC
FROM DEPT
WHERE DEPTNO = (
    SELECT DEPTNO
    FROM EMP
    WHERE ENAME = 'KING'
);

--WAQTD location of the department where employee number 7902 works
SELECT LOC
FROM DEPT
WHERE DEPTNO = (
    SELECT DEPTNO
    FROM EMP
    WHERE EMPNO = 7902
);

--WAQTD department name, location, and department number for departments where employee name ends with 'R'
SELECT DNAME, LOC, DEPTNO
FROM DEPT
WHERE DEPTNO IN (
    SELECT DEPTNO
    FROM EMP
    WHERE ENAME LIKE '%R'
);

--WAQTD department name of the department where the job is 'PRESIDENT'
SELECT DNAME
FROM DEPT
WHERE DEPTNO = (
    SELECT DEPTNO
    FROM EMP
    WHERE JOB = 'PRESIDENT'
);

--WAQTD employee name of employees working in the department named 'ACCOUNTING'
SELECT ENAME
FROM EMP
WHERE DEPTNO = (
    SELECT DEPTNO
    FROM DEPT
    WHERE DNAME = 'ACCOUNTING'
);

--WAQTD employee name and salary of employees working in the department located in 'CHICAGO'
SELECT ENAME, SAL
FROM EMP
WHERE DEPTNO = (
    SELECT DEPTNO
    FROM DEPT
    WHERE LOC = 'CHICAGO'
);

--WAQTD all details of employees working in the department named 'SALES'
SELECT *
FROM EMP
WHERE DEPTNO = (
    SELECT DEPTNO
    FROM DEPT
    WHERE DNAME = 'SALES'
);

--WAQTD all details and annual salary of employees working in the department located in 'NEW YORK'
SELECT EMP.*, SAL * 12
FROM EMP
WHERE DEPTNO = (
    SELECT DEPTNO
    FROM DEPT
    WHERE LOC = 'NEW YORK'
);

--WAQTD employee name of employees working in the department named 'OPERATIONS'
SELECT ENAME
FROM EMP
WHERE DEPTNO = (
    SELECT DEPTNO
    FROM DEPT
    WHERE DNAME = 'OPERATIONS'
);


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- NESTED SUBQUERY
-- A subquery within another subquery is called a nested subquery

--WAQTD second highest salary from EMP table
SELECT MAX(SAL) 
FROM EMP 
WHERE  SAL < (
    SELECT MAX(SAL) 
    FROM EMP
    );

--WAQTD third highest salary from EMP table
SELECT MAX(SAL) 
FROM EMP 
WHERE  SAL < (
    SELECT MAX(SAL) 
    FROM EMP 
    WHERE SAL < (
        SELECT MAX(SAL)
        FROM EMP
        )
    );

--WAQTD employee name having second highest salary from EMP table
SELECT ENAME
FROM EMP
WHERE SAL = (
    SELECT MAX(SAL)
    FROM EMP
    WHERE SAL < (
        SELECT MAX(SAL)
        FROM EMP
    )
);

--WAQTD department name of employee having second lowest salary from EMP table
SELECT DNAME
FROM DEPT
WHERE DEPTNO = (
    SELECT DEPTNO
    FROM EMP
    WHERE SAL = (
        SELECT MIN(SAL)
        FROM EMP
        WHERE SAL > (
            SELECT MIN(SAL)
            FROM EMP
        )
    )
);

--WAQTD second earliest hiredate from EMP table
SELECT MIN(HIREDATE)
FROM EMP
WHERE HIREDATE > (
    SELECT MIN(HIREDATE)
    FROM EMP
);


--WAQTD location of department for employee having second latest hiredate from EMP table
SELECT LOC
FROM DEPT
WHERE DEPTNO = (
    SELECT DEPTNO
    FROM EMP
    WHERE HIREDATE = (
        SELECT MAX(HIREDATE)
        FROM EMP
        WHERE HIREDATE < (
            SELECT MAX(HIREDATE)
            FROM EMP
        )
    )
);

--WAQTD minimum salary except the lowest from EMP table
SELECT MIN(SAL)
FROM EMP
WHERE SAL > (
    SELECT MIN(SAL)
    FROM EMP
);

--WAQTD fifth highest salary from EMP table
SELECT MAX(SAL)
FROM EMP
WHERE SAL < (
    SELECT MAX(SAL)
    FROM EMP
    WHERE SAL < (
        SELECT MAX(SAL)
        FROM EMP
        WHERE SAL < (
            SELECT MAX(SAL)
            FROM EMP
            WHERE SAL < (
                SELECT MAX(SAL)
                FROM EMP
            )
        )
    )
);

--WAQTD employee number having second highest salary from EMP table
SELECT EMPNO
FROM EMP
WHERE SAL = (
    SELECT MAX(SAL)
    FROM EMP
    WHERE SAL < (
        SELECT MAX(SAL)
        FROM EMP
    )
);

--WAQTD department name of employee having fifth highest salary from EMP table
SELECT DNAME
FROM DEPT
WHERE DEPTNO = (
    SELECT DEPTNO
    FROM EMP
    WHERE SAL = (
        SELECT MAX(SAL)
        FROM EMP
        WHERE SAL < (
            SELECT MAX(SAL)
            FROM EMP
            WHERE SAL < (
                SELECT MAX(SAL)
                FROM EMP
                WHERE SAL < (
                    SELECT MAX(SAL)
                    FROM EMP
                )
            )
        )
    )
);

--WAQTD all details of employee having second earliest hiredate from EMP table
SELECT *
FROM EMP
WHERE HIREDATE = (
    SELECT MIN(HIREDATE)
    FROM EMP
    WHERE HIREDATE > (
        SELECT MIN(HIREDATE)
        FROM EMP
    )
);

--WAQTD employee name having second latest hiredate from EMP table
SELECT ENAME
FROM EMP
WHERE HIREDATE = (
    SELECT MAX(HIREDATE)
    FROM EMP
    WHERE HIREDATE < (
        SELECT MAX(HIREDATE)
        FROM EMP
    )
);

--WAQTD location of department for employee having earliest hiredate from EMP table
SELECT LOC
FROM DEPT
WHERE DEPTNO = (
    SELECT DEPTNO
    FROM EMP
    WHERE HIREDATE = (
        SELECT MIN(HIREDATE)
        FROM EMP
    )
);

--WAQTD department name of employee having second highest salary from EMP table
SELECT DNAME
FROM DEPT
WHERE DEPTNO IN (
    SELECT DEPTNO
    FROM EMP
    WHERE SAL IN (
        SELECT MAX(SAL)
        FROM EMP
        WHERE SAL < (
            SELECT MAX(SAL)
            FROM EMP
        )
    )
);


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- EMPLOYEE MANAGER RELATION 
-- An employee can be a manager of other employees
-- EMP table contains a column called MGR which refers to the EMPNO of the manager


-- CASE1: TO FIND MANAGER

SELECT ENAME FROM EMP WHERE EMPNO=(SELECT MGR FROM EMP WHERE ENAME='ALLEN');

SELECT SAL FROM EMP WHERE EMPNO=(SELECT MGR FROM EMP WHERE ENAME='SMITH');

SELECT ENAME FROM EMP WHERE EMPNO=(SELECT MGR FROM EMP WHERE EMPNO=(SELECT MGR FROM EMP WHERE ENAME='JAMES'));

SELECT DNAME FROM DEPT WHERE DEPTNO=(SELECT DEPTNO FROM EMP WHERE EMPNO=(SELECT MGR FROM EMP WHERE ENAME='SMITH'));

SELECT ENAME FROM EMP WHERE EMPNO=(SELECT MGR FROM EMP WHERE ENAME='SMITH');

SELECT ENAME FROM EMP WHERE EMPNO=(SELECT MGR FROM EMP WHERE EMPNO=(SELECT MGR FROM EMP WHERE ENAME='ADAMS'));

SELECT DNAME FROM DEPT WHERE DEPTNO=(SELECT DEPTNO FROM EMP WHERE EMPNO=(SELECT MGR FROM EMP WHERE ENAME='JAMES'));

SELECT SAL FROM EMP WHERE EMPNO=(SELECT MGR FROM EMP WHERE EMPNO=(SELECT MGR FROM EMP WHERE ENAME ='MILLER'));

SELECT LOC FROM DEPT WHERE DEPTNO=(SELECT DEPTNO FROM EMP WHERE EMPNO=(SELECT MGR FROM EMP WHERE EMPNO=(SELECT MGR FROM EMP WHERE ENAME='SMITH')));

-- CASE2: TO FIND EMPLOYEE

SELECT ENAME FROM EMP WHERE MGR=(SELECT EMPNO FROM EMP WHERE ENAME='JAMES');

SELECT COUNT(*) FROM EMP WHERE MGR= (SELECT EMPNO FROM EMP WHERE ENAME='KING');

-- PSEDUOCOLUMNS: ROWNUM:

SELECT ROWNUM, EMP.* FROM EMP WHERE ROWNUM=1;

SELECT * FROM (SELECT ROWNUM AS SINO ,EMP.* FROM EMP) WHERE SINO=2;

SELECT * FROM (SELECT ROWNUM AS SINO, EMP.* FROM EMP) WHERE SINO<4;

SELECT * FROM (SELECT ROWNUM AS SINO, EMP.* FROM EMP) WHERE SINO<(SELECT COUNT(*)/2 FROM EMP);

SELECT * FROM (SELECT ROWNUM AS SINO, EMP.* FROM EMP) WHERE SINO>(SELECT COUNT(*)/2 FROM EMP);

SELECT * FROM (SELECT ROWNUM AS SINO, EMP.* FROM EMP) WHERE SINO>(SELECT COUNT(*)-5 FROM EMP);

-- FIND MIN, MAX USING PSEDUOCOLUMNS

SELECT SAL FROM (SELECT ROWNUM AS SINO, SAL FROM (SELECT DISTINCT(SAL) FROM EMP ORDER BY SAL DESC));

-- JOINS

-- INNER JOINS

SELECT ENAME, DNAME FROM EMP, DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO;

SELECT ENAME, LOC, JOB FROM EMP, DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO AND JOB='CLERK';

SELECT ENAME, SAL, HIREDATE, DNAME FROM EMP, DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO AND SAL>2000 AND DNAME='ACCOUNTING';

SELECT ENAME, SAL, EMP.DEPTNO, LOC FROM EMP,DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO AND JOB='MANAGER' AND LOC='DALLAS';

SELECT ENAME, HIREDATE, LOC FROM EMP, DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO AND HIREDATE>='01-JAN-82' AND JOB='ANALYST' AND EMP.DEPTNO=10;

SELECT ENAME, LOC FROM EMP, DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO;

SELECT DNAME, SAL FROM EMP, DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO AND DNAME='ACCOUNTING';

SELECT DNAME, SAL*12 AS ANNUAL_SAL FROM EMP, DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO AND SAL>2340;

SELECT ENAME, DNAME FROM EMP, DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO AND DNAME LIKE '%A%';

SELECT ENAME, DNAME FROM EMP, DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO AND JOB='SALESMAN';

SELECT DNAME, JOB FROM EMP, DEPT WHERE ENAME LIKE 'S%' AND DNAME LIKE '%S';

SELECT DNAME, MGR FROM EMP, DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO AND MGR=7839;

SELECT ENAME, DNAME FROM EMP, DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO AND COMM IS NOT NULL AND EMP.DEPTNO IN (10 ,30);

SELECT DNAME, EMPNO FROM EMP, DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO AND EMPNO IN (7839,7902) AND LOC='NEW YORK';

-- SELF JOIN

SELECT * FROM EMP E1, EMP E2 WHERE E2.EMPNO=E1.MGR;

SELECT E1.ENAME, E1.JOB, E2.ENAME ,E2.JOB FROM EMP E1,EMP E2 WHERE E2.EMPNO=E1.MGR AND E1.JOB='CLERK' AND E2.JOB='ANALYST';

SELECT E1.ENAME, E1.HIREDATE, E1.SAL, E2.ENAME, E2.JOB, E2.SAL FROM EMP E1, EMP E2 WHERE E1.MGR=E2.EMPNO AND E1.HIREDATE<E2.HIREDATE AND E2.SAL>E1.SAL; 

SELECT E1.ENAME, E2.ENAME FROM EMP E1, EMP E2 WHERE E1.MGR=E2.EMPNO AND E1.JOB='CLERK';

SELECT E1.ENAME, E2.ENAME, E3.ENAME FROM EMP E1, EMP E2, EMP E3 WHERE E1.MGR=E2.EMPNO AND E2.MGR=E3.EMPNO;

SELECT E1.ENAME, E2.JOB FROM EMP E1, EMP E2 WHERE E1.MGR=E2.EMPNO AND E2.DEPTNO IN (10,20);

SELECT E1.ENAME, E2.SAL FROM EMP E1, EMP E2 WHERE E1.MGR=E2.EMPNO AND E1.SAL>2300 AND E2.SAL>2300;

SELECT E1.ENAME, E2.HIREDATE FROM EMP E1, EMP E2 WHERE E1.MGR=E2.EMPNO AND E1.HIREDATE<'01-JAN-82';

SELECT E1.ENAME, E2.COMM FROM EMP E1, EMP E2 WHERE E1.MGR=E2.EMPNO AND E1.JOB='SALESMAN' AND E2.DEPTNO =30;

SELECT E1.ENAME, E2.ENAME, E1.SAL, E2.SAL FROM EMP E1, EMP E2 WHERE E1.SAL>E2.SAL AND E1.MGR=E2.EMPNO;

SELECT E1.ENAME, E1.HIREDATE, E2.ENAME, E2.HIREDATE FROM EMP E1, EMP E2 WHERE E2.HIREDATE<E1.HIREDATE AND E1.MGR=E2.EMPNO;

SELECT E1.ENAME, E2.ENAME FROM EMP E1, EMP E2 WHERE E1.MGR=E2.EMPNO AND E1.JOB=E2.JOB;

SELECT E1.ENAME, E2.ENAME FROM EMP E1, EMP E2 WHERE E1.MGR=E2.EMPNO AND E2.JOB='MANAGER';

SELECT E1.ENAME, E2.ENAME, E1.SAL*12 AS EMP_ANNUAL_SAL, E2.SAL*12 AS MGR_ANNUAL_SAL FROM EMP E1, EMP E2 WHERE E1.MGR=E2.EMPNO AND E1.DEPTNO IN (10,20) AND E2.SAL>E1.SAL;

SELECT E1.ENAME, E2.JOB FROM EMP E1, EMP E2 WHERE E1.MGR=E2.EMPNO;

SELECT E1.ENAME, E2.SAL FROM EMP E1, EMP E2 WHERE E1.MGR=E2.EMPNO AND E2.SAL LIKE '%50';

-- COMBINATION OF INNER JOIN AND SELF JOIN

SELECT E1.ENAME, DNAME, E2.ENAME FROM EMP E1, EMP E2, DEPT WHERE E1.MGR=E2.EMPNO AND E1.DEPTNO=DEPT.DEPTNO;
                                        OR
SELECT E1.ENAME, D1.DNAME, E2.ENAME FROM EMP E1, EMP E2, DEPT D1 WHERE E1.MGR=E2.EMPNO AND E1.DEPTNO=D1.DEPTNO;

SELECT E1.ENAME, E2.ENAME, D2.DNAME FROM EMP E1, EMP E2, DEPT D2 WHERE E1.MGR=E2.EMPNO AND E2.DEPTNO=D2.DEPTNO;

SELECT E1.ENAME, E2.ENAME, D1.DNAME, D2.DNAME FROM EMP E1, EMP E2, DEPT D1, DEPT D2 WHERE E1.MGR=E2.EMPNO AND E1.DEPTNO= D1.DEPTNO AND E2.DEPTNO=D2.DEPTNO;

SELECT E1.ENAME, E2.ENAME, E3.ENAME, D1.DNAME, D2.DNAME, D3.DNAME FROM EMP E1, EMP E2, EMP E3, DEPT D1, DEPT D2, DEPT D3 WHERE E1.MGR=E2.EMPNO AND E2.MGR=E3.EMPNO AND E1.DEPTNO= D1.DEPTNO AND E2.DEPTNO=D2.DEPTNO AND E3.DEPTNO=D3.DEPTNO;

SELECT E1.ENAME, E2.ENAME , D1.LOC FROM EMP E1, EMP E2, DEPT D1 WHERE E1.JOB='CLERK' AND E1.MGR=E2.EMPNO AND E1.DEPTNO=D1.DEPTNO;

SELECT E1.ENAME, E2.SAL, D2.LOC FROM EMP E1, EMP E2, DEPT D2 WHERE E2.JOB='PRESIDENT' AND E1.MGR=E2.EMPNO AND E2.DEPTNO=D2.DEPTNO;

SELECT E1.ENAME, E1.SAL, E2.ENAME, E2.SAL , D1.DNAME FROM EMP E1, DEPT D1, EMP E2 WHERE E1.MGR=E2.EMPNO AND E1.DEPTNO=D1.DEPTNO AND E1.SAL>E2.SAL;

SELECT E1.ENAME, E1.SAL, E2.ENAME, D2.DNAME FROM EMP E1, EMP E2, DEPT D2 WHERE E1.MGR=E2.EMPNO AND E2.DEPTNO=D2.DEPTNO AND D2.LOC='NEW YORK' AND E2.SAL>3000;

SELECT E1.ENAME, D1.DNAME, E2.ENAME, D2.DNAME FROM EMP E1, EMP E2, DEPT D1, DEPT D2 WHERE E1.MGR=E2.EMPNO AND E1.DEPTNO= D1.DEPTNO AND E2.DEPTNO=D2.DEPTNO AND D1.LOC=D2.LOC;

SELECT E1.ENAME, E1.HIREDATE, E2.HIREDATE FROM EMP E1, EMP E2, DEPT D1 WHERE E2.HIREDATE<E1.HIREDATE AND E1.MGR=E2.EMPNO AND E1.DEPTNO=D1.DEPTNO AND D1.DNAME='ACCOUNTING' ;

SELECT E1.ENAME, D1.DNAME, E2.ENAME, D2.DNAME FROM EMP E1, EMP E2, DEPT D1, DEPT D2 WHERE E1.MGR=E2.EMPNO AND E1.DEPTNO=D1.DEPTNO AND E2.DEPTNO= D2. DEPTNO AND E2.HIREDATE<'01-JAN-82';

SELECT E1.ENAME, D1.DNAME, E2.ENAME, D2.LOC, E3.ENAME, D3.LOC FROM EMP E1, EMP E2, EMP E3, DEPT D1, DEPT D2, DEPT D3 WHERE E1.MGR=E2.EMPNO AND E2.MGR=E3.EMPNO AND E1.DEPTNO=D1.DEPTNO AND E2.DEPTNO=D2.DEPTNO AND E3.DEPTNO=D3.DEPTNO;

SELECT E1.ENAME, D1.DNAME, E2.SAL, D2.DNAME, E3.JOB, D3.DNAME FROM EMP E1, DEPT D1, EMP E2, DEPT D2, EMP E3, DEPT D3 WHERE E1.MGR=E2.EMPNO AND E2.MGR=E3.EMPNO AND E1.DEPTNO=D1.DEPTNO AND E2.DEPTNO=D2.DEPTNO AND E3.DEPTNO=D3.DEPTNO AND E1.DEPTNO=10 AND E2.JOB IN('PRESIDENT','MANAGER') AND E3.SAL>=E2.SAL;
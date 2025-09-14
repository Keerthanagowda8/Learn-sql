-- Subquery: A query written inside another query
-- When we can use subquery
-- Case1: whenever we have indirect condition we can use subquery

select ename from emp
where sal>(select sal from emp
           where ename='MILLER');

-- Case2: whenever data to be selected and condition to execute from different table we can use subquery

select dname from dept
where deptno=(select deptno from emp 
              where ename='SMITH');

-- Types of subquery:
--      1.Single row subquery
--      2.Multi row subquery

-- Single row subquery: Subquery that return exactly single value 
--                    - can use normal(=) or special(in) operator

select ename from emp 
where deptno in (select deptno from emp 
                 where ename='JAMES');

-- Multi row subquery: Subquery returns more than one value 
--                   - can not use normal operator only special operator

SELECT DNAME, LOC,DEPTNO 
FROM DEPT 
WHERE DEPTNO IN (SELECT DEPTNO 
                FROM EMP 
                WHERE ENAME LIKE '%R');


-- Subquery operator: All
--                    Any
--                    Exist
--                    Not Exist

-- All: Special operator that can be used along with relational operator and 
--      it return true when all the conditions are satisfied

select ename from emp 
where sal> all(select sal from emp 
               where ename='ALLEN');

-- Any: Special operator that can be used along with relational operator and
--      it return True if any one condition is satisfied

select ename from emp
where sal< Any(select sal from emp
               where ename='ALLEN');

-- Nested subquery: A query written inside the subquery 
--                - we can nest upto 255 subquery

SELECT MAX(SAL)                         -- get the 3rd max salary
FROM EMP 
WHERE  SAL<(SELECT MAX(SAL)             
            FROM EMP 
            WHERE SAL<(SELECT MAX(SAL)
                        FROM EMP));

-- Corelated subquery: A query written inside another query such that both the inner query and outer query are dependent on each other 
--                   - outer query exceutes first and produce partcial output and it is input to the inner query.
--                   - Then inner query exceutes completely and produce output and that is passed as an input to outer query and generates final result
--                   - so outer query and inner query both are dependent on each other.

select dname from dept 
where deptno in(select deptno from emp 
                where dept.deptno=emp.deptno);

-- Exists: It is the uniary operator it returns true if the subquery is returning any values

select dname from dept 
where exists (select deptno from emp
                where dept.deptno=emp.deptno);

-- Not Exists: It is uninary operator it returns true if the subquery is not retutning any values

select dname from dept
where not exists (select deptno from emp 
                 where dept.deptno=emp.deptno);
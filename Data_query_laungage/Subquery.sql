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

select ename from emp 
where deptno in( select deptno from emp
                 where ename='ALLEN');

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

select max(sal) from emp 
where sal<(select max(sal) from emp) ;

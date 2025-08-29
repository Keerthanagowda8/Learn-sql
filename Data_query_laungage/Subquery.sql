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
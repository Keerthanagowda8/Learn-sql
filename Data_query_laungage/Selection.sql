-- selection: process to retrive the data from table by selecting both rowa and columns
   ---------

select column_name from table_name
where < filter-condition >

    -- order of execution
    from 
    where 
    select

    -- where clause is used to filter the records.
    -- it executes row by row
    -- it executes after from clause execution 
    -- can use multiple condition in where clause by using logical operators

select * from emp
where sal>1000;

select * from emp 
where ename = 'SMITH';
--  character are case sensitive and should be enclosed in ' '

-- Logical operator:
   ----------------

-- And: It is a binary operator it returns True when all the conditions are satisfied 

select * from emp 
where deptno=20 and sal>1000;

-- Or: It is a binary operator it returns True if any one condition is satisfied

select * from emp
where deptno=10 or deptno=20;

-- Not: It is a binary operator used to negative values

select * from emp
where job != 'CLERK';
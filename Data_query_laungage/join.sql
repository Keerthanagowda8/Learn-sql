-- Join: Process of retrive the data from multiple tables 
--       whenever we need data from multiple table we can use joins
-- Types:
--      Cartesion Join/Cross Join
--      Inner Join/Equi Join
--      Natural Join
--      Outer Join
--          - Left Outer Join
--          - Right Outer Join
--          - Full Outer Join
--      Self Join

-- Cartesion Join: In cartesion join record from  table1 is going to merge with all the records of table2
--               - Number of rows present in the result table is equal to product number of rows from both table 
--               - Number of columns present in result table will be equialent to sumation number of columns from the both tables
--               - select * from table1, table2 ;

select * from emp,dept;

-- Inner Join: It is used to generate only the matching records
--           - select * from table1, table2 where <join condition>

select * from emp,dept
where emp.deptno=dept.deptno;

-- Natural join: It has two behaviour if there is any connection between two table it producenthe output of inner join
--               else produce the output of cartesion join
--             - select * from table1 natural join table2

-- case1:

select * from 
emp natural join dept;

-- case2:

select * from 
emp natural join cust;

-- Outer join: It is used to generate matching records along with unmatching records 

-- Left Outer join: It generates matching records along with unmatching records only from left table
--                - select * from table1, table2 where <join-condition> 

select * from emp, dept 
where emp.deptno=dept.deptno(+);

-- Right Outer join: It generates matching records along with unmatching records only from right table 
--                 - select * from table1, table2 where <join-condition>

select * from emp, dept 
where emp.deptno(+)=dept.deptno;

-- Full outer join: It generates matching records along with unmatching records from both table
--                - select * from table1 full outer join table2 on <join-condition>

select * from 
emp full outer join dept 
on emp.deptno=dept.deptno;

-- Self join: Joining the same two table is known as self join
--          - select * from table1, table2 where <join condition>

select * from emp e1, emp e2
where e1.mgr=e2.empno;
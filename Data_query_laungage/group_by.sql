-- Group by: It is used to group the records
--         - It executes row by row and it executes after were clause
--         - Can use group by without where clause
--         - If any other clause executes after group by then it executes group by group
--         - Select group function/group by expression
--           from table_name
--           where <filter-condition>
--           group by column_name/expression
-- order of execution: from
--                     where (row by row)
--                     group by (row by row)
--                     select (group by group)

select count(*),deptno from emp 
group by dno;
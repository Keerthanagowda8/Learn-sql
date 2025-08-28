-- Group by: It is used to group the records
--         - It executes row by row and it executes after were clause
--         - Can use group by without where clause
--         - If any other clause executes after group by then it executes group by group
--         - Select group function/group by expression
--           from table_name
--           where <filter-condition>
--           group by column_name/expression

order of execution: from
                    where (row by row)
                    group by (row by row)
                    select (group by group)

select count(*),deptno from emp 
group by dno;

-- Group by expression: The column name/ expression which we have pass into group by class and same column name / expression we can pass with multi row functions as a group expressioninto select clause

-- Having: It is used to filter the groups 
--       - It executes group by group 
--       - It executes after the group by clause
--       - Can pass multiple row function in having clause
--       - Can not use having clause without group by clause
--       - Select group function/group by expression
--         from table_name
--         where <filter-condition>
--         group by column_name/expression
--         having <group filter condition>

order of execution: from
                    where (row by row)
                    group by (row by row)
                    having (group by group)
                    select (group by group)

select count(*),deptno from emp 
group by deptno 
having count(deptno)>4;
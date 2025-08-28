-- Select: process to retrive data from the table and display it 
   ------
--         Select clause is responsible for preparing the research table 

-- Astorisk(*): to select all the records from table

-- semicolon(;): end the query
   
select * from table_name;

select * from emp;

-- projection: process to retrive data and by selecting only column name 
   ----------

select column_name from table_name;
    
   -- order of execution
   from 
   select
   
   --  execution starts from 'from' clause it enters inside database then select particular table and put it under exwcution
   --  after from clause select clause starts execution it selects particular column name and display it as output  

select ename from emp;

select ename, sal from emp;

-- distinct: remove duplicate value from result table 
--         - pass distinct has first argument into select clause
--         - can pass multiple arguments
select distinct column_name from table_name;

select distinct sal from emp;

select distinct sal,ename from emp;

-- expression: Any statements which give result 
--           - it is combination of operands and operations
               sal * 12 -> result
-- operands: -> 2 types
--             - column_name
--             - values

select sal*12 from emp;

select sal*12 + sal*12*10/100 from emp;

select emp.*,sal*12 from emp;

-- Alias: alternate name given to column name or expression in result table.
--      - use alias name within " " or _
--      - use alias with or without using keyword "as"

select sal*12 as "annual sal" from emp;

select sal*6 half_sal from emp;
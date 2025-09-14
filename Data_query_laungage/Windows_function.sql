-- Window function:
--      Types of window function:
--                1.Row_number
--                2.Rank()
--                3.Dense Rank()

-- Row_number:
--           - row_number() over(partiton by column_name order by column_name [asce/desc])
--           - row_number() over(order by column_name [asce/desc])

select emp.*, row_number() over (partition by deptno order by sal desc) as empsal from emp;

select emp.*, row_number() over (order by sal desc) as empsal from emp;

-- rank():
--           - rank() over(partiton by column_name order by column_name [asce/desc])
--           - rank() over(order by column_name [asce/desc])

select emp.*, rank() over (partition by deptno order by sal desc) as empsal from emp;

select emp.*, rank() over (order by sal desc) as empsal from emp;

-- dense_rank():
--           - dense_rank() over(partiton by column_name order by column_name [asce/desc])
--           - dense_rank() over(order by column_name [asce/desc])

select emp.*, dense_rank() over (partition by deptno order by sal desc) as empsal from emp;

select emp.*, dense_rank() over (order by sal desc) as empsal from emp;
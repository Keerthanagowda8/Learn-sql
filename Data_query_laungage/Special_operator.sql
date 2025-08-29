-- Arithmatic operations
--    1. +,-.*,/
--    2. ||
--    3. <,>,<=,>=
--    4. =,!= or <>
--    5. and, or, Not
--    6. Special operators
--         1. in
--         2. not in
--         3. between 
--         4. not between
--         5. like 
--         6. not like 
--         7. is 
--         8. is not 
--    7. subquery operators
--         1. all
--         2. any 
--         3. exist
--         4. not exist

-- concatination(||): used to join multiple string 

select 'Hi ' ||ename from emp;

-- Special operators

-- In: It is multivalued operator it returns True if any one condition is satisfied from RHS

select * from emp
where deptno in (10,20,30,40);

-- Not in: similar to in operator instead of selecting the values it rejects them 

select * from emp 
where deptno not in (20,30);

-- between: Whenever range of values are there we can use between operator
--        - we can not interchange the ranges
--        - column_name/expression between lower-range and higher-range

select * from emp
where sal between 1000 and 4000;

-- Not between: It is similar to between operator instead of selecting the values it rejects them 
--            - column_name/expression not between lower-range and higher-range

select * from emp 
where sal not between 1000 and 3000;

-- Like: it is used to achieve pattern matching
--     - column_name/expression like 'pattern to match';
--     - % it can accept any no of characters and also no character
--     - _ it can accept exactly 1 character

select * from emp
where ename like 'A%';

select * from emp
where ename like '_A%';

-- Not like: it is similar to like operator instead of selecting it rejects them 

select * from emp 
where ename not like 'A%';

-- Is: it is used to compare with null values
--   - column_name/expression is null;

select * from emp
where comm is null;

-- Is not: it is used to compare with not null values
--       - column_name/expression is not null;

select * from emp
where comm is not null;
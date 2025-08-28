-- Functions: It is a block of code or list of instructions which is used to perform specific task 
--         -> There are 2 types
--            - In-built
--            - user defined

-- In-built functions has 2 types
--    - Single row function
--           - length()
--           - concat()
--           - upper()
--           - lower()
--           - initCap()
--           - reverse()
--           - replace()
--           - substr()
--           - instr()
--           - mod()
--           - rounds()
--           - trunc()
--           - NVL(arg1,arg2)
--           - NVL2(arg1,arg2)
--           - to_char()
--           - trim()
--           - months_between()
--           - ASCII
--           - chr()
--   - Multi row function
--           - min()
--           - max()
--           - sum()
--           - avg()
--           - count()

-- Single row function: It takes input and executes then generate the output
--                    - It executes row by row
--                    - For n number of input it generates n number of output

-- 1. length(): It returns number of character from the given string 
--            - length(string)

select ename , length(ename) from emp;

-- 2. concat(): It is used to join multiple string
--            - concat('string1','string2')

select concat('Hi ',ename) from emp;

-- 3.upper(): It converts the given string into uppercase
--          - upper('string')

select upper(ename) from emp;

-- 4. lower(): It converts the given string into lowercase
--           - lower('string')

select lower(ename) from emp;

-- 5. initCap(): It converts the given string first letter to capital rest all the character to lowercase
--             - initCap('string')

select initCap(ename) from emp;

-- 6. reverse(): It is used to conver the given string into reverse format
--             - reverse('string')

select reverse(ename) from emp;

-- 7. replace(): It is used to replace old string with new string 
--             - replace('string','old string','new string')

select replace('SMITH','MITH','KRITH') from emp;

-- 8. substr(): It is used to extract a particular string from original string
--            - substr('original string',position,length)

select substr('SMITH',1,3) from emp ;

-- 9. instr(): It returns the index value of the given string
--           - instr('original string','string',position,occurance) 

select instr('SMITH','I',1,1) from emp;

-- 10. mod(): It returns reminder value
--          - mod(column,number)

select mod(sal,2) from emp;

-- 11. round():It rounds the number to the nearst integer value
--             - round(number)

select round(2.2) from duel;

-- 12. trunc(): It is used to round the number to lowest int value
--            - trunc(number)

select trunc(2.8) from duel;

-- 13. NVL(): If arg1 is not null then it returns arg1 and If arg1 is null then it returns arg2
--         - NVL(arg1,arg2)

select NVL(comm,0) from emp;

-- 14. NVL2(): If arg1 is not null then it returns arg2 and If arg1 is null then it returns arg3
--           - NVL2(arg1,arg2,arg3)

select NVL2(comm,comm,0) from emp;

-- 15. To_char(): It is used to extract the format models from the given date 
--              - Tochar(date, 'format models')
--      Format models: - MM
--                     - MON
--                     - MONTH
--                     - YY
--                     - YYYY
--                     - YEAR
--                     - D
--                     - DD 
--                     - DY 
--                     - DAY 
--                     - HH12
--                     - HH24
--                     - SS
--                     - MI  

select * from emp where To_char(hiredate ,'MON')='JAN';

-- 16. Trim(): used to trim the character or space either from the first or last or both side
--           - trim('   stting   ')
--           - Ltrim('   stting   ')
--           - Rtrim('   stting   ')

select trim(Both 'S' FROM 'SpiderS') from duel;

select trim(LEADING 'S' FROM 'SpiderS') from duel;

select trim(TRAILING 'S' FROM 'SpiderS') from duel;

select trim('   stting   ') from duel;

-- 17. Months_between(): It returns the number of month betwen the given two date 
--                     - months_between('date1','date2')

select months_between('08-JAN-2004','05-MAR-2003') from duel;

-- 18. ASCII(): It returns ASCII value for given character 
--            - ASCII('char')

select ASCII('A') from duel;

-- 19. chr(): It returns character for the given ASCII value
--          - chr(ASCII)

select chr(65) from duel;

-- Multi - row function: It combines all the input and generates the single output
--                     - It executes group by group
--                     - For n number of input it generates always single output
-- Multi - row function rules: 
--       - can not pass other column name with multi row function
--       - can not pass multiple argument inise MRF
--       - can not pass multiple row function in var class
--       - They ignore null values
--       - we can pass astrick(*) only in count function

-- max:

select max(sal) from emp;

-- min:

select min(sal) from emp;

-- sum:

select sum(sal) from emp;

-- avg:

select avg(sal) from emp;

-- count:

select count(*) from emp;
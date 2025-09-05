-- Pseduocolumns(False Columns): These are false columns that are present in each and every table that we need to be called explicity
-- There are two pseduo columns
--       Rowid
--       Rownum

select rownum , rowid ,emp.* from emp;

-- Rowid: It is a 18 digit hexadecimal address present in each and every row
--      - It is unique and static 
--      - we can not update, modify, remove the row id
--      - by using rowid we can acess the data very faster
--      - using rowid we can access duplicate records 
--      - rowid generates at the time of insertion

select rowid , emp.* from emp;

select rowid , emp.* from emp where rowid='AAAMfPAAEAAAAAgAAK';

select rowid, emp.* from emp where ename='ALLEN';

-- Rownum: It is used to assign srno to the result table 
--       - It is dynamic
--       - It starts with one and get incremented by 1
--       - It is generated at the time of execution

select rownum, emp.* from emp;

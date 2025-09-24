-- Complex view : It is for multiple tables and contain joins and multi row functions
--                we can not update complex view

-- Create view view_name as 
-- select groupfunction/group by reference 
-- from table_name1,table_name2
-- where <filter_condition>
-- group by <group filter condition>

Create view complexview as
select ename,dname,avg(sal) as avgsal
from emp,dept
where emp.deptno=dept.deptno
group by dname,ename; 
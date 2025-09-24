-- Simple View : It is from single table
--               we can update simple view
--               if we do any changes in view it affects in original table (visewesa)

-- Create view view_name as
-- select column_name1,....column_nameN
-- from table_name
-- where <filter_condition>;

create view simpleview as
select sal,hiredate,ename
from emp
where sal>2000;
-- Materialized View: normal view stores query but materialized view stores result
--                    It is faster than normal view

-- Create materialized view view_name as
-- select groupfunction/group by reference 
-- from table_name1,table_name2
-- where <filter_condition>
-- group by <group filter condition>
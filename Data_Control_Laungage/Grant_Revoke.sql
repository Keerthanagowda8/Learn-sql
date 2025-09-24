-- Data Control Laungage:It is used to control the data flow between the users
--     It has two statements:
--     1. Grant
--     2. Revoke

-- 1. Grant: It is used to give permissions to the user
--           Grant statement on table_name to user_name;

grant select on emp
to hr;

select * from scott.emp;
-- scott ur username

grant insert on emp
to hr;

grant delete on emp
to hr;

-- 2. Revoke: It is used to take back permission from the user 
--            Revoke statement on table_name from user_name;

revoke select on emp 
from hr;

revoke insert on emp
from hr;

revoke delete on emp
from hr;
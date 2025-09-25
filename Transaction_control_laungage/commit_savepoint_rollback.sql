-- Transcation Control Launage: It is used to control the transcation done on DML operations.
--    It has three statements:
--      1.Commit
--      2.Savepoint
--      3.Rollback

-- 1. Commit: It is used to save the changes done by DML operations permanently into the database.
--            Commit;

-- example:
update emp  set sal=sal+10 where deptno=10;
-- sal=salary                           
select * from emp where deptno=10;
-- to see the changes
commit;
-- to save the changes permanently into the database
select * from emp where deptno=10;
-- to see the changes

----------------------------------------------------------------------------------------

-- 2. Savepoint: It is used to mark the transcation
--               Savepoint savepoint_name;

-- example:
update emp set sal=sal+200 where deptno=20;
select * from emp where deptno=20;
-- to see the changes
savepoint sp1;
-- to mark the transcation
update emp set sal=sal+200 where deptno=30;
select * from emp where deptno=30;
-- to see the changes
-- now we can rollback to savepoint sp1 or rollback all the changes

----------------------------------------------------------------------------------------

-- 3. Rollback: It is used to perform undo operation 
--              Rollback to savepoint savepoint_name;
--              Rollback;

--  example


-- SQL> select * from emp where deptno=20;

--      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--       7369 SMITH      CLERK           7902 17-DEC-80        900                    20
--       7566 JONES      MANAGER         7839 02-APR-81       3075                    20
--       7788 SCOTT      ANALYST         7566 19-APR-87       3100                    20
--       7876 ADAMS      CLERK           7788 23-MAY-87       1200                    20
--       7902 FORD       ANALYST         7566 03-DEC-81       3100                    20

-- SQL> savepoint sp1;

-- Savepoint created.

-- SQL> update emp set sal=sal+110 where deptno=20;

-- 5 rows updated.

-- SQL> select * from emp where deptno=20;

--      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--       7369 SMITH      CLERK           7902 17-DEC-80       1010                    20
--       7566 JONES      MANAGER         7839 02-APR-81       3185                    20
--       7788 SCOTT      ANALYST         7566 19-APR-87       3210                    20
--       7876 ADAMS      CLERK           7788 23-MAY-87       1310                    20
--       7902 FORD       ANALYST         7566 03-DEC-81       3210                    20

-- SQL> rollback to sp1;

-- Rollback complete.

-- SQL> select * from emp where deptno=20;

--      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--       7369 SMITH      CLERK           7902 17-DEC-80        900                    20
--       7566 JONES      MANAGER         7839 02-APR-81       3075                    20
--       7788 SCOTT      ANALYST         7566 19-APR-87       3100                    20
--       7876 ADAMS      CLERK           7788 23-MAY-87       1200                    20
--       7902 FORD       ANALYST         7566 03-DEC-81       3100                    20


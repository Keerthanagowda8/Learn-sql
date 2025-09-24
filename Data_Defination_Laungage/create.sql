-- Data Definition Language (DDL) Commands in oracle SQL
-- DDL commands are used to define and manage database structures such as tables, indexes, and  schemas.
-- DDL commands include CREATE, ALTER, DROP, RENAME, TRUNCATE, and  COMMENT.    
-- DDL commands are auto-committed, meaning that changes made by these commands are automatically saved to the database without the need for an explicit COMMIT statement.
-- DDL commands do not manipulate data within the tables; instead, they focus on the structure and organization of the database itself.

---------------------------------------------------------------------------

-- 1. Create : It is used to create a table inside database
--         Create table table_name(
--         column_name1 datatype(size) constraint, 
--         column_name2 datatype(size) constraint,.....);

Create table Product(
    Pid number(3) Primary Key,
    Pname varchar2(20) not null,
    Price number(8,2) not null check(price>0),
    Quantity number(2) default 1,
    mfd Date
);

desc Product;

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PID                                       NOT NULL NUMBER(3)
 PNAME                                     NOT NULL VARCHAR2(20)
 PRICE                                     NOT NULL NUMBER(8,2)
 QUANTITY                                           NUMBER(2)
 MFD                                                DATE

-- Create table with foreign key constraint

-- syntax
-- Create table table_name(
-- column_name1 datatype(size) constraint,
-- column_name2 datatype(size) constraint,
-- column_name3 datatype(size) constraint,
-- constraint fk_name Foreign key(column_name) references parent_table(parent_column)
-- );

 Create table Customer(
    cid number(3) Primary Key,
    cname varchar2(20) not null,
    pid number(3) 
    constraint pid_FK Foreign key(Pid) references Product(Pid)
 );

 desc Customer;

  Name                                      Null?    Type
 ----------------------------------------- -------- ------------
 CID                                       NOT NULL NUMBER(3)
 CNAME                                     NOT NULL VARCHAR2(20)
 PID                                                NUMBER(3)

--------------------------------------------------------------------------------------

-- 2. Alter : It is used to modify the structure of the existing table

-- 1. To add a column
--    Alter table table_name add column_name datatype(size) constraint;

Alter table Customer
add email varchar2(20) not null ;

desc customer;

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CID                                       NOT NULL NUMBER(3)
 CNAME                                     NOT NULL VARCHAR2(20)
 PID                                                NUMBER(3)
 EMAIL                                     NOT NULL VARCHAR2(20)

--  2. To rename a column
--     Alter Table table_name rename column column_name to new_column_name;

Alter table Customer 
rename column email to email_id;

desc customer;

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CID                                       NOT NULL NUMBER(3)
 CNAME                                     NOT NULL VARCHAR2(20)
 PID                                                NUMBER(3)
 EMAIL_ID                                  NOT NULL VARCHAR2(20)

-- 3. To change the datatype 
--    Alter table table_name modify column_name new_datatype(size);

Alter table Customer 
modify cid varchar2(5);

desc customer;

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CID                                       NOT NULL VARCHAR2(5)
 CNAME                                     NOT NULL VARCHAR2(20)
 PID                                                NUMBER(3)
 EMAIL_ID                                  NOT NULL VARCHAR2(20)

--  4. To change the constraint
--     Alter table table_name modify column_name old_datatype new_constraint;

Alter table Customer 
modify pid number(3) not null;

Alter table Customer 
modify email_id varchar(30) null;

desc customer;

Name                                      Null?    Type
----------------------------------------- -------- ----------------------------
CID                                       NOT NULL VARCHAR2(5)
CNAME                                     NOT NULL VARCHAR2(20)
PID                                       NOT NULL NUMBER(3)
EMAIL_ID                                           VARCHAR2(30)

-- Can change from not null to null
-- Cannot change from null to not null
-- Can change datatype and constraint together
-- Cannot delete other constraint 
-- can delete only not null constraint


-- 5. To delete a column
--    Alter table table_name drop column_name ;

Alter table Customer drop column email_id;

desc customer;

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CID                                       NOT NULL VARCHAR2(5)
 CNAME                                     NOT NULL VARCHAR2(20)
 PID                                       NOT NULL NUMBER(3)


---------------------------------------------------------------------------------------------


-- 3. Rename : It is used to change existing table name
--          Rename old_name to new_name;

Rename Customer to Cus;

desc cus;

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CID                                       NOT NULL VARCHAR2(5)
 CNAME                                     NOT NULL VARCHAR2(20)
 PID                                       NOT NULL NUMBER(3)


------------------------------------------------------------------------------------------------------

-- 4. Truncate : It is used to delete all records permanently from the table
--             Trancate table table_name;

--             cannot be rollbacked
--             structure of table remains same
--             faster than delete command

Truncate table cus;

select * from cus;
-- no rows selected

-- To copy a table from existing table

Create table table_name as select column_name1,column_name2 from existing_table where <filter_condition>;

Create table clerk
as select * from emp
where job='CLERK';

select * from clerk;


--  EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ------ ---------- --------- ---------- --------- ---------- ---------- ----------
--   7369 SMITH      CLERK           7902 17-DEC-80        800                    20
--   7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
--   7900 JAMES      CLERK           7698 03-DEC-81        950                    30
--   7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


-----------------------------------------------------------------------------------------------------------------

-- 5. Drop : It is used to delete the table from database
--        Drop table table_name;

--        cannot be rollbacked
--        structure as well as data will be deleted permanently
--        before dropping the table it will be moved to recycle bin


Drop table clerk;

select * from RecycleBin;

-- OBJECT_NAME                    ORIGINAL_NAME                    OPERATION
-- ------------------------------ -------------------------------- ---------
-- TYPE                      TS_NAME                        CREATETIME
-- ------------------------- ------------------------------ -------------------
-- DROPTIME               DROPSCN PARTITION_NAME                   CAN CAN
-- ------------------- ---------- -------------------------------- --- ---
--    RELATED BASE_OBJECT PURGE_OBJECT      SPACE   
-- ---------- ----------- ------------ ----------
-- BIN$i56KkecKRimn48VMVAdFIw==$0 CLERK                            DROP
-- TABLE                     USERS                          2025-09-24:22:43:38
-- 2025-09-24:22:46:41    1654903                                  YES YES
--      53464       53464        53464          8


-----------------------------------------------------------------------------------------------------------

-- 6. Flashback : It is used to recover the dropped table from recycle bin
--             can use only if table is dropped

Flashback table clerk to before drop;

-- Flashback complete.

select * from clerk;

--  EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ------ ---------- --------- ---------- --------- ---------- ---------- ----------
--   7369 SMITH      CLERK           7902 17-DEC-80        800                    20
--   7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
--   7900 JAMES      CLERK           7698 03-DEC-81        950                    30
--   7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

select * from recyclebin;

-- no rows selected


------------------------------------------------------------------------------------------------------------


-- 7. Purge : It is used to delete the table permanently from recycle bin
--        Purge table table_name;

--        cannot be rollbacked
--        once purged cannot be recovered


drop table clerk;

-- Table dropped.

select * from RecycleBin;

-- OBJECT_NAME                    ORIGINAL_NAME                    OPERATION TYPE
-- ------------------------------ -------------------------------- --------- -------------------------
-- TS_NAME                        CREATETIME          DROPTIME               DROPSCN
-- ------------------------------ ------------------- ------------------- ----------
-- PARTITION_NAME                   CAN CAN    RELATED BASE_OBJECT PURGE_OBJECT      SPACE
-- -------------------------------- --- --- ---------- ----------- ------------ ----------
-- BIN$PRPd+E8PSzKPs3S0RCD5+A==$0 CLERK                            DROP      TABLE
-- USERS                          2025-09-25:01:43:31 2025-09-25:02:00:17    1399416
--                                  YES YES      53500       53500        53500          8

purge table clerk;

-- Table purged.

select * from RecycleBin

-- no rows selected


--------------------------------------------------------------------------------------------------------------
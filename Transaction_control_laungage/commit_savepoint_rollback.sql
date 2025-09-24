-- Transcation Control Launage: It is used to control the transcation done on DML operations.
--    It has three statements:
--      1.Commit
--      2.Savepoint
--      3.Rollback

-- 1. Commit: It is used to save the changes done by DML operations permanently into the database.
--            Commit;

-- 2. Savepoint: It is used to mark the transcation
--               Savepoint savepoint_name;

-- 3. Rollback: It is used to perform undo operation 
--              Rollback to savepoint savepoint_name;
--              Rollback;
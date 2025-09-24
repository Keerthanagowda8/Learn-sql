-- CREATE DATABASE Statement
-- The CREATE DATABASE statement is used to create a new SQL database.
-- Syntax

CREATE DATABASE database_name;

-- Example

CREATE DATABASE Company;
CREATE DATABASE SchoolDB;
CREATE DATABASE SalesDB;

--------------------------------------------------------------------------

-- DROP DATABASE Statement
-- The DROP DATABASE statement is used to drop an existing SQL database.

-- Syntax
DROP DATABASE database_name;

-- Example
DROP DATABASE Company;
DROP DATABASE SchoolDB;
DROP DATABASE SalesDB;

---------------------------------------------------------------------------

-- BACKUP DATABASE Statement
-- The BACKUP DATABASE statement is used to create a backup of a database.

-- Syntax
BACKUP DATABASE database_name TO DISK = 'file_path';

-- Example
BACKUP DATABASE Company TO DISK = 'C:\backups\company.bak';
BACKUP DATABASE SchoolDB TO DISK = 'C:\backups\schooldb.bak';
BACKUP DATABASE SalesDB TO DISK = 'C:\backups\salesdb.bak';

---------------------------------------------------------------------------

-- SQL USE Statement
-- The USE statement is used to select a database.

-- Syntax
USE database_name;

-- Example
USE Company;
USE SchoolDB;
USE SalesDB;

---------------------------------------------------------------------------

-- SQL CREATE TABLE Statement
-- The CREATE TABLE statement is used to create a new table in a database.

-- Syntax
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);

-- Example
CREATE TABLE Employees (
    EmployeeID int,
    FirstName varchar(255),
    LastName varchar(255),
    BirthDate date,
    HireDate date
);

CREATE TABLE Students (
    StudentID int,
    FirstName varchar(255),
    LastName varchar(255),
    EnrollmentDate date
);

---------------------------------------------------------------------------

-- SQL Create Constraints
-- Constraints are used to specify rules for the data in a table.
-- Constraints can be column level or table level.

-- Commonly used constraints are:

-- NOT NULL: Ensures that a column cannot have a NULL value.
-- UNIQUE: Ensures that all values in a column are unique.
-- PRIMARY KEY: Uniquely identifies each record in a table.
-- FOREIGN KEY: Ensures referential integrity between two tables.
-- CHECK: Ensures that all values in a column satisfy a specific condition.
-- DEFAULT: Sets a default value for a column when no value is specified.
-- CREATE INDEX - Used to create and retrieve data from the database very quickly

-- Syntax
CREATE TABLE table_name (
    column1 datatype CONSTRAINT constraint_name constraint_type,
    column2 datatype CONSTRAINT constraint_name constraint_type,
    column3 datatype CONSTRAINT constraint_name constraint_type,
   ....
);

-- Example
CREATE TABLE Employees (
    EmployeeID int PRIMARY KEY,
    FirstName varchar(255) NOT NULL,
    LastName varchar(255) NOT NULL,
    BirthDate date,
    HireDate date,
    Email varchar(255) UNIQUE,
    Salary decimal(10, 2) CHECK (Salary > 0),
    DepartmentID int,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    CreatedAt datetime DEFAULT GETDATE()
);

---------------------------------------------------------------------------

-- SQL DROP TABLE Statement
-- The DROP TABLE statement is used to drop an existing table in a database.

-- Syntax
DROP TABLE table_name;

-- Example
DROP TABLE Employees;
DROP TABLE Students;
DROP TABLE Orders;

---------------------------------------------------------------------------

-- SQL ALTER TABLE Statement
-- The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.

-- Syntax
ALTER TABLE table_name
ADD column_name datatype;

ALTER TABLE table_name
DROP COLUMN column_name;

ALTER TABLE table_name
MODIFY COLUMN column_name datatype;

-- Example
ALTER TABLE Employees
ADD Email varchar(255);

ALTER TABLE Employees
DROP COLUMN BirthDate;

ALTER TABLE Employees
MODIFY COLUMN LastName varchar(500);


---------------------------------------------------------------------------

-- SQL RENAME TABLE Statement
-- The RENAME TABLE statement is used to rename an existing table in a database.

-- Syntax
RENAME TABLE old_table_name TO new_table_name;

-- Example
RENAME TABLE Employees TO Staff;

RENAME TABLE Students TO Pupils;



---------------------------------------------------------------------------


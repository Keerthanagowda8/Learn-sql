Data : Data is a rawfact which describe the attribute of an entity

Datbase : A database is a place or medium here we can store data in systamatic and organised manner

In database we can perform universal CRUD operartion:
    Create/Insert
    Read/Retrive
    Update/modify
    Drop/Delete

DBMS is the software which is used to mantain and manage the database
It provide two important functions
    1. Security
    2. Authorization
Here we can store data in the form of files 
We need query laungage to communicate with DBMS

Types of DBMS:
Network DBMS
Hirerchical DBMS
Relational DBMS
Object Oriented DBMS

Relational Model:
It is designed by EFCODD
Here we can store data in the form of rows and columns 
If any  DBMS which follows relational model then it becomes RDMS

Table : It is combination of rows/tuples/record and columns/attributes/fields
Cells : It is inersection of rows and columns used to store the values

Relational Database management:

RDNMS we store data in the form of tables 
we need structured query Launageto communicate with RDBMS

Rules of EFCODD:

Data entered into a cell must be single value data
we can store data in multiple tables and if needed we can establish connections between the table by using key attributes that is comman columns
In RDBMS we can store everything in the form of table including metadata
    metadata:details about data 
we can validate the data assigning into a cell into two types 
    Data types
    Constraint

Data type:
It is used to specify what kind of data to be stored in the particular memory allocation

Types:
    char
    varchar/varchar2
    number
    date
    Large object:
        Binary large objects
        Character large objects 

Char: Anything enclosed within single quotes .It can be alphanumeric or special characters
      syntax: char(size)

In char datatype memory wastage will happen 
For fixed length memory allocation we can use char datatype.
Ex: phone number, aadhar,pincode

-------------------------------------------------------------------------------------------------------

Varchar: Anything enclosed within single quotes .It can be alphanumeric or special characters
         syntax: varchar(size)

In varchar there is no memory wastage 
for variable length memory allocation we can use varchar 
Ex: name, address

In varchar we can store upto 2000 maximum characters 
In varchar2 we can store upto 4000 maximum characters

------------------------------------------------------------------------------------------------------

Number: It is used to store numerical value from 0 to 9
        syntax: number(presition,scale) 

Here we can pass two arguments presition and scale
Presition : It is used to store the number of digits required for integer values
            It is manditory
            Its range is 1-38

Scale : It is used to store the number of digits required for the decimal values
        It is optional
        The range of scale is upto 127

----------------------------------------------------------------------------------------------------------

Date : It is used to store date in particular format 
       syntax: date

format: 'DD-MMM-YY' - '08-JAN-04'
        'DD-MMM-YYYY' - '05-MAR-2003'

--------------------------------------------------------------------------------------------------------------

Large objects:

Character large objects: It is used to store huge amount of characters upto 4GB of size 
          syntax: CLOB
          Ex: pdf, doc, word

Binary Large objects : It is used to huge amount of binary values upto 4 GB of size
          syntax: BLOB
          Ex: img,mp3,vedios

-------------------------------------------------------------------------------------------------------------

Constraint:
Constraints are the rules assigned to the column for validation 

Types of Constraints
        Unique
        Not null
        check
        default
        primary key
        foreign key 

Unique: It can not accept duplicate values or repeated values

Not null: It can not accept null values 

Check: check Constraint having some extra condition if the condition is true it can accept the value else rejects them 
        Ex: check(sal>0)
           check(length(eno)=5)

default: It is used to assign same values for multiple rows
        Ex: default 10

Primary key: It is used to identify the records uniquely from the table
             It can not accept duplicate, null values
             It is combination of unique and not null
             we can have one primary key in a table 
             not manditory highly recommended

Foreign Key: It is used to establish the connections between the table 
             It can have duplicate or null values 
             to become foreign key it should be primary key in its owm table 
             primary key is present in parent table 
             foreign key is present in child table 
             can have multiple foreign key 
             it is also known as refrential integrety constraint

-------------------------------------------------------------------------------------------------------------

statement on sql:
    Data Definition laungage
    Data manipulation laungage
    Data Control laungage
    Transation Control laungage 
    Data query laungage 
    
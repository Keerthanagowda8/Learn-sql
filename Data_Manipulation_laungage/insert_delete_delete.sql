-- Data Manipulation Laungage:
--      This laungage is used to add/modify/remove the data from the table.
--      It has 3 statements:
--      1. Insert
--      2. Update
--      3. Delete

-- Insert:It is used to insert the values  into the table .
--        Insert into table_name(column1,column2,....,columnN) values(value1,value2,......,valueN);

insert into product(Pid,Pname,Price,Quantity,mfd) values(1,'Pen',10,2,'20-JAN-2025');

insert into product(Pid,Pname,price,Quantity,mfd) values('&Pid','&Pname','&price','&Quantity','&mfd');
Enter value for pid: 4
Enter value for pname: scale
Enter value for price: 5
Enter value for quantity: 5
Enter value for mfd: 05-Mar-2025
old   1: insert into product(Pid,Pname,price,Quantity,mfd) values('&Pid','&Pname','&price','&Quantity','&mfd')
new   1: insert into product(Pid,Pname,price,Quantity,mfd) values('4','scale','5','5','05-Mar-2025')

-- To insert null values

insert into product(Pid,Pname,price,Quantity,mfd) values('&Pid','&Pname','&price','&Quantity','&mfd');
Enter value for pid: 2
Enter value for pname: Pencil
Enter value for price: 5
Enter value for quantity: 
Enter value for mfd: 08-JAN-24
old   1: insert into product(Pid,Pname,price,Quantity,mfd) values('&Pid','&Pname','&price','&Quantity','&mfd')
new   1: insert into product(Pid,Pname,price,Quantity,mfd) values('2','Pencil','5','','08-JAN-24')

-- To insert default values

insert into product(Pid,Pname,price,Quantity,mfd) values('&Pid','&Pname','&price',DEFAULT,'&mfd');
Enter value for pid: 3
Enter value for pname: Eraser
Enter value for price: 4
Enter value for mfd: 
old   1: insert into product(Pid,Pname,price,Quantity,mfd) values('&Pid','&Pname','&price',DEFAULT,'&mfd')
new   1: insert into product(Pid,Pname,price,Quantity,mfd) values('3','Eraser','4',DEFAULT,'')

       PID PNAME                     PRICE   QUANTITY MFD
---------- -------------------- ---------- ---------- ---------
         1 Pen                          10          2 20-JAN-25
         2 Pencil                        5            08-JAN-24
         3 Eraser                        4          1
         4 scale                         5          5 05-MAR-25


-- Update : Used to modify the existing record
--          update table_name set column_name1=value1, column_nameN=valueN where <filter-condition>

update product 
set quantity=3
where pid=2;

       PID PNAME                     PRICE   QUANTITY MFD
---------- -------------------- ---------- ---------- ---------
         1 Pen                          10          2 20-JAN-25
         2 Pencil                        5          3 08-JAN-24
         3 Eraser                        4          1
         4 scale                         5          5 05-MAR-25

update product
set price=7
where pname='Pencil';


       PID PNAME                     PRICE   QUANTITY MFD
---------- -------------------- ---------- ---------- ---------
         1 Pen                          10          2 20-JAN-25
         2 Pencil                        7          3 08-JAN-24
         3 Eraser                        4          1
         4 scale                         5          5 05-MAR-25

-- Delete : It is used to delete rows from the table
--          Delete from table_name where <filter condition>

delete from product 
where pid=3;

       PID PNAME                     PRICE   QUANTITY MFD
---------- -------------------- ---------- ---------- ---------
         1 Pen                          10          2 20-JAN-25
         2 Pencil                        7          3 08-JAN-24
         4 scale                         5          5 05-MAR-25
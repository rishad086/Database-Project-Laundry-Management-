-- --dropping tables according to the E-R Model..
drop table payment;
drop table orders;
drop table customer;
drop table employee;
drop table register;


create table register(
    register_id INTEGER primary key,
    register_password VARCHAR(20),
    register_address VARCHAR(20),
    register_companyName VARCHAR(20)
    );


CREATE TABLE employee (
    emp_id INTEGER PRIMARY KEY,
    emp_name VARCHAR(20),
    emp_age INTEGER,
    emp_salary INTEGER,
    register_id INTEGER,
    foreign key (register_id) references register(register_id)
);

create table customer(
    customer_id INTEGER primary key,
    customer_first_name VARCHAR(20),
    customer_last_name VARCHAR(20),
    customer_phoneNumber INTEGER
  );


create table orders (
    order_type VARCHAR(20),
    order_date varchar2(20),
    emp_id INTEGER unique,
    customer_id INTEGER unique,
    primary key(emp_id,customer_id),
    foreign key (emp_id) references employee(emp_id),
    foreign key (customer_id) references customer(customer_id)
);


create table payment (
    emp_id INTEGER unique,
    customer_id INTEGER unique,
    payment_date varchar2(20),
    payment_amount INTEGER,
    payment_type VARCHAR2(20),
    primary key(emp_id,customer_id),
    foreign key (emp_id) references employee(emp_id),
    foreign key (customer_id) references customer(customer_id)
    );



--inserting register
insert into register (register_id,  register_password, register_address, register_companyName) values (101,'p101','fulbari','fulbari_laundry');

insert into register (register_id,  register_password, register_address, register_companyName) values (102,'p102','fultola','fultola_laundry');

insert into register (register_id,  register_password, register_address, register_companyName) values (103,'p103','New_Market','New_Market_laundry');

insert into register (register_id,  register_password, register_address, register_companyName) values (104,'p104','maniktola','maniktola_laundry');

insert into register (register_id,  register_password, register_address, register_companyName) values (105,'p105','teleghati','teleghati_laundry');

insert into register (register_id,  register_password, register_address, register_companyName) values (106,'p106','poketgate','poketgate_laundry');

insert into register (register_id,  register_password, register_address, register_companyName) values (107,'p107','doalautpur','doalautpur_laundry');

insert into register (register_id,  register_password, register_address, register_companyName) values (108,'p108','shikari_more','shikari_more_laundry');

insert into register (register_id,  register_password, register_address, register_companyName) values (109,'p109','khander','khander_laundry');

insert into register (register_id,  register_password, register_address, register_companyName) values (110,'p110','tutpara','tutpara_laundry');

insert into register (register_id,  register_password, register_address, register_companyName) values (111,'p111','moilapota','moilapota_laundry');

--- register table with values ---

select * from register;



--inserting employee
insert into employee (emp_id,  emp_name,  emp_age, emp_salary, register_id) values (301,'rishad',22,10000,101);

insert into employee (emp_id,  emp_name,  emp_age, emp_salary, register_id) values (302,'asif',23,11000,102);

insert into employee (emp_id,  emp_name,  emp_age, emp_salary, register_id) values (303,'alif',24,12000,103);

insert into employee (emp_id,  emp_name,  emp_age, emp_salary, register_id) values (304,'tamim',25,13000,104);

insert into employee (emp_id,  emp_name,  emp_age, emp_salary, register_id) values (305,'arnob',21,9000,105);

insert into employee (emp_id,  emp_name,  emp_age, emp_salary, register_id) values (306,'pervej',23,11200,106);

insert into employee (emp_id,  emp_name,  emp_age, emp_salary, register_id) values (307,'bondhon',25,14000,107);

insert into employee (emp_id,  emp_name,  emp_age, emp_salary, register_id) values (308,'tashin',23,15000,108);

insert into employee (emp_id,  emp_name,  emp_age, emp_salary, register_id) values (309,'shorif',22,17000,109);

insert into employee (emp_id,  emp_name,  emp_age, emp_salary, register_id) values (310,'emon',20,12000,110);


--- employee table with values ---

select * from employee;




--inserting customer
insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (201,'Nur','Mohammad',0171379880);

insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (202,'ahsan','Hanbib',0131375680);

insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (203,'Robin','Hood',0167178780);

insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (204,'khyrul','bhuiya',0171864880);

insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (205,'sabbir','rahman',0171987640);

insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (206,'fiaz','sadi',0145678900);

insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (207,'rakib','Mahmud',0151898980);

insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (208,'sadi','fiz',0152348980);


insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (209,'gani','islam',015321980);

insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (210,'rifat','Mahmod',0151456980);


--- customer table with values ---

select * from customer;

--inserting orders
insert into orders (order_type, order_date, emp_id, customer_id) values ('dry-wash','20-04-2022',301,201);

insert into orders (order_type, order_date, emp_id, customer_id) values ('foam-wash','21-04-2022',302,202);

insert into orders (order_type, order_date, emp_id, customer_id) values ('dry-wash','22-04-2022',303,203);

insert into orders (order_type, order_date, emp_id, customer_id) values ('foam-wash','24-04-2022',304,204);

insert into orders (order_type, order_date, emp_id, customer_id) values ('foam-wash','23-04-2022',305,205);

insert into orders (order_type, order_date, emp_id, customer_id) values ('dry-wash','27-04-2022',306,206);

insert into orders (order_type, order_date, emp_id, customer_id) values ('dry-wash','25-04-2022',307,207);

insert into orders (order_type, order_date, emp_id, customer_id) values ('foam-wash','26-04-2022',308,208);

insert into orders (order_type, order_date, emp_id, customer_id) values ('foam-wash','27-04-2022',309,209);

insert into orders (order_type, order_date, emp_id, customer_id) values ('dry-wash','29-04-2022',310,210);

--- orders table with values ---

select * from orders;




--inserting payment

insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (301,201,'23-04-2022',300,'cash');

insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (302,202,'24-04-2022',350,'online');

insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (303,203,'25-04-2022',100,'cash');

insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (304,204,'26-04-2022',40,'online');

insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (305,205,'24-04-2022',90,'online');

insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (306,206,'29-04-2022',60,'cash');

insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (307,207,'26-04-2022',200,'cash');

insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (308,208,'27-04-2022',210,'online');

insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (309,209,'30-04-2022',250,'online');

insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (310,210,'30-04-2022',260,'cash');

--- payment table with values ---

select * from payment;



--description of each table


DESC register;

DESC employee;

DESC customer;

DESC orders;

DESC payment;


--LAB 02 & 03:


-- data according each table

--details about register table:

select * from register;

--details about employee table:

select * from employee;

--details about customer table:

select * from customer;

--details about orders table:

select * from orders;

--details about payment table:

select * from payment;


--add operation (adding column for application purposes)

alter table register add temporary_column VARCHAR2(50);
desc register;
select * from register;

--drop operation (dropping useless column for application purposes)

alter table register drop column temporary_column;
desc register;
select * from register;

---modify operation (modifying column data type)

 alter table register modify register_id INTEGER;
desc register;
select * from register;


--rename operation (renaming column)

alter table register rename column register_id to reg_id;
desc register;
select * from register;

alter table register rename column reg_id to register_id;
desc register;
select * from register;


--update operation (updating a value for tags table in post_tags)
--when a user make a mistake and contact a admin to update it...

update register set register_password = 'p109' where register_address='fultola';
desc register;
select * from register;





--delete operation (deleting a row from payment table)

delete from payment where emp_id='301';
desc payment;
select * from payment;
insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (301,201,'23-04-2022',300,'cash');
select * from payment;

---calculated fields---
select (emp_salary/2),emp_name from employee where emp_id=303;


--applying conditions(showing emp_id  whose age is 22 to take some actions)

select emp_id from employee where emp_age=22;

--Range Search (varifying some employees for official works)

SELECT emp_id,emp_name FROM employee
WHERE emp_age BETWEEN 20 AND 30;

SELECT emp_id,emp_name FROM employee
WHERE emp_age NOT BETWEEN 20 AND 25;

--range operators

SELECT emp_id,emp_name FROM employee
WHERE register_id>=101 AND register_id<=105; --Comparison Search Condition(from lab 04)

SELECT emp_id,emp_name FROM employee
WHERE register_id>=101 OR register_id<=105; --Compound Comparison Search Condition(from lab 04)


--Set membership

--varifying some employees for official works in different process

SELECT emp_id,emp_name FROM employee WHERE register_id IN (101,105);

SELECT emp_id,emp_name FROM employee WHERE register_id NOT IN (101,105);

--Ordering by column values to see the data in order from 1st to last

SELECT emp_id,emp_name FROM employee ORDER BY register_id; --Single Column Ordering(lab 04)

--Ordering by column values to see the data in order from last to first

SELECT emp_id,emp_name FROM employee ORDER BY register_id desc;

--Ordering by column values(with multiple columns)

select emp_id,emp_name FROM employee
order by emp_age, register_id; --multi-column ordering(lab 04)

select emp_id,emp_name  FROM employee
order by emp_age, register_id desc;

--Use of DISTINCT

select distinct (register_id) from register;


--Lab 04:

-- use of distinct
select distinct(emp_age) from employee;

--comparison search condition
select customer_id from payment where payment_amount>100;

--Pattern Matching

select emp_id,customer_id from orders
where order_type like '%foam%';

select emp_id,customer_id from orders
where order_type like 'dry%';

select emp_id,customer_id from orders
where order_type like '%wash';

--aggregate functions:

select  max(payment_amount) from payment;

select min(payment_amount) from payment;

select  sum(payment_amount) from payment;

select count(emp_id) from employee;

select count(*) from employee;

select count(distinct (payment_amount)) from payment;

select  avg(payment_amount) from payment;

select  avg(nvl(emp_id,0)) from employee;


--Order by clause--

select emp_name,emp_age,emp_id from employee order by emp_id;

select emp_name,emp_age,emp_id from employee order by emp_id desc;

---multiple columns ordering

select emp_name,emp_age,emp_id from employee order by emp_id,emp_age;



-- --GROUP BY clause

 select count(payment_amount),payment_date from payment group by payment_date;

  select count(payment_amount),payment_date from payment where payment_type='cash'group by payment_date;

-- -- --HAVING clause
--   select emp_age from employee group by emp_id HAVING emp_age>23;


--lab 05


--IN

select register_id,register_password,register_address from register where register_companyName in ('doalautpur_laundry','poketgate_laundry');

--nested query

select order_type from orders where emp_id in (select emp_id from employee where emp_age<25);

--set operations

--union all operation

select order_type,order_date from orders where emp_id>303 and emp_id<=305
union all  --selected column is same in no. and same order of data types
select customer_first_name,customer_last_name from customer where customer_id>202 and customer_id<204;

--union operation

select emp_id from employee where emp_id<305
union
select customer_id from customer where customer_id <205;

--MINUS operation 

select emp_id,customer_id from orders
MINUS
select emp_id,customer_id from payment;


--INTERSECT operation 
select emp_id,customer_id from orders
INTERSECT
select emp_id,customer_id from payment;




--lab 06(Joining multiple tables)
--simple join examples


--Join(specific comments in specific tags of a post)

select o.order_type,p.payment_amount from orders o join
payment p on o.emp_id = p.emp_id;


--Join (Conditions using multiple columns)

select o.order_type,p.payment_amount from orders o join
payment p on o.emp_id = p.emp_id and o.customer_id= p.customer_id;

--Natural Join

select register_id,emp_id from register Natural join employee;

--Cross Joins/ Cartesian Products

select register_password,emp_id from register cross join employee;

--Inner Join

select o.order_type,p.payment_amount from orders o inner join
payment p on o.emp_id = p.emp_id;

--Outer Join

--LEFT Outer Join

select o.order_type,p.payment_amount from orders o LEFT outer join
payment p on o.emp_id = p.emp_id;

--RIGHT Outer Join

select o.order_type,p.payment_amount from orders o RIGHT outer join
payment p on o.emp_id = p.emp_id;

--FULL Outer Join

select o.order_type,p.payment_amount from orders o FULL outer join
payment p on o.emp_id = p.emp_id;




--lab 7

--displaying the paymentamount when the date is 23-04-2022
 
set SERVEROUTPUT ON
declare
amount payment.payment_amount%type;

begin
  select payment_amount into amount from payment where payment.payment_date='23-04-2022';
  dbms_output.put_line('Payment Amount :'||amount);
end;
/


-- write a block to calculate and display the payment amount of that customer whos customer id is 201
--  1.No discount if the payment amount is less than 50,
--  2.25% discount if the payment amount is less than 100,
--  3.40% discount if the payment amount is less than 150,
--  4.for any other price, the discount is 50%

set SERVEROUTPUT ON
declare
amount payment.payment_amount%type;
c_id payment.customer_id%type;
discount_price payment.payment_amount%type;

begin

c_id :=201;
select payment_amount into amount from payment where customer_id like c_id;

IF amount <50 then
  discount_price := amount;
elsif  amount >=50 and amount <100 then
  discount_price := amount-(amount*.25);

elsif  amount >=100 and amount <150 then
  discount_price := amount-(amount*.40);

ELSE
  discount_price := amount-(amount*.50);
end if;
dbms_output.put_line('Payment  :'||round(discount_price,2));
exception
  when others then
  
    dbms_output.put_line(sqlerrm);

end;
/
--show errors


--------Lab-08-------

---cursor---
-- Write an anonymous block to display only the first 4 employee_name from employee table

set SERVEROUTPUT ON
declare
cursor emp_cur_name is select emp_name from employee;
e_name emp_cur_name%rowtype;
  

begin
open emp_cur_name;
loop
  fetch emp_cur_name into e_name;
  exit when emp_cur_name%rowcount >4;
  dbms_output.put_line('employee name :'||e_name.emp_name);
  
end loop;
  close emp_cur_name;
  
end;
/


--------------------------uses of PL/SQL Procedures to find minimum id between 2 employers from employee table-------------------------------------

--Creating a Procedures
create or replace PROCEDURE minimum_employee_id
(x IN number, y IN number, z OUT number)
IS 
BEGIN 
   IF x < y THEN 
      z:= x; 
   ELSE 
      z:= y; 
   END IF; 
END;  
/ 

--Executing a Procedures
declare
a employee.emp_id%type;
b employee.emp_id%type;
p employee.emp_name%type;
q employee.emp_name%type;
r employee.emp_name%type;
x employee.emp_id%type;
begin
a:=302;
b:=304;

select employee.emp_name into p from employee where employee.emp_id=a;
select employee.emp_name into q from employee where employee.emp_id=b;

minimum_employee_id(a,b,x);

select employee.emp_name into r from employee where employee.emp_id=x;

dbms_output.put_line('The minimum user ID between ' || p || ' and ' || q || ' is ' || x);
dbms_output.put_line('Which is ' || r || '~s user id.');

end;
/

commit; 
------use to commit data in the database

---funtions---  

--- seeing the avarage salary of the employees from the employee table
create or replace function avg_employee_salary return number is
avg_employee_sal employee.emp_salary%type;
begin
select avg(emp_salary) into avg_employee_sal
from employee;
return avg_employee_sal;
end;
/

set SERVEROUTPUT on
begin
dbms_output.put_line('Average Price: ' || avg_employee_salary);
end;
/


-----lab09-----
---trigger----

drop trigger salary_difference;

create or replace trigger salary_difference
before insert or delete or update on employee
for each row
declare 
salary_difference number;
begin 
salary_difference := :new.emp_salary - :old.emp_salary;
dbms_output.put_line('old salary: ' || :old.emp_salary);
dbms_output.put_line('New salary: ' || :new.emp_salary);
dbms_output.put_line('Salary difference: ' || salary_difference);
end;
/

insert into employee (emp_id,  emp_name,  emp_age, emp_salary, register_id) values (310,'risha',22,10000,101);
delete from employee where emp_id =310;


select * from employee;

update employee set emp_salary=30000 where emp_id =302;





















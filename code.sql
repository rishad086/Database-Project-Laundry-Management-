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


--inserting employee
insert into employee (emp_id,  emp_name,  emp_age, register_id) values (301,'rishad',22,101);
insert into employee (emp_id,  emp_name,  emp_age, register_id) values (302,'asif',23,102);
insert into employee (emp_id,  emp_name,  emp_age, register_id) values (303,'alif',24,103);
insert into employee (emp_id,  emp_name,  emp_age, register_id) values (304,'tamim',25,104);
insert into employee (emp_id,  emp_name,  emp_age, register_id) values (305,'arnob',21,105);
insert into employee (emp_id,  emp_name,  emp_age, register_id) values (306,'pervej',23,106);
insert into employee (emp_id,  emp_name,  emp_age, register_id) values (307,'bondhon',25,107);


--inserting customer
insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (201,'Nur','Mohammad',0171379880);
insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (202,'ahsan','Hanbib',0131375680);
insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (203,'Robin','Hood',0167178780);
insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (204,'khyrul','bhuiya',0171864880);
insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (205,'sabbir','rahman',0171987640);
insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (206,'fiaz','sadi',0145678900);
insert into customer (customer_id,  customer_first_name,  customer_last_name,  customer_phoneNumber) values (207,'rakib','Mahmud',0151608980);


--inserting orders
insert into orders (order_type, order_date, emp_id, customer_id) values ('dry-wash','20-04-2022',301,201);
insert into orders (order_type, order_date, emp_id, customer_id) values ('foam-wash','21-04-2022',302,202);
insert into orders (order_type, order_date, emp_id, customer_id) values ('dry-wash','22-04-2022',303,203);
insert into orders (order_type, order_date, emp_id, customer_id) values ('foam-wash','24-04-2022',304,204);
insert into orders (order_type, order_date, emp_id, customer_id) values ('foam-wash','23-04-2022',305,205);
insert into orders (order_type, order_date, emp_id, customer_id) values ('dry-wash','27-04-2022',306,206);
insert into orders (order_type, order_date, emp_id, customer_id) values ('dry-wash','24-04-2022',307,207);


--inserting payment
insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (301,201,'23-04-2022',300,'cash');
insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (302,202,'24-04-2022',350,'online');
insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (303,203,'25-04-2022',100,'cash');
insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (304,204,'26-04-2022',40,'online');
insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (305,205,'24-04-2022',90,'online');
insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (306,206,'29-04-2022',60,'cash');
insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (307,207,'26-04-2022',200,'cash');




--description of each table
DESC register;
DESC employee;
DESC customer;
DESC orders;
DESC payment;


--LAB 02 & 03:


-- data according each table
select * from register;
select * from employee;
select * from customer;
select * from orders;
select * from payment;


--add operation (adding column)
alter table register add temporary_column VARCHAR2(50);
desc register;
select * from register;

--drop operation (dropping column)
alter table register drop column temporary_column;
desc register;
select * from register;

-- --modify operation (modifying column data type)
-- alter table register modify register_id INTEGER(2);
-- desc register;
-- select * from register;


--rename operation (renaming column)
alter table register rename column register_id to reg_id;
desc register;
select * from register;

alter table register rename column reg_id to register_id;
desc register;
select * from register;


--update operation (updating a value)
update register set register_password = 'p109' where register_address='fultola';
desc register;
select * from register;


-- --delete operation (deleting a row from tags table)
-- delete from employee where emp_name='rishad';
-- desc register;
-- select * from register;
-- insert into register (register_id,  register_password, register_address, register_companyName) values (102,'p101','fultola','fultola_laundry');
-- select * from register;


--delete operation (deleting a row from tags table)
delete from payment where emp_id='301';
desc payment;
select * from payment;
insert into payment (emp_id, customer_id, payment_date, payment_amount, payment_type) values (301,201,'23-04-2022',300,'cash');
select * from payment;


--applying conditions
select emp_id from employee where emp_age=22;

--Range Search
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
SELECT emp_id,emp_name FROM employee WHERE register_id IN (101,105);

SELECT emp_id,emp_name FROM employee WHERE register_id NOT IN (101,105);

--Ordering by column values
SELECT emp_id,emp_name FROM employee ORDER BY register_id; --Single Column Ordering(lab 04)

SELECT emp_id,emp_name FROM employee ORDER BY register_id desc;

--Ordering by column values(with multiple columns)
select emp_id,emp_name FROM employee
order by emp_age, register_id; --multi-column ordering(lab 04)

select emp_id,emp_name  FROM employee
order by emp_age, register_id desc;

--Use of DISTINCT
select distinct (register_id) from register;


--Lab 04:



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



-- --GROUP BY clause
-- select count(comment_id),user_id from comments group by user_id;
-- select count(comment_id),user_id from comments where post_id >5 group by user_id;

-- --HAVING clause
-- select count(comment_id),user_id from comments  group by user_id having user_id >5;
-- select count(comment_id),user_id from comments  group by user_id having count(user_id)>1;

--set operations

--union all operation
select order_type,order_date from orders where emp_id>303 and emp_id<=305
union all  --selected column is same in no. and same order of data types
select customer_first_name,customer_last_name from customer where customer_id>202 and customer_id<204;

--union operation
select emp_id from employee where emp_id<305
union
select customer_id from customer where customer_id <205;
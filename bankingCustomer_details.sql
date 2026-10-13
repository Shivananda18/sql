CREATE DATABASE banking_db;
USE banking_db;
drop database banking_db;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE check(email like '%@gmail.com'),
    mobile_number BIGINT
);

insert into customers values(1,"tarun",'tarun@gmail.com',897032195);
insert into customers values(2,"pavan",'pavan@gmail.com',846585158);
insert into customers values(3,"prathap",'prathap@gmail.com',897032195);
insert into customers values(4,"vijay",'vijay@gmail.com',846585158);

insert into customers values(5,"vinay",'vinay@gmail.com',897032195);
insert into customers values(6,"hanumantha",'hanumantha@gmail.com',846585158);

delete from customers where customer_id=5;
delete from customers where customer_id=4;
select * from customers;

set autocommit=0;

rollback;

update customers set customer_name='pradeep' where customer_id=6;


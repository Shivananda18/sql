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

insert into customers_info values(8,"ravikumar",'ravi@gmail.com',085327195,21,26000);
select * from customers_info;
rollback;

update customers set customer_name='pradeep' where customer_id=6;


create table customers_info(
 customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL ,
    email VARCHAR(100) UNIQUE check(email like '%@gmail.com'),
    mobile_number BIGINT ,
    age int,
    salary double
);

drop table customers_info;
insert into customers_info values(1,"tarun",'tarun@gmail.com',8970327195,18,20000);
insert into customers_info values(2,"gagan",'gagan@gmail.com',8955327195,21,1900);
insert into customers_info values(3,"veda",'gagan@gmail.com',8985327195,21,12900);
insert into customers_info values(4,"krishna",'krishna@gmail.com',2585327195,17,19900);
insert into customers_info values(5,"kalmesh",'kalmi@gmail.com',9885327195,08,25000);
insert into customers_info values(6,"prajwal",'prajwal@gmail.com',5985327195,21,26000);



select * from customers_info where  age>18;
select * from customers_info where salary<20000;values











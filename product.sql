create database product_db;

use product_db;

create table product_info(
id int primary key,
product_name varchar(20),
product_price double,
product_quantity int,
product_manufactureDate date,
product_expireDate date,
product_mnfLocation varchar(25)
);

insert into product_info values(1,'Samsung Mobile',15999.00,25,'2026-01-10', NULL, 'bangalore');
insert into product_info values(2,'Boat Earbuds',1299.00,50,'2026-02-15',NULL,'davangere');
insert into product_info values(3,'HP Laptop',55999.00, 10,'2026-01-20', NULL,'kolar');
insert into product_info values(4,'Sony Headphones',2999.00, 30,'2026-03-05',NULL,'hubli');
insert into product_info values(5,'Mi Power Bank',999.00, 45,'2026-02-10',NULL,'bagalkote');
insert into product_info values(6,'Fire TV Stick',4499.00, 20,'2026-01-25',NULL,'koppal');
insert into product_info values(7,'Smart Watch',1999.00, 35,'2026-03-12', NULL,'bangalore');
insert into product_info values(8,'Wireless Mouse',599.00, 60,'2026-02-18',NULL,'davangere');
insert into product_info values(9,'Bluetooth Speaker',1799.00, 25,'2026-03-01',NULL,'bangalore');
insert into product_info values(10,'LED Bulb',199.00,100,'2026-01-15', NULL,'davangere');
insert into product_info values(11,'Face Wash',249.00,80,'2026-04-01','2028-03-31','Haridwar');
insert into product_info values(12,'Shampoo',399.00,70,'2026-04-10','2028-04-09','Baddi');
insert into product_info values(13,'Water Bottle',499.00,40,'2026-02-20',NULL,'davangere');
insert into product_info values(14,'Coffee Maker',2499.00,15,'2026-03-15',NULL,'koppal');
insert into product_info values(15,'Notebook Pack',199.00,90,'2026-01-05',NULL,'bagalkote');

select * from product_info;
select  * from product_info where product_quantity=20;
select * from product_info where product_quantity>20;
select * from product_info where product_mnfLocation  not between '2026-01-15' and '2026-03-15';
select * from product_info where product_mnfLocation in('bangalore');

select  distinct product_mnfLocation from product_info ;
select distinct product_mnfLocation from product_info;
select distinct product_price from product_info;
select distinct product_manufactureDate from product_info;

select product_price * product_quantity as totalPrice from product_info ;
select id * product_name  as product_information  from product_info;
select product_mnfLocation * product_expireDate as validity from product_info;

select * from product_info;

select * from product_info where product_price>1000;
select product_price from product_info where product_quantity>1000;
select * from product_info where product_mnfLocation in('davangere','bagalkote');
select * from product_info where product_mnfLocation not in ('koppal','kolar');

 truncate table product_info ; 
 
 select * from  product_info where product_name='Shampoo' and product_quantity=70;
  select * from  product_info where product_name='Shampoo' or product_name='Bluetooth Speaker';
select * from product_info where  not product_name='Mi Power Bank';
select * from product_info where  product_mnfLocation not in('davangere','bangalore');

	

 
 
 
create database product_db;
drop database product_db;
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
drop table product_info;

select * from product_info ;
insert into product_info values(1,'Samsung Mobile',15999.00,25,'2026-01-10', NULL, 'bangalore');
insert into product_info values(2,'Boat Earbuds',1299.00,50,'2026-02-15',NULL,'davangere');
insert into product_info values(3,'HP Laptop',55999.00, 10,'2026-01-20', NULL,'kolar');
insert into product_info values(4,'Sony Headphones',2999.00, 30,'2026-03-05',NULL,'hubli');
insert into product_info values(5,'Mi Power Bank',999.00, 45,'2026-02-10',NULL,'bagalkote');
insert into product_info values(6,'Fire TV Stick',4499.00, 20,'2026-01-25',NULL,'koppal');




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

	select * from product_info;

 select count(product_name) from product_info;
 select count(*) from product_info;
 
 select max(product_price) from product_info;
 
 select min(product_price) from product_info;
 
 select sum(product_quantity) from product_info;
 
 select min(product_quantity)from product_info;
 
 select avg(product_price) from product_info;
 
 select * from product_info;
 
 select product_mnfLocation, count(product_mnfLocation) from product_info group by product_mnfLocation;
 
 select product_mnfLocation, count(product_mnfLocation) from product_info  group by product_mnfLocation having  count(product_mnfLocation)>2;
 
 select product_quantity, count(product_quantity) from product_info group by product_quantity;
 select product_mnfLocation, count(product_quantity) from product_info group by product_mnfLocation  having count(product_quantity)>1; 
 
 select * from product_info order by product_price asc;
 
 select* from product_info order by product_quantity asc;
 
 select * from product_info order by product_price desc;
 
 select * from product_info order by product_quantity desc;
 
 
  # numeric function
select round(25,3) from amazon_table;
select round(2,1) from amazon_table;

select abs(-20) from amazon_table;

select power(2,2) from amazon_table;
select sqrt(2) from amazon_table;

# date and time
select now() ;
select curdate();
select datediff('2026-10-16', '2026-10-01');

#conversion
SELECT CAST('-100' AS UNSIGNED);
select convert('20' , unsigned);

select * from product_info;

select min(product_quantity) from product_info where product_quantity >(select min(product_quantity) from product_info);

create database onlineShoping_db;
use onlineShoping_db;

create table order_details(
id int primary key,
customer_name varchar(20),
product_name varchar(20),
amount double ,
status varchar(25)
);

desc order_details;

insert into order_details values(1,'Ravi','laptop',58000,'Delivered');
insert into order_details values(2,'anil','mobile',35000,'pending');
insert into order_details values(3,'ananda','headPhones',1500,'Delivered');
insert into order_details values(4,'Darshan','keyboard',700,'cancelld');
insert into order_details values(5,'Ravi','mouse',350,'Shipped');



select * from order_details;

#1.Display all orders placed by Ravi.
select * from order_details where customer_name='ravi';

#2.Find orders with an amount greater than ₹1,000.
select * from order_details where amount>1000;

#3.Display only delivered orders.
select * from order_details where status='Delivered';

#4.Find the total amount of all orders.
select sum(amount) from order_details;

#5.Find the total amount spent by Ravi.
select sum(amount) from order_details where customer_name='ravi';

#6.Count how many orders are pending.
select count(*) from order_details where status='Pending';

#7.Change order 2's status to Shipping.
update order_details  set status='Shipping' where id=2;

#8.Delete a cancelled order with ID 104.
delete from order_details where id=4;

select * from order_details;

#9.Display orders from highest to lowest amount.
select * from order_details  order by amount desc;

#10.1. Find customers who have placed more than one order.
select customer_name,count(status) from order_details group by customer_name having count(status)>1;
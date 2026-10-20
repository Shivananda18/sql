create table amazon_table(
id int primary key,
product_name varchar(10),
product_price double,
 color varchar(10), 
 product enum("LED","Samsang","mobile"),
model_Id char(6), 
feature set("wifi","touch"),
 warrenty varchar(10),
 isAvailable boolean,
 Manufactured_Date date,
 foreign key(id) references product_info(id)
 );

insert into amazon_table values(1,"HP Laptop",1000.00,"Black","mobile",'ddsd10','wifi,touch',"2 years",true,'2026-10-07');
insert into amazon_table VALUES(2,'Shampoo',25000.10,'white','Samsang','sam205','wifi','1 years',TRUE,'2026-10-08');
insert into amazon_table values(3,"HP Laptop","2000.00","merun","mobile","boat95",null,"1 years",true,'2027-10-9');
insert into amazon_table values(4,"head set",5000.00,"blue",null,"446h",'wifi',"1 year",true,'2026-9-17');
insert into  amazon_table values(5,"HP Laptop",1500.00,"balck","mobile","64jh",'wifi',"6 month",1,'2026-10-12');
insert into  amazon_table values(6," LED Bulb",1500.00,"balck","mobile","64jh",'wifi',"6 month",1,'2026-10-12');
insert into amazon_table values(7,' Speaker',1600.00,"balck","mobile","64jh",'wifi',"6 month",1,'2026-10-12');
insert into  amazon_table values(8,"HP Laptop",1500.00,"balck","mobile","64jh",'wifi',"6 month",1,'2026-10-12');
insert into  amazon_table values(9," LED Bulb",1500.00,"balck","mobile","64jh",'wifi',"6 month",1,'2026-10-12');
insert into amazon_table values(10,' Speaker',1600.00,"balck","mobile","64jh",'wifi',"6 month",1,'2026-10-12');

 select * from amazon_table;
 
delete from amazon_table where id=6;

 #cross join Combines every row of one table with every row of another table.
select * from product_info as pi cross join amazon_table as ama on pi.id=ama.id; 

# INNER JOIN: Combines matching rows from both tables.
select * from product_info as pi inner join amazon_table  as ama on pi.product_name=ama.product_name; 

#FULL OUTER JOIN: Returns all rows from both tables, including unmatched rows.
select * from product_info as pi  left join amazon_table as ama on pi.product_name=ama.product_name
union
select * from product_info as pi right  join amazon_table as ama on pi.product_name=ama.product_name;

#left join: Returns all rows from the left table and matching rows from the right table.
select * from product_info as pi left join amazon_table as ama on pi.product_name=ama.product_name;	

#right join : RIGHT JOIN: Returns all rows from the right table and matching rows from the left table.
select * from product_info as pi right join amazon_table as ama on  pi.product_name=ama.product_name;	


#String Function
	select upper(product_name),upper(product_price) from amazon_table;
    select  lower(Product_name),lower(product_price) from amazon_table;
    select concat(Product_name,product_price) from amazon_table;
    select trim(product_name), trim(product_price) from amazon_table;
    select substring('Speaker',2,4) from amazon_table;
        
select * from amazon_table;

# sub query

select * from product_info where product_name in (select distinct  product_name from amazon_table);
select * from amazon_table where product_name in(select distinct product_name from product_info);

select max(product_price ) from amazon_table where product_price <(select max(product_price) from  amazon_table where product_price <(select  max(product_price) from amazon_table));
select min(product_price) from amazon_table where product_price > (select min(product_price) from amazon_table where product_price > (select min(product_price) from amazon_table));



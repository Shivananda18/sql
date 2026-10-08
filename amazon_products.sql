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
 Manufactured_Date date
 );

desc amazon_table;

insert into amazon_table values(1,"Titan",1000.00,"Black","mobile",'ddsd10','wifi,touch',"2 years",true,'2026-10-07');

INSERT INTO amazon_table VALUES(2,'Titan',25000.10,'white','Samsang','sam205','wifi','1 years',TRUE,'2026-10-08');

insert into amazon_table values(3,"powerBank","2000.00","merun","mobile","boat95",null,"1 years",true,'2027-10-9');

insert into amazon_table values(4,"head set",5000.00,"blue",null,"446h",'wifi',"1 year",true,'2026-9-17');

insert into  amzon_table values(5,"airpodes",1500.00,"balck","mobile","64jh",'wifi',"6 month",1,'2026-10-12');
select * from amazon_table;

rename table amazon_table to product_details;







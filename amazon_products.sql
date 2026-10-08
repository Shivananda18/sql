create table amazon_table(
id int,
product_name varchar(10),product_price double, color varchar(10), product enum("LED","Samsang","mobile"),
model_Id char(6), feature set("wifi","touch"), warrenty varchar(10),isAvailable boolean,yearOfManufactured_Date date);

desc amazon_table;

insert into amazon_table values(1,"Titan",1000.00,"Balck","mobile",'ddsd10',"wifi,touch","2 years",true,'2026-10-07');

select * from amazon_table;
create table cold_drinks_info(
id int,
name varchar(100),
price double,
Flavour varchar(100),
unit_in_ml int,
Shelf_Life varchar(50),
countryOfOOrigin varchar(50)
);

desc cold_drinks_info;
select * from cold_drinks_info;

insert into cold_drinks_info values(1,"Natural Coconut Cola Soft Drink",250.00,"Coco Nut Cola",250,"186 days","India");
insert into cold_drinks_info values (2,"Fresh Lemon Lime Soft Drink", 200, "Sprite",250, "180 days", "India");
insert into cold_drinks_info values(3, "Orange Flavoured Soft Drink", 180, "Fanta",250, "180 days", "India");
insert into cold_drinks_info values(4, "Refreshing Cola Soft Drink", 220, "Coca-Cola", 300, "180 days", "India");
insert into cold_drinks_info values(5, "Mango Flavoured Soft Drink", 150, "Maaza",250, "180 days", "India");
insert into cold_drinks_info values(6, "Jeera Masala Soft Drink", 120, "Jeera Soda",250, "120 days", "India");

#insert single data for single column
insert into cold_drinks_info(name) values("mirinda");

#insert single data for multiple column
insert into cold_drinks_info (id,name,price) values(10,"coco cola",40);

#insert multiple data for single column
insert into cold_drinks_info(name)values("mango flavour"),("Natural Coconut Cola Soft Drink"),("Refreshing Cola Soft Drink");

#inserting mutiple row data for multiple column
insert into cold_drinks_info(id,name,price,Flavour,Unit_in_ml,Shelf_Life) values(7,"grey soft drink","180","greyps","200","160 days"),
(8, "Mango Flavoured Soft Drink", "150", "Maaza", 250, "180 days"),(9, "Orange Flavoured Soft Drink", "180", "Fanta", 250, "180 days");

#add new single column  for tabel
alter table cold_drinks_info add StorageTips int;

#add new multiple column for table 
alter table cold_drinks_info add column(DietPreference varchar(100),Descriptio varchar(200));

#Rename single existing column
alter table cold_drinks_info rename column Shelf_Life to expireDate ;
alter table cold_drinks_info rename column price to money;

#Rename multiple existing column
alter table cold_drinks_info rename column expireDate to Shelf_Life,rename column money to price;

#modify the single column dataType
alter table cold_drinks_info modify price float;

#modify the multiple column dataType
alter table cold_drinks_info modify price double,modify countryOfOOrigin varchar(100),modify isAvailable boolean;

#drop a single column in table
alter table cold_drinks_info drop FSSAILicense;

#drop multiple column in a table
alter table cold_drinks_info drop countryOfOOrigin,drop DietPreference,drop Descriptio;

select * from cold_drinks_info;

alter table soft_drink add isAvailable boolean;
alter table soft_drink add FSSAILicense varchar(150);

alter table soft_drink modify isAvailable int;
alter table  cold_drinks_info modify isAvailable boolean,modify countryOfOOrigin char(100);


alter table soft_drink rename cold_drinks_info;

#delete table
drop table cold_drinks_info;





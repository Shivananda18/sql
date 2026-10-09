create table products_info(
id int,
productname varchar(10),
price double,
batarycapacity varchar(25),
RAM varchar(50),
processorType varchar(50),
bataryType varchar(100),
warranty varchar(20)
);
desc products_info;

insert into products_info values(1,"nokia",1019.00,"800 mAh","32 GB","SC65ER","Lithium ION","1 year");
INSERT INTO products_info VALUES (2,"Samsung",1499.00,"1000 mAh","16 MB","Guru 1200","Lithium Ion","2 year");
INSERT INTO products_info VALUES (3,"Lava",1150.00,"1200 mAh","32 MB","A1 Flex","Lithium Polymer ","1.5 year");
INSERT INTO products_info VALUES (4, "JioPhone", 1999.00, "2000 mAh","4 GB","F320B","Lithium Ion","2 year");
INSERT INTO products_info VALUES (5, "Itel",999.00,"1000 mAh","8 MB","it2163","Lithium Ion","1 year");
INSERT INTO products_info VALUES (6, "Micromax", 1249.00, "1750 mAh", "32 MB", "X741", "Lithium Polymer ","2.5 year");
INSERT INTO products_info VALUES (7, "Nokia", 1649.00, "1150 mAh", "128 MB", "105 4G", "Lithium Polymer ","2year");

drop table products_info;
select * from products_info;
delete from products_info where id=3;

rename table products_info to products_Details;
ALTER TABLE finance_info 
DROP COLUMN is_approved;

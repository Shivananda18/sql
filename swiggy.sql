create table item_info(
id int primary key,
item_name varchar(50),
item_price float,
item_number bigint(40),
isAvialble boolean,
review varchar(50),
discount varchar(40)
);

desc item_details;

insert into item_info values(1,"biryani",150.0,225256828225,true,"good","25%");
insert into item_info values(2,"egg_rice",100,5421356458,true,"tasty","10%");
INSERT INTO item_info VALUES (3, "fried_rice", 120.0, 9845123654, true, "delicious", "10%");
INSERT INTO item_info VALUES (4, "chicken_kebab", 180.0, 7894561230, true, "crispy", "15%");
INSERT INTO item_info VALUES (5, "paneer_butter_masala", 160.0, 6541239870, true, "creamy", "12%");
INSERT INTO item_info VALUES (6, "roti", 15.0, 3214569870, true, "soft", "5%");
INSERT INTO item_info VALUES (7, "masala_dosa", 60.0, 4561237890, true, "perfect", "10%");
INSERT INTO item_info VALUES (8, "tandoori_chicken", 280.0, 1593574862, true, "spicy", "20%");
INSERT INTO item_info VALUES (9, "veg_manchurian", 110.0, 7539514682, true, "tangy", "10%");
INSERT INTO item_info VALUES (10, "dal_tadka", 90.0, 8529637410, true, "homely", "8%");
INSERT INTO item_info VALUES (11, "gulab_jamun", 40.0, 9638527410, true, "sweet", "5%");
INSERT INTO item_info VALUES (12, "cold_drink", 30.0, 1472583690, true, "chilled", "0%");


select * from item_details; # printlnt the table data 

alter table item_info add is_exist boolean; #add new coloumn name

alter table item_info drop isAvialble; # drop the existing coloumn name

alter table item_info modify is_exist int; # modifying the existing dataType

alter table item_info rename column is_exist to isAvailable; # rename the existing column_name to new column_name

alter table item_info add column (col1 int , colo2 double ,col3 varchar(100),col4 boolean) ;  #add multiple column in a single table

alter table item_info drop col1;
alter table item_info drop colo2; # delete the single existing column.

alter table item_info drop col3,drop col4; # delete or drop the multiple column in a table.

alter table item_info modify is_exist double; # modify the single column datatype.

alter table item_info modify is_exist boolean, modify review varchar(1000), modify discount varchar(200); # modify the existing column datatype into new datatype.

alter table item_info rename column item_number to item_value; #rename the singfle existing coloumn to new coloumn name .

alter table item_info rename column item_number to item_numbers, rename column discount to offer,rename column is_exist to old_date; # rename the multiple  existing column_name to new column_name. 

alter table item_info rename item_details; # rename the table


INSERT INTO item_details VALUES (13, "chicken_kebab", 180.0,527894561230, 'ljnj', "crispy",1,100),
(14, "chicken_tandoori", 280.0,89703271958970327195, 'hbiy', "sweet",0,200);

#imnserting a multi row  data for all column
INSERT INTO item_details VALUES (15, "chicken_kebab", 180.0,527894561230, 'ljnj', "crispy",1,100),
(16, "chicken_tandoori", 280.0,897032719589703295, 'hbiy', "sweet",0,110); 

delete from item_details where id=15;
delete from item_details where id=16;

#inserting a single row data for multiple column
insert into item_details (id  ,item_name , item_price  ) values(20,"kalmi",200.0);
select* from item_details where id=20;

insert into item_details (id,offer) values(18,"25 %");

# inserting a multiple row for 2 column
insert into item_details(id, offer) values (19,"30%"),(21,"40%"),(23,"50%");
desc item_details;

select * from item_details;










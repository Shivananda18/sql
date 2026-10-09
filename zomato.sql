
create database zomato_db;
use zomato_db; 

create table mcDonaldsitems(
id int auto_increment primary key,
item_name varchar(100),
price double,
mobileNumber varchar(10),
address varchar(150)
);

insert into mcDonaldsitems values(1,"Mc chicken burger",394,7760291885,"Bangalore");
insert into mcDonaldsitems values(2,"chicken maharaj mc burger",350,8970327195,"bangalore");

select * from mcDonaldsitems;

insert into mcDonaldsitems(price ,mobileNumber) values(100,9844938087);

alter table mcDonaldsitems add isReady boolean;
alter table mcDonaldsitems add (col1 boolean,col2 boolean);

alter table mcDonaldsitems drop isReady;
alter table mcDonaldsitems drop col1 ,drop col2;

alter table mcDonaldsitems rename column mobileNumber to MobNu;
alter table mcDonaldsitems rename column item_name to name;
alter table mcDonaldsitems rename column MobNu to mobileNumber,rename column name to item_name;

alter table mcDonaldsitems modify column mobileNumber long;
alter table mcDonaldsitems modify column mobileNumber varchar(50),modify column id char(3);

delete from mcDonaldsitems where id='2';
select * from mcDonaldsitems;
desc table mcDonaldsitems;



drop table mcDonaldsitems;
drop database zomato_db;

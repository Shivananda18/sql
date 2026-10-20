create database adhars_db;
use adhars_db;

create table adhar_details(
id int primary key,
name varchar(20) not null,
mobile_number bigint,
email varchar(20) unique
);

insert into adhar_details values(1,"abc",760291885,"abc@gmail.com");
insert into adhar_details values(3,"xyhbiyz",96098949291837,"hjbuu@gmail.com");
insert into adhar_details values(8,"xyhbiyz",96098949291837,"hhjnbgbuu@gmail.com");



select * from adhar_details;

set autocommit=0;
rollback;



drop table adhar_details;
drop database adhars_db;



create table adhar_details(
id int primary key,
adhar_number bigint unique,
first_name varchar(50) not null,
last_name varchar(55) not null,
email varchar(60) not null,
mobile_number int check (mobile_number>0) ,
countryOfOrigin varchar(20) default 'India'
);

insert into adhar_details values(1,461418484684,"abc","t",'abc@gmail.com',897032719,'india');
insert into adhar_details values(2,461418484695,"xyz","s","xyz@gmail.com",776029185,'india');
insert into adhar_details values(3,4614184895,"xyz","s","pyz@gmail.com",776029185,'india');

desc  adhar_details;

create table addres_details(
id int,
adhar_id int primary key,
foreign key(id) references adhar_details(id)
);

drop table addres_details;
select * from addres_details;
insert into addres_details values(1,46141895);
insert into addres_details values(2,98449320);
insert into addres_details values(3,8080000);

update  addres_details set adhar_id=2515888 where id=2;

select * from adhar_details;

drop table address_details;




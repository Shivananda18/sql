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



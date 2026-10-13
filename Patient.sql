create database patient_db;
use patient_db;

drop  database patient;

create table patient(
id int primary key,
patient_name varchar(20) not null,
pateint_age int check (pateint_age>5),
mobile_number bigint not null,
address varchar(100) not null,
isdeasea boolean
);

insert into patient values(1,'chetan',25,7760291885,'davangere',1);
insert into patient values(2,'barath',27,5188551848,'banglore',0);
insert into patient values(3,'Kiran','30',1425548581,'darwada',1);
insert into patient values(4,'Alok','21',2184854848,'Mandya',0);


select * from patient;

delete from patient where id=4;

set autocommit=0;

insert into patient values(5,'Kiran',30,1425548581,'darwada',1);
insert into patient values(6,'Alok',21,2184854848,'Mandya',0);

update patient set patient_name='sagar' where id=5;
update patient set patient_name='nagaraj' where id=6;

rollback; #ROLLBACK is used to undo changes made in the current transaction that have not yet been committed.
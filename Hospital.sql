create database  Hospital_db;
use  Hospital_db;

drop database doctor_db;

create table doctor(
id int primary key,
doctro_Fname varchar(20) not null,
doctor_Lname varchar(20) not null,
Mobile_number bigint not null unique,
email   varchar(30) not null unique,
fees double not null 
);

drop table doctor;
select * from doctor;
desc table doctor;

insert into doctor values(1,'chetan','s',7760291885,'chetan@gmail.com',1000);
insert into doctor values(2,'barath','K R',5188551848,'barath@gmail.com',2000);
insert into doctor values(3,'Kiran','Patel',1425548581,'kiran@gmail.com',1500);
insert into doctor values(4,'Alok','L K',2184854848,'alok@gmail.com',3000);

#Changes are not saved automatically. Use COMMIT to save them.
set autocommit=0; 

insert into doctor values(7,'Pradeep','T',9844938087,'xyz@gmail.com',4000);
insert into doctor values(8,'Gireesh','T',8984410295,'xya@gmail.com',45000);

update doctor set email='pradeept@gmail.com' where id=7;
update doctor set email='gireesht@gmail.com' where id=8; 

select * from doctor;

delete from doctor where id=7;
delete from doctor where id=8;



select * from doctor;

#Changes are saved automatically after each statement on mysql server.
set autocommit=1; 

 rollback;







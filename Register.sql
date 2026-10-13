create database Register_db;
use Register_db;
drop database Register_db;
create table register(
id int primary key,
fisrt_Name varchar(100),
last_name varchar(100) not null,
mobile_Number long check (mobile_Number+1>0),
email_id varchar(200),
password varchar(150)
);
insert into register(id,mobile_Number) values(50,'0');
drop table register;
desc table register;
select *from register;

insert into register values(50,"shivu",'T','0','shivu@gmail.com',5421548818);
insert into register values(2,"pradee",'T',7760291885,'shivu@gmail.com',5421548818);
insert into register values(3,"pradee",'T',7760291885,'shivu@gmail.com',5421548818);
insert into register values(4,"pradee",'T',7760291885,'shivu@gmail.com',5421548818);
insert into register values(5,"pradee",'T',7760291885,'shivu@gmail.com',5421548818);
insert into register values(6,"pradee",'T',7760291885,'shivu@gmail.com',5421548818);
insert into register values(7,"pradee",'T',8970327195,'shivu@gmail.com',5421548818);
insert into register values(8,"pradee",'T',8970327195,'shivu@gmail.com',5421548818);
insert into register values(9,"pradee",'T',8970327195,'shivu@gmail.com',5421548818);




# AND operator 
select * from register where id=50 AND mobile_Number=7760291885 ;

# OR operator
select * from register where id=2 or mobile_Number=7760291885;

# NOT operator
select * from register where  not id=3 and not id=50;

# BETWEEN OPERATOR -- select for given Range
select * from register where  id between 3 and 6;

# IN operator-- matches value in the list.it geves the given range.
select * from register where mobile_Number in('0',8970327195,100); 

# NOT IN --- to negate the given range
select * from register where id not in (50,6);

# ORDER BY ASC 
select * from register order by id asc;

# ORDER BY desc
SELECT * FROM REGISTER ORDER BY ID DESC;

#aggregate function -- perform function calculation operation on a set of value and it returns single value
#COUNT 
select count(id) from register;

#MAX
select MAX(mobile_number) from register;

#MIN
select MIN(mobile_number) from register;

#AVG -- total value/no of value
select avg(id) from register;
select AVG(mobile_number) from register;

#SUM -- total
select sum(id) from register;

select * from register;


#LIMIT --- set a upper limit on a number of row data to be returned.
select * from register where  id limit 2;
select * from register where  id>3 limit 6;

select mobile_number, max(id) from register
group by mobile_number;
select mobile_number, count(id) from register
group by mobile_number;

select id, count(mobile_number)
from register group by id;

select mobile_number ,password, count(id) from register
group by mobile_number,password;

select * from register;


select * from register where mobile_Number=7760291885;

delete from register where id=2;
select distinct* from register;
select distinct fisrt_Name from register;
desc table register;
drop table register;


desc table temp;
select * from temp;
create table temp(
id int primary key,
foreign key(id) references register(id)
);
drop table temp;
insert into temp values(1);


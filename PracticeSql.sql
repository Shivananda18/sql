create database employee_db;
use employee_db;

create table employee(
id int primary key,
emp_name varchar(20),
department varchar(10),
salary int,
manager_id int
);

insert into employee values(1,'kalmesh','IT',20000,null);
insert into employee values(2,'shivu','IT',25000,5);
insert into employee values(3,'prajwal''IT',30000,2);
insert into employee values(4,'Barath','HR',60000,null);
insert into employee values(5,'ajay','non IT',30000,8);
insert into employee values(6,'akash','Non IT',30000,9);
insert into employee values(7,'kumar','IT',61000,3);

select * from employee;

# 1.find  the second max salary
select distinct max(salary) from employee where salary<(select distinct max(salary) from employee);

# 2.find the second min salary
select distinct min(salary) from employee where salary>(select distinct min(salary) from employee);

# 3.Find all employees earning more than the average salary of the company.
select avg(salary) from employee;
select * from employee where salary>(select avg(salary) from employee);

# 4.Find the highest-paid employee in each department.
select department,max(salary) from employee group by department;

# 5.Find the lowest-paid employee in each department.
select department,min(salary) from employee group by department;

# 6.Find employees who earn more than their department's average salary.
select * from employee where salary>(select avg(salary) from employee where department=department);

# 7.Find the employees who have the same salary.
(select salary from employee group by salary having count(*)>1);

# 8.Find the third-highest distinct salary without using LIMIT.
select  max(salary) from employee where salary<(select  max(salary)  from employee where salary<(select max(salary) from employee));

# 9.Find employees whose salary is greater than their manager's salary.
select e.* from employee as e join employee  m on m.manager_id=m.manager_id where e.salary>m.salary;

# 10.1. Display each employee's name alongside their manager's name.
SELECT e.emp_name AS emp_name, m.emp_name AS manager_name
FROM employee e
LEFT JOIN employee m
    ON e.manager_id = m.employee_id;
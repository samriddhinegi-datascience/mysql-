create database company1;
use company1;
create table employees(
id int,
name varchar(100),
position varchar(100), 
salary decimal(10,2),
date_of_joining date);

insert into employees(id,name,position, salary,date_of_joining)
values(1,"John Doe", "Manager", 55000.00, "2020-01-15"),
(2,"Jane Smith", "Developer", 48000.00, "2019-07-10"),
(3,"Alice Johnson", "Designer", 45000.00, "2021-03-22"),
(4,"Bob Brown", "Developer", 50000.00, "2018-11-01");
Select * from employees where position="Developer";
Update employees
set salary=46000.00 where id=3;
delete from employees where id=4;
Select * from employees where salary>48000.00;
Alter table employees
add email varchar(200);
Update employees
set email="john.doe@company.com" where id=1;
Select name, salary from employees;
Select count(*) from employees where date_of_joining>"2020-01-01";
Select * from employees order by salary desc;
alter table employees
drop column email;
Select * from employees where salary=(select Max(salary) from employees);

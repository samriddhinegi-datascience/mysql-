create database staff;
use staff;
create table employee(
emp_id int,
first_name varchar(50),
last_name varchar(50),
department varchar(50),
salary int,
hire_date date);
insert into employee (emp_id, first_name, last_name, department, salary, hire_date)
values (1,"John","Doe","IT",60000.00,'2019-01-10'),
(2,"Jane","Smith","HR",55000.00,'2018-03-05'),
(3,"Emily","Jones","IT",62000.00,'2020-07-23'),
(4,"Michael","Brown","FINANCE",70000.00,'2016-05-14'),
(5,"Sarah","Davis","FINANCE",69000.00,'2017-11-18'),
(6,"David","Johnson","HR",48000.00,'2021-09-10');

 #Q1 Find the average salary of employees in each department.
SELECT department, avg(salary) as "Average Salary of employee" from employee group by department;

#Q2. Find the total number of employees hired after 2019.
SELECT count(hire_date) as "employees hired after 2019" from employees where hire_date >
"2019-01-10";

#Q3. List the departments and the total salary of all employees in each department, ordered by the total salary.
SELECT department, sum(salary) as "total salary of all employees in the department" from employee group by department order by sum(salary);

#Q4. Find the highest salary in the Finance department.
SELECT department, max(salary) as "highest salary" from employee where department = "FINANCE";

#Q5. Get the top 3 highest-paid employees.
SELECT first_name,last_name, max(salary) as "top 3 highest-paid employees" from employee group by first_name,last_name order by max(salary) desc limit 3;

#Q6. Find the department with the minimum average salary.
SELECT department, avg(salary) as "Average Salary of employee" from employee group by department order by avg(salary) asc limit 1;

#Q7. Display the total number of employees in each department, ordered by the number of employees.
SELECT department, count(emp_id) as "total number of employees" from employee group by department order by count(emp_id);

#Q8. Find the average salary of employees who were hired before 2020.
SELECT hire_date, avg(salary) as "average salary" from employee group by hire_date having hire_date < "2020-07-23";

#Q9. List the names of employees in the IT department ordered by hire date, with the most recently hired employees first.
SELECT first_name,last_name, max(hire_date) as "employees in the IT department" from employee where department = "IT" group by first_name,last_name order by max(hire_date) desc;

#Q10. Find the sum of salaries for all employees hired after January 1, 2019, ordered by salary.
Select sum(salary) as "Sum_Of_Salary" from employee where hire_date > "2019-01-10" order by salary;

#Q11. Get the employee with the lowest salary in the HR department.
SELECT department, min(salary) as "lowest salary" from employee where department = "HR";

#Q12. Find the total salary paid to employees in each department, but limit the result to the top 2 highest-paying departments.
SELECT department, sum(salary) as "total salary of all employees in the department" from employee group by department order by sum(salary) desc limit 2;

#Q13. List all employees hired after 2018, ordered by salary, and show only the first 4 employees.
SELECT first_name,last_name from employee where hire_date > "2018-03-05" order by salary limit 4;

#Q14. Find the highest salary in the IT department, but limit the results to the top 1 result.
SELECT department, max(salary) as "highest salary" from employee where department = "IT";

#Q15. Get the average salary of employees in each department and list only departments with an average salary greater than $60,000.
SELECT department, avg(salary) as "Average Salary of employee" from employee group by department having avg(salary) > 60000;

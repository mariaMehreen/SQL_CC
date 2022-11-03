create database employees;
use employees;
create table staff(
staff_id int(100) primary key,
staff_name varchar(50),
supervisor_id int(100),
salary bigint(200),
join_date DATE,
dept_id int(100)

);

create table department(
dept_id int(100) primary key,
dept_name varchar(100)
);
insert into staff values((4,'Maria', 13, 6000, '2022-10-26', 10),
(5,'Mehreen',13, 5000,'2022-10-25', 10));
select avg(salary) from staff where dept_id = 10;
select staff_id, staff_name, salary, dept_id from staff where salary > (select avg(salary) from staff where dept_id=10) and dept_id =10;
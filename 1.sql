create database Hands_on;
use  Hands_on;
create table salesman
(
SALESMAN_ID NUMERIC(5) primary key,
NAME varchar(30),
CITY varchar(15),
COMMISSION decimal(5,2)
);
create table orders
(
ORD_NO numeric(5) primary key,
PURCH_AMT decimal(8,2),
ORD_DATE date,
CUSTOMER_ID numeric(5),
SALESMAN_ID numeric(5)
);

alter table orders
add foreign key (SALESMAN_ID) references salesman(SALESMAN_ID);




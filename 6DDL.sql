create database ddl6;
use  ddl6;

create table customer(
PHONE_NUMBER varchar(10) primary key not null,
CUSTOMER_NAME varchar(20),
EMAIL_ID varchar(35),
ADDRESS varchar(50)
);

create table plan(
PLAN_AMOUNT int(6) primary key not null,
VALIDITY_INDAYS int(4),
LOCAL_VOICE_INMINS_PERDAY_SN int(3),
LOCAL_VOICE_INMINS_PERDAY_ON int(3),
STD_VOICE_INMINS_PERDAY_SN int(3),
STD_VOICE_INMINS_PERDAY_ON int(3),
DATA_INGB_PERDAY double(3,1),
SMS_PERDAY int(3),
PLAN_TYPE varchar(10)
);

create table subscription(
PHONE_NUMBER varchar(10),
PLAN_AMOUNT int(6),
RECHARGE_DATE date,
EXPIRY_DATE date
);

select * from plan;

alter table subscription
add foreign key(PHONE_NUMBER)references customer(PHONE_NUMBER),
add foreign key(PLAN_AMOUNT)references PLAN(PLAN_AMOUNT);
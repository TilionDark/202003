﻿create table employe(
empid int Identity(1,1) not null primary key,
employeeName varchar(250) not null,
gender varchar(50) not null,
mobileNumber bigint not null,
email varchar(250) not null,
username varchar(250) not null,
password varchar(250) not null
);

create table rooms(
roomid int Identity(1,1) primary key,
roomNo varchar(50) not null unique,
roomType varchar(50) not null,
bed varchar(50) not null,
price bigint not null,
booked varchar(50) default 'NO'
);

create table cusReg(
cid int Identity(1,1) primary key,
firstName varchar(250) not null,
lastName varchar(250) not null,
gender varchar(50) not null,
dob varchar(50) not null,
addres varchar(250) not null,
idNumber varchar(50) not null,
contact bigint not null,
checkIn varchar(250) not null,
checkOut varchar(250),
chekOut varchar(250) not null default 'NO',
roomid int not null,
dayss int not null,
foreign key (roomid) references rooms(roomid)
);

create table total(
billID int Identity(1,1) primary key,
cusName varchar(250) not null,
advance int null,
servic int null,
reduce int null,
discount int null,
room int not null,
total int not null,
dueToPay int not null,
chekOut varchar(50) not null default 'NO'
);



create table onlineReg(
cid int Identity(1,1) primary key,
firstName varchar(250) not null,
lastName varchar(250) not null,
gender varchar(50) not null,
dob varchar(50) not null,
addres varchar(250) not null,
idNumber varchar(50) not null,
contact bigint not null,
checkIn varchar(250) not null,
verification varchar(250) not null default 'pending',
roomType varchar(50) not null,
bed varchar(50) not null
);


insert into onlineReg (firstName,lastName,gender,dob,addres,idNumber,contact,checkIn,verification,roomType,bed) values ('cccc','cccc','Female','4/15/1998','kandy','981062116V',771947328,'6/7/2021','pending','A/C','Double');
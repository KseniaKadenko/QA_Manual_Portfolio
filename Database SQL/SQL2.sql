CREATE DATABASE test;
USE test;

create table User1 (
UserID int primary key not null auto_increment,
UserName varchar(20) not null,
Phone long,
DeliveryAddress varchar(20)
);

create table Order1 (
OrderID int primary key not null auto_increment,
UserID int,
foreign key (UserID) references User1(UserID),
OrderSum int
);

insert into User1 (UserName, Phone, DeliveryAddress) values
('Kolya', 111, 'Kyiv'),
('Petya', 222, 'Odesa'),
('Sasha', 333, 'Lviv'),
('Muzik', 444, 'Chernigiv');

select * from User1;

insert into Order1 (OrderID, UserID, OrderSum) values
(3434, 1, 1000),
(5454, 2, 20000),
(5741, 3, 2500),
(5689, 4, 4520);

select * from Order1;

select UserName, Phone, DeliveryAddress from User1 where UserName = 'Muzik';

select * from User1 where UserName like '%a';

select UserID, OrderSum from Order1 where OrderSum > 2000;

select count(*) from order1;

select sum(OrderSum) from Order1;

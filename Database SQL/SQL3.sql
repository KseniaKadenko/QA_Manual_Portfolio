USE test;

create table Workers (
UserID int primary key not null auto_increment,
UserName varchar(20) not null,
HireDate date,
Profession varchar(20)
);

insert into Workers (UserName, Profession) values
('Kolya', 'QA'),
('Petya', 'Dev'),
('Sasha', 'QA'),
('Kolya', 'PM'),
('Anya', 'Dev'),
('Tanya', 'QA'),
('Sofi', 'QA'),
('Katya', 'Dev'),
('Vanya', 'QA'),
('Sasha', 'QA'),
('Max', 'QA');

Select * from Workers;

Select * from Workers where Profession = 'QA' Order by HireDate;

Select * from Workers where Profession = 'QA' Order by HireDate desc limit 5;
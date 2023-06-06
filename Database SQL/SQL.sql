create Database Universities;
use Universities;

create table University
(
universityID int primary key not null auto_increment,
universityName varchar(20),
city varchar(20)
)

create table Faculty
(
facultyID int primary key not null auto_increment,
facultyName varchar(20)
)

create table GroupStudent
(
groupID int primary key not null auto_increment,
groupName varchar(20),
facultyID int,
universityID int,
foreign key (facultyID) references Faculty(facultyID),
foreign key (universityID) references University(universityID)
)

create table Teacher
(
teacherID int primary key not null auto_increment,
teacherName varchar(20),
feacherSurname varchar(20),
universityID int,
foreign key (universityID) references University(universityID)
)

create table Student
(
studentID int primary key not null auto_increment,
studentName varchar(20),
studentSurname varchar(20),
studentPhone long,
studentEmail varchar(50),
groupID int,
foreign key (groupID) references GroupStudent(groupID)
)

use Universities;
SELECT * FROM university;

SELECT studentName, studentSurname FROM student;

SELECT * FROM teacher WHERE teacherName = 'Іван';

SELECT * FROM groupstudent WHERE groupName > 300;

SELECT universityName FROM university WHERE universityName LIKE '%н%';

SELECT * FROM student ORDER BY studentName;

SELECT * FROM student ORDER BY studentName DESC;

SELECT * FROM student INNER JOIN groupstudent ON student.groupID = groupstudent.groupID;
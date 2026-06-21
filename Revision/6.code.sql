create database manytomany;

use manytomany;

create table students(id int primary key auto_increment, name varchar(255), age int) auto_increment = 1;
drop table students;
show tables;

insert into students(name, age)
values
("shubham", 28),
("raviraj", 23),
("ram", 21),
("sanket", 23),
("raju", 25),
("roshan", 26);

create table courses(id int primary key auto_increment, name varchar(255), fees int , duration int) auto_increment = 101;

insert into courses(name, fees, duration) values
("java", 13000, 6),
("python", 6000, 5),
("flutter", 7000, 7),
("php", 2000, 4),
("data science", 15000, 6),
("c++", 18000, 8);

show tables;
select * from students;
select * from courses;
show tables;

create table enrollment(s_id int, c_id int);

insert into enrollment(s_id, c_id) 
values
(1, 101),
(1, 102),
(1, 104),
(2, 103),
(2, 105),
(3, 101),
(3, 106),
(4, 102),
(4, 104),
(5, 106),
(5, 105),
(6, 104);

desc students;
desc courses;
desc enrollment;
alter table students rename column name to s_name; 
select * from enrollment;

select s_name, name from students join enrollment on students.id = enrollment.s_id join courses on courses.id = enrollment.c_id;

select s_name as student, count(*) as enrollment_count from students join enrollment on students.id = enrollment.s_id join courses on courses.id = enrollment.c_id group by s_name;

select s_name as student, count(name) as enrollment_count from students join enrollment on students.id = enrollment.s_id join courses on courses.id = enrollment.c_id group by s_name;

select * from courses;









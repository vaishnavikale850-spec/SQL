create database onetomany;

use onetomany;

create table students(id int unique not null auto_increment, name varchar(255) not null, city varchar(255), age int);

show tables;

insert into students(name, city, age)values
("shubham", "pune", 28),
("rohan","mumbai", 22),
("sanket", "satara", 23),
("rajat", "pune", 25),
("ram", "delhi", 20);

select * from students;
drop table courses;
create table courses(c_id int primary key auto_increment, s_id int , c_name varchar(255), duration int , fees int, foreign key(s_id) references students(id)) auto_increment = 101 ;

insert into courses (s_id, c_name, duration, fees) values
(1,"java", 6, 13000),
(1, "react", 4, 12000),
(1, "mysql", 2, 5000),
(2, "python", 5, 15000),
(2, "Flutter", 6, 6000),
(3, "data science", 8, 30000),
(4, "spring boot", 5, 20000);

select * from courses;

select name from students;
select c_name from courses;
select name, c_name from courses join students on courses.s_id = students.id; 
select name, city from students where city = "pune";

select c_name , fees from courses where fees > 15000;
select count(*) as total_students from students;
select max(fees) as max_fee from courses;
select min(duration) as min_time from courses;

select name, sum(fees) from courses join students on courses.s_id = students.id group by name;

-- group by apply unique field vr hota
select name , count(c_name) from courses join students on courses.s_id = students.id group by name;

select name, age from students where age > 21 ;
select name, age from students where age > 21 order by age desc;
desc students;
desc courses;

select name from courses join students on courses.s_id = students.id where c_name = "java";

select avg(fees) from courses;

select city from students; 

select city , count(*) from courses join students on courses.s_id = students.id group by city;

select * from courses;

-- Constraints = not null , unique, auto_increment(single field only not for multiple in singgle table), default, is null , is not null 
-- Clauses = from, join, where, group by, having, select, distinct, order by, limit (9 clauses) 
-- Aggregate Function = max, min, avg, count,sum (group by compulsory)
create database clg;
use clg;


show databases;

create table students(id int unique not null auto_increment, name varchar(255) not null , marks int default 0, gender varchar(255) not null, city varchar(255) not null);

insert into students(id, name, marks, gender, city)values
(1,"shubham", 20, "male", "satara"),
(2,"sanket", 18, "male","bengaluru"),
(3, "ram", 16, "male","pune"),
(4, "radha", 19, "female", "satara"), 
(5, "rakhi", 14, "female","mumbai"),
(6, "raju", 10, "male", "sangali");

insert into students(name, marks, gender, city)values
("sita", 19, "female", "satara"),
("abhi", 18, "male","bengaluru");
desc students;
select * from students;

desc students;

select * from students order by marks; -- less marks on top
select * from students order by marks desc; -- max marks on top
select name from students order by marks; -- alphabetically arrange
select * from students order by marks desc limit 3; -- topper 
select * from students order by marks limit 3; -- topper from bottom

select * from students where marks > 15; -- random order
select * from students where marks > 15 order by marks; -- order in asc on marks
select * from students where marks > 15 order by marks desc; -- order is desc on marks
select * from students where marks > 15 order by marks limit 3; -- top 3 asc order
select * from students where marks > 15 order by marks desc limit 3; -- 3 topper

select distinct marks from students where marks > 15 order by city, marks limit 3; -- top 3 asc order
select distinct(city) from students; 
select distinct(city), marks from students;  -- pairing of city & marks is unique
-- select marks, distinct(city) from students; -- nahi chalanar
select distinct(city), marks from students where marks > 15; 
select distinct(city), marks from students where marks > 15 order by city; 
select distinct(city), marks from students where marks > 15 order by city, marks limit 3; 

select distinct(city), marks from students where marks is null; 
select distinct(city), marks from students where marks is not null; 
-- 1 way
select name, marks from students order by marks desc limit 1;

-- 2 way

select name , marks from students where marks = (select max(marks) from students);
select name , marks from students where marks = (select min(marks) from students);

select max(marks), name from students group by marks, name limit 1 ;
-- this gives wrong output = select min(marks) , name from students group by marks, name limit 1;
-- select max(marks), name from students group by marks, name limit 1;
select avg(marks) from students; -- avg of entire table
select sum(marks) as sum from students;

select count(*), city , marks from students group by city, marks;
select count(*) as row_count from students; -- alies

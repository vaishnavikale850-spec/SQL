-- mysql -p -u root
-- create, use, insert, show db, show table, select , desc table_name, drop databse db ,drop table table_name
create database college;
use college;

show databases;

create table students(id int , name varchar(255), marks int , gender varchar(255), city varchar(255));

insert into students(id, name, marks, gender, city)values
(1,"shubham", 20, "male", "satara"),
(2,"sanket", 18, "male","bengaluru"),
(3, "ram", 16, "male","pune"),
(4, "radha", 19, "female", "satara"), 
(5, "rakhi", 14, "female","mumbai"),
(6, "raju", 10, "male", "sangali");

select * from students;

desc students;


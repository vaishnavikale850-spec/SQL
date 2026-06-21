create database details;
use details;
show databases;

create table student_data(id int primary key auto_increment, name varchar(255) not null);
insert into student_data(name)values
("sita"),
("abhi"),
("shubham"),
("sanket"),
("ram"),
("radha"), 
("rakhi"),
("raju");
select * from student_data;
show tables;

create table clg_data(id int primary key auto_increment, name varchar(255) not null, s_id int, foreign key(s_id) references student_data(id)) auto_increment = 101;
insert into clg_data(name, s_id)values
("kbp",1),
("kbp",2),
("keystone",3),
("kbp",4),
("yc",5),
("yc",6), 
("yc",7),
("kbp",8);

select * from clg_data;

select distinct(name) from clg_data;

select name from clg_data where id = 101;
select name from clg_data where id = 101;
alter table student_data rename column name to s_name;
desc clg_data;
desc student_data;
select name, s_name from clg_data join student_data on clg_data.s_id = student_data.id;

select name , s_name from clg_data left join student_data on clg_data.s_id = student_data.id where s_id is null;
select name , s_name from clg_data left join student_data on clg_data.s_id = student_data.id where s_id is not null;

select name , s_name from clg_data left join student_data on clg_data.s_id = student_data.id where s_id is not null;

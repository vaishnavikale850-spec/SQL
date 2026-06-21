create database onetoone;
use onetoone;

create table emp_data(id int primary key auto_increment, name varchar(255) not null , sal int default 20000);

insert into emp_data(name, sal)values
("shubham" ,30000),
("sanket", 15000),
("ram", 12000),
("radha", 25000),
("raju", 22000);

select * from emp_data;

drop table emp_data;

create table com_data(id int primary key auto_increment , c_name varchar(255), e_id int , foreign key(e_id) references emp_data(id)) auto_increment = 101;

show tables;

insert into com_data(c_name, e_id) values
("capg", 1),
("tcs", 2),
("infosys", 3),
("wipro", 4);

drop table com_data;

select * from com_data;

select c_name , name from com_data join emp_data on com_data.e_id = emp_data.id where emp_data.id = 2;

select c_name from com_data;

select c_name, count(*) from com_data group by c_name;

select sum(sal) from emp_data group by name;

select c_name, sum(sal) as total from com_data join emp_data on com_data.e_id = emp_data.id group by c_name;


select c_name ,sum(sal) as total from com_data join emp_data on com_data.e_id = emp_data.id group by c_name having sum(sal) > 15000;

select c_name , name, sal from com_data join emp_data on com_data.e_id = emp_data.id where sal < 15000;

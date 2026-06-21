create database transactions;
use transactions;

create table account(id int primary key auto_increment, accNo int, acc_holder varchar(255), amount int);

insert into account(accNo, acc_holder, amount)
values
(101, "ram", 100),
(102, "radha", 150),
(103, "arati", 200);

select * from account;

start transaction;

	update account set amount = amount + 50 where id = 2;

commit;
    
update account set amount = amount + 50 where id =6;
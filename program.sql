-- INSERT INTO student VALUES (1, "ram", 10),
--     (2,"Radha", 20),
--     (3,"Radha", 20);auto_increment

-- INSERT INTO student VALUES ("Raha", 45);
-- INSERT INTO student (name, rollno) VALUES 
--     ("Raha", 4),
--     ("radha", 5);

-- INSERT INTO student (name) VALUES ("raj");

-- ALTER table student add column phoneno int;  
-- ALTER table student drop column phoneno;

-- SELECT * FROM student;
-- 1. WHERE Clouse
-- select name, rollno FROM student WHERE name = "Raha"
-- select name, rollno FROM student WHERE name = "raha"


-- is equal (=) 
-- is not equal (!=)
-- is not equal (<>)
-- select name, rollno FROM student WHERE name = "raha";
-- select name, rollno FROM student WHERE name != "raha";
-- select name, rollno FROM student WHERE name<> "raha";

-- alter TABLE student add column age int default 20;
-- alter TABLE student modify column age int default 20;

-- SELECT * from student where rollno = 5;

-- select * from student WHERE rollno is null;

-- alter TABLE student modify column rollno int ;

-- SELECT name from student WHERE rollno is not null;
-- SELECT name from student WHERE rollno is null;

-- select name from student limit 1;
-- select * from student limit 1;

-- alter Table student modify COLUMN sal int not null default 100;
-- alter table emp modify COLUMN id int AUTO_INCREMENT;
-- INSERT INTO emp (name, email, sal, role ) VALUES 
--     ("Abhinav", "a@gamil.com", 100, "Trainer"),
--     ("Radha", "r@gmail.com", 120, "SDE2"),
--     ("Prasad", "p@gmail.com", 110, "HR Dept"),
--     ("Vaishnavi", "v@gmail.com", 130, "SDE3"),
--     ("Pooja", "pk@gmail.com", 118, "Web dev");
-- INSERT INTO emp (id , name, email, sal, role ) VALUES
--     (7, "null" , "k@gmail.com", 90, "Watchman"),

-- select * FROM emp where name = "Null";
-- select * FROM emp where name is null;

-- alter table emp add COLUMN city VARCHAR(100) DEFAULT "Pune";

-- select name from emp where role = "HR Dept";

-- INSERT INTO emp (name, email, sal, role ) VALUES 
--     ("Vaishnavi" , "vk@gmail.com", 90, "SDE2");

-- select distinct name from emp ;


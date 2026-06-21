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

-- Aggregate FUNCTION

-- 1. MAX
-- 2. MIN
-- 3. COUNT


-- CREATE DATABASE info;
-- USE info;
-- CREATE TABLE students (id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(255), marks INT NOT NULL);
-- INSERT INTO students VALUES 
--     (1, "Radha", 20),
--     (2,"Ram" , 19),
--     (3, "Abhi", 18),
--     (4, "Vaishnavi", 17),
--     (5, "Jay", 19);

-- SELECT name, marks from students order by marks desc limit 1;

-- select  name , MAX(marks) as maximum_marks from students group by marks , name limit 1;  

-- (select MIN(marks) as min_marks from students) this only give min marks not name and marks because of by using group by there is grouping on marks , name and then from that group we get the min marks this give error for aggregate function unable to execute complete query and throw error. So, we use this query for same.

-- select name , marks from students where marks = (select MIN(marks) as min_marks from students);

-- select count(*) as Total_Students from students;

-- select AVG(marks) as Avgrage_Performance from students;

-- select AVG(marks) as Avgrage_Performance , SUM(marks) as Total_marks_sum from students;

-- SELECT * from students;

-- Select names and give table name as marks below query...
-- select name marks from students where marks > 18;

-- select name , marks from students where marks > 18;


CREATE DATABASE university;
USE university;

CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(50),
city VARCHAR(50)
);

INSERT INTO student
(rollno, name,marks,grade,city)
VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv", 96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

SELECT name, marks FROM student;

SELECT * FROM student;

SELECT DISTINCT city FROM student;

SELECT * FROM student WHERE marks > 80;




SELECT * FROM student WHERE city = "Pune";


SELECT * FROM student WHERE marks > 80 AND city = "Mumbai";

SELECT * FROM student WHERE marks+10 > 100;

SELECT * FROM student WHERE marks = 93;

SELECT * FROM student WHERE marks < 93;

SELECT * FROM student WHERE marks > 80 AND city = "Mumbai";

SELECT * FROM student WHERE marks > 90 OR city = "Mumbai";

SELECT * FROM student WHERE marks BETWEEN 80 AND 90;

SELECT * FROM student WHERE city IN ("Delhi","Mumbai");

SELECT * FROM student WHERE city NOT IN ("Delhi","Mumbai");

SELECT * FROM student  WHERE marks > 75
LIMIT 3;

SELECT * FROM student
ORDER BY marks ASC
LIMIT 3;

SELECT * FROM student
ORDER BY marks DESC
LIMIT 3;

SELECT max(marks)
FROM student;

SELECT avg(marks)
FROM student;

SELECT min(marks)
FROM student;

SELECT COUNT(rollno)
FROM student;

SELECT city,count(rollno)
FROM student
GROUP BY city;

SELECT city,name, count(rollno)
FROM student
GROUP BY city,name;

SELECT city,avg(marks)
FROM student
GROUP BY city,name;

SELECT city,avg(marks)
FROM student
GROUP BY city
ORDER BY avg(marks);

SELECT city,avg(marks)
FROM student
GROUP BY city
ORDER BY avg(marks)DESC;


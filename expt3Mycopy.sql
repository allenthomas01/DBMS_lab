CREATE DATABASE expt3;

USE expt3;


CREATE TABLE student(rollno int primary key,
                     name varchar(30),
                     date_of_birth date);


CREATE TABLE course(course_id int ,
                     cname varchar(30),
                     fee varchar(10),
                     duration int);

CREATE TABLE stud_course(rollno int,
                     course_id int);


INSERT INTO student
VALUES (200,'harry','2001-11-07'),
       (201,'james','2001-08-06'),
       (202,'sabu','2001-05-25'),
       (203,'brian','2000-09-01'),
       (204,'john','2002-08-22'),
       (205,'morningstar','2001-05-03'),
       (206,'dream','2015-12-20'),
       (207,'lucy','2016-02-22');


INSERT INTO course
VALUES (501,'btech','20000',4),
       (502,'bca','18000',3),
       (503,'mca','25000',3),
       (504,'mtech','28000',2);

INSERT INTO stud_course
VALUES (200,501),
       (201,501),
       (202,501),
       (203,503),
       (204,504),
       (205,503),
       (206,501),
       (207,502),
       (200,502);


CREATE view details AS 
SELECT s.rollno,s.name,s.date_of_birth,st.course_id,c.cname,c.fee,c.duration
FROM student AS s, stud_course AS st, course AS c
WHERE s.rollno = st.rollno AND c.course_id = st.course_id; 

SELECT * FROM student;
SELECT * FROM course;
SELECT * FROM stud_course;

SELECT s.name AS above_18_students,c.cname AS course FROM student AS s,course AS c,stud_course AS st WHERE s.rollno=st.rollno AND s.date_of_birth < '2014-01-01' AND c.cname='btech' group by s.rollno;


SELECT c.cname FROM course AS c WHERE c.fee NOT BETWEEN '0' AND (c.fee AND c.cname='btech') group by c.cname;

SELECT *
FROM details
GROUP BY rollno
HAVING COUNT(rollno) > 1; 

/* 
SELECT s.rollno,s.name,s.date_of_birth,st.course_id,c.cname,c.fee,c.duration
FROM student AS s
JOIN stud_course AS st
  ON s.rollno = st.rollno
JOIN course AS c
  ON c.course_id = st.course_id;
 */







SELECT *
FROM details
GROUP BY rollno
HAVING COUNT(rollno) =4;


SELECT *
FROM details;
/* 
SELECT cname,max(co),min(co) 
FROM (SELECT cname,count(cname) as co 
FROM details
GROUP BY cname)de; */

 SELECT cname,fee,duration
FROM details
WHERE course_id = 
(SELECT max(course_id ) FROM details) or course_id =(SELECT min(course_id )FROM details);

SELECT cname,count(cname)
FROM details
WHERE cname = 
(SELECT max(cname) FROM details) or cname =(SELECT min(cname )FROM details)
GROUP BY course_id ;

 
DROP TABLE student;
DROP TABLE course;
DROP DATABASE expt3;

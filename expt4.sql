create database expt4;

use expt4;


create table student(rollno int primary key,
                     name varchar(30),
                     category varchar(30),
                     district varchar(30),          
                     state varchar(30));          

create table student_rank(rollno int primary key ,
                     mark varchar(10),
                     srank varchar(10));



insert into student
values (200,'harry','general','kottayam','kerala'),
       (201,'ansal','st','kozhikode','kerala'),
       (202,'gokul','obc','thrissur','karnataka'),
       (203,'shibu','obc','kottayam','karnataka'),
       (204,'shyam','st','kollam','tamilnadu'),
       (205,'alen','general','alapey','tamilnadu'),
       (206,'lucy','sc','kottayam','kerala'),
       (207,'aleena','obc','kollam','tamilnadu'),
       (208,'sara','st','ernakulam','kerala'),
       (209,'james','general','kottayam','kerala');


insert into student_rank
values (200,'360','11928'),
       (201,'360','2031'),
       (202,'433','9343'),
       (203,'375','10922'),
       (204,'240','13938'),
       (205,'375','45222'),
       (206,'192','23002'),
       (207,'702','875'),
       (208,'286','45222'),
       (209,'385','14500');


CREATE VIEW details AS
SELECT *
FROM student 
natural join student_rank; 


select * from student;
select * from student_rank;
select * from details;

/* 4.a */
select d1.name,d1.category,d1.mark
from details as d1,details as d2
where d1.mark=d2.mark
group by d1.name,d1.category,d1.mark
having count(d1.mark)>1;

/* 4.b */
select distinct name,category,min(srank) as high_ranks,district  
from details
group by category,state,name
having min(srank);

/* 4.c */
SELECT * 
FROM details
WHERE 
(mark IN (SELECT mark FROM details 
GROUP BY mark HAVING count(mark)>1))
 OR 
(srank IN(SELECT srank FROM details
GROUP BY srank HAVING count(srank)>1));

/* 4.d   */
SELECT category as highest_and_least_performance
FROM details
WHERE (mark IN (SELECT max(mark) FROM details))
OR
(mark IN (SELECT min(mark) FROM details));

/* 4.e */
SELECT category as below_avg_performance
FROM details
WHERE 
(mark < (SELECT avg(mark) FROM details));

drop table student;
drop table student_rank;
drop database expt4;


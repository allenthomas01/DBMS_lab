create database expt4;

use expt4;


create table student(rollno int primary key,
                     name varchar(30),
                     category varchar(30),
                     district varchar(30),          
                     state varchar(30));          

create table student_rank(rollno int ,
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
       (208,'sara','st','ernakulam','kerala');


insert into student_rank
values (200,'360','11928'),
       (201,'660','2031'),
       (202,'433','9343'),
       (203,'375','10922'),
       (204,'240','13938'),
       (205,'45','45222'),
       (206,'192','23002'),
       (207,'702','875'),
       (208,'286','12023');


CREATE VIEW details AS
SELECT s.rollno,s.name,s.category,s.district,s.state,sr.mark,sr.srank
FROM student s, student_rank sr
where s.rollno=sr.rollno; 


select * from student;
select * from student_rank;
/*     **********         VIEW        **********/
SELECT s.rollno,s.name,s.category,s.district,s.state,sr.mark,sr.srank
FROM student s, student_rank sr
where s.rollno=sr.rollno; 
 

select category,count(*) rankholders,state from details where mark<1000  group by category,state;

drop table student;
drop table student_rank;
drop database expt4;


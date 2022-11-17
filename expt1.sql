CREATE database expt1;

USE expt1;

CREATE table college(college_code varchar(20), 
                    college_name varchar(20), 
                    col_add varchar(60),
                    primary key (college_code));

CREATE table faculty(college_code varchar(20), 
                    faculty_code varchar(20),
                    faculty_name varchar(20),
                    qualification varchar(20),
                    experience int,
                    department varchar(20),
                    fac_add varchar(60),
                    primary key (faculty_code));

INSERT into college values("kte","rit","kottayam"),
                          ("idk","gec idukki","painavu,idukki"),
                          ("gist","saintgits","pathamuttom,kottayam"),
                          ("skp","gec palakkad","skreekrishnapuram,palakkad");


INSERT into faculty values("kte","1105","allen","btech",3,"cse","kottayam"),
                          ("idk","4512","avinash","mtech",14,"ec","thissur"),
                          ("idk","2287","sara","btech",7,"cs","kollam"),
                          ("idk","4775","santhosh","mtech",6,"eee","idukki"),
                          ("kte","2273","sebastian","mtech",8,"cs","alappey"),
                          ("skp","1462","babu","btech",2,"mtech","ernakulam");


create view fac_count
as SELECT college_name,COUNT(*) as faculty_count 
FROM college,faculty
where faculty.college_code=college.college_code
GROUP BY college_name;

SELECT * FROM college;
SELECT * FROM faculty;

SELECT * FROM faculty WHERE college_code="idk" AND experience >=10;   


SELECT * FROM faculty WHERE college_code="idk" AND qualification NOT IN ("mtech");



SELECT * FROM faculty WHERE college_code="idk" ORDER BY  experience ASC;



SELECT COUNT(*) as faculty_count, college_name
FROM faculty,college
where faculty.college_code=college.college_code
GROUP BY college_name
HAVING COUNT(*) > 2;


select college_name,faculty_count
from fac_count
where faculty_count = 
(select max(faculty_count) from fac_count) or faculty_count=(select min(faculty_count)from fac_count);



DROP table faculty;

DROP table college;

DROP database expt1;


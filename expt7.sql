create database expt7;
use expt7;


create table student (
	name VARCHAR(50),
	rollno INT,
	utyregno VARCHAR(9),
	address VARCHAR(50),
	year_of_admin INT,
	year_of_passout INT,
	branch VARCHAR(3),
	class_teacher VARCHAR(10),
	emailid VARCHAR(50),
	phoneno VARCHAR(10)
);


create table course (
	utyregno VARCHAR(9),
	total INT,
	grades VARCHAR(11),
	year VARCHAR(4)
);

create table project (
	utyregno VARCHAR(9),
	title VARCHAR(50),
	guide VARCHAR(10),
	period_of_implementation DECIMAL(1),
	corearea VARCHAR(3)
);

create table faculty (
	fname VARCHAR(10),
	fid VARCHAR(50),
	email VARCHAR(50),
	designation VARCHAR(9),
	joiningdate DATE,
	relievingdate DATE
);

 insert into student 
 values('Reade', 1, 'KTE59XX70', '72025 Sherman Parkway', 2020, 2024, 'EEE', 'Aswin', 'rblumer0@mapy.cz', '7044958412'),
 ('Gracia', 2, 'KTE96XX57', '9723 Buhler Crossing', 2020, 2024, 'CSE', 'Amalia', 'gcrufts1@mlb.com', '6059232571'),
 ('Larine', 3, 'KTE99XX66', '57 Anderson Park', 2017, 2021, 'MEC', 'Arya', 'lduffill2@histats.com', '9301870105'),
 ('Cyrill', 4, 'KTE05XX60', '8 Forest Circle', 2017, 2021, 'CIV', 'Hrishikesh', 'cdemaid3@imageshack.us', '6098931285'),
 ('Alberto', 5, 'KTE84XX84', '65863 Stephen Pass', 2017, 2021, 'MEC', 'Arya', 'amacmychem4@domainmarket.com', '7478791342'),
 ('Rowland', 6, 'KTE78XX78', '1954 Lerdahl Junction', 2017, 2021, 'CSE', 'Shaju', 'rkimmitt5@google.co.jp', '6436096352'),
 ('Querida', 7, 'KTE97XX42', '75 Mayer Hill', 2017, 2021, 'CSE', 'Shaju', 'qboyles6@dedecms.com', '7259647900'),
 ('Cortney', 8, 'KTE33XX46', '72058 Farragut Junction', 2017, 2021, 'EEE', 'Abru', 'ckelbie7@simplemachines.org', '8767658796'),
 ('Wendell', 9, 'KTE08XX56', '5452 Clarendon Lane', 2018, 2022, 'ECE', 'Aswin', 'wsandever8@studiopress.com', '8376102289'),
 ('Ruggiero', 10, 'KTE08XX40', '2050 Quincy Park', 2018, 2022, 'ECE', 'Aswin', 'rdionisio9@a8.net', '9047797177'),
 ('Othelia', 11, 'KTE22XX47', '94542 Russell Court', 2019, 2023, 'MEC', 'Hrishikesh', 'olidyarda@guardian.co.uk', '8771090635'),
 ('Evanne', 12, 'KTE32XX50', '7 Reindahl Avenue', 2017, 2021, 'CIV', 'Hrishikesh', 'echarnickb@cdbaby.com', '8917709000'),
 ('Werner', 13, 'KTE67XX12', '477 Banding Point', 2017, 2021, 'MEC', 'Arya', 'wfargiec@uol.com.br', '6222432090'),
 ('Rickie', 14, 'KTE94XX98', '4974 Clarendon Court', 2018, 2022, 'CSE', 'Amalia', 'ralessandruccid@bluehost.com', '6431856826'),
 ('Joell', 15, 'KTE84XX57', '609 Lawn Drive', 2020, 2024, 'EEE', 'Aswin', 'jrobroee@adobe.com', '6280780207'),
 ('Percival', 16, 'KTE52XX11', '6 Vahlen Hill', 2018, 2022, 'ECE', 'Aswin', 'pcruttendenf@cmu.edu', '9673248954'),
 ('Kara-lynn', 17, 'KTE63XX38', '8 Delaware Park', 2018, 2022, 'CSE', 'Amalia', 'kquiltyg@amazon.com', '8107687778'),
 ('Matty', 18, 'KTE30XX07', '173 Cherokee Court', 2020, 2024, 'CIV', 'Arya', 'mmeiningerh@51.la', '7379857870'),
 ('Cristi', 19, 'KTE99XX47', '582 Reinke Pass', 2018, 2022, 'CSE', 'Amalia', 'cscholeyi@blinklist.com', '9571826511'),
 ('Orel', 20, 'KTE64XX48', '54 Heath Center', 2020, 2024, 'CIV', 'Arya', 'osharpj@over-blog.com', '9903333410');



insert into course
values('KTE59XX70', 76, 'secondClass', 2021),
('KTE59XX70', 87, 'firstClass', 2022),
('KTE59XX70', 79, 'secondClass', 2023),
('KTE59XX70', 76, 'secondClass', 2024),
('KTE96XX57', 98, 'distinct', 2021),
('KTE96XX57', 99, 'distinct', 2022),
('KTE96XX57', 77, 'secondClass', 2023),
('KTE96XX57', 85, 'firstClass', 2024),
('KTE99XX66', 75, 'secondClass', 2018),
('KTE99XX66', 99, 'distinct', 2019),
('KTE99XX66', 82, 'firstClass', 2020),
('KTE99XX66', 94, 'distinct', 2021),
('KTE05XX60', 80, 'secondClass', 2018),
('KTE05XX60', 81, 'firstClass', 2019),
('KTE05XX60', 92, 'distinct', 2020),
('KTE05XX60', 97, 'distinct', 2021),
('KTE84XX84', 96, 'distinct', 2018),
('KTE84XX84', 77, 'secondClass', 2019),
('KTE84XX84', 97, 'distinct', 2020),
('KTE84XX84', 83, 'firstClass', 2021),
('KTE78XX78', 86, 'firstClass', 2018),
('KTE78XX78', 81, 'firstClass', 2019),
('KTE78XX78', 90, 'firstClass', 2020),
('KTE78XX78', 92, 'distinct', 2021),
('KTE97XX42', 81, 'firstClass', 2018),
('KTE97XX42', 96, 'distinct', 2019),
('KTE97XX42', 92, 'distinct', 2020),
('KTE97XX42', 92, 'distinct', 2021),
('KTE33XX46', 80, 'secondClass', 2018),
('KTE33XX46', 88, 'firstClass', 2019),
('KTE33XX46', 85, 'firstClass', 2020),
('KTE33XX46', 79, 'secondClass', 2021),
('KTE08XX56', 84, 'firstClass', 2019),
('KTE08XX56', 90, 'firstClass', 2020),
('KTE08XX56', 90, 'firstClass', 2021),
('KTE08XX56', 90, 'firstClass', 2022),
('KTE08XX40', 80, 'secondClass', 2019),
('KTE08XX40', 75, 'secondClass', 2020),
('KTE08XX40', 78, 'secondClass', 2021),
('KTE08XX40', 95, 'distinct', 2022),
('KTE22XX47', 87, 'firstClass', 2020),
('KTE22XX47', 84, 'firstClass', 2021),
('KTE22XX47', 97, 'distinct', 2022),
('KTE22XX47', 80, 'secondClass', 2023),
('KTE32XX50', 77, 'secondClass', 2018),
('KTE32XX50', 77, 'secondClass', 2019),
('KTE32XX50', 85, 'firstClass', 2020),
('KTE32XX50', 87, 'firstClass', 2021),
('KTE67XX12', 97, 'distinct', 2018),
('KTE67XX12', 99, 'distinct', 2019),
('KTE67XX12', 91, 'distinct', 2020),
('KTE67XX12', 75, 'secondClass', 2021),
('KTE94XX98', 95, 'distinct', 2019),
('KTE94XX98', 100, 'distinct', 2020),
('KTE94XX98', 84, 'firstClass', 2021),
('KTE94XX98', 100, 'distinct', 2022),
('KTE84XX57', 79, 'secondClass', 2021),
('KTE84XX57', 88, 'firstClass', 2022),
('KTE84XX57', 87, 'firstClass', 2023),
('KTE84XX57', 92, 'distinct', 2024),
('KTE52XX11', 92, 'distinct', 2019),
('KTE52XX11', 80, 'secondClass', 2020),
('KTE52XX11', 87, 'firstClass', 2021),
('KTE52XX11', 80, 'secondClass', 2022),
('KTE63XX38', 81, 'firstClass', 2019),
('KTE63XX38', 80, 'secondClass', 2020),
('KTE63XX38', 97, 'distinct', 2021),
('KTE63XX38', 80, 'secondClass', 2022),
('KTE30XX07', 94, 'distinct', 2021),
('KTE30XX07', 86, 'firstClass', 2022),
('KTE30XX07', 75, 'secondClass', 2023),
('KTE30XX07', 96, 'distinct', 2024),
('KTE99XX47', 86, 'firstClass', 2019),
('KTE99XX47', 96, 'distinct', 2020),
('KTE99XX47', 80, 'secondClass', 2021),
('KTE99XX47', 97, 'distinct', 2022),
('KTE64XX48', 96, 'distinct', 2021),
('KTE64XX48', 91, 'distinct', 2022),
('KTE64XX48', 94, 'distinct', 2023),
('KTE64XX48', 86, 'firstClass', 2024);

 insert into project
 values('KTE59XX70', 'edu.stanford.Daltfresh', 'Aswin', 2, 'ECE'),
 ('KTE96XX57', 'org.pbs.Toughjoyfax', 'Hrishikesh', 3, 'CIV'),
 ('KTE99XX66', 'com.chronoengine.Matsoft', 'Arya', 3, 'MEC'),
 ('KTE05XX60', 'org.npr.Kanlam', 'Amalia', 2, 'CSE'),
 ('KTE84XX84', 'gov.census.Flowdesk', 'Amalia', 1, 'CSE'),
 ('KTE78XX78', 'com.springer.Quo Lux', 'Shaju', 3, 'CSE'),
 ('KTE97XX42', 'com.deviantart.Kanlam', 'Arya', 2, 'CIV'),
 ('KTE33XX46', 'br.com.uol.Job', 'Aswin', 1, 'ECE'),
 ('KTE08XX56', 'com.msn.Regrant', 'Arya', 1, 'CIV'),
 ('KTE08XX40', 'com.friendfeed.Greenlam', 'Arya', 2, 'MEC'),
 ('KTE22XX47', 'jp.co.yahoo.Span', 'Amalia', 1, 'CSE'),
 ('KTE32XX50', 'com.printfriendly.Quo Lux', 'Hrishikesh', 3, 'MEC'),
 ('KTE67XX12', 'com.blogtalkradio.Tampflex', 'Arya', 3, 'CIV'),
 ('KTE94XX98', 'jp.co.yahoo.Daltfresh', 'Hrishikesh', 1, 'CIV'),
 ('KTE84XX57', 'edu.wisc.Namfix', 'Aswin', 3, 'ECE'),
 ('KTE52XX11', 'org.wikipedia.Tresom', 'Hrishikesh', 2, 'CIV'),
 ('KTE63XX38', 'jp.co.amazon.Latlux', 'Arya', 2, 'MEC'),
 ('KTE30XX07', 'com.forbes.Matsoft', 'Arya', 2, 'CIV'),
 ('KTE99XX47', 'com.deviantart.Fintone', 'Aswin', 1, 'EEE'),
 ('KTE64XX48', 'org.unicef.Kanlam', 'Abru', 3, 'EEE');


 insert into faculty
 values('Abru', 'KTF52YY80', 'solenane0@example.com', 'Prof', '2022-05-01', '2022-10-22'),
 ('Arya', 'KTF45YY93', 'jliven1@posterous.com', 'Prof', '2021-07-24', '2022-07-13'),
 ('Hrishikesh', 'KTF85YY58', 'efeldmesser2@chicagotribune.com', 'Prof', '2020-09-03', null),
 ('Aswin', 'KTF11YY19', 'ecantos3@walmart.com', 'Ad_Hoc', '2018-01-14', null),
 ('Amalia', 'KTF37YY55', 'marling4@toplist.cz', 'Asst_Prof', '2021-08-30', '2022-09-23'),
 ('Shaju', 'KTF40YY60', 'clyle5@reddit.com', 'Asst_Prof', '2018-08-17', null);


 /* displaying tables */
select * from student;
select * from course;
select * from project;
select * from faculty;

/* 7.a */
select * from student
where branch="CSE" and year_of_passout<2023;


/* 7.b */
select name,rollno,branch,year_of_passout from student
where branch="CSE" and year_of_passout<2023
group by year_of_passout,branch,rollno,name;

/* 7.c */
select * from project 
where corearea="CSE";

    
/* 7.d */
select fname from faculty,project
where faculty.fname=project.guide
group by fname
having count(fname)>3 ;


/* 7.e */
select branch
from student,course
where student.utyregno = course.utyregno and year="2022" and total in (select max(total) as total
from course);

/* 7.f */
select name
from student,course
where student.utyregno=course.utyregno and grades="firstClass"
and year="2020"; 

/* 7.g */
select DISTINCT p.title,s.branch,p.guide,f.email
from project as p,student as s,faculty as f
where p.utyregno = s.utyregno and p.guide = f.fname and corearea="CSE"
group by  s.branch,p.title,p.guide
order by s.branch;

/* 7.h */
select count(c.grades) as total_grades,year_of_admin,branch
from course as c,student as s
where c.utyregno=s.utyregno
group by year_of_admin,branch;

/* 7.i */
select *
from student
where year_of_admin="2020"
group by branch;

/* 7.j */
select *
from student
order by year_of_admin,branch;

/* 7.k */
select max(total) as best_mark,min(total) as worst_mark,avg(total)as average_mark
from course as c,student as s
where c.utyregno=s.utyregno and s.branch="CSE"
group by s.branch;


drop table student;
drop table course;
drop table project;
drop table faculty;
drop database expt7;

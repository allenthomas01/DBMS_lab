create database expt5; 

use expt5;

create table book(accession_no int,
                  title varchar(20),
                  publisher varchar(20),
                  year int,
                  date_of_purchase date,
                  status varchar(30));
                  
create table smember(member_id int,
                  name varchar(20),
                  no_of_books_issued int,
                  max_limit int);

create table books_issue(accession_no int,
                  member_id int,
                  date_of_issue date);


insert into book
values (100,'hunger games 1','penguin books','2012','2012-08-04','issued'),
       (101,'harry potter 1','owl books','2006','2007-05-22','present in the library'),
       (102,'hunger games 2','penguin books','2014','2014-01-17','cannot be issued'),
       (103,'harry potter 2','owl books','2014','2015-09-01','issued'),
       (104,'harry potter 1','owl books','2006','2007-05-22','issued'),
       (105,'harry potter 1','owl books','2007','2007-05-03','issued'),
       (106,'operating system','dc books','2010','2017-12-20','reference'),
       (107,'operating system','dc books','2005','2017-02-22','reference');
       
       
       
insert into smember
values (200,'allen',0,3),
       (201,'babu',1,3),
       (202,'santhosh',2,3),
       (203,'shibu',3,3),
       (204,'manny',0,3),
       (205,'aiswarya',3,3),
       (206,'lisa',1,3),
       (207,'dennis',2,3);       
       

insert into books_issue
values (100,201,'2019-08-12'),
       (100,203,'2019-06-11'),
       (103,203,'2019-05-10'),
       (100,203,'2019-03-09'),
       (100,205,'2019-07-08'),
       (104,205,'2019-03-04'),
       (100,205,'2019-02-07'),
       (100,207,'2019-03-01'),
       (100,207,'2019-05-17'),
       (103,202,'2019-07-27'),
       (105,202,'2019-03-23'),
       (104,206,'2009-07-22');

create view issued_copies as
select accession_no,count(accession_no) total_copies_issued from books_issue group by accession_no;



/*******   view  
CREATE VIEW student_details AS
SELECT s.member_id,s.name,s.no_of_books_issued,s.max_limit,bi.date_of_issue
FROM smember s, books_issue bi
where s.member_id=bi.member_id; 

*/


   
select * from book;
select * from smember;
select * from books_issue;              
       

/********  5.b    completed*/

select * from smember where no_of_books_issued = max_limit;

/* tring to get 5.c*/
select max(total_copies_issued ) ,min(total_copies_issued ) ,b.title,b.accession_no from books_issue bi,book b,issued_copies ic where b.accession_no=bi.accession_no group by b.accession_no,b.title ;

/********  5.c    */

select max(total_copies_issued ) most_issued,min(total_copies_issued) least_issued from issued_copies;
       
drop table book;
drop table smember;
drop table books_issue;
drop database expt5;       
       

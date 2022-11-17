
create database expt2; 

use expt2;

create table book(accession_no int,
                  title varchar(20),
                  publisher varchar(20),
                  author varchar(20),
                  date_of_purchase date,
                  date_of_publishing date,
                  status varchar(30));


insert into book
values (114,'hunger games 1','penguin books','roy','2012-11-07','2012-08-04','issued'),
       (107,'harry potter 1','owl books','rowling','2007-06-03','2007-05-22','present in the library'),
       (123,'hunger games 2','penguin books','roy','2014-05-25','2014-01-17','cannot be issued'),
        (113,'black story','penguin books','anand','2015-09-27','2015-02-06','cannot be issued'),
       (153,'harry potter 2','owl books','rowling','2015-09-11','2015-04-01','issued'),
       (108,'harry potter 1','owl books','rowling','2007-08-04','2007-05-22','issued'),
       (109,'harry potter 1','owl books','rowling','2007-09-13','2007-05-03','reference'),
       (225,'operating system','dc books','shweta','2019-07-23','2017-12-20','reference'),
       (313,'operating system','dc books','shweta','2020-05-03','2017-02-22','reference');

select * from book;


select count(title) as total_copies,title from book group by title;


select count(title) as total_reference_copies,title from book where status='reference' group by title;


select count(title) as total_no,title,status from book where status='issued' or status='reference'or status='present in the library' group by title,status;

select * from book where status='cannot be issued';


select title,count(*)as new_arrivals from book where date_of_purchase between '2020-01-01' and '2020-06-01' group by title;


SELECT title as famous_books,count(title)as total_copies, DATEDIFF(date_of_purchase, date_of_publishing) as purchased_within_days
from book 
where  DATEDIFF(date_of_purchase, date_of_publishing) < 365 
GROUP BY title;  


drop table book;

drop database expt2;

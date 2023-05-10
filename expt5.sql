create database expt5; 

use expt5;

create table book(accession_no int,
                  title varchar(20),
                  publisher varchar(20),
                  year int,
                  date_of_purchase date,
                  status varchar(30));
                  
create table smember(member_id int,
                  name varchar(50),
                  no_of_books_issued int,
                  max_limit int);

create table books_issue(accession_no int,
                  member_id int,
                  date_of_issue date);



insert into book
values ("122","MIDNIGHT CHILDREN","SALMAN RUSHDIE","1947","2002-05-18","ISSUED"),
("123","THE MAGIC MOUNTAIN","THOMAS MANN","1998","2003-05-28","ISSUED"),
("124","GREAT EXPECTATIONS","CHARLES DICKENS","2005","2008-01-28","ISSUED"),
("125","LEAVES OF GRASS","WALT WHITMAN","2008","2011-11-26","ISSUED"),
("126","TRISTRAM SHANDY","LAURENCE STRENE","1996","2002-01-08","ISSUED"),
("127","DAVID COPPERFIELD","CHARLES DICKENS","1999","2003-02-07","ISSUED"),
("128","THE AENEID","VIRGIL","2000","2001-12-10","ISSUED"),
("129","JANE EYRE","CHARLOTTE BRONTE","2010","2011-04-05","ISSUED"),
("130","THE STRANGER","ALBERT CAMUS","2021","2022-04-12","ISSUED"),
("131","BELOVED","TONI MORRISON","2004","2021-07-22","ISSUED"),
("132","MIDDLEMARCH","GEORGE ELIOT","2002","2004-10-21","ISSUED"),
("133","INVISIBLE MAN","RALPH ELLISON","2006","2007-10-10","ISSUED"),
("134","MIDNIGHT CHILDREN","SALMAN RUSHDIE","1947","2002-05-18","NOT ISSUED"),
("135","THE MAGIC MOUNTAIN","THOMAS MANN","1998","2003-05-28","NOT ISSUED"),
("136","GREAT EXPECTATIONS","CHARLES DICKENS","2005","2008-01-28","NOT ISSUED"),
("137","LEAVES OF GRASS","WALT WHITMAN","2008","2011-11-26","NOT ISSUED"),
("138","TRISTRAM SHANDY","LAURENCE STRENE","1996","2002-01-08","NOT ISSUED"),
("139","DAVID COPPERFIELD","CHARLES DICKENS","1999","2003-02-07","NOT ISSUED"),
("140","THE AENEID","VIRGIL","2000","2001-12-10","NOT ISSUED"),
("141","JANE EYRE","CHARLOTTE BRONTE","2010","2011-04-05","NOT ISSUED"),
("142","THE STRANGER","ALBERT CAMUS","2021","2022-04-12","NOT ISSUED"),
("143","BELOVED","TONI MORRISON","2004","2021-07-22","NOT ISSUED"),
("144","MIDDLEMARCH","GEORGE ELIOT","2002","2004-10-21","NOT ISSUED"),
("145","INVISIBLE MAN","RALPH ELLISON","2006","2007-10-10","NOT ISSUED"),
("146","MIDNIGHT CHILDREN","SALMAN RUSHDIE","1947","2002-05-18","REFERENCE"),
("147","THE MAGIC MOUNTAIN","THOMAS MANN","1998","2003-05-28","REFERENCE"),
("148","GREAT EXPECTATIONS","CHARLES DICKENS","2005","2008-01-28","REFERENCE"),
("149","LEAVES OF GRASS","WALT WHITMAN","2008","2011-11-26","REFERENCE"),
("150","TRISTRAM SHANDY","LAURENCE STRENE","1996","2002-01-08","REFERENCE"),
("151","DAVID COPPERFIELD","CHARLES DICKENS","1999","2003-02-07","REFERENCE"),
("152","THE AENEID","VIRGIL","2000","2001-12-10","REFERENCE"),
("153","JANE EYRE","CHARLOTTE BRONTE","2010","2011-04-05","REFERENCE"),
("154","THE STRANGER","ALBERT CAMUS","2021","2022-04-12","REFERENCE"),
("155","BELOVED","TONI MORRISON","2004","2021-07-22","REFERENCE"),
("156","MIDDLEMARCH","GEORGE ELIOT","2002","2004-10-21","REFERENCE"),
("157","INVISIBLE MAN","RALPH ELLISON","2006","2007-10-10","REFERENCE");
       
       
       
insert into smember
values("2010","JOHN WICK","3","5"),
("2011","MONKEY D LUFFY","2","6"),
("2012","TONY STARK","8","8"),
("2013","STEVEN GRANT ROGERS","1","2"),
("2014","CLINTON FRANCIS BARTON","2","7"),
("2015","WANDA MAXIMOFF","4","5"),
("2016","T CHALLA","1","5"),
("2017","VICTOR SHADE","4","4"),
("2018","THOR ODINSON","0","1"),
("2019","NATASHA ROMANOFF","4","5"),
("2020","JENNIFER SUSAN","4","5");
      
       

insert into books_issue
values ("122","2010","2005-11-18"),
("123","2010","2022-11-18"),
("124","2010","2022-11-18"),
("125","2011","2022-11-18"),
("126","2011","2022-11-18"),
("127","2012","2022-11-18"),
("128","2012","2011-11-18"),
("129","2012","2022-11-18"),
("130","2012","2022-11-18"),
("131","2012","2021-11-18"),
("132","2012","2022-11-18"),
("133","2012","2022-11-18"),
("122","2012","2022-11-18"),
("123","2013","2022-11-18"),
("124","2014","2022-11-18"),
("125","2014","2022-11-18"),
("126","2015","2022-11-18"),
("127","2015","2021-11-18"),
("128","2015","2022-11-18"),
("129","2015","2022-11-18"),
("130","2016","2022-11-18"),
("131","2017","2022-11-18"),
("132","2017","2022-11-18"),
("133","2017","2022-11-18"),
("122","2017","2022-11-18"),
("123","2017","2022-11-18"),
("124","2019","2022-11-18"),
("125","2019","2020-11-18"),
("126","2019","2022-11-18"),
("127","2019","2022-11-18"),
("128","2020","2022-11-18"),
("129","2020","2022-11-18"),
("130","2020","2022-11-18"),
("132","2020","2022-11-18");

create view issued_copies as
select accession_no,count(accession_no) as total_copies_issued 
from books_issue 
group by accession_no;


create view duedate as 
select *,datediff('2022-11-27',date_of_issue) as days_past_due
from books_issue; 

CREATE view total_books_issued as
SELECT *,count(accession_no) as countofbooksissued FROM books_issue 
GROUP BY accession_no;

/******    printing tables and views     */
   
select * from book;
select * from smember;
select * from books_issue;  

select * from issued_copies;  
select * from duedate; 
SELECT * FROM total_books_issued;

            
/* 5.a  */       
select *
from duedate
where days_past_due>15;


/*  5.b  */
select * from smember where no_of_books_issued = max_limit;


/* 5.c  */
SELECT t.accession_no,t.countofbooksissued,book.title,book.publisher
FROM total_books_issued as t natural join book
GROUP BY countofbooksissued
HAVING (min(countofbooksissued)) or (max(countofbooksissued));

CREATE VIEW temp as
SELECT * FROM book JOIN books_issue 
WHERE book.accession_no=books_issue.accession_no
GROUP BY book.accession_no;

/*  5.d */
SELECT * FROM book WHERE status="NOT ISSUED";

/*details of book which is taken by every member */



drop table book;
drop table smember;
drop table books_issue;
drop database expt5;       
       


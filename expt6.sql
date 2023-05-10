
create database expt6; 

use expt6;

create table branch(branch_id int,
                  branch_name varchar(20),
                  branch_city varchar(40));
                  
create table customer(customer_id int,
                  customer_name varchar(20),
                  customer_city  varchar(20));

create table savings(customer_id int,
                   branch_id int,
                   savings_accno varchar(20),
                   balance int);

create table loan(customer_id int,
                   branch_id int,
                   loan_accno varchar(20),
                   balance int);




insert into branch
values(401,"Thiruvananthapuram","Thiruvananthapuram"),
(402,"Kottayam","Kottayam"),
(403,"Ernakulam","Kochi"),
(404,"Kozhikode","Kozhikode");
       
insert into customer
values (6001,"Ananthakrishnan","Thiruvananthapuram"),
(6002,"Irfan","Thiruvananthapuram"),
(6003,"Suneeth","Thiruvananthapuram"),
(6004,"Sreejith","Kottayam"),
(6005,"Jafar","Kazhakoottam"),
(6006,"Radika","Pampady"),
(6007,"Jameela","Kanjikuzhi"),
(6008,"Bindu","Kottayam"),
(6009,"Purushothaman","Kollam"),
(6010,"Vincy","Kottayam"),
(6011,"Abdul Rahman","Thrissur"),
(6012,"Vishwanathan","Ernakulam"),
(6013,"Marykutty","Mattancheri"),
(6014,"Hajara","Ernakulam"),
(6015,"Revathy","Kozhikode"),
(6016,"Hameed","Perambra"),
(6017,"Suchithra","Kozhikode"),
(6018,"Saneesh","North Paravoor"),
(6019,"Gokul Das","Kozhikode"),
(6020,"Abraham","Kappad");

insert into savings
values (6001,401,6400101,15000),
(6002,401,6400102,200000),
(6005,401,6400105,30000),
(6007,401,6400107,70000),
(6004,402,6400204,400000),
(6006,402,6400206,100000),
(6007,402,6400207,40000),
(6008,402,6400208,74000),
(6010,402,6400210,128507),
(6011,403,6400311,700000),
(6001,403,6400301,200000),
(6012,403,6400312,500000),
(6013,403,6400313,250000),
(6015,404,6400415,100000),
(6016,404,6400416,90756);

insert into loan
values (6005,401,4600105,100000),
(6003,401,4600103,200000),
(6009,401,4600109,150000),
(6019,401,4600119,100000),
(6011,403,4600311,1000000),
(6013,403,4600313,500000),
(6014,403,4600314,300000),
(6018,403,4600318,300000),
(6006,403,4600306,100000),
(6009,403,4600309,200000),
(6014,404,4600414,100000),
(6016,404,4600416,150000),
(6017,404,4600417,200000),
(6019,404,4600419,300000),
(6020,404,4600419,400000),
(6008,404,4600408,100000);

/********      displaying tables   **********/       
SELECT * FROM branch;
SELECT * FROM customer;
SELECT * FROM savings;
SELECT * FROM loan;

/*      creating views    */

create view savings_details as
select s.customer_id,s.branch_id,s.savings_accno as accno,s.balance,b.branch_name,b.branch_city,c.customer_name,c.customer_city 
from branch as b,customer as c,savings as s
where s.customer_id=c.customer_id and s.branch_id=b.branch_id;

create view loan_details as
select l.customer_id,l.branch_id,l.loan_accno as accno,l.balance,b.branch_name,b.branch_city,c.customer_name,c.customer_city 
from loan as l,branch as b,customer as c
where l.customer_id=c.customer_id and l.branch_id=b.branch_id;

create view details as
select * from savings_details
union
select * from loan_details;

/*  displaying views  */
select * from details;
select * from loan_details;
select * from savings_details;


/*    6.a    */
select customer_id,customer_name,customer_city,branch_city
from details
where customer_city=branch_city;


/*     6b      */
select distinct customer_id,customer_name,branch_city
from details
where branch_city="Kottayam";


/*    6.c    */

select * from details;

/*   6.d.1 */
select distinct d1.customer_id,d1.customer_name
from details as d1,details as d2
where d1.branch_id!=d2.branch_id and d1.customer_id=d2.customer_id;

/* 6.d.2 */
select distinct customer_id,customer_name
from details
where customer_id not in (select customer_id from loan);

/* 6.d.3 */
SELECT customer_id,customer_name
FROM details
WHERE customer_id IN (SELECT savings.customer_id FROM savings,loan
WHERE savings.customer_id=loan.customer_id 
GROUP BY savings.customer_id
HAVING count(*)=1);

/* 6.e */
SELECT customer_name
FROM loan,customer
WHERE loan.customer_id=customer.customer_id AND loan.customer_id NOT IN (SELECT customer_id FROM savings)
GROUP BY loan.customer_id
HAVING COUNT(*)>1;

/* 6.f total number of customers */
SELECT DISTINCT COUNT(*) as total_customers,branch_name
FROM details
GROUP BY branch_id;

/* 6.f customers with loan only */
SELECT COUNT(*) as loan_only_customers,branch_name
FROM details
WHERE customer_id NOT IN (SELECT customer_id FROM savings)
GROUP BY branch_id;

/* 6.f customers with savings only */
SELECT COUNT(*) as savings_only_customers,branch_name
FROM details
WHERE customer_id NOT IN (SELECT customer_id FROM loan)
GROUP BY branch_id;

/*6.f customers with loan and savings*/
SELECT COUNT(*) as both_loan_and_savings,branch_name
FROM details
WHERE customer_id IN (SELECT savings.customer_id FROM savings,loan
WHERE savings.customer_id=loan.customer_id 
GROUP BY savings.customer_id
HAVING count(*)=1)
GROUP BY branch_id;

/*6.g*/
SELECT branch_name,branch_city, MAX(balance) as max_loan
FROM details
WHERE balance = (SELECT max(balance) FROM loan);

/* 6.h */
SELECT branch_id,branch_name as branch_that_not_issued_any_loan,branch_city
FROM details
WHERE branch_id NOT IN (SELECT branch_id FROM loan)
GROUP BY branch_id;

/*6.i*/
SELECT *
FROM details
ORDER BY customer_id;

drop table branch;
drop table customer;
drop table savings;
drop table loan;
drop database expt6;       
       

use sravya;
create table employe
(name varchar(10),age int,salary int);
insert into employe values('kallu',23,'51000');
insert into employe values('sravya',23,'50000');
insert into employe values('LP',24,'49000');
insert into employe values('sageeth',25,'47000');
select*from employe;

select*from employe where salary>50000;
select*from employe where not salary>50000;
select*from employe where salary between 4000 and 6000;
select*from employe order by salary>50000 DESC;
select*from employe where salary<45000 or salary>60000;
=======================================================================================
use sravya;
create table whatsapp
(name varchar(10),pnumber int,likes int);
insert into whatsapp values('sravya',0987654321,8);
insert into whatsapp values('kallu',569874321,9);
insert into whatsapp values('LP',346654321,5);
insert into whatsapp values('sageetha',765432456,6);
select*from whatsapp
=============================================================
use sravya;
create table views
(name varchar(10),views int);
insert into views values('sravya',35);
insert into views values('kallu',37);
insert into views values('LP',29);
select*from views;
====================================
select*from whatsapp;
select*from views;

select*from whatsapp inner join views on whatsapp.name=views.name;

select*from whatsapp right join views on whatsapp.name=views.name;

select*from whatsapp left join views on whatsapp.name=views.name;

select * from whatsapp self join views;

select*from whatsapp cross join views;
==================================================
 use sravya;
 create table newemployees
 (name varchar(10) not null,designation varchar(20) not null,workingdata date,working_hours int);
insert into newemployees values('sravya','developer','2023-11-05',8);
insert into newemployees values('LP','developer','2024-08-27',9);
insert into newemployees values('kallu','developer','2023-08-15',7);
insert into newemployees values('ramu','developer','2022-09-17',9);
insert into newemployees values('sagetha','developer','2023-04-05',10);
select*from newemployees;
=====================================================
use sravya;
create table newjoinee
(name varchar(10),id int,age int,designation varchar(10));
insert into newjoinee values('LP','450','23','jsd');
insert into newjoinee values('kallu','451','22','SD');
insert into newjoinee values('sravya','452','21','SD');
insert into newjoinee values('ramu','453','17','ssd');
insert into newjoinee values('sangetha','454','18','jsd');
select*from newjoinee;

alter table newjoinee add salary int;
create trigger newjoine 
before update on newjoinee
for each row
set new.salary= ID+3000;
update newjoinee set salary=1000;
set SQL_safe_updates=0; 




=========================================================================== 
 use sravya;
 create table colleges(empid int,empname varchar(10),empage int);
 insert into colleges values('101','sravya',15);
 insert into colleges values('101','lp',19);
 insert into colleges values('102','jyo',24);
 insert into colleges values('103','hema',18);
 insert into colleges values('105','sangetha',17);
select*from colleges;
create trigger after_college_insert after insert on employees for each row 
insert into college(action,employee_id)
values('insert',id);
=====================================================
use sravya;
create table joinee
(name varchar(10),id int,age int,designation varchar(10),hours int);
insert into joinee values('LP','1','25','SD',9);
insert into joinee values('kallu','2','23','SD',12);
insert into joinee values('sravya','3','22','SD',10);
insert into joinee values('ramu','4','23','SD',8);
insert into joinee values('sangetha','5','24','SD',7);
select*from joinee;

alter table joinee
add column salary decimal (10,2) after hourly_pay;

update joinee
set salary = hours_pay * 1500;

create trigger before_hourly_pay_update
Before update on joinee
for each ROW
set new.salary = (new.hours_pay * 1500); 
=============================================================

use sravya;
create table team1
(ProductID int, 
Productname varchar(10) primary key,
supplierID int,
categoryID int,
Quantityperunit int,
unitprice int,
unitsinstock int,
unitsonorder varchar(10),
reorderlevel int,
discontinued varchar(5));
insert into task1 values('')

create database team1;
use team1;
create table products
(ProductID int, 
Productname varchar(10) primary key,
supplierID int not null,
categoryID int not null,
Quantityperunit int,
unitprice int not null,
unitsinstock int,
unitsonorder int,
reorderlevel varchar(10),
discontinued varchar(5));

insert into products values(1,'moblies',101,100,80,200000,20,10,'high','yes');
insert into products values(2,'iphones',102,99,70,750000,35,8,'medium','yes');
insert into products values(3,'laptops',103,98,50,45000,57,9,'low','no');
insert into products values(4,'earphones',104,97,66,450,60,15,'medium','yes');
insert into products values(5,'headsets',105,96,71,7050,58,10,'high','no');
insert into products values(6,'phncharage',106,95,29,5000,67,20,'high','yes');
insert into products values(7,'LPcharage',107,94,30,3700,20,5,'low','no');
insert into products values(8,'phncover',108,93,60,300,20,10,'high','yes');
insert into products values(9,'powerbanks',109,92,49,7600,28,17,'medium','no');
insert into products values(10,'headset',110,91,59,2790,40,26,'low','yes');
select*from products;  

create table product_ctg
(product_ctg_id int, product_ctg varchar(20), pproduct_name varchar(10)
foreign key(product_name) reference product(product_name));
insert into product_ctg values




   
    

            

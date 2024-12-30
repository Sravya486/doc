create database team;
use team1
create table product(
productID int, 
Productname varchar(10) primary key,
supplierId int not null,
categoryID int not null,
Quantityperunit decimal,
unitprice int not null,
unitsstock int, 
unitsorder int, 
reorderlevel varchar(10),
discontinued varchar(10)
);

insert into product values(1,'Laptop',11,101,90,65000,30,15,'High','Yes');
insert into product values(2,'phone',12,102,70,20000,100,80,'low','no');
insert into product values(3,'Bud',13,103,30,3000,47,69,'high','Yes');
insert into product values(4,'Tab',14,104,10,7000,10,7,'Low','no');
insert into product values(5,'Earphone',15,105,500,600,80,50,'High','Yes');
insert into product values(6,'Charger',16,106,20,700,20,15,'Low','Yes');
insert into product values(7,'Keyboard',17,107,40,4000,50,20,'Low','Yes');
insert into product values(8,'monitors',18,108,60,2000,60,10,'High','Yes');
insert into product values(9,'bags',19,109,80,1000,60,35,'High','Yes');
insert into product values(10,'powerbank',20,110,50,4500,20,10,'High','Yes');
select*from product;
                          
create table product_ctg(
pdt_ctg_id int,
pdt_ctg varchar(10),
pdt_name varchar(10),
foreign key(pdt_name) references product(productname)
);

insert into product_ctg values(1,'gadgets','laptop');
insert into product_ctg values(2,'gadgets','phone');
insert into product_ctg values(3,'gadgets','bud');
insert into product_ctg values(4,'gadgets','tab');
insert into product_ctg values(5,'accessorie','earphone');
insert into product_ctg values(6,'electronic','keyboard');
insert into product_ctg values(7,'accessorie','monitors');
insert into product_ctg values(8,'gadgets','bags');
insert into product_ctg values(9,'electronic','powerbank');
insert into product_ctg values(10,'accessorie','charger');
select*from product_ctg;

                              
create table product_suppliers(
pdt_sup_id int,
pdt_sup_name varchar(10),
pdt_name varchar(20),
foreign key(pdt_name) references product(productname)
);
insert into product_suppliers values(1,'amazon','phone');
insert into product_suppliers values(2,'flipkart','laptop');
insert into product_suppliers values(3,'amazon','bud');
insert into product_suppliers values(4,'amazon','tab');          
insert into product_suppliers values(5,'flipkart','earphone'); 
insert into product_suppliers values(6,'amazon','keybords'); 
insert into product_suppliers values(7,'amazon','bags'); 
insert into product_suppliers values(8,'flipkart','monitors'); 
insert into product_suppliers values(9,'flipkart','powerbank'); 
insert into product_suppliers values(10,'amazon','charger'); 
select*from product;

Task 1

use team1;
select*from product;
select productname, Quantityperunit from product;

Task 2

select productID, productname from product order by productID asc;

Task 3

select productID, productname discontinued from product where discontinued='yes';

Task 4

(select productname, min(unitprice) from product group by (productname) limit 1)
union 
(select productname, max(unitprice) from product group by(productname) limit 1);

Task 5

select productID, productname, unitprice from product where unitprice<1500 order by productID asc;



Tabble 2

Task1 
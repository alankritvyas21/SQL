create database class1;
use class1;
create table cart(
cart_id int not null, 
primary key(cart_id)
);
insert into cart value(121);
insert into cart value(122);
insert into cart value(123);
select *from cart;
create table customers(
id int not null ,
cust_name varchar(15) not null,
age int not null check(age>=18),
cust_pass varchar(20) not null,
cust_add varchar(30) not null,
cust_pincode int not null ,
cust_phno bigint not null, 
primary key(id)
);
insert into customers value(001,"Alankrit Vyas",19,"pass123","Thane",400615,9920779553);
insert into customers value(002,"John Does",25,"pass456","MUJ",303007,9876543210);
insert into customers value(003,"Orion",21,"pass789","Assam",502856,8975642310);
insert into customers value(004,"Miles",35,"pass101","New York",452615,1412523630);
insert into customers value(005,"Edward",66,"pass112","London",378507,1213635458);
select *from customers;
create table product(
id int not null,
prod_type varchar(10) not null,
prod_color varchar(10) not null, 
prod_size varchar(10) not null,
prod_cost bigint not null,
quantity int not null,
primary key(id),
cust_id int references customers(id)
);
insert into product value(101,"Electronic","Blue","6 inch",15000,1,001);
insert into product value(102,"Honey","Orange","500 ml",125,2,002);
insert into product value(103,"Soap","White","15x15 cm",25,5,003);
insert into product value(104,"Honey","Orange","500 ml",125,3,003);
insert into product value(105,"Soap","White","15x15 cm",25,7,001);
insert into product value(106,"Electronic","Black","5.5 inch",20000,2,002);
select *from product;
alter table product add foreign key(cust_id) references customers(id);
select customers.id,customers.cust_name,product.prod_type,product.prod_cost from customers inner join product on customers.id=product.cust_id;
select customers.id,customers.cust_name,customers.cust_add,product.prod_type,product.prod_cost from customers left join product on customers.id=product.cust_id;
select customers.id,customers.cust_name,product.prod_type,product.prod_cost,product.quantity from customers right join product on customers.id=product.cust_id;
select customers.id,customers.cut_name,customers.cust_add,product.prod_type,product.prod_cost,product.quantity from customers full join product on customers.id=product.cust_id;

select *from customers where cust_phno like '8%';
select *from customers where cust_name like '%nk%';
select *from product where prod_cost like '_01%'; 
select *from product where prod_cost like '%0'; 
select *from customers where cust_phno like '8%0'; 
select *from customers where cust_phno like '9%5'; 
select distinct cust_id from product order by cust_id;
select distinct prod_type from product order by prod_cost;
select distinct cust_id,prod_type from product order by cust_id;
select * from customers where id<002;
select * from customers where id<>004;
select *from customers where id='001' or id='003'; 
select *from product where quantity<2;
select *from product where prod_cost between 100 and 500;
select *from product where quantity in(1,5);
select *from customers where (id='001' and cust_add="Thane");
create unique index pindex on customers(id,cust_name); 
create unique index prodind on product(id); 
alter table product drop index prodind;
create view newview as select * from customers where id<004;
create view viewsecond as select * from customers where age<20;
select * from viewsecond;
select * from newview;
create view multipleview as select customers.cust_name,product.prod_type from customers,product where customers.id=product.cust_id;
select * from multipleview;
drop view viewsecond;
create view items as select prod_type,prod_cost from product;
update items set prod_cost=200 where prod_type='Honey';
select * from items;
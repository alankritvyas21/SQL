create database ecomms;
show databases;
use ecomms;
Select *from customers;
create table customers(cust_id int not null ,cust_name varchar(15) not null ,cust_pass varchar(20) not null,cust_add varchar(30) not null, cust_pincode int not null ,cust_phno bigint not null, primary key(cust_id));
insert into customers value(001,"Alankrit Vyas","Pass123","Thane",303007,9920779553);
insert into customers value(002,"Angad","Pass456","Delhi",400752,9876543210);
insert into customers value(003,"Simon","Pass789","London",342189,8520794613);
insert into customers value(004,"John Doe","Pass321","USA",123456,1234567890);
create table seller(seller_id int not null,seller_name varchar(15) not null ,seller_pass varchar(15) not null,seller_add varchar(20) not null,seller_pincode int not null,seller_phno bigint not null,primary key(seller_id));
select *from seller;
insert into seller value(001,"AE Electronics","Abcde","Dehradun",412563,9856742013);
insert into seller value(002,"Cadbury","fghij","Nagpur",478965,8093714562);
insert into seller value(003,"Raymond","klmnop","Thane",456789,8732941560);
insert into seller value(004,"ITC","qrst","Hyderabad",471258,9632145870);
create table product(prod_id int not null,prod_type varchar(10) not null,prod_color varchar(10) not null, prod_size varchar(10) not null,prod_cost bigint not null,quantity int not null,primary key(prod_id));
insert into product value(001,"Telivision","Black","52 inch",50000,1);
insert into product value(002,"choclate","brown","10x10 (cm)",100,3);
insert into product value(003,"Suit","Blue","36-32",10000,2);
insert into product value(004,"Cough sy","orange","100 ml",75,50);
select *from product;
create table payment(pay_id int not null,pay_date Date not null,pay_mode varchar(10) not null,cust_id int not null,primary key(pay_id),foreign key(cust_id) references customers(cust_id));
insert into payment values(11,'2021-02-20',"Online",001);
select *from payment;
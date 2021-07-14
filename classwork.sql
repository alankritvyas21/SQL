create database classwork;
use classwork;
create table cart(
cart_id int not null,
 primary key(cart_id)
 );
insert into cart value(121);
insert into cart value(122);
insert into cart value(123);
insert into cart value(124);
insert into cart value(125);
insert into cart value(126);
insert into cart value(127);
insert into cart value(128);
insert into cart value(129);
insert into cart value(130);
select *from cart;
create table consumer(
id int not null ,
consumer_name varchar(15) not null,
age int not null check(age>=18),
consumer_pass varchar(20) not null,
consumer_add varchar(30) not null,
consumer_pincode int not null ,
consumer_phno bigint not null, 
primary key(id)
);
insert into consumer value(1,"Alankrit Vyas",19,"password","Thane",400615,9920779553);
insert into consumer value(2,"John Does",25,"drowssap","USA",141007,1212523630);
insert into consumer value(3,"Pawan",21,"wordpass","Assam",502856,8975642310);
insert into consumer value(4,"Kabir",35,"pdarsosw","Manipal University Jaipur",303007,9876543210);
insert into consumer value(5,"Edward",66,"passnewword","London",378507,1213635458);
insert into consumer value(6,"Sahil",45,"passoldword","Chennai",456123,9658743201);
select *from consumer;
create table items(
id int not null,
item_type varchar(10) not null,
item_color varchar(10) not null, 
item_size varchar(10) not null,
item_cost bigint not null,
quantity int not null,
primary key(id),
consumer_id int references consumer(id)
);

insert into items value(501,"Television","Black","5 inch",20000,2,1);
insert into items value(502,"Choclate","White","10 pieces",25,5,2);
insert into items value(503,"Soap","White","15x15 cm",20,4,3);
insert into items value(504,"Honey","Orange","500 ml",125,1,1);
insert into items value(505,"Laptop","Grey","30x40 cm",65000,1,2);
insert into items value(506,"Toothpaste","Red","100 g",35,2,3);
insert into items value(507,"Crocin","White","10 Tablets",17,2,4);
insert into items value(508,"KeyChain","Blue","5x5 cm",45,1,4);
insert into items value(509,"Calculator","Grey","20x10 cm",155,1,5);
insert into items value(510,"Sanitizer","Blue","500 ml",200,2,5);
select *from items;
create table payment(
pay_id int not null,
pay_date Date not null,
pay_mode varchar(10) not null,
consumer_id int not null,
cart_id int not null,
primary key(pay_id),
foreign key(consumer_id) references consumer(id),
foreign key(cart_id) references cart(cart_id),
total_amt numeric(7)
);
insert into payment values(999,'2021-02-21',"Online",1,121,null);
insert into payment values(998,'2021-01-28',"Cash",2,122,null);
insert into payment values(997,'2021-01-31',"Cheque",3,123,null);
insert into payment values(996,'2021-02-21',"Online",1,124,null);
insert into payment values(995,'2021-01-28',"Cash",2,125,null);
insert into payment values(994,'2021-01-31',"Cheque",3,126,null);
insert into payment values(993,'2021-02-15',"Cheque",3,127,null);
insert into payment values(992,'2021-04-25',"Online",1,128,null);
insert into payment values(991,'2021-04-18',"Cash",2,129,null);
insert into payment values(990,'2021-03-21',"Cheque",3,130,null);
select *from payment;
alter table items add foreign key(consumer_id) references consumer(id);
select consumer.id,consumer.consumer_name,items.item_type,items.item_cost from consumer inner join items on consumer.id=items.consumer_id;
select consumer.id,consumer.consumer_name,consumer.consumer_add,items.item_type,items.item_cost from consumer left join items on consumer.id=items.consumer_id;
select consumer.id,consumer.consumer_name,items.item_type,items.item_cost,items.quantity from consumer right join items on consumer.id=items.consumer_id;
select consumer.id,consumer.consumer_name,consumer.consumer_add,items.item_type,items.item_cost from consumer left join items on consumer.id=items.consumer_id union select consumer.id,consumer.consumer_name,items.item_type,items.item_cost,items.quantity from consumer right join items on consumer.id=items.consumer_id;
select *from consumer where consumer_phno like '8%';
select *from consumer where consumer_name like '%nk%';
select *from items where item_cost like '_01%'; 
select *from items where item_cost like '%0'; 
select *from consumer where consumer_phno like '8%0'; 
select *from consumer where consumer_phno like '9%5'; 
select distinct consumer_id from items order by consumer_id;
select distinct item_type from items order by item_cost;
select distinct consumer_id,item_type from items order by consumer_id;
select * from consumer where id<2;
select * from consumer where id<>4;
select *from consumer where id='1' or id='5'; 
select *from items where quantity<3;
select *from items where item_cost between 100 and 500;
select *from items where quantity in(1,5);
select *from payment where cart_id=121;
select *from consumer where (id='001' and consumer_add="Thane");
create unique index pindex on consumer(id,consumer_name); 
create unique index itemind on items(id); 
alter table items drop index itemind;
create view newview as select * from consumer where id<4;
create view viewsecond as select * from consumer where age<20;
create view nextview as select * from payment where pay_id<997;
select * from viewsecond;
select * from newview;
select * from nextview;
create view multipleview as select consumer.consumer_name,items.item_type from consumer,items where consumer.id=items.consumer_id;
select * from multipleview;
drop view viewsecond;
create view items as select item_type,item_cost from items;
update items set item_cost=200 where item_type='Honey';
select * from items;
select date_add("2021-05-21", interval 31 day);
select addtime("2021-05-21 18:30:00.00000","30");
select curdate();
select curtime();
select max(item_cost) as item_cost from items;
select max(item_cost) FROM items where item_cost<(select max(item_cost) from items);
select *from consumer where consumer_name like '%t';
select *from consumer where consumer_name like 'S%' order by consumer_name asc,id desc;
select distinct consumer_add from consumer where length(consumer_add)=3;
select * from consumer;

create trigger cons before insert on consumer for each row set new.age=new.age+10;
insert into consumer values(7,"Alan ",19,"pass85200","Delhi",502585,8910679453);
select * from consumer;
DELIMITER //
CREATE PROCEDURE ProductList()
begin
	select * from items;
end //

DELIMITER ;
call ProductList;
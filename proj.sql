create database proj1;
use proj1;
CREATE TABLE admin_info (
  admin_id int(10) NOT NULL,
  admin_name varchar(100) NOT NULL,
  admin_email varchar(300) NOT NULL,
  admin_password varchar(300) NOT NULL
);
INSERT INTO admin_info VALUES(1, 'admin', 'admin@gmail.com', '123456789');
select * from admin_info;
CREATE TABLE brands (
  brand_id int(100) NOT NULL,
  brand_title text NOT NULL
);
INSERT INTO brands VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Lenovo'),
(5, 'LG'),
(6, 'Cloth Brand'),
(7, 'SkullCandy'),
(8, 'Nikon'),
(9, 'Sony'),
(10, 'Philips');
select *from brands;
CREATE TABLE cart (
  id int(10) NOT NULL,
  p_id int(10) NOT NULL,
  ip_add varchar(250) NOT NULL,
  user_id int(10) DEFAULT NULL,
  qty int(10) NOT NULL
);
INSERT INTO cart VALUES
(6, 26, '::1', 4, 1),
(9, 10, '::1', 7, 1),
(10, 11, '::1', 7, 1),
(11, 45, '::1', 7, 1),
(49, 60, '::1', 8, 1),
(50, 61, '::1', 8, 1),
(51, 1, '::1', 8, 1),
(52, 5, '::1', 9, 1),
(53, 2, '::1', 14, 1),
(54, 3, '::1', 14, 1),
(55, 5, '::1', 14, 1),
(56, 1, '::1', 9, 1),
(57, 2, '::1', 9, 1),
(71, 61, '127.0.0.1', 26, 1),
(158, 60, '127.0.0.1', 1, 1),
(160, 4, '127.0.0.1', 1, 1);
select * from cart;
CREATE TABLE categories (
  cat_id int(100) NOT NULL,
  cat_title text NOT NULL
);
INSERT INTO categories VALUES
(1, 'Electronics'),
(2, 'Ladies Wears'),
(3, 'Mens Wear'),
(4, 'Kids Wear'),
(5, 'Furnitures'),
(6, 'Home Appliances'),
(7, 'Camera'),
(8, 'Covid Essentials');
select * from categories;
CREATE TABLE email_info (
  email_id int(100) NOT NULL,
  email text NOT NULL
);
INSERT INTO email_info VALUES
(3, 'admin@gmail.com'),
(4, 'av3h.vyas@gmail.com'),
(5, 'sdshivang@gmail.com'),
(6, 'patiladitya1495@gmail.com');
select * from email_info;
CREATE TABLE logs (
  id int(11) NOT NULL,
  user_id varchar(50) NOT NULL,
  action varchar(50) NOT NULL,
  date datetime NOT NULL
);
CREATE TABLE orders (
  order_id int(11) NOT NULL,
  user_id int(11) NOT NULL,
  product_id int(11) NOT NULL,
  qty int(11) NOT NULL,
  trx_id varchar(255) NOT NULL,
  p_status varchar(20) NOT NULL
);
INSERT INTO orders VALUES
(1, 1, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 2, 2, 1, '07M47684BS5725041', 'Completed'),
(3, 3, 4, 1, '07M47684BS5725041', 'Out for delivery');
select* from orders;
CREATE TABLE orders_info (
  order_id int(10) NOT NULL,
  user_id int(11) NOT NULL,
  f_name varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  address varchar(255) NOT NULL,
  city varchar(255) NOT NULL,
  state varchar(255) NOT NULL,
  zip int(10) NOT NULL,
  cardname varchar(255) NOT NULL,
  cardnumber varchar(20) NOT NULL,
  expdate varchar(255) NOT NULL,
  prod_count int(15) DEFAULT NULL,
  total_amt int(15) DEFAULT NULL,
  cvv int(5) NOT NULL
);
INSERT INTO orders_info (order_id, user_id, f_name,email, address, city, state, zip, cardname, cardnumber, expdate, prod_count, total_amt, cvv) VALUES
(1, 1, 'Alankrit', 'av3h.vyas@gmail.com', 'Waghbil Naka,Ghodbunder Road', 'Thane', 'Maharashtra', 400615, 'Alankrit', '0000 0000 0000 0000', '12/90', 1, 299, 1),
(2, 2, 'Shivang', 'sdshivang@gmail.com', 'Malviya Nagar', 'Jaipur', 'Rajasthan', 3003014, 'Shivang', '0000 0000 0000 0001', '12/90', 1, 699, 2),
(3, 3, 'Aditya', 'aditya1495@gmail.com', 'Indira nagar', 'Nashik', 'Maharashtra', 400689, 'Aditya', '0000 0000 0000 0003', '12/90', 1, 93799, 3);
select * from orders_info;
CREATE TABLE order_products (
  order_pro_id int(10) NOT NULL,
  order_id int(11) NOT NULL,
  product_id int(11) NOT NULL,
  qty int(15) DEFAULT NULL,
  amt int(15) DEFAULT NULL
);
INSERT INTO order_products (order_pro_id, order_id, product_id, qty, amt) VALUES
(73, 1, 60, 1, 299),
(74, 2, 19, 1, 699),
(75, 3, 7, 1, 93799);
select* from order_products;
CREATE TABLE products (
  product_id int(100) NOT NULL,
  product_cat int(100) NOT NULL,
  product_brand int(100) NOT NULL,
  product_title varchar(255) NOT NULL,
  product_price int(100) NOT NULL,
  product_desc text NOT NULL,
  product_image text NOT NULL,
  product_keyword text NOT NULL
);
INSERT INTO products VALUES
(1, 1, 2, 'Realme Narzo 20', 12299, 'Realme Phones ', 'product07.png', 'Realme Phones'),
(2, 1, 3, 'iPhone 11 Pro', 79899, 'Apple iPhone', 'http___pluspng.com_img-png_iphone-hd-png-iphone-apple-png-file-550.png', 'mobile iphone apple'),
(3, 1, 3, 'iPad Pro', 99900, 'iPad Pro', 'da4371ffa192a115f922b1c0dff88193.png', 'ipad'),
(4, 1, 3, 'Boat Airdopes 443', 2499, 'Boat Airdopes', 'airdopes.png', 'Boat'),
(5, 1, 7, 'SkullCandy Earphones', 2999, 'Skull Candy Earphones', 'skullcandyset.png', 'Skull'),
(6, 1, 1, 'Electric Kettle', 3500, 'Electric Kettle', 'kettle.png', 'kettle'),
(7, 1, 4, 'Lenovo Legion Y540', 93799, 'Lenovo Laptops', 'lenovolegion.png', 'Lenovo Laptops'),
(8, 1, 1, 'HP Pavillion', 63155, 'HP Laptop', 'hppav.png', 'HP'),
(9, 1, 2, 'Samsung Galaxy Note 20', 74999, 'Samsung Mobiles', 'note20.png', 'Samsung'),
(10, 2, 6, 'Red dress', 1000, 'Red party dress', 'reddress.jpg', 'red dress '),
(11, 2, 6, 'Black dress', 1200, 'Black Part dress', 'blackdress.jpg', 'black dress'),
(12, 2, 6, 'Summer Dress- Ladies', 1500, 'ladies casual summer dress', 'summer.jpg', 'girl dress cloths casual'),
(13, 2, 6, 'Kurta', 800, 'Kurta', 'Kurta.jpg', 'kurta'),
(14, 2, 6, 'Casual Dress', 699, 'girl dress', 'casual.jpg', 'ladies casual'),
(15, 2, 6, 'Formal Dress', 1500, 'Formal wear for ladies', 'formal.jpg', 'fromal'),
(16, 3, 6, 'Wine Red Suit for men', 3499, 'Red Suit', 'suit1.png', 'suit'),
(17, 3, 6, 'Black Suit for men', 4999, 'Black Suit', 'suit2.png', 'suit'),
(19, 3, 6, 'Star Wars T-shirt', 699, 'Star Wars T-shirt', 'starwars.jpg', 'tshirt'),
(20, 3, 6, 'Mens Hoodie', 1600, 'Hoodie', 'hoodie.jpeg', 'hoodie'),
(21, 3, 6, 'Pullover Hoodie', 1499, 'hoodie', 'hoodie2.jpg', 'hoodie'),
(22, 4, 6, 'Yellow T-Shirt', 500, 'Kids Yellow tshirt', 'yello.png', 'kids yellow t shirt'),
(23, 4, 6, 'Red Girls dress', 1299, 'Girls Red dress for party wear', 'red.webp', 'formal kids wear dress'),
(24, 4, 6, 'Blue T shirt', 700, 'Avengers Blue Tshirt for Boys', 'blue.jpg', 'kids dress'),
(25, 4, 6, 'Yellow girls dress', 750, 'Yellow dress', 'yellow2.jpg', 'yellow kids dress'),
(27, 4, 6, 'Kids Formal look', 690, 'Kids fromal Party Wear', 'kf.jpg', 'formal kids dress'),
(32, 5, 0, 'Book Shelf', 2499, 'book shelf', 'bookshelf.jpg', 'book shelf furniture'),
(33, 6, 2, 'Refrigerator', 35000, 'Refrigerator', 'ref.jpg', 'refrigerator samsung'),
(34, 6, 4, 'Kettle', 2000, 'Water heating in just a minute', 'kettle.png', 'kettle'),
(35, 6, 0, 'Vaccum Cleaner', 6999, 'Vaccum Cleaner', 'vacc.jpg', 'Vaccum Cleaner'),
(36, 6, 5, 'Iron', 2500, 'Iron', 'iron.JPG', 'iron'),
(37, 6, 2, 'Washing Machine', 25000, 'Wash you clothes at the go', 'wash.jpg', 'Washing'),
(38, 6, 5, 'Microwave ', 10000, 'Microwave Oven', 'micro.png', 'Microwave'),
(39, 6, 10, 'Mixer Grinder', 3500, 'Mixer Grinder', 'mixer.jpeg', 'Mixer Grinder'),
(40, 2, 6, 'Kurta', 2000, 'Kurta', 'kurta2.jpg', 'ladies'),
(48, 1, 7, 'Headphones', 250, 'Headphones', 'product05.png', 'Headphones Sony'),
(49, 1, 7, 'Headphones', 250, 'Headphones', 'product05.png', 'Headphones Sony'),
(50, 3, 6, 'Black Jeans', 999, 'Jeans', 'jeans.jpg', 'jeans'),
(51, 3, 6, 'Blue Jeans', 999, 'Jeans', 'denims.JPG', 'jeans'),
(52, 3, 6, 'Ripped Jeans', 799, 'Jeans', 'ripped.jpg', 'jeans'),
(53, 3, 6, 'Light Brown pants', 1499, 'Pants', 'pant.jpg', 'Pant'),
(54, 4, 6, 'Girls Blue Dress', 1299, 'blue dress', 'blue2.jpg', 'kids blue dress'),
(55, 5, 0, 'Portable desk', 1799, 'Desk', 'desk.jpg', 'desk'),
(56, 5, 0, 'Table', 1899, 'Side Table', 'table.jpg', 'table'),
(58, 8, 0, 'Lee Cooper Mask(set of 4)', 499, 'Covid essential', 'mask1.jpg', 'mask'),
(59, 8, 0, 'Wildcraft Mask(Set of 3)', 499, 'Covid essentials', 'mask2.jpg', 'mask'),
(60, 8, 0, 'Cotton Mask(Set of 4)', 299, 'Covid Essentials', 'mask3.webp', 'mask'),
(61, 8, 0, 'Lifebuoy Sanitizer', 59, 'Covid Essentials', 'san1.jpg', 'sanitizer'),
(62, 8, 0, 'Dettol Sanitizer', 59, 'Covid Essentials', 'san2.jpg', 'sanitizer'),
(63, 8, 0, 'Sanitizer-1 liter', 1299, 'Covid Essentials', 'san3.jpg', 'sanitizer'),
(64, 8, 0, 'Savlon', 39, 'Covid Essentials', 'sav1.jpg', 'Savlon'),
(65, 8, 0, 'Savlon Spray', 99, 'Covid Essentials', 'spray1.webp', 'Spray'),
(66, 8, 0, 'Oximeter', 1099, 'Covid Essentials', 'oxi1.jpg', 'Oximeter'),
(67, 8, 0, 'Nebulizer', 1099, 'Covid Essentials', 'nebu1.jpg', 'Nebulizer'),
(68, 8, 0, 'Vaporizer', 799, 'Covid Essentials', 'vapo1.jpg', 'Vaporizer'),
(69, 8, 0, 'Steamer', 799, 'Covid Essentials', 'steam1.jpg', 'Steamer'),
(70, 8, 0, 'Thermal Scanner', 999, 'Covid Essentials', 'temp1.png', 'temp'),
(71, 8, 0, 'Gloves', 299, 'Covid Essentials', 'glove1.jpg', 'glove'),
(72, 7, 8, 'Nikon DSLR', 39999, 'DSLR Camera', 'dslr1.jpg', 'dslr camera'),
(73, 7, 9, 'Sony DSLR Camera', 29999, 'DSLR Camera', 'dslr2.jpg', 'dslr camera');
select * from products;
CREATE TABLE user_info (
  user_id int(10) NOT NULL,
  first_name varchar(100) NOT NULL,
  last_name varchar(100) NOT NULL,
  email varchar(300) NOT NULL,
  password varchar(300) NOT NULL,
  mobile varchar(10) NOT NULL,
  address1 varchar(300) NOT NULL,
  address2 varchar(11) NOT NULL
);
INSERT INTO user_info (user_id, first_name, last_name, email, password, mobile, address1, address2) VALUES
(1, 'Alankrit ', 'Vyas', 'av3h.vyas@gmail.com', 'Password123', '9876543210', 'Waghbil Naka', 'Thane'),
(2, 'Shivang ', 'Swivedi', 'sdshivang@gmail.com', 'Password456', '8529630147', 'Malviya Nagar', 'Jaipur'),
(3, 'Aditya', 'Patil', 'aditya1495@gmail.com', 'Password789', '7894561230', 'Indira Nagar', 'Nashik');
select* from user_info;

CREATE TABLE user_info_backup (
  user_id int(10) NOT NULL,
  first_name varchar(100) NOT NULL,
  last_name varchar(100) NOT NULL,
  email varchar(300) NOT NULL,
  password varchar(300) NOT NULL,
  mobile varchar(10) NOT NULL,
  address1 varchar(300) NOT NULL,
  address2 varchar(11) NOT NULL
);
INSERT INTO user_info_backup VALUES
(1, 'Alankrit', 'Vyas', 'av3h.vyas@gmail.com', 'Password123', '9876543210', 'Waghbil Naka', 'Thane'),
(2, 'Shivang', 'Dwivedi', 'sdshivang@gmail.com', 'Password456', '8529630147', 'Malviya Nagar', 'Jaipur'),
(3, 'Aditya', 'Patil', 'aditya1495@gmail.com', 'Password789', '7894561230', 'Indira Nagar', 'Nashik');
select * from user_info_backup;
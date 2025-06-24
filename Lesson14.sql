create database if not exists leson14;
use lesson_14;
CREATE TABLE users(
  id bigint unsigned primary key AUTO_INCREMENT,
  username varchar(64) NOT NULL,
  password varchar(64) NOT NULL,
  phone varchar(20) DEFAULT NULL
  );
CREATE TABLE sellers(
  id bigint unsigned primary key AUTO_INCREMENT,
  company varchar(64) NOT NULL,
  phone varchar(20) DEFAULT NULL
  );
 alter table sellers add unique (company); 
  CREATE TABLE products(
  id bigint unsigned primary key AUTO_INCREMENT,
  name varchar(64) NOT NULL,
  cost int unsigned NOT NULL,
  count int unsigned NOT NULL,
  seller_id bigint unsigned NOT NULL,
  foreign key (seller_id) references sellers(id)
  );
  alter table products add unique (name);
CREATE TABLE orders(
  id bigint unsigned primary key AUTO_INCREMENT,
  user_id bigint unsigned NOT NULL,
  product_id bigint unsigned NOT NULL,
  count int unsigned NOT NULL,
  foreign key (user_id) references users(id),
  foreign key (product_id) references products(id)
  );
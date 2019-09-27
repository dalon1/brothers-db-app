CREATE USER 'dalon'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'dalon'@'localhost' IDENTIFIED BY 'password';

# create database

create database brothers_db;

# create tables
create table brothers_db.tbl_profiles (
	id int unsigned not null auto_increment,
	first_name varchar(25),
	last_name varchar(25),
	email varchar(60),
	primary key(id)
);

insert into tbl_profiles (first_name, last_name, email)
values 
("dannel", "alon", "dannel@random.com"),
("joel", "alon", "joel@random.com"),
("eitan", "alon", "eitan@random.com");

create table brothers_db.tbl_cars (
	brother_id int not null,
	brand varchar(20),
	model varchar(40),
	year int
);

insert into tbl_cars
values
(1, "mazda", "3", "2018"),
(2, "bmw", "i318", "2008"),
(2, "ford", "explorer", "2014");

select *
from tbl_profiles right join tbl_cars
on tbl_profiles.id = tbl_cars.brother_id;

select first_name, count(*)
from tbl_profiles right join tbl_cars
on tbl_profiles.id = tbl_cars.brother_id
group by id;

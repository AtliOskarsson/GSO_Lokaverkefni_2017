create database if not exists 0202002190_lokaverk;
use 0202002190_lokaverk;

drop table if exists flytjandi;
drop table if exists diskur;
drop table if exists lag;
drop table if exists flokkur;
drop table if exists tegund;
drop table if exists utgefandi;

create table flytjandi (
	ID int auto_increment primary key,
	nafn varchar,
	faedingardagur varchar,
	lysing varchar,
	danardagur varchar,
	tegund_flytjanda varchar
);



create table diskur(
	ID INT auto_increment primary key,
	nafn varchar(255),
	utgafudagur date,
	tegund_ID INT,
	log text,
	utgefandi_ID INT
);

create table lag (
	ID INT auto_increment primary key,
    nafn varchar,
    lengd varchar,
    texti varchar,
    flokkur varchar
);

create table tegund(
	ID INT auto_increment primary key,
	nafn varchar(255)
);

create table flokkur (
	ID INT primary key auto_increment,
    nafn varchar
);
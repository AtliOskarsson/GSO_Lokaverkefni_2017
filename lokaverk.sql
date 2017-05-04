create database if not exists 0202002190_lokaverk;
use 0202002190_lokaverk;

drop table if exists flytjandi;
drop table if exists diskur;
drop table if exists lag;
drop table if exists flokkur;
drop table if exists tegund;
drop table if exists utgefandi;

create table flytjandi (
	ID int primary key,
	nafn varchar,
	faedingardagur varchar,
	lysing varchar,
	danardagur varchar,
	tegund_flytjanda varchar
);

create table diskur (
	ID INT primary key,
	nafn varchar,
	utgafudagur varchar,
	tegund_disks varchar
)

create table lag (
	ID INT primary key,
    nafn varchar,
    lengd varchar,
    texti varchar,
    flokkur varchar
)

create table flokkur (
	ID INT primary key,
    nafn varchar
)
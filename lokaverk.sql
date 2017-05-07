create database if not exists 0202002190_lokaverk;
use 0202002190_lokaverk;

drop table if exists flytjandi;
drop table if exists diskur;
drop table if exists lag;
drop table if exists flokkur;
drop table if exists tegund;
drop table if exists utgefandi;

create table flokkur(
	ID int auto_increment primary key,
    nafn varchar(50)
);
create table flytjandi(
	ID int auto_increment primary key,
    nafn varchar(50),
    faedingardagur date,
    danardagur date,
    flokkur_ID int,
    FOREIGN KEY (flokkur_ID) REFERENCES flokkur(ID)
);
create table utgefandi(
	ID int auto_increment primary key,
    nafn varchar(50)
);
create table tegund(
	ID int auto_increment primary key,
    nafn varchar(50)
);
create table diskur(
	ID int auto_increment primary key,
    nafn varchar(50),
    utgafudagur date,
    tegund_ID int,
    log text,
    utgefandi_ID int,
    foreign key (tegund_ID) references tegund(ID),
    foreign key (utgefandi_ID) references utgefandi(ID)
);
create table lag(
	ID int auto_increment primary key,
    nafn varchar(50),
    lengd int(4),
    texti longtext,
    flytjandi_ID int,
    diskur_ID int,
    foreign key (flytjandi_ID) references flytjandi(ID),
    foreign key (diskur_ID) references diskur(ID)
);
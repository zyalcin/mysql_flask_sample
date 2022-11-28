drop table if exists library_item;
drop table if exists patron; 
drop table if exists book;
drop table if exists cd;
drop table if exists magazine;
drop table if exists journal;

create table library_item(
    tt int primary key, 
    title varchar(30),
    time date,
    stat varchar(30)
)
;

create table patron(
    nm primary key,
    name varchar(10),
    address varchar(30),
    age int
)
;

create table book(
    book_tt int references library_item[tt], 
    author varchar(30),
    publisher varchar(30),
    primary key book_tt
)
;

create table cd(
    cd_tt int references library_item[tt], 
    artist varchar(30),
    label varchar(30),
    primary key cd_tt
)
;

create table magazine(
    magazine_tt int references library_item[tt], 
    publisher varchar(30),
    primary key magazine_tt
)
;

create table journal(
    journal_tt int references library_item[tt], 
    vol int,
    no int,
    primary key journal_tt
)


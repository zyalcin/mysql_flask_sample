drop table if exists user;
drop table if exists posts; 
drop table if exists area; 
drop table if exists items; 
drop table if exists response; 

create table user(
    uid int primary key, 
    name varchar(30),
    email varchar(30),
    zipcode int(5),
    stat varchar(30)
)
;

create table area(
    aid int primary key,
    zip int(5),
    neighborhood varchar(30)
)
;

create table posts(
    pid int primary key, 
    aid int references area[aid],
    uid int references user[uid], 
    stat varchar(30),
)
;

create table items(
    tt int primary key
    title varchar(30),
    description varchar(100),
    foreign key pid references posts[pid], 
    foreign key uid references user[uid]
)
;

create table response(
    rid int primary key, 
    foreign key pid references posts[pid], 
    foreign key uid references user[uid]

)
;

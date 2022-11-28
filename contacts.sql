use zy1_db;

drop table if exists addresses;
drop table if exists phones;
drop table if exists person;

create table person (
    personID int not null primary key,
    name varchar(30) not null 
)
ENGINE = InnoDB;

create table addresses (
    /* aid int not null, */
    personID int not null,
    name varchar(30) not null,
    kind enum('home','work','cell','other'),
    city varchar(30) not null, 
    state char(2),

    INDEX (personID),
    foreign key (personID) references person(personID)
        on update restrict 
        on delete restrict
)
ENGINE = InnoDB;

create table phones (
    personID int not null, 
    name varchar(30) not null, 
    kind enum ('home','work','cell','other'),
    phnum char(10),
    primary key (phnum),

    INDEX (personID),
    foreign key (personID) references person(personID)
        on update restrict
        on delete restrict 
)
ENGINE = InnoDB;

load data local infile 'person-list.csv' into table person fields terminated by ',' ignore 1 lines;
load data local infile 'address-list.csv' into table addresses fields terminated by ',' ignore 1 lines;
load data local infile 'phone-list.csv' into table phones fields terminated by ',' ignore 1 lines; 

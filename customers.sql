create table customers (
    id int not null auto_increment,
    email varchar(100) not null,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    primary key (id),
    unique key email_unique (email)
) engine = InnoDB;

desc customers;

alter table
    customers drop constraint email_unique;

alter table
    customers
add
    constraint email_unique unique (email);

insert into
    customers(email, first_name, last_name)
values
    ("tyn@gmail.com", "Christ", "tyn");

select
    *
from
    customers;

insert into
    customers(email, first_name, last_name)
values
    ("tian@gmail.com", "tyn", "tian");